CREATE DATABASE IF NOT EXISTS novaedu;
USE novaedu;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 15 déc. 2023 à 11:23
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `novaedu`
--

-- --------------------------------------------------------

--
-- Structure de la table `Algebre I`
--

CREATE TABLE `Algebre I` (
  `Id` int(1) NOT NULL,
  `question` varchar(200) NOT NULL,
  `reponseA` varchar(200) NOT NULL,
  `reponseB` varchar(200) NOT NULL,
  `reponseC` varchar(200) NOT NULL,
  `solution` varchar(200) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Algebre I`
--

INSERT INTO `Algebre I` (`Id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Quelle est la valeur de x dans l\'equation 3x + 5 = 14 ?', 'x = 3', 'x = 9 ', 'x = 3.5 ', 'x = 3', 90),
(2, 'Quelle est la solution de l\'equation x^2 - 4x + 4 = 0 ?\r\n', 'x = 2', ' x = 4 ', 'x = 0 ', 'x = 2', 90),
(3, 'Quel est le resultat de l\'expression 2(x + 3) - 4x lorsque x = 5?', '-6', '6', '4', '-6', 90),
(4, 'Quelle est la forme canonique de l\'equation y = x^2 + 6x + 5 ?\r\n', 'y = (x + 3)^2 - 4', ' y = (x - 3)^2 - 4 ', ' y = (x + 3)^2 + 4 ', 'y = (x + 3)^2 - 4', 90),
(5, 'Quel est le discriminant de l\'equation x^2 - 6x + 9 = 0 ?\r\n', '-6', '6', '0', '0', 90),
(6, 'Quelle est la solution de l\'equation 2x + 7 = 3x - 1 ?\r\n', ' x = 8 ', 'x = -8', 'x = 4', 'x = 8', 90),
(7, 'Quel est le resultat de la factorisation de l\'expression x^2 + 3x - 4 ', '(x + 4)(x - 1)', ' (x + 1)(x - 4) ', '(x - 4)(x - 1)', '(x - 4)(x + 1)', 90),
(8, 'Quelle est la valeur de x dans l\'equation (x/3) + 4 = 7 ?\r\n', ' x = 9 ', 'x = 3', 'x = 12', 'x = 3', 90),
(9, 'Quelle est la forme canonique de l\'equation y = 2x^2 - 8x + 7 ?\r\n', 'y = 2(x - 2)^2 + 3', 'y = 2(x + 2)^2 - 3 ', 'y = 2(x - 2)^2 - 3 ', 'y = 2(x - 2)^2 - 3', 90),
(10, 'Quelle est la solution de l\'equation 4x^2 - 12x + 9 = 0 ?\r\n', 'x = 1/2', 'x = 3/2 ', 'x = 3/4 ', 'x = 1/2', 90),
(11, 'Quelle est la definition d\'un ensemble fini ?\r\n', 'Un ensemble qui contient un nombre infini d\'elements.', ' b) Un ensemble qui contient un nombre fini d\'elements. ', 'c) Un ensemble qui ne contient aucun \r\nelement.', 'Un ensemble qui contient un nombre fini d\'elements.', 60),
(12, 'Si A = {1, 2, 3} et B = {2, 3, 4}, quel est l\'ensemble de l\'union de A', '{1, 2, 3, 4}', ' {2, 3} ', ' {1, 2, 3, 4, 5}', '{1, 2, 3, 4}', 90),
(13, 'Si f(x) = x + 2 et g(x) = 2x, quelle est la valeur de (f∘g)(3) ?\r\n', '5', '8', '2', '8', 90),
(14, 'Si A = {1, 2, 3} et B = {2, 4, 6}, quel est l\'ensemble de l\'intersecti', '{2}', ' {1, 2, 3, 4, 6} ', ' {1, 3} ', '{2}', 90),
(15, 'Si f(x) = x^2 et g(x) = 3x - 1, quelle est la valeur de (g∘f)(2) ?\r\n', '11', '13', '15', '13', 90),
(16, 'Si tous les chats ont des poils et que Felix est un chat, qu\'en deduis', ' Felix n\'a pas de poils.', 'Felix a des poils.', 'Impossible de savoir si Felix a des poils.', 'Felix a des poils.', 90),
(17, 'Si A est un ensemble contenant les nombres {1, 2, 3} et B est un ensem', '{1}', ' {4}', '{1, 4} ', '{4}', 90),
(18, 'Si a = b et b = c, quelle est la relation entre a et c ?\r\n', ' a > c ', 'a < c ', 'a = c', 'a = c', 90),
(20, 'Qu\'est-ce qu\'un nombre complexe ?\r\n', ' Un nombre qui a une partie reelle et une partie imaginaire.', 'Un nombre qui est la somme de deux nombres reels. ', 'Un nombre qui n\'a qu\'une partie reelle', ' Un nombre \r\nqui a une partie reelle et une partie imaginaire.', 60),
(21, 'Si z1 = 3 + 2i et z2 = -1 + 4i, quelle est la somme de z1 et z2 ?\r\n', '2 + 6i', '2 - 2i ', '4 + 6i', '4 + 6i', 90),
(22, 'Si z = 2 + 3i, quelle est la forme exponentielle de z ?\r\n', ' e^(2+3i) ', ' e^2 + e^3i ', 'e^2(cos(3) + i sin(3))', 'e^2(cos(3) + i sin(3))', 90),
(23, 'Si z1 = 2 - 5i et z2 = 3 + i, quelle est la multiplication de z1 et z2', '-13 - 7i ', '-13 + 7i', '13 + 7i', '-13 + 7i', 90),
(24, 'Qu\'est-ce qu\'un polynôme ?\r\n', ' Une fonction qui ne contient que des termes constants. ', 'Une fonction qui ne contient que des termes lineaires. ', 'Une fonction qui contient des termes de degres differents', 'Une fonction qui contient des termes de degres differents', 60),
(25, 'Quel est le degre du polynôme p(x) = 3x^5 + 2x^3 - 7x + 1 ?\r\n', '5', '3', '1', '5', 60),
(26, 'Si le polynôme p(x) = 4x^3 - 3x^2 + 2x - 1 a une racine de x = 1, quel', 'p(x) = (x + 1)(4x^2 - 7x + 1) ', 'p(x) = (x - 1)(4x^2 + 7x - 1)', 'p(x) = (x - 1)(4x^2 - 7x - 1)', 'p(x) = (x - 1)(4x^2 - 7x - 1)', 90),
(27, 'Qu\'est-ce qu\'un polynôme irreductible ?\r\n', ' Un polynôme qui ne peut pas être decompose en facteurs line', ' Un polynôme qui ne peut pas être decompose en facteurs quad', ' Un polynôme qui ne peut pas être decompose en facteurs line', ' Un polynôme qui ne peut pas être decompose en facteurs line', 60),
(28, 'Resoudre le systeme lineaire suivant:\r\nx + y = 7\r\n2x - y = 1', ' x = 2, y = 5 ', 'x = 3, y = 4', 'x = 4, y = 3 ', 'x = 3, y = 4', 120),
(29, 'Determiner graphiquement si le systeme lineaire suivant a une solution', 'La solution est unique', 'Il n\'y a pas de solution ', 'Il y a une infinite de solutions ', 'La solution est unique', 90),
(30, 'Determiner le nombre de solutions du systeme lineaire suivant:\r\nx + 2y', 'Il n\'y a pas de solution ', 'Il y a une solution unique', ' Il y a une infinite de solutions', 'Il y a une solution unique', 90),
(1, 'Quelle est la valeur de x dans l\'equation 3x + 5 = 14 ?', 'x = 3', 'x = 9 ', 'x = 3.5 ', 'x = 3', 90),
(2, 'Quelle est la solution de l\'equation x^2 - 4x + 4 = 0 ?\r\n', 'x = 2', ' x = 4 ', 'x = 0 ', 'x = 2', 90),
(3, 'Quel est le resultat de l\'expression 2(x + 3) - 4x lorsque x = 5?', '-6', '6', '4', '-6', 90),
(4, 'Quelle est la forme canonique de l\'equation y = x^2 + 6x + 5 ?\r\n', 'y = (x + 3)^2 - 4', ' y = (x - 3)^2 - 4 ', ' y = (x + 3)^2 + 4 ', 'y = (x + 3)^2 - 4', 90),
(5, 'Quel est le discriminant de l\'equation x^2 - 6x + 9 = 0 ?\r\n', '-6', '6', '0', '0', 90),
(6, 'Quelle est la solution de l\'equation 2x + 7 = 3x - 1 ?\r\n', ' x = 8 ', 'x = -8', 'x = 4', 'x = 8', 90),
(7, 'Quel est le resultat de la factorisation de l\'expression x^2 + 3x - 4 ', '(x + 4)(x - 1)', ' (x + 1)(x - 4) ', '(x - 4)(x - 1)', '(x - 4)(x + 1)', 90),
(8, 'Quelle est la valeur de x dans l\'equation (x/3) + 4 = 7 ?\r\n', ' x = 9 ', 'x = 3', 'x = 12', 'x = 3', 90),
(9, 'Quelle est la forme canonique de l\'equation y = 2x^2 - 8x + 7 ?\r\n', 'y = 2(x - 2)^2 + 3', 'y = 2(x + 2)^2 - 3 ', 'y = 2(x - 2)^2 - 3 ', 'y = 2(x - 2)^2 - 3', 90),
(10, 'Quelle est la solution de l\'equation 4x^2 - 12x + 9 = 0 ?\r\n', 'x = 1/2', 'x = 3/2 ', 'x = 3/4 ', 'x = 1/2', 90),
(11, 'Quelle est la definition d\'un ensemble fini ?\r\n', 'Un ensemble qui contient un nombre infini d\'elements.', ' b) Un ensemble qui contient un nombre fini d\'elements. ', 'c) Un ensemble qui ne contient aucun \r\nelement.', 'Un ensemble qui contient un nombre fini d\'elements.', 60),
(12, 'Si A = {1, 2, 3} et B = {2, 3, 4}, quel est l\'ensemble de l\'union de A', '{1, 2, 3, 4}', ' {2, 3} ', ' {1, 2, 3, 4, 5}', '{1, 2, 3, 4}', 90),
(13, 'Si f(x) = x + 2 et g(x) = 2x, quelle est la valeur de (f∘g)(3) ?\r\n', '5', '8', '2', '8', 90),
(14, 'Si A = {1, 2, 3} et B = {2, 4, 6}, quel est l\'ensemble de l\'intersecti', '{2}', ' {1, 2, 3, 4, 6} ', ' {1, 3} ', '{2}', 90),
(15, 'Si f(x) = x^2 et g(x) = 3x - 1, quelle est la valeur de (g∘f)(2) ?\r\n', '11', '13', '15', '13', 90),
(16, 'Si tous les chats ont des poils et que Felix est un chat, qu\'en deduis', ' Felix n\'a pas de poils.', 'Felix a des poils.', 'Impossible de savoir si Felix a des poils.', 'Felix a des poils.', 90),
(17, 'Si A est un ensemble contenant les nombres {1, 2, 3} et B est un ensem', '{1}', ' {4}', '{1, 4} ', '{4}', 90),
(18, 'Si a = b et b = c, quelle est la relation entre a et c ?\r\n', ' a > c ', 'a < c ', 'a = c', 'a = c', 90),
(20, 'Qu\'est-ce qu\'un nombre complexe ?\r\n', ' Un nombre qui a une partie reelle et une partie imaginaire.', 'Un nombre qui est la somme de deux nombres reels. ', 'Un nombre qui n\'a qu\'une partie reelle', ' Un nombre \r\nqui a une partie reelle et une partie imaginaire.', 60),
(21, 'Si z1 = 3 + 2i et z2 = -1 + 4i, quelle est la somme de z1 et z2 ?\r\n', '2 + 6i', '2 - 2i ', '4 + 6i', '4 + 6i', 90),
(22, 'Si z = 2 + 3i, quelle est la forme exponentielle de z ?\r\n', ' e^(2+3i) ', ' e^2 + e^3i ', 'e^2(cos(3) + i sin(3))', 'e^2(cos(3) + i sin(3))', 90),
(23, 'Si z1 = 2 - 5i et z2 = 3 + i, quelle est la multiplication de z1 et z2', '-13 - 7i ', '-13 + 7i', '13 + 7i', '-13 + 7i', 90),
(24, 'Qu\'est-ce qu\'un polynôme ?\r\n', ' Une fonction qui ne contient que des termes constants. ', 'Une fonction qui ne contient que des termes lineaires. ', 'Une fonction qui contient des termes de degres differents', 'Une fonction qui contient des termes de degres differents', 60),
(25, 'Quel est le degre du polynôme p(x) = 3x^5 + 2x^3 - 7x + 1 ?\r\n', '5', '3', '1', '5', 60),
(26, 'Si le polynôme p(x) = 4x^3 - 3x^2 + 2x - 1 a une racine de x = 1, quel', 'p(x) = (x + 1)(4x^2 - 7x + 1) ', 'p(x) = (x - 1)(4x^2 + 7x - 1)', 'p(x) = (x - 1)(4x^2 - 7x - 1)', 'p(x) = (x - 1)(4x^2 - 7x - 1)', 90),
(27, 'Qu\'est-ce qu\'un polynôme irreductible ?\r\n', ' Un polynôme qui ne peut pas être decompose en facteurs line', ' Un polynôme qui ne peut pas être decompose en facteurs quad', ' Un polynôme qui ne peut pas être decompose en facteurs line', ' Un polynôme qui ne peut pas être decompose en facteurs line', 60),
(28, 'Resoudre le systeme lineaire suivant:\r\nx + y = 7\r\n2x - y = 1', ' x = 2, y = 5 ', 'x = 3, y = 4', 'x = 4, y = 3 ', 'x = 3, y = 4', 120),
(29, 'Determiner graphiquement si le systeme lineaire suivant a une solution', 'La solution est unique', 'Il n\'y a pas de solution ', 'Il y a une infinite de solutions ', 'La solution est unique', 90),
(30, 'Determiner le nombre de solutions du systeme lineaire suivant:\r\nx + 2y', 'Il n\'y a pas de solution ', 'Il y a une solution unique', ' Il y a une infinite de solutions', 'Il y a une solution unique', 90);

-- --------------------------------------------------------

--
-- Structure de la table `Algebre II`
--

CREATE TABLE `Algebre II` (
  `id` int(1) NOT NULL,
  `question` varchar(200) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Algebre II`
--

INSERT INTO `Algebre II` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Quel est le resultat de la multiplication de la matrice A = [ [2, 3], [1, 4] ] par la matrice B =   [[28, 7], [23, 10] ]\r\n', ' [ [16, 8], [11, 22] ]\r\n', '[ [28, 7], [29, 6] ]', '[ [28, 7], [29, 6] ]', '[ [28, 7], [29, 6] ]', 120),
(2, 'Quelle est l\'inverse de la matrice A = [ [1, 2], [3, 5] ] ?\r\n', ' [ [-5/7, 2/7], [3/7, -1/7] ]\r\n', ' [ [-5, 2], [3, -1] ]\r\n', '[ [5, -2], [-3, 1] ]', ' [ [-5, 2], [3, -1] ]\r\n', 120),
(3, 'Quel est le determinant de la matrice A = [ [3, 1, 2], [2, 1, 0], [1, 4, 2] ] ?\r\n', '-1', '-7', '7', '-7', 120),
(4, 'Quelle est la transposee de la matrice A = [ [2, 4, 6], [1, 3, 5] ] ?\r\n', ' [ [2, 1], [3, 3], [6, 5] ]\r\n', '\r\n [ [2, 1], [4, 3], [6, 5] ]\r\n', '[ [1, 2], [3, 4], [5, 6] ]', '[ [2, 1], [4, 3], [6, 5] ]\r\n', 120),
(5, 'Quel est le produit scalaire entre les vecteurs v = [3, 1, 2] et w = [2, 1, 4] ?\r\n', '8', '13', '20', '13', 120),
(6, 'Quelle est la solution du systeme d\'equations lineaires suivant ?\r\n\r\n2x - 3y = 5\r\n4x + 5y = 2', ' (x, y) = (-1, 1)\r\n', '(x, y) = (-5/17, 19/17)\r\n', '\r\n (x, y) = (2, -1)', '(x, y) = (-5/17, 19/17)', 120),
(7, 'Quel est le determinant de la matrice A = [ [2, 5], [3, 4] ] ?\r\n', '8', '9', '-7', '-7', 90),
(8, 'Quel est le determinant de la matrice B = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ] ?\r\n', '6', '0', '2', '0', 90),
(9, 'Quel est le determinant de la matrice C = [ [1, 2, 3], [0, 1, 4], [5, 6, 0] ] ?\r\n', '-62', '-17', '17', '-17', 120),
(10, 'Resoudre le systeme d\'equations lineaires suivant par la methode de Cramer :\r\n\r\n2x - 3y = 5\r\n4x + 5y', '(x, y) = (-1, 1)\r\n', ' (x, y) = (2, -1)\r\n', ' (x, y) = (-5/17, 19/17)', ' (x, y) = (-5/17, 19/17)', 120),
(11, 'Resoudre le systeme d\'equations lineaires suivant par la methode de Cramer :\r\n\r\nx + 2y - z = 3\r\n2x -', '(x, y, z) = (-1, 2, -1)\r\n', '(x, y, z) = (11/5, -7/5, -4/5)', ' (x, y, z) = (3, 2, -1)\r\n\r\n\r\n\r\n', '(x, y, z) = (11/5, -7/5, -4/5)', 120),
(12, 'Quelle est la definition d\'un espace vectoriel ?\r\n', ' Un ensemble de vecteurs dans un espace euclidien.\r\n', 'Un ensemble de vecteurs avec des operations de multiplication et d\'addition definies.', ' Un ensemble de vecteurs lineairement independants.\r\n', 'Un ensemble de vecteurs avec des operations de multiplication et d\'addition definies.', 90),
(13, 'Quelle est la definition d\'un vecteur nul dans un espace vectoriel ?\r\n', ' Un vecteur avec une norme de zero.\r\n', 'Un vecteur avec toutes les composantes egales à zero.', ' Un vecteur qui ajoute une identite additive.\r\n', 'Un vecteur avec toutes les composantes egales à zero.', 90),
(14, 'Soit V un espace vectoriel sur le corps K. Si u et v sont des elements de V, quelle est la definitio', '(u + v)i = ui + vi pour tout i.', ' (u + v)i = ui * vi pour tout i.\r\n', ' (u + v)i = ui - vi pour tout i.\r\n', '(u + v)i = ui + vi pour tout i.', 90),
(15, 'Soit V un espace vectoriel et u, v et w des elements de V. Si u + v = u + w, quelle est la relation ', ' v = w\r\n\r\n', 'v - w est un vecteur nul, c\'est-à-dire que v et w sont egaux.', ' v et w sont lineairement independants\r\n', 'v - w est un vecteur nul, c\'est-à-dire que v et w sont egaux.', 120),
(16, 'Soit V un espace vectoriel sur le corps K et u un element de V. Si a et b sont des scalaires de K, q', 'au + bu = (a + b)*u', ' au + bu = (a - b)u\r\n', 'au + bu = (ab)*u\r\n', 'au + bu = (a + b)*u', 120),
(17, 'Soit V un espace vectoriel sur le corps K et u, v des elements de V. Si u et v sont lineairement ind', ' Tout vecteur dans V peut être ecrit comme une combinaison lineaire de u et v.\r\n', 'u et v sont les seuls vecteurs qui peuvent être ecrits comme des combinaisons lineaires de {u, v}.\r\n', '{u, v} est la plus petite collection de vecteurs lineairement independants qui engendre V.', '{u, v} est la plus petite collection de vecteurs lineairement independants qui engendre V.', 120),
(18, 'Soit V un espace vectoriel sur le corps K et u, v des elements de V. Si u et v sont orthogonaux, que', 'Le produit scalaire de u et v est egal à zero.', 'Le produit scalaire de u et v est egal à un.\r\n', 'Le produit scalaire de u et v est egal à -1.\r\n', 'Le produit scalaire de u et v est egal à zero.', 90),
(19, 'Qu\'est-ce qu\'une valeur propre d\'une matrice?\r\n', ' Une valeur numerique qui correspond à l\'une des entrees de la matrice.\r\n', ' Une valeur numerique qui correspond à l\'une des diagonales de la matrice.\r\n', 'Une valeur numerique lambda pour laquelle il existe un vecteur non nul v tel que Av = λv.', 'Une valeur numerique lambda pour laquelle il existe un vecteur non nul v tel que Av = λv.', 120),
(20, 'Comment calcule-t-on les valeurs propres d\'une matrice?\r\n', ' En calculant le determinant de la matrice.\r\n', ' En resolvant l\'equation caracteristique de la matrice.', ' En diagonalisant la matrice.\r\n', 'En resolvant l\'equation caracteristique de la matrice.', 90),
(21, 'Comment calcule-t-on les vecteurs propres d\'une matrice?\r\n', 'En utilisant la methode de Gauss-Jordan.\r\n', 'En resolvant le systeme d\'equations lineaires Av = λv.', ' En diagonalisant la matrice.\r\n', 'En resolvant le systeme d\'equations lineaires Av = λv.', 120),
(22, 'Quelle est la signification geometrique d\'un vecteur propre?\r\n', ' Le vecteur propre est un vecteur qui est orthogonal à tous les autres vecteurs de la matrice.\r\n', ' Le vecteur propre est un vecteur qui est aligne avec l\'un des axes de la matrice.\r\n ', 'Le vecteur propre est un vecteur qui reste dans la même direction lorsque la matrice est appliquee.', 'Le vecteur propre est un vecteur qui reste dans la même direction lorsque la matrice est appliquee.', 90),
(23, 'Une matrice est diagonalisable si et seulement si:\r\n', ' Elle a au moins une valeur propre.\r\n', ' Toutes ses valeurs propres sont reelles.\r\n', 'Elle a suffisamment de vecteurs propres lineairement independants.', 'Elle a suffisamment de vecteurs propres lineairement independants.', 120),
(24, 'Que peut-on dire de deux vecteurs propres associes à des valeurs propres differentes d\'une matrice?\r', ' Ils sont toujours orthogonaux.\r\n', 'Ils sont toujours colineaires.\r\n', 'Ils peuvent être orthogonaux ou non, mais ils sont toujours lineairement independants.', 'Ils peuvent être orthogonaux ou non, mais ils sont toujours lineairement independants.', 90),
(25, 'Si une matrice est symetrique, alors:\r\n', 'Toutes ses valeurs propres sont reelles.\r\n', ' Elle est diagonalisable.\r\n', 'Ses vecteurs propres associes à des valeurs propres differentes sont toujours orthogonaux.', 'Toutes ses valeurs propres sont reelles.\r\n', 120),
(26, 'Quelle est la definition d\'une valeur propre d\'une matrice A?\r\n', ' Une matrice dont le determinant est egal à zero\r\n', ' Une constante λ telle que A - λI est singuliere\r\n', 'Une matrice carree inversible\r\n', 'Une matrice carree inversible\r\n', 90),
(27, 'Si une matrice A a deux valeurs propres distinctes λ1 et λ2, quelle est l\'equation caracteristique d', '. det(A) = 0\r\n', 'det(A - λI) = 0\r\n', ' det(A + λI) = 0', 'det(A - λI) = 0\r\n', 120),
(28, 'Si une matrice A a une valeur propre λ avec un vecteur propre correspondant v, quelle est l\'equation', '. Av = λv\r\n', ' Av + λv = 0\r\n', 'Av - λv = 0\r\n', 'Av - λv = 0\r\n', 120),
(29, 'Si une matrice A a une valeur propre λ avec une multiplicite algebrique de 3, combien de vecteurs pr', '0', '1', '3', '1', 120),
(30, 'Si une matrice A a une valeur propre λ avec une multiplicite geometrique de 2, quelle est la dimensi', '1', '2', '0', '1', 120),
(1, 'Quel est le resultat de la multiplication de la matrice A = [ [2, 3], [1, 4] ] par la matrice B =   [[28, 7], [23, 10] ]\r\n', ' [ [16, 8], [11, 22] ]\r\n', '[ [28, 7], [29, 6] ]', '[ [28, 7], [29, 6] ]', '[ [28, 7], [29, 6] ]', 120),
(2, 'Quelle est l\'inverse de la matrice A = [ [1, 2], [3, 5] ] ?\r\n', ' [ [-5/7, 2/7], [3/7, -1/7] ]\r\n', ' [ [-5, 2], [3, -1] ]\r\n', '[ [5, -2], [-3, 1] ]', ' [ [-5, 2], [3, -1] ]\r\n', 120),
(3, 'Quel est le determinant de la matrice A = [ [3, 1, 2], [2, 1, 0], [1, 4, 2] ] ?\r\n', '-1', '-7', '7', '-7', 120),
(4, 'Quelle est la transposee de la matrice A = [ [2, 4, 6], [1, 3, 5] ] ?\r\n', ' [ [2, 1], [3, 3], [6, 5] ]\r\n', '\r\n [ [2, 1], [4, 3], [6, 5] ]\r\n', '[ [1, 2], [3, 4], [5, 6] ]', '[ [2, 1], [4, 3], [6, 5] ]\r\n', 120),
(5, 'Quel est le produit scalaire entre les vecteurs v = [3, 1, 2] et w = [2, 1, 4] ?\r\n', '8', '13', '20', '13', 120),
(6, 'Quelle est la solution du systeme d\'equations lineaires suivant ?\r\n\r\n2x - 3y = 5\r\n4x + 5y = 2', ' (x, y) = (-1, 1)\r\n', '(x, y) = (-5/17, 19/17)\r\n', '\r\n (x, y) = (2, -1)', '(x, y) = (-5/17, 19/17)', 120),
(7, 'Quel est le determinant de la matrice A = [ [2, 5], [3, 4] ] ?\r\n', '8', '9', '-7', '-7', 90),
(8, 'Quel est le determinant de la matrice B = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ] ?\r\n', '6', '0', '2', '0', 90),
(9, 'Quel est le determinant de la matrice C = [ [1, 2, 3], [0, 1, 4], [5, 6, 0] ] ?\r\n', '-62', '-17', '17', '-17', 120),
(10, 'Resoudre le systeme d\'equations lineaires suivant par la methode de Cramer :\r\n\r\n2x - 3y = 5\r\n4x + 5y', '(x, y) = (-1, 1)\r\n', ' (x, y) = (2, -1)\r\n', ' (x, y) = (-5/17, 19/17)', ' (x, y) = (-5/17, 19/17)', 120),
(11, 'Resoudre le systeme d\'equations lineaires suivant par la methode de Cramer :\r\n\r\nx + 2y - z = 3\r\n2x -', '(x, y, z) = (-1, 2, -1)\r\n', '(x, y, z) = (11/5, -7/5, -4/5)', ' (x, y, z) = (3, 2, -1)\r\n\r\n\r\n\r\n', '(x, y, z) = (11/5, -7/5, -4/5)', 120),
(12, 'Quelle est la definition d\'un espace vectoriel ?\r\n', ' Un ensemble de vecteurs dans un espace euclidien.\r\n', 'Un ensemble de vecteurs avec des operations de multiplication et d\'addition definies.', ' Un ensemble de vecteurs lineairement independants.\r\n', 'Un ensemble de vecteurs avec des operations de multiplication et d\'addition definies.', 90),
(13, 'Quelle est la definition d\'un vecteur nul dans un espace vectoriel ?\r\n', ' Un vecteur avec une norme de zero.\r\n', 'Un vecteur avec toutes les composantes egales à zero.', ' Un vecteur qui ajoute une identite additive.\r\n', 'Un vecteur avec toutes les composantes egales à zero.', 90),
(14, 'Soit V un espace vectoriel sur le corps K. Si u et v sont des elements de V, quelle est la definitio', '(u + v)i = ui + vi pour tout i.', ' (u + v)i = ui * vi pour tout i.\r\n', ' (u + v)i = ui - vi pour tout i.\r\n', '(u + v)i = ui + vi pour tout i.', 90),
(15, 'Soit V un espace vectoriel et u, v et w des elements de V. Si u + v = u + w, quelle est la relation ', ' v = w\r\n\r\n', 'v - w est un vecteur nul, c\'est-à-dire que v et w sont egaux.', ' v et w sont lineairement independants\r\n', 'v - w est un vecteur nul, c\'est-à-dire que v et w sont egaux.', 120),
(16, 'Soit V un espace vectoriel sur le corps K et u un element de V. Si a et b sont des scalaires de K, q', 'au + bu = (a + b)*u', ' au + bu = (a - b)u\r\n', 'au + bu = (ab)*u\r\n', 'au + bu = (a + b)*u', 120),
(17, 'Soit V un espace vectoriel sur le corps K et u, v des elements de V. Si u et v sont lineairement ind', ' Tout vecteur dans V peut être ecrit comme une combinaison lineaire de u et v.\r\n', 'u et v sont les seuls vecteurs qui peuvent être ecrits comme des combinaisons lineaires de {u, v}.\r\n', '{u, v} est la plus petite collection de vecteurs lineairement independants qui engendre V.', '{u, v} est la plus petite collection de vecteurs lineairement independants qui engendre V.', 120),
(18, 'Soit V un espace vectoriel sur le corps K et u, v des elements de V. Si u et v sont orthogonaux, que', 'Le produit scalaire de u et v est egal à zero.', 'Le produit scalaire de u et v est egal à un.\r\n', 'Le produit scalaire de u et v est egal à -1.\r\n', 'Le produit scalaire de u et v est egal à zero.', 90),
(19, 'Qu\'est-ce qu\'une valeur propre d\'une matrice?\r\n', ' Une valeur numerique qui correspond à l\'une des entrees de la matrice.\r\n', ' Une valeur numerique qui correspond à l\'une des diagonales de la matrice.\r\n', 'Une valeur numerique lambda pour laquelle il existe un vecteur non nul v tel que Av = λv.', 'Une valeur numerique lambda pour laquelle il existe un vecteur non nul v tel que Av = λv.', 120),
(20, 'Comment calcule-t-on les valeurs propres d\'une matrice?\r\n', ' En calculant le determinant de la matrice.\r\n', ' En resolvant l\'equation caracteristique de la matrice.', ' En diagonalisant la matrice.\r\n', 'En resolvant l\'equation caracteristique de la matrice.', 90),
(21, 'Comment calcule-t-on les vecteurs propres d\'une matrice?\r\n', 'En utilisant la methode de Gauss-Jordan.\r\n', 'En resolvant le systeme d\'equations lineaires Av = λv.', ' En diagonalisant la matrice.\r\n', 'En resolvant le systeme d\'equations lineaires Av = λv.', 120),
(22, 'Quelle est la signification geometrique d\'un vecteur propre?\r\n', ' Le vecteur propre est un vecteur qui est orthogonal à tous les autres vecteurs de la matrice.\r\n', ' Le vecteur propre est un vecteur qui est aligne avec l\'un des axes de la matrice.\r\n ', 'Le vecteur propre est un vecteur qui reste dans la même direction lorsque la matrice est appliquee.', 'Le vecteur propre est un vecteur qui reste dans la même direction lorsque la matrice est appliquee.', 90),
(23, 'Une matrice est diagonalisable si et seulement si:\r\n', ' Elle a au moins une valeur propre.\r\n', ' Toutes ses valeurs propres sont reelles.\r\n', 'Elle a suffisamment de vecteurs propres lineairement independants.', 'Elle a suffisamment de vecteurs propres lineairement independants.', 120),
(24, 'Que peut-on dire de deux vecteurs propres associes à des valeurs propres differentes d\'une matrice?\r', ' Ils sont toujours orthogonaux.\r\n', 'Ils sont toujours colineaires.\r\n', 'Ils peuvent être orthogonaux ou non, mais ils sont toujours lineairement independants.', 'Ils peuvent être orthogonaux ou non, mais ils sont toujours lineairement independants.', 90),
(25, 'Si une matrice est symetrique, alors:\r\n', 'Toutes ses valeurs propres sont reelles.\r\n', ' Elle est diagonalisable.\r\n', 'Ses vecteurs propres associes à des valeurs propres differentes sont toujours orthogonaux.', 'Toutes ses valeurs propres sont reelles.\r\n', 120),
(26, 'Quelle est la definition d\'une valeur propre d\'une matrice A?\r\n', ' Une matrice dont le determinant est egal à zero\r\n', ' Une constante λ telle que A - λI est singuliere\r\n', 'Une matrice carree inversible\r\n', 'Une matrice carree inversible\r\n', 90),
(27, 'Si une matrice A a deux valeurs propres distinctes λ1 et λ2, quelle est l\'equation caracteristique d', '. det(A) = 0\r\n', 'det(A - λI) = 0\r\n', ' det(A + λI) = 0', 'det(A - λI) = 0\r\n', 120),
(28, 'Si une matrice A a une valeur propre λ avec un vecteur propre correspondant v, quelle est l\'equation', '. Av = λv\r\n', ' Av + λv = 0\r\n', 'Av - λv = 0\r\n', 'Av - λv = 0\r\n', 120),
(29, 'Si une matrice A a une valeur propre λ avec une multiplicite algebrique de 3, combien de vecteurs pr', '0', '1', '3', '1', 120),
(30, 'Si une matrice A a une valeur propre λ avec une multiplicite geometrique de 2, quelle est la dimensi', '1', '2', '0', '1', 120);

-- --------------------------------------------------------

--
-- Structure de la table `Algebre III`
--

CREATE TABLE `Algebre III` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Algebre III`
--

INSERT INTO `Algebre III` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Qu\'est-ce qu\'un espace vectoriel ?\r\n', 'Un ensemble avec une structure algebrique complexe.\r\n', 'Un ensemble de vecteurs qui peuvent être combines avec des scalaires', ' Un ensemble de nombres reels qui peuvent être additionnes et soustraits.\r\n', 'Un ensemble de vecteurs qui peuvent être combines avec des scalaires', 90),
(2, 'Quelle est la definition d\'une base d\'un espace vectoriel ?\r\n', 'Un sous-ensemble d\'un espace vectoriel qui genere tout l\'espace vectoriel.\r\n', ' Un sous-ensemble d\'un espace vectoriel qui est lineairement independant et genere tout l\'espace vec', 'Un sous-ensemble d\'un espace vectoriel qui est lineairement dependant et genere tout l\'espace vector', ' Un sous-ensemble d\'un espace vectoriel qui est lineairement independant et genere tout l\'espace vec', 90),
(3, 'Qu\'est-ce que la dimension d\'un espace vectoriel ?\r\n', 'Le nombre de vecteurs dans une base de l\'espace vectoriel.', ' Le nombre de dimensions spatiales dans l\'espace vectoriel.\r\n', 'Le nombre de vecteurs dans l\'espace vectoriel.\r\n', 'Le nombre de vecteurs dans une base de l\'espace vectoriel.', 90),
(4, 'Qu\'est-ce que l\'intersection de deux sous-espaces vectoriels ?\r\n', 'Le sous-espace vectoriel qui contient tous les vecteurs communs aux deux sous-espaces vectoriels.', ' Le sous-espace vectoriel qui contient tous les vecteurs de l\'un ou l\'autre des deux sous-espaces ve', ' L\'ensemble vide.\r\n', 'Le sous-espace vectoriel qui contient tous les vecteurs communs aux deux sous-espaces vectoriels.', 90),
(5, 'Quelle est la definition d\'un sous-espace vectoriel ?\r\n', ' Un sous-ensemble d\'un espace vectoriel qui contient tous les vecteurs du même type.\r\n\r\n', ' Un sous-ensemble d\'un espace vectoriel qui contient tous les vecteurs lineairement independants.\r\n', 'Un sous-ensemble d\'un espace vectoriel qui est ferme par rapport à l\'addition et la multiplication', 'Un sous-ensemble d\'un espace vectoriel qui est ferme par rapport à l\'addition et la multiplication', 90),
(6, 'Qu\'est-ce que la somme de deux sous-espaces vectoriels ?\r\n', 'Le sous-espace vectoriel qui contient tous les vecteurs de l\'un ou l\'autre des deux sous-espaces ve', ' Le sous-espace vectoriel qui contient tous les vecteurs communs aux deux sous-espaces vectoriels.\r\n', ' L\'ensemble vide.\r\n', ' Le sous-espace vectoriel qui contient tous les vecteurs de l\'un ou l\'autre des deux sous-espaces ve', 90),
(7, 'Qu\'est-ce qu\'une application lineaire ?\r\n', ' Une fonction qui ne respecte pas la loi de composition interne.\r\n', 'Une fonction qui respecte la loi de composition interne.', ' Une fonction qui peut être definie sur un intervalle quelconque.\r\n', 'Une fonction qui respecte la loi de composition interne.', 90),
(8, 'Quel est le noyau d\'une application lineaire ?\r\n', ' L\'ensemble des vecteurs qui sont envoyes sur le vecteur nul.', 'L\'ensemble des vecteurs qui sont envoyes sur un vecteur non nul.\r\n', ' L\'ensemble des vecteurs qui sont envoyes sur un scalaire non nul.\r\n', 'L\'ensemble des vecteurs qui sont envoyes sur le vecteur nul.', 90),
(9, 'Quel est l\'image d\'un vecteur par une application lineaire ?\r\n', ' L\'ensemble des vecteurs qui sont envoyes sur le vecteur nul.\r\n', ' L\'ensemble des vecteurs qui sont envoyes sur un vecteur non nul.\r\n', 'Le vecteur obtenu apres l\'application de la transformation.', 'Le vecteur obtenu apres l\'application de la transformation.', 90),
(10, 'Comment peut-on determiner si une application lineaire est injective ?\r\n', ' En calculant le noyau de l\'application lineaire.\r\n', ' En calculant l\'image de l\'application lineaire.\r\n', ' En verifiant si deux vecteurs differents ont la même image.', ' En verifiant si deux vecteurs differents ont la même image.', 90),
(11, 'Comment peut-on determiner si une application lineaire est surjective ?\r\n', ' En calculant le noyau de l\'application lineaire.\r\n', ' En calculant l\'image de l\'application lineaire.\r\n', 'En verifiant si tous les vecteurs de l\'espace d\'arrivee ont une pre-image.', 'En verifiant si tous les vecteurs de l\'espace d\'arrivee ont une pre-image.', 90),
(12, 'Comment peut-on determiner si une application lineaire est bijective ?\r\n', 'En verifiant si elle est injective et surjective.', ' En calculant le noyau de l\'application lineaire.\r\n', ' En calculant l\'image de l\'application lineaire.\r\n', 'En verifiant si elle est injective et surjective.', 90),
(13, 'Qu\'est-ce que la matrice d\'une application lineaire ?\r\n', 'Une matrice qui represente la transformation lineaire.', 'Une matrice qui represente les coefficients de la transformation lineaire.\r\n', 'Une matrice qui represente les vecteurs de l\'espace d\'arrivee.\r\n', ' Une matrice qui represente la transformation lineaire.', 90),
(14, 'Comment peut-on multiplier une matrice par un vecteur ?\r\n', 'En multipliant les coefficients de la matrice par les composantes du vecteur.', ' En multipliant les composantes de la matrice par les coefficients du vecteur.\r\n', ' En additionnant les composantes de la matrice et du vecteur.\r\n', ' En multipliant les coefficients de la matrice par les composantes du vecteur.', 90),
(15, 'Comment peut-on determiner si une matrice est inversible ?\r\n', 'En verifiant si son determinant est nul.\r\n', ' En verifiant si elle est diagonale.\r\n', ' En verifiant si elle est carree.', ' En verifiant si son determinant est nul.\r\n', 90),
(16, 'Qu\'est-ce qu\'une matrice carree?\r\n', 'Une matrice ayant plus de colonnes que de lignes\r\n', 'Une matrice ayant autant de colonnes que de lignes\r\n', ' Une matrice ayant plus de lignes que de colonnes', 'Une matrice ayant autant de colonnes que de lignes\r\n', 90),
(17, 'Quel est le determinant d\'une matrice 2x2?\r\n', 'ad-bc\r\n', ' ab+cd\r\n', ' (a+b)*(c+d)', 'ad-bc\r\n', 90),
(18, 'Comment appelle-t-on un ensemble de vecteurs qui peuvent être combines lineairement pour former tout', 'Base\r\n', ' Matrice\r\n', ' Determinant', 'Base\r\n', 90),
(19, 'Comment determine-t-on si un systeme lineaire a une solution unique, aucune solution ou une infinite', 'En resolvant le systeme d\'equations lineaires\r\n', ' En calculant la matrice inverse\r\n', ' En trouvant le vecteur nul', 'En resolvant le systeme d\'equations lineaires\r\n', 90),
(20, 'Comment calcule-t-on le produit matriciel de deux matrices A et B?\r\n', ' En multipliant les elements de la même position dans les deux matrices\r\n', 'En multipliant les elements de chaque ligne de A par chaque colonne de B\r\n', 'En additionnant les elements de la même position dans les deux matrices', 'En multipliant les elements de chaque ligne de A par chaque colonne de B\r\n', 90),
(21, 'Qu\'est-ce qu\'une application lineaire?\r\n', ' Une fonction qui transforme un vecteur en une matrice\r\n', 'Une fonction qui preserve les operations de somme et de multiplication par un scalaire\r\n', 'Une fonction qui effectue une operation de division sur une matrice', 'Une fonction qui preserve les operations de somme et de multiplication par un scalaire\r\n', 90),
(22, 'Comment calcule-t-on l\'inverse d\'une matrice?\r\n', 'En multipliant la matrice par son transpose\r\n', ' En resolvant un systeme d\'equations lineaires\r\n', 'En utilisant la formule (1/det(A)) * adj(A), où adj(A) est la matrice des cofacteurs de A', 'En utilisant la formule (1/det(A)) * adj(A), où adj(A) est la matrice des cofacteurs de A', 90),
(23, 'Qu\'est-ce que la trace d\'une matrice?\r\n', 'La somme des elements de la diagonale principale d\'une matrice carree\r\n', ' La difference entre le determinant et la trace d\'une matrice\r\n', ' Le produit des elements de la diagonale principale d\'une matrice carree', 'La somme des elements de la diagonale principale d\'une matrice carree\r\n', 90),
(24, 'Comment calcule-t-on la dimension d\'un espace vectoriel?\r\n', ' En comptant le nombre de vecteurs dans la base de l\'espace vectoriel\r\n', ' En comptant le nombre de lignes et de colonnes dans la matrice representant l\'espace vectoriel\r\n', 'En calculant le nombre maximum de vecteurs lineairement independants dans l\'espace vectoriel', 'En calculant le nombre maximum de vecteurs lineairement independants dans l\'espace vectoriel', 90),
(25, 'Comment resout-on un systeme d\'equations lineaires à l\'aide de la methode de Gauss-Jordan?\r\n', ' En multipliant chaque equation par un scalaire pour eliminer les inconnues\r\n', ' En additionnant ou soustrayant des equations pour eliminer les inconnues\r\n', 'En effectuant des operations elementaires sur les lignes de la matrice augmentee du systeme jusqu\'à', 'En effectuant des operations elementaires sur les lignes de la matrice augmentee du systeme jusqu\'', 90),
(26, 'Qu\'est-ce qu\'un vecteur propre d\'une matrice?\r\n', 'Un vecteur qui reste inchange lorsqu\'il est multiplie par la matrice', 'Un vecteur qui est orthogonal à tous les autres vecteurs de la matrice\r\n', ' Un vecteur dont la somme avec tous les autres vecteurs de la matrice est egale à zero\r\n', 'Un vecteur qui reste inchange lorsqu\'il est multiplie par la matrice', 90),
(27, 'Comment calcule-t-on les valeurs propres d\'une matrice?\r\n', 'En resolvant l\'equation caracteristique de la matrice', ' En calculant la matrice inverse de la matrice\r\n', ' En effectuant une factorisation LU de la matrice\r\n', 'En resolvant l\'equation caracteristique de la matrice', 90),
(28, 'Que signifie une valeur propre nulle pour une matrice?\r\n', 'Il n\'y a pas de vecteurs propres pour cette matrice', ' Tous les vecteurs de la matrice sont des vecteurs propres\r\n', ' La matrice n\'a pas d\'inverse\r\n', 'Il n\'y a pas de vecteurs propres pour cette matrice', 90),
(29, 'Quelle est la dimension d\'un vecteur propre associe à une valeur propre donnee?\r\n', ' Elle peut varier en fonction de la matrice\r\n', 'Elle est toujours egale à la dimension de la matrice\r\n', ' Elle est toujours egale à 1', 'Elle est toujours egale à 1', 90),
(30, 'Comment peut-on utiliser les vecteurs propres pour diagonaliser une matrice?\r\n', 'En multipliant la matrice par une matrice de passage constituee des vecteurs propres', ' En multipliant la matrice par l\'inverse de la matrice de vecteurs propres\r\n', ' En multipliant chaque vecteur propre par sa valeur propre correspondante\r\n', 'En multipliant la matrice par une matrice de passage constituee des vecteurs propres', 90);

-- --------------------------------------------------------

--
-- Structure de la table `Analyse I`
--

CREATE TABLE `Analyse I` (
  `id` int(1) NOT NULL,
  `question` varchar(200) NOT NULL,
  `reponseA` varchar(200) NOT NULL,
  `reponseB` varchar(200) NOT NULL,
  `reponseC` varchar(200) NOT NULL,
  `solution` varchar(200) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Analyse I`
--

INSERT INTO `Analyse I` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Quelle est la derivee de la fonction constante f(x)=C', 'f\'(x) = x', 'f\'(x) = 0', 'f\'(x) = C', 'f\'(x) = 0', 30),
(2, 'Quelle est la derivee de la fonction exponentielle', 'f\'(x) = e ', ' f\'(x) = x ', ' f\'(x) = e^x', ' f\'(x) = e^x', 60),
(3, 'Quelle est la derivee de la fonction logarithmique', ' f\'(x) = 1/x ', 'f\'(x) = x ', ' f\'(x) = ln(x)', ' f\'(x) = 1/x ', 30),
(4, 'Quelle est la derivee de la fonction f(x) = x^2 ?\r\n', ' f\'(x) = 2x\r\n', ' f\'(x) = x\r\n', ' f\'(x) = 1/x', ' f\'(x) = 2x\n', 60),
(5, 'Quelle est la derivee de la fonction cosinus f(x)=cos(x)', ' f\'(x) = sin(x) ', 'f\'(x) = -sin(x)', 'f\'(x) = cos(x) ', 'f\'(x) = -sin(x)', 30),
(6, 'Quelle est la limite de la fonction f(x) = x^2-3x+2', '2 ', '0', '3', '0', 60),
(7, 'Quelle est la limite de la fonction f(x) = (x-1)/(x^2-1) lorsque x tend vers 1 ?\r\n', 'La limite n\'existe pas\r\n', 'La limite est egale à 1/2', 'La limite est egale à 1\r\n', 'La limite est egale à 1/2', 90),
(8, 'Quelle est la derivee de la fonction sinus f(x) = sin(x)', ' f\'(x) = sin(x)', ' f\'(x) = -sin(x) ', 'f\'(x) = cos(x)', 'f\'(x) = cos(x)', 30),
(9, 'Quelle est la derivee de la fonction logarithmique', ' f\'(x) = 1/x ', ' f\'(x) = ln(10)', ' f\'(x) = 1/(xln(10))', ' f\'(x) = 1/(xln(10))', 60),
(10, 'Quelle est la limite de la fonction f(x) = (x^2-4)', '0', '1', '4', '4', 60),
(11, 'Quelle est la limite de la fonction f(x) = x^2 - 3', '3', '1', '0', '1', 60),
(12, 'Soit la suite definie par u_n = n^2 + 3n - 1. Quelle est la limite de cette suite ?\r\n', '-inf', '+inf', 'La suite n\'a pas de limite.', '+inf', 60),
(13, 'Soit f(x) = x^3 - 3x + 2. Quel est le maximum abso', '6', '2', '3', '6', 90),
(14, 'Soit la suite definie par u_0 = 1 et u_n+1 = u_n/2 + 3 pour tout entier naturel n. Quelle est la limite de cette suite ?\r\n', '-inf', '+inf', 'La suite converge vers 6.\r\n', 'La suite converge vers 6.\n', 90),
(15, 'Soit la suite definie par u_n = (n-1)/(n+1). Quelle est la limite de cette suite ?\r\n', ' -1\r\n', '0\r\n', ' 1\r\n', '0\n', 90),
(16, 'Quelle est la primitive de la fonction f(x) = 3x^2', ' x^3 - x^2 + x + C ', ' x^3 - x^2 + 3x + C ', ' x^3 - x^2 + 2x + C ', ' x^3 - x^2 + x + C ', 90),
(17, 'Soit f(x) = 2x^3 - x^2 + 3x - 1. Quelle est la derivee', '12x^2 - 2 ', '12x^2 - 2x + 3 ', '12x - 2 ', '12x^2 - 2 ', 120),
(18, 'Quelle est la definition d\'une suite convergente ?\r\n', 'Une suite dont les termes tendent vers l\'infini.', 'Une suite dont les termes tendent vers une limite finie', 'Une suite dont les termes tendent vers zero', 'Une suite dont les termes tendent vers une limite finie', 60),
(19, 'Quelle est la definition d\'une suite croissante ?\r\n', ' Une suite dont les termes sont tous positifs.\r\n', 'Une suite dont chaque terme est plus grand que le terme precedent.\n', 'Une suite dont chaque terme est plus petit que le terme precedent.\r\n', 'Une suite dont chaque terme est plus grand que le terme precedent.\n', 60),
(20, 'Soit f(x) = x^3 - 3x + 2. Quel est le minimum abso', '1 ', '-1', '0', '-1', 90),
(21, 'Comment peut-on caracteriser une suite divergente ?\r\n', 'Les termes de la suite sont tous positifs.\r\n', ' Les termes de la suite tendent vers l\'infini.\r\n', 'Les termes de la suite ne tendent pas vers une limite finie', 'Les termes de la suite ne tendent pas vers une limite finie', 60),
(22, 'Qu\'est-ce que la derivation d\'une fonction composee ?\r\n', 'La derivation d\'une fonction composee est egale à la somme des derivees des fonctions qui la composent.\r\n', 'La derivation d\'une fonction composee est egale au produit des derivees des fonctions qui la composent.\r\n', 'La derivation d\'une fonction composee est egale au produit de la derivee de la fonction exterieure par la derivee de la fonction interieure', ' La derivation d\'une fonction composee est egale au produit de la derivee de la fonction exterieure par la derivee de la fonction interieure', 60),
(23, 'Calculer l\'integrale de la fonction h(x) = 4x^3 - 2x + 5 entre 0 et 2 :\r\n', '26', '38', '46', '46', 90),
(24, 'Calculer la limite de la fonction g(x) = (2x^2 - 5x + 1) / (x - 2) lorsque x tend vers 2 :\r\n', ' La limite n\'existe pas.\r\n', ' La limite est egale à -3.\r\n', 'La limite est egale à 0', ' La limite est egale à -3.\n', 60),
(25, 'Trouvez les valeurs de k pour lesquelles la droite', 'k = 1', 'k = 2', 'k = 3 ', 'k = 2', 120),
(26, 'Trouvez les points d\'inflexion de la courbe y = x^', ' (0,0) ', '(1, 0)', '(2, -4) ', '(1, 0)', 120),
(27, 'Trouvez l\'aire de la region delimitee par les cour', '4/3 ', '16/3', '32/3', '16/3', 120),
(28, 'Qu\'est-ce qu\'une integrale definie?\r\n', 'Une limite de sommes de Riemann', 'Une fonction continue\r\n', 'Une fonction derivee\r\n', 'Une limite de sommes de Riemann', 60),
(29, 'Quel est le theoreme fondamental de l\'analyse?\r\n', ' Le theoreme de la valeur intermediaire', 'Le theoreme de Rolle\r\n', 'Le theoreme de la derivation de l\'integrale\r\n', 'Le theoreme de la derivation de l\'integrale', 60),
(30, 'Trouvez les valeurs de x pour lesquelles la foncti', ' x < 0 ou x > 2 ', ' 0 < x < 2 ', 'x < 1 ou x > 2 ', 'x < 0 ou x > 2', 120);

-- --------------------------------------------------------

--
-- Structure de la table `Analyse II`
--

CREATE TABLE `Analyse II` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Analyse II`
--

INSERT INTO `Analyse II` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Quelle est la definition de la derivee d\'une fonction f(x) en un point x0 ?\r\n', 'La pente de la tangente à la courbe de f(x) en x0.\r\n', ' La pente de la droite secante à la courbe de f(x) en x0.\r\n', ' La valeur de f(x) en x0.\r\n', 'La pente de la tangente à la courbe de f(x) en x0.', 90),
(2, 'Qu\'est-ce que la regle de la chaîne en calcul differentiel ?\r\n', 'Une regle qui permet de determiner la derivee d\'une fonction composee.\r\n', ' Une regle qui permet de determiner l\'integrale d\'une fonction composee.\r\n', ' Une regle qui permet de determiner la limite d\'une fonction composee.\r\n', 'Une regle qui permet de determiner la derivee d\'une fonction composee', 90),
(3, 'Quelle est la definition de l\'integrale definie d\'une fonction f(x) sur un intervalle [a, b] ?\r\n', 'La limite de la somme des aires des rectangles sous la courbe de f(x) lorsque le nombre de rectangl', ' La somme des aires des rectangles sous la courbe de f(x) lorsque le nombre de rectangles est fini.\r', ' La valeur moyenne de f(x) sur l\'intervalle [a, b].\r\n', 'La limite de la somme des aires des rectangles sous la courbe de f(x) lorsque le nombre de rectangl', 90),
(4, 'Qu\'est-ce qu\'une integrale indefinie d\'une fonction f(x) ?\r\n', 'Une integrale pour laquelle la borne inferieure est egale à la borne superieure.\r\n', 'Une integrale qui peut être evaluee en utilisant la regle de la chaîne.', ' Une integrale pour laquelle la borne superieure est infinie.\r\n', 'Une integrale qui peut être evaluee en utilisant la regle de la chaîne.', 90),
(5, 'Quelle est la definition d\'une serie numerique ?\r\n', 'Une somme infinie de nombres reels.', 'Une somme finie de nombres reels.\r\n', ' Un produit fini de nombres reels.\r\n', 'Une somme infinie de nombres reels.', 90),
(6, 'Quelle est la definition d\'une equation differentielle lineaire ?\r\n', 'Une equation qui ne contient que des fonctions lineaires de la fonction inconnue et de sa derivee.', ' Une equation qui contient un produit de la fonction inconnue et de sa derivee.\r\n\r\n', 'Une equation qui ne contient que des fonctions quadratiques de la fonction inconnue et de sa derivee', 'Une equation qui ne contient que des fonctions lineaires de la fonction inconnue et de sa derivee.', 90),
(7, 'Quelle est la solution generale d\'une equation differentielle lineaire homogene du premier ordre ?\r\n', ' Une fonction constante.\r\n', ' Une fonction lineaire.\r\n', 'Une combinaison lineaire de fonctions exponentielles.', 'Une combinaison lineaire de fonctions exponentielles.', 90),
(8, 'Qu\'est-ce que le facteur integrant d\'une equation differentielle lineaire du premier ordre non homog', 'Une fonction qui multiplie la fonction inconnue dans l\'equation pour rendre homogene l\'equation.\r\n ', 'Une fonction qui multiplie la fonction inconnue dans l\'equation pour rendre non homogene l\'equation', ' Une fonction qui divise la fonction inconnue dans l\'equation pour rendre homogene l\'equation.\r\n', 'Une fonction qui multiplie la fonction inconnue dans l\'equation pour rendre non homogene l\'equation', 90),
(9, 'Qu\'est-ce que la methode de variation des constantes pour resoudre une equation differentielle linea', ' Une methode qui consiste à chercher une solution particuliere sous forme d\'une combinaison lineaire', ' Une methode qui consiste à chercher une solution particuliere sous forme d\'une combinaison lineaire', 'Une methode qui consiste à chercher une solution particuliere sous forme d\'une combinaison lineaire', 'Une methode qui consiste à chercher une solution particuliere sous forme d\'une combinaison lineaire', 90),
(10, 'Qu\'est-ce que la methode de Laplace pour resoudre une equation differentielle lineaire non homogene ', ' Une methode qui consiste à chercher une solution particuliere sous forme d\'une combinaison lineaire', ' Une methode qui consiste à chercher une solution particuliere sous forme d\'une combinaison lineaire', 'Une methode qui consiste à transformer l\'equation differentielle en une equation algebrique en util', 'Une methode qui consiste à transformer l\'equation differentielle en une equation algebrique en util', 90),
(11, 'Calculer l\'integrale ∫[0,1] (x^2 - 2x) dx?\r\n', '-1/6', '-1/2\r\n', ' -1/3\r\n', '-1/6', 90),
(12, 'Calculer l\'integrale ∫[1,3] (3x^2 + 2x + 1) dx\r\n?', '42', ' 56\r\n', '60', '42', 90),
(13, 'Soit f(x) = 2x^3 - 5x^2 + 3x + 2. Si f est continue sur l\'intervalle [0,1], quelle est la valeur de ', ' 1/2\r\n', '3/2', '5/2\r\n', ' 3/2', 90),
(14, 'Soit g(x) une fonction continue sur l\'intervalle [0,2] telle que g(0) = 0, g(1) = 1, g(2) = 0. Quell', '1/2', '0', '1', '1/2', 90),
(15, 'Soit h(x) une fonction continue sur l\'intervalle [-2,2] telle que h(x) = 0 pour x < 0 et h(x) = x^2 ', ' 16/3\r\n\r\n\r\n', '8/3\r\n\r\n', ' 4/3\r\n\r\n', '8/3\r\n\r\n', 90),
(16, 'Quelle est la solution generale de l\'equation differentielle lineaire suivante : y\'\' + 4y\' + 3y = 0 ', 'y(x) = c1e^(-x) + c2e^(-2x)', ' y(x) = c1e^(-x) + c2e^(-3x)\r\n', 'y(x) = c1e^(-2x) + c2e^(-3x)\r\n\r\n\r\n', 'y(x) = c1e^(-x) + c2e^(-2x)', 120),
(17, 'Quelle est la solution generale de l\'equation differentielle lineaire suivante : y\'\' - 5y\' + 6y = 0 ', ' y(x) = c1e^(2x) + c2e^(3x)\r\n', 'y(x) = c1e^(2x) + c2e^(x)', ' y(x) = c1e^(3x) + c2e^(2x)\r\n', ' y(x) = c1e^(2x) + c2e^(x)', 120),
(18, 'Quelle est la solution generale de l\'equation differentielle lineaire suivante : y\'\' - 4y\' + 4y = 0 ', ' y(x) = c1e^(2x) + c2xe^(2x)\r\n', 'y(x) = (c1 + c2x)e^(2x)', 'y(x) = (c1 + c2x)e^(2x) + e^(2x)ln|x|\r\n\r\n', 'y(x) = (c1 + c2x)e^(2x)', 120),
(19, 'Quelle est la solution generale de l\'equation differentielle lineaire suivante : y\'\' + 2y\' + y = x ?', ' y(x) = c1e^(-x) + c2xe^(-x) + x - 1\r\n', 'y(x) = c1e^(-x) + c2e^(-x) + x - 1\r\n', ' y(x) = c1e^(-x) + c2xe^(-x) + x^2/2 - x + 1\r\n\r\n', 'y(x) = c1e^(-x) + c2xe^(-x) + x - 1\r\n', 120),
(20, 'Quelle est la solution generale de l\'equation differentielle lineaire suivante : y\'\' + 4y\' + 4y = e^', 'y(x) = c1e^(-2x) + c2xe^(-2x) + e^(-2x)', ' y(x) = c1e^(-2x) + c2xe^(-2x) + xe^(-2x)\r\n', ' y(x) = c1e^(-2x) + c2xe^(-2x) + e^(2x)\r\n\r\n', 'y(x) = c1e^(-2x) + c2xe^(-2x) + e^(-2x)', 120),
(21, 'Qu\'est-ce que l\'integrale de Riemann ?\r\n', 'Une methode pour trouver l\'aire sous une courbe.', 'Une methode pour trouver la derivee d\'une fonction\r\n', ' Une methode pour resoudre des equations differentielles\r\n', 'Une methode pour trouver l\'aire sous une courbe.', 90),
(22, 'Comment divise-t-on l\'intervalle d\'integration pour calculer l\'integrale de Riemann ?\r\n', 'En le divisant en intervalles de taille egale.', ' En utilisant la methode de la substitution\r\n', ' En choisissant des points de division arbitraires\r\n', 'En le divisant en intervalles de taille egale.', 90),
(23, 'Que se passe-t-il lorsque le nombre de subdivisions de l\'intervalle d\'integration augmente ?\r\n', 'L\'approximation de l\'integrale devient plus precise.', ' L\'approximation de l\'integrale devient moins precise\r\n', ' L\'approximation de l\'integrale ne change pas\r\n', 'L\'approximation de l\'integrale devient plus precise.', 90),
(24, 'Calculer l\'integrale de Riemann de la fonction f(x) = x^2 sur l\'intervalle [0, 2] avec 4 subdivision', '3.75.', ' 4.5\r\n', ' 5.25\r\n', '3.75.', 120),
(25, 'Quelle est la condition necessaire pour qu\'une fonction f(x) soit integrable selon la definition de ', ' f(x) doit être continue sur l\'intervalle d\'integration [a,b]\r\n', ' f(x) doit être monotone sur l\'intervalle d\'integration [a,b]\r\n', 'f(x) doit être bornee sur l\'intervalle d\'integration [a,b]', 'f(x) doit être bornee sur l\'intervalle d\'integration [a,b]', 90),
(26, 'Comment peut-on utiliser la somme de Riemann pour approximer l\'integrale d\'une fonction ?\r\n', 'En augmentant le nombre de subdivisions de l\'intervalle d\'integration', ' En choisissant des points de division plus petits\r\n', ' En choisissant des points de division plus larges\r\n', 'En augmentant le nombre de subdivisions de l\'intervalle d\'integration', 90),
(27, 'Calculer l\'integrale generalisee de la fonction f(x) = 1/x sur l\'intervalle [1, +∞].\r\n', 'diverge.', ' converge vers 0\r\n', ' converge vers l\'infini\r\n', 'diverge.', 90),
(28, 'Calculer l\'integrale generalisee de la fonction f(x) = 1/(x^2) sur l\'intervalle [1, +∞].\r\n', ' diverge\r\n', 'converge vers 0.', ' converge vers 1\r\n', 'converge vers 0.', 90),
(29, 'Calculer l\'integrale generalisee de la fonction f(x) = 1/x sur l\'intervalle [0, 1].\r\n', ' diverge\r\n', ' converge vers 0\r\n', 'converge vers l\'infini.', 'converge vers l\'infini.', 90),
(30, 'Comment calcule-t-on une integrale generalisee ?\r\n', ' En utilisant la même formule que l\'integrale de Riemann\r\n', 'En utilisant une formule specifique pour les integrales generalisees.', ' Il n\'est pas possible de calculer une integrale generalisee\r\n', 'En utilisant une formule specifique pour les integrales generalisees.', 90),
(1, 'Quelle est la definition de la derivee d\'une fonction f(x) en un point x0 ?\r\n', 'La pente de la tangente à la courbe de f(x) en x0.\r\n', ' La pente de la droite secante à la courbe de f(x) en x0.\r\n', ' La valeur de f(x) en x0.\r\n', 'La pente de la tangente à la courbe de f(x) en x0.', 90),
(2, 'Qu\'est-ce que la regle de la chaîne en calcul differentiel ?\r\n', 'Une regle qui permet de determiner la derivee d\'une fonction composee.\r\n', ' Une regle qui permet de determiner l\'integrale d\'une fonction composee.\r\n', ' Une regle qui permet de determiner la limite d\'une fonction composee.\r\n', 'Une regle qui permet de determiner la derivee d\'une fonction composee', 90),
(3, 'Quelle est la definition de l\'integrale definie d\'une fonction f(x) sur un intervalle [a, b] ?\r\n', 'La limite de la somme des aires des rectangles sous la courbe de f(x) lorsque le nombre de rectangl', ' La somme des aires des rectangles sous la courbe de f(x) lorsque le nombre de rectangles est fini.\r', ' La valeur moyenne de f(x) sur l\'intervalle [a, b].\r\n', 'La limite de la somme des aires des rectangles sous la courbe de f(x) lorsque le nombre de rectangl', 90),
(4, 'Qu\'est-ce qu\'une integrale indefinie d\'une fonction f(x) ?\r\n', 'Une integrale pour laquelle la borne inferieure est egale à la borne superieure.\r\n', 'Une integrale qui peut être evaluee en utilisant la regle de la chaîne.', ' Une integrale pour laquelle la borne superieure est infinie.\r\n', 'Une integrale qui peut être evaluee en utilisant la regle de la chaîne.', 90),
(5, 'Quelle est la definition d\'une serie numerique ?\r\n', 'Une somme infinie de nombres reels.', 'Une somme finie de nombres reels.\r\n', ' Un produit fini de nombres reels.\r\n', 'Une somme infinie de nombres reels.', 90),
(6, 'Quelle est la definition d\'une equation differentielle lineaire ?\r\n', 'Une equation qui ne contient que des fonctions lineaires de la fonction inconnue et de sa derivee.', ' Une equation qui contient un produit de la fonction inconnue et de sa derivee.\r\n\r\n', 'Une equation qui ne contient que des fonctions quadratiques de la fonction inconnue et de sa derivee', 'Une equation qui ne contient que des fonctions lineaires de la fonction inconnue et de sa derivee.', 90),
(7, 'Quelle est la solution generale d\'une equation differentielle lineaire homogene du premier ordre ?\r\n', ' Une fonction constante.\r\n', ' Une fonction lineaire.\r\n', 'Une combinaison lineaire de fonctions exponentielles.', 'Une combinaison lineaire de fonctions exponentielles.', 90),
(8, 'Qu\'est-ce que le facteur integrant d\'une equation differentielle lineaire du premier ordre non homog', 'Une fonction qui multiplie la fonction inconnue dans l\'equation pour rendre homogene l\'equation.\r\n ', 'Une fonction qui multiplie la fonction inconnue dans l\'equation pour rendre non homogene l\'equation', ' Une fonction qui divise la fonction inconnue dans l\'equation pour rendre homogene l\'equation.\r\n', 'Une fonction qui multiplie la fonction inconnue dans l\'equation pour rendre non homogene l\'equation', 90),
(9, 'Qu\'est-ce que la methode de variation des constantes pour resoudre une equation differentielle linea', ' Une methode qui consiste à chercher une solution particuliere sous forme d\'une combinaison lineaire', ' Une methode qui consiste à chercher une solution particuliere sous forme d\'une combinaison lineaire', 'Une methode qui consiste à chercher une solution particuliere sous forme d\'une combinaison lineaire', 'Une methode qui consiste à chercher une solution particuliere sous forme d\'une combinaison lineaire', 90),
(10, 'Qu\'est-ce que la methode de Laplace pour resoudre une equation differentielle lineaire non homogene ', ' Une methode qui consiste à chercher une solution particuliere sous forme d\'une combinaison lineaire', ' Une methode qui consiste à chercher une solution particuliere sous forme d\'une combinaison lineaire', 'Une methode qui consiste à transformer l\'equation differentielle en une equation algebrique en util', 'Une methode qui consiste à transformer l\'equation differentielle en une equation algebrique en util', 90),
(11, 'Calculer l\'integrale ∫[0,1] (x^2 - 2x) dx?\r\n', '-1/6', '-1/2\r\n', ' -1/3\r\n', '-1/6', 90),
(12, 'Calculer l\'integrale ∫[1,3] (3x^2 + 2x + 1) dx\r\n?', '42', ' 56\r\n', '60', '42', 90),
(13, 'Soit f(x) = 2x^3 - 5x^2 + 3x + 2. Si f est continue sur l\'intervalle [0,1], quelle est la valeur de ', ' 1/2\r\n', '3/2', '5/2\r\n', ' 3/2', 90),
(14, 'Soit g(x) une fonction continue sur l\'intervalle [0,2] telle que g(0) = 0, g(1) = 1, g(2) = 0. Quell', '1/2', '0', '1', '1/2', 90),
(15, 'Soit h(x) une fonction continue sur l\'intervalle [-2,2] telle que h(x) = 0 pour x < 0 et h(x) = x^2 ', ' 16/3\r\n\r\n\r\n', '8/3\r\n\r\n', ' 4/3\r\n\r\n', '8/3\r\n\r\n', 90),
(16, 'Quelle est la solution generale de l\'equation differentielle lineaire suivante : y\'\' + 4y\' + 3y = 0 ', 'y(x) = c1e^(-x) + c2e^(-2x)', ' y(x) = c1e^(-x) + c2e^(-3x)\r\n', 'y(x) = c1e^(-2x) + c2e^(-3x)\r\n\r\n\r\n', 'y(x) = c1e^(-x) + c2e^(-2x)', 120),
(17, 'Quelle est la solution generale de l\'equation differentielle lineaire suivante : y\'\' - 5y\' + 6y = 0 ', ' y(x) = c1e^(2x) + c2e^(3x)\r\n', 'y(x) = c1e^(2x) + c2e^(x)', ' y(x) = c1e^(3x) + c2e^(2x)\r\n', ' y(x) = c1e^(2x) + c2e^(x)', 120),
(18, 'Quelle est la solution generale de l\'equation differentielle lineaire suivante : y\'\' - 4y\' + 4y = 0 ', ' y(x) = c1e^(2x) + c2xe^(2x)\r\n', 'y(x) = (c1 + c2x)e^(2x)', 'y(x) = (c1 + c2x)e^(2x) + e^(2x)ln|x|\r\n\r\n', 'y(x) = (c1 + c2x)e^(2x)', 120),
(19, 'Quelle est la solution generale de l\'equation differentielle lineaire suivante : y\'\' + 2y\' + y = x ?', ' y(x) = c1e^(-x) + c2xe^(-x) + x - 1\r\n', 'y(x) = c1e^(-x) + c2e^(-x) + x - 1\r\n', ' y(x) = c1e^(-x) + c2xe^(-x) + x^2/2 - x + 1\r\n\r\n', 'y(x) = c1e^(-x) + c2xe^(-x) + x - 1\r\n', 120),
(20, 'Quelle est la solution generale de l\'equation differentielle lineaire suivante : y\'\' + 4y\' + 4y = e^', 'y(x) = c1e^(-2x) + c2xe^(-2x) + e^(-2x)', ' y(x) = c1e^(-2x) + c2xe^(-2x) + xe^(-2x)\r\n', ' y(x) = c1e^(-2x) + c2xe^(-2x) + e^(2x)\r\n\r\n', 'y(x) = c1e^(-2x) + c2xe^(-2x) + e^(-2x)', 120),
(21, 'Qu\'est-ce que l\'integrale de Riemann ?\r\n', 'Une methode pour trouver l\'aire sous une courbe.', 'Une methode pour trouver la derivee d\'une fonction\r\n', ' Une methode pour resoudre des equations differentielles\r\n', 'Une methode pour trouver l\'aire sous une courbe.', 90),
(22, 'Comment divise-t-on l\'intervalle d\'integration pour calculer l\'integrale de Riemann ?\r\n', 'En le divisant en intervalles de taille egale.', ' En utilisant la methode de la substitution\r\n', ' En choisissant des points de division arbitraires\r\n', 'En le divisant en intervalles de taille egale.', 90),
(23, 'Que se passe-t-il lorsque le nombre de subdivisions de l\'intervalle d\'integration augmente ?\r\n', 'L\'approximation de l\'integrale devient plus precise.', ' L\'approximation de l\'integrale devient moins precise\r\n', ' L\'approximation de l\'integrale ne change pas\r\n', 'L\'approximation de l\'integrale devient plus precise.', 90),
(24, 'Calculer l\'integrale de Riemann de la fonction f(x) = x^2 sur l\'intervalle [0, 2] avec 4 subdivision', '3.75.', ' 4.5\r\n', ' 5.25\r\n', '3.75.', 120),
(25, 'Quelle est la condition necessaire pour qu\'une fonction f(x) soit integrable selon la definition de ', ' f(x) doit être continue sur l\'intervalle d\'integration [a,b]\r\n', ' f(x) doit être monotone sur l\'intervalle d\'integration [a,b]\r\n', 'f(x) doit être bornee sur l\'intervalle d\'integration [a,b]', 'f(x) doit être bornee sur l\'intervalle d\'integration [a,b]', 90),
(26, 'Comment peut-on utiliser la somme de Riemann pour approximer l\'integrale d\'une fonction ?\r\n', 'En augmentant le nombre de subdivisions de l\'intervalle d\'integration', ' En choisissant des points de division plus petits\r\n', ' En choisissant des points de division plus larges\r\n', 'En augmentant le nombre de subdivisions de l\'intervalle d\'integration', 90),
(27, 'Calculer l\'integrale generalisee de la fonction f(x) = 1/x sur l\'intervalle [1, +∞].\r\n', 'diverge.', ' converge vers 0\r\n', ' converge vers l\'infini\r\n', 'diverge.', 90),
(28, 'Calculer l\'integrale generalisee de la fonction f(x) = 1/(x^2) sur l\'intervalle [1, +∞].\r\n', ' diverge\r\n', 'converge vers 0.', ' converge vers 1\r\n', 'converge vers 0.', 90),
(29, 'Calculer l\'integrale generalisee de la fonction f(x) = 1/x sur l\'intervalle [0, 1].\r\n', ' diverge\r\n', ' converge vers 0\r\n', 'converge vers l\'infini.', 'converge vers l\'infini.', 90),
(30, 'Comment calcule-t-on une integrale generalisee ?\r\n', ' En utilisant la même formule que l\'integrale de Riemann\r\n', 'En utilisant une formule specifique pour les integrales generalisees.', ' Il n\'est pas possible de calculer une integrale generalisee\r\n', 'En utilisant une formule specifique pour les integrales generalisees.', 90);

-- --------------------------------------------------------

--
-- Structure de la table `Analyse III`
--

CREATE TABLE `Analyse III` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Analyse III`
--

INSERT INTO `Analyse III` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Quelle est la condition necessaire pour qu\'une integrale generalisee converge ?\r\n', ' La fonction integree doit être bornee.\r\n', ' La fonction integree doit être continue.\r\n', 'L\'integrale impropre doit être finie.', 'L\'integrale impropre doit être finie.', 60),
(2, 'Comment peut-on determiner si une integrale generalisee diverge ?\r\n', ' En calculant la limite de l\'integrale pour des bornes infinies.\r\n', ' En evaluant l\'integrale à l\'aide de la regle de la somme.\r\n', ' En utilisant le critere de convergence de Cauchy.', ' En calculant la limite de l\'integrale pour des bornes infinies.\r\n', 60),
(3, 'Quelle est la difference entre une integrale generalisee convergente et une integrale generalisee ab', ' Une integrale generalisee absolument convergente converge plus rapidement qu\'une integrale generali', ' Une integrale generalisee absolument convergente converge pour toutes les valeurs des bornes, alors', 'Une integrale generalisee absolument convergente est definie comme la limite d\'une serie absolument', 'Une integrale generalisee absolument convergente est definie comme la limite d\'une serie absolument', 60),
(4, 'Quelle est la definition d\'une integrale generalisee sur un intervalle semi-infini ?\r\n', ' Une integrale de Riemann sur un intervalle fini.\r\n', 'La limite de l\'integrale de Riemann sur un intervalle fini lorsque la borne superieure tend vers l\'i', ' La limite de l\'integrale de Riemann sur un intervalle fini lorsque la borne inferieure tend vers l\'', 'La limite de l\'integrale de Riemann sur un intervalle fini lorsque la borne superieure tend vers l\'i', 90),
(5, 'Quel est le critere de comparaison utilise pour determiner la convergence d\'une integrale generalise', ' Le critere de Cauchy.\r\n', ' Le critere de convergence absolue.\r\n', 'Le critere de comparaison.', 'Le critere de comparaison.', 90),
(6, 'Comment peut-on determiner si une integrale generalisee converge ou diverge à l\'aide du critere d\'Ab', ' En evaluant la limite de la fonction integree lorsque la borne superieure tend vers l\'infini.\r\n', ' En evaluant la limite de la fonction integree lorsque la borne inferieure tend vers l\'infini.\r\n', 'En verifiant si la fonction integree est decroissante et si l\'integrale de la fonction aux bornes i', 'En verifiant si la fonction integree est decroissante et si l\'integrale de la fonction aux bornes i', 90),
(7, 'Quelle est la definition d\'une serie numerique convergente dans un espace vectoriel norme ?\r\n', 'Une serie est convergente si la suite des sommes partielles est bornee.', 'Une serie est convergente si la suite des termes de la serie converge vers 0.\r\n', ' Une serie est convergente si la suite des termes de la serie converge vers un element de l\'espace v', 'Une serie est convergente si la suite des sommes partielles est bornee.', 90),
(8, 'Quelle est la propriete de linearite des series numeriques dans un espace vectoriel norme ?\r\n', ' Si deux series convergent, leur somme converge egalement.\r\n', 'Si une serie converge, toute serie obtenue par multiplication par un scalaire converge egalement.', ' Si deux series convergent, leur produit converge egalement.\r\n', 'Si une serie converge, toute serie obtenue par multiplication par un scalaire converge egalement.', 90),
(9, 'Quelle est la definition d\'une serie absolument convergente dans un espace vectoriel norme ?\r\n', ' Une serie est absolument convergente si la serie des valeurs absolues des termes converge', ' Une serie est absolument convergente si la serie des carres des termes converge.\r\n', 'Une serie est absolument convergente si la serie des cubes des termes converge.\r\n', 'Une serie est absolument convergente si la serie des valeurs absolues des termes converge', 90),
(10, 'Determinez si la serie de fonctions suivante converge uniformement sur l\'intervalle [0,1] : f_n(x) =', 'Converge uniformement\r\n', ' Converge mais pas uniformement\r\n', ' Diverge\r\n', 'Converge uniformement (cette serie de fonctions converge uniformement grâce au critere de Weierstra', 90),
(11, 'Determinez si la serie de fonctions suivante converge uniformement sur l\'intervalle [0,1] : f_n(x) =', ' Converge uniformement\r\n', 'Converge mais pas uniformement', ' Diverge\r\n', 'Converge mais pas uniformement', 90),
(12, 'Determinez si la serie de fonctions suivante converge uniformement sur l\'intervalle [0,1] : f_n(x) =', ' Converge uniformement\r\n', ' Converge mais pas uniformement\r\n', 'Diverge ', 'Diverge ', 90),
(13, 'Determinez si la serie de fonctions suivante converge uniformement sur l\'intervalle [0,1] : f_n(x) =', ' Converge uniformement', ' Converge mais pas uniformement\r\n', 'Converge uniformement', 'Converge uniformement', 90),
(14, 'Determinez si la serie de fonctions suivante converge uniformement sur l\'intervalle [0,1] : f_n(x) =', 'Converge uniformement', ' Converge mais pas uniformement\r\n', ' Diverge\r\n', 'Converge uniformement', 90),
(15, 'Determinez si la serie de fonctions suivante converge uniformement sur l\'intervalle [0,1] : f_n(x) =', ' Converge uniformement\r\n', 'Converge mais pas uniformement', ' Diverge\r\n', 'Converge mais pas uniformement', 90),
(16, 'Quelle est la convergence de la suite de fonctions $f_n(x) = \\frac{x^n}{n^2}$ sur l\'intervalle [0,1]', ' Converge uniformement\r\n', 'Converge simplement', ' Diverge\r\n', 'Converge simplement', 90),
(18, 'Quelle est la convergence de la serie de fonctions \\sum_{n=1}^{\\infty} \\frac{(-1)^n}{n+x} sur l\'inte', ' Converge uniformement\r\n', 'Converge normalement', ' Converge simplement\r\n', 'Converge normalement', 90),
(19, 'Quelle est la convergence de la serie de fonctions \\sum_{n=1}^{\\infty} \\frac{x^n}{n}sur l\'intervalle', ' Converge uniformement\r\n', ' Converge normalement\r\n', ' Converge simplement', ' Converge simplement', 90),
(20, 'Qu\'est-ce qu\'une serie entiere ?\r\n', ' Une serie dont les termes sont des entiers\r\n', ' Une serie dont les termes sont des nombres complexes\r\n', 'Une serie entiere est une serie dont les termes sont des fonctions puissances de la varaiable z.', 'Une serie entiere est une serie dont les termes sont des fonctions puissances de la varaiable z.', 90),
(21, 'Comment determiner le rayon de convergence d\'une serie entiere ?\r\n', 'En calculant la limite de la serie\r\n', 'En calculant la limite de la serie en prenant la racine n-ieme de l\'argument\r\n', 'En calculant la limite de la serie en prenant la racine carree de l\'argument\r\n', 'Le rayon de convergence R d\'une serie entiere est determine par la formule de Cauchy-Hadamard : R =', 90),
(22, 'Comment determiner le domaine de convergence d\'une serie entiere ?\r\n', 'En trouvant les valeurs de z pour lesquelles la serie converge\r\n', 'En trouvant les valeurs de z pour lesquelles la serie diverge\r\n', 'En utilisant le theoreme d\'Abel\r\n', 'Le domaine de convergence d\'une serie entiere est l\'ensemble des valeurs de z pour lesquelles la ser', 90),
(23, 'Qu\'est-ce que la somme d\'une serie entiere ?\r\n', 'La valeur pour laquelle la serie converge\r\n', ' La limite de la serie en zero\r\n', ' La somme des coefficients de la serie\r\n', 'La somme d\'une serie entiere est la valeur pour laquelle la serie converge.', 90),
(24, 'Comment determiner la somme d\'une serie entiere ?\r\n', 'En utilisant la formule de Cauchy\r\n', ' En derivant la serie entiere\r\n', ' En integrant la serie entiere', 'En utilisant la formule de Cauchy\r\n', 90),
(25, 'Comment trouver l\'ensemble des singularites d\'une serie entiere ?\r\n', 'En cherchant les valeurs de z pour lesquelles la serie diverge\r\n', ' En cherchant les valeurs de z pour lesquelles la serie converge\r\n', 'En utilisant le theoreme de Weierstrass', 'En cherchant les valeurs de z pour lesquelles la serie diverge\r\n', 90),
(26, 'Comment representer une fonction comme une serie entiere ?\r\n', 'En utilisant la formule de Taylor\r\n', ' En utilisant la formule de MacLaurin\r\n', 'En utilisant la formule de Fourier', 'En utilisant la formule de Taylor\r\n', 90),
(27, 'Comment determiner la convergence uniforme d\'une serie entiere ?\r\n', ' En utilisant le critere de Cauchy\r\n', 'En utilisant le critere de Weierstrass\r\n', ' En utilisant le critere de d\'Alembert', 'En utilisant le critere de Weierstrass\r\n', 90),
(28, 'Qu\'est-ce que la serie entiere exponentielle ?\r\n', ' Une serie entiere dont les coefficients sont les exposants\r\n', ' Une serie entiere dont les coefficients sont les factorielles\r\n', 'Une serie entiere dont les coefficients sont les puissances de l\'exposan', 'Une serie entiere dont les coefficients sont les puissances de l\'exposan', 90),
(29, 'Comment determiner la derivee d\'une serie entiere ?\r\n', 'En derivant chaque terme de la serie\r\n', ' En utilisant la formule de Taylor\r\n', ' En utilisant la formule de Cauchy', 'En derivant chaque terme de la serie\r\n', 90),
(30, 'Qu\'est-ce que la serie entiere sinus ?\r\n', ' Une serie entiere dont les coefficients sont les sinus\r\n', ' Une serie entiere dont les coefficients sont les puissances de l\'exposant', 'Une serie entiere dont les coefficients sont les factorielles impaires', 'Une serie entiere dont les coefficients sont les factorielles impaires', 90);

-- --------------------------------------------------------

--
-- Structure de la table `Analyse IV`
--

CREATE TABLE `Analyse IV` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Analyse IV`
--

INSERT INTO `Analyse IV` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Qu\'est-ce qu\'une serie de fonctions convergente uniformement ?\r\n', 'Une serie de fonctions qui converge vers une fonction determinee pour toute valeur de la variable i', ' Une serie de fonctions qui converge vers une fonction determinee uniquement pour certaines valeurs ', 'Une serie de fonctions qui ne converge pas.\r\n', 'Une serie de fonctions qui converge vers une fonction determinee pour toute valeur de la variable i', 90),
(2, 'Quelle est la condition necessaire pour qu\'une suite de fonctions converge uniformement ?\r\n', ' La limite de la suite de fonctions doit être finie.\n', ' La limite de la suite de fonctions doit être infinie.\r\n', 'La limite de la difference entre la suite de fonctions et la limite de la suite doit être nulle.', 'La limite de la difference entre la suite de fonctions et la limite de la suite doit être nulle.', 90),
(3, 'Qu\'est-ce qu\'une serie de fonctions absolument convergente ?\r\n', ' Une serie de fonctions qui converge uniformement.\r\n', ' Une serie de fonctions qui converge uniformement et dont chaque terme est positif ou nul.\r\n', 'Une serie de fonctions qui converge uniformement et dont la somme des valeurs absolues de chaque te', 'Une serie de fonctions qui converge uniformement et dont la somme des valeurs absolues de chaque te', 90),
(4, 'Qu\'est-ce que la convergence simple d\'une serie de fonctions ?\r\n', ' Une serie de fonctions qui converge vers une fonction determinee pour toute valeur de la variable i', 'Une serie de fonctions qui converge vers une fonction determinee uniquement pour certaines valeurs', ' Une serie de fonctions qui ne converge pas uniformement.\r\n', 'Une serie de fonctions qui converge vers une fonction determinee uniquement pour certaines valeurs', 90),
(5, 'Qu\'est-ce qu\'une serie de fonctions alternee ?\r\n', ' Une serie de fonctions dont les termes sont tous de signe oppose.\r\n', 'Une serie de fonctions dont les termes sont alternativement positifs et negatifs.', 'Une serie de fonctions dont les termes ont des signes aleatoires.\r\n', 'Une serie de fonctions dont les termes sont alternativement positifs et negatifs.', 90),
(6, 'Qu\'est-ce que le critere de Leibniz pour une serie de fonctions alternee ?\r\n', 'Si les termes de la serie de fonctions alternee tendent vers zero, alors la serie converge.\r\n', 'Si les termes de la serie de fonctions alternee tendent vers zero et sont decroissants, alors la se', ' Si les termes de la serie de fonctions alternee tendent vers zero et sont croissants, alors la seri', 'Si les termes de la serie de fonctions alternee tendent vers zero et sont decroissants, alors la se', 90),
(7, 'Qu\'est-ce que le critere de convergence uniforme de Weierstrass ?\r\n', 'Si une serie de fonctions converge uniformement, alors la serie est absolument convergente.\r\n', ' Si une serie de fonctions est absolument convergente, alors la serie converge uniformement.\r\n', 'Si une serie de fonctions peut être majoree par une serie convergente independante de la variable in', 'Si une serie de fonctions peut être majoree par une serie convergente independante de la variable i', 90),
(8, 'Qu\'est-ce qu\'une serie de Fourier ?\r\n', 'Une serie de fonctions qui approxime une fonction periodique.', ' Une serie de fonctions qui approxime une fonction non-periodique.\r\n', ' Une serie de fonctions qui approxime une fonction complexe.\r\n', 'Une serie de fonctions qui approxime une fonction periodique.', 90),
(10, 'Qu\'est-ce que la convergence en moyenne de la serie de Fourier d\'une fonction ?\r\n', 'La convergence de la serie de Fourier pour chaque point de la periode de la fonction.\r\n', 'La convergence de la serie de Fourier pour toute la periode de la fonction.', ' La convergence de la serie de Fourier pour toute la fonction.\r\n', 'La convergence de la serie de Fourier pour toute la periode de la fonction.', 90),
(11, 'Qu\'est-ce que la convergence ponctuelle d\'une serie de Fourier ?\r\n', 'La convergence de la serie de Fourier pour chaque point de la periode de la fonction.', ' La convergence de la serie de Fourier pour toute la periode de la fonction.\r\n', ' La convergence de la serie de Fourier pour toute la fonction.\r\n', 'La convergence de la serie de Fourier pour chaque point de la periode de la fonction.', 90),
(12, 'Comment une serie de Fourier represente-t-elle une fonction periodique ?\r\n', 'Comme une somme finie de fonctions sinusoïdales', ' Comme une somme infinie de fonctions polynomiales\r\n', ' Comme une fonction non periodique\r\n', 'Comme une somme finie de fonctions sinusoïdales', 90),
(13, 'Qu\'est-ce qu\'une serie de Fourier ?\r\n', 'Une serie de nombres reels ou complexes qui convergent vers une fonction periodique.', ' Une serie de nombres aleatoires qui convergent vers une fonction periodique.\r\n', ' Une serie de nombres rationnels qui convergent vers une fonction periodique.\r\n', 'Une serie de nombres reels ou complexes qui convergent vers une fonction periodique.', 90),
(14, 'Comment est determinee la periode d\'une fonction periodique ?\r\n', ' En calculant la difference entre les valeurs extrêmes de la fonction.\r\n', 'En calculant la distance entre les deux points où la fonction se croise avec l\'axe des abscisses.', 'En calculant la difference entre deux points qui ont la même valeur de la fonction.\r\n', 'En calculant la distance entre les deux points où la fonction se croise avec l\'axe des abscisses.', 90),
(15, 'Comment est determinee la frequence fondamentale d\'une fonction periodique ?\r\n', 'En calculant la difference entre les valeurs extrêmes de la fonction.\r\n', 'En calculant la distance entre les deux points où la fonction se croise avec l\'axe des abscisses.\r\n', 'En calculant l\'inverse de la periode de la fonction.', ' En calculant l\'inverse de la periode de la fonction.', 90),
(16, 'Comment les coefficients de Fourier sont-ils calcules pour une fonction periodique ?\r\n', ' En effectuant une transformee de Fourier sur la fonction.\r\n', ' En integrant la fonction sur une periode et en utilisant les integrales de Fourier.', ' En calculant la moyenne de la fonction sur une periode.\r\n', ' En integrant la fonction sur une periode et en utilisant les integrales de Fourier.', 90),
(17, 'Qu\'est-ce que la serie de Fourier discrete ?\r\n', 'Une serie de nombres reels ou complexes qui convergent vers une fonction periodique.', 'Une serie de nombres aleatoires qui convergent vers une fonction periodique.\r\n', 'Une serie de nombres rationnels qui convergent vers une fonction periodique.\r\n', 'Une serie de nombres reels ou complexes qui convergent vers une fonction periodique.', 90),
(18, 'Que se passe-t-il si une fonction n\'est pas periodique ?\r\n', ' Les coefficients de Fourier ne peuvent pas être calcules.\r\n', 'La serie de Fourier ne converge pas.', ' La fonction est consideree comme periodique avec une periode infinie.\r\n', 'La serie de Fourier ne converge pas.', 90),
(19, 'Qu\'est-ce que la transformation de Fourier ?\r\n', ' Une methode pour calculer les coefficients de Fourier d\'une fonction non periodique.\r\n', ' Une methode pour transformer une fonction periodique en une serie de Fourier.\r\n', 'Une methode pour transformer une fonction en une representation de frequence.', 'Une methode pour transformer une fonction en une representation de frequence.', 90),
(20, 'Qu\'est-ce que la transformee de Fourier discrete ?\r\n', 'Une methode pour calculer les coefficients de Fourier d\'une fonction non periodique.\r\n', ' Une methode pour transformer une fonction periodique en une serie de Fourier.\r\n', 'Une methode pour transformer une fonction discrete en une representation de frequence disc', 'Une methode pour transformer une fonction discrete en une representation de frequence disc', 90),
(21, 'Comment la serie de Fourier peut-elle être utilisee pour approximer une fonction ?\r\n', 'En calculant la somme partielle de la serie de Fourier jusqu\'à un certain ordre.', ' En calculant les coefficients de Fourier pour un grand nombre de frequences.\r\n', 'En effectuant une transformation de Fourier sur la fonction.\r\n', 'En calculant la somme partielle de la serie de Fourier jusqu\'à un certain ordre.', 90),
(23, 'Qu\'est-ce que le theoreme de Parseval pour les series de Fourier ?\r\n', ' Une relation entre les coefficients de Fourier et la transformation de Fourier d\'une fonction.\r\n', 'Une relation entre la somme des carres des coefficients de Fourier et la norme de la fonction.', ' Une relation entre la periode de la fonction et les coefficients de Fourier.\r\n', 'Une relation entre la somme des carres des coefficients de Fourier et la norme de la fonction.', 90),
(24, 'Qu\'est-ce que la serie de Fourier exponentielle ?\r\n', ' Une serie de nombres reels ou complexes qui convergent vers une fonction periodique.\r\n', ' Une serie de nombres aleatoires qui convergent vers une fonction periodique.\r\n', 'Une serie de fonctions exponentielles qui convergent vers une fonction periodique.', 'Une serie de fonctions exponentielles qui convergent vers une fonction periodique.', 90),
(25, 'Qu\'est-ce que la condition de Dirichlet pour les series de Fourier ?\r\n', 'Une condition sur la derivee de la fonction periodique pour que la serie de Fourier converge uniform', ' Une condition sur la periode de la fonction periodique pour que la serie de Fourier converge.\r\n', ' Une condition sur les coefficients de Fourier pour que la serie de Fourier soit une approximation p', 'Une condition sur la derivee de la fonction periodique pour que la serie de Fourier converge unifor', 90),
(26, 'Comment la serie de Fourier peut-elle être utilisee pour resoudre des equations aux derivees partiel', 'En approximant la solution de l\'equation par une serie de Fourier.', ' En calculant les coefficients de Fourier de la solution de l\'equation.\r\n', ' En effectuant une transformation de Fourier sur la solution de l\'equation.\r\n', 'En approximant la solution de l\'equation par une serie de Fourier.', 90),
(27, 'Qu\'est-ce que la serie de Fourier de Walsh ?\r\n', ' Une serie de nombres reels ou complexes qui convergent vers une fonction periodique.\r\n', 'Une serie de fonctions rectangulaires qui convergent vers une fonction periodique.', ' Une serie de fonctions triangulaires qui convergent vers une fonction periodique.\r\n\r\n', 'Une serie de fonctions rectangulaires qui convergent vers une fonction periodique.', 90),
(28, 'Qu\'est-ce que la transformee de Fourier rapide (FFT) ?\r\n', ' Une methode pour calculer rapidement les coefficients de Fourier d\'une fonction periodique.\r\n', ' Une methode pour transformer rapidement une fonction periodique en une serie de Fourier.\r\n', 'Une methode pour calculer rapidement la transformee de Fourier d\'une fonction discrete.', 'Une methode pour calculer rapidement la transformee de Fourier d\'une fonction discrete.', 90),
(29, 'Qu\'est-ce qu\'un residu dans une analyse de regression ?\r\n', 'La difference entre la valeur predite et la valeur reelle d\'une variable dependante est appelee res', ' La somme des carres des ecarts entre la valeur predite et la valeur reelle d\'une variable dependant', 'La somme des carres des ecarts entre la variable independante et la variable dependante.\r\n', 'La difference entre la valeur predite et la valeur reelle d\'une variable dependante est appelee res', 90),
(30, 'Comment peut-on interpreter un residu positif dans une analyse de regression lineaire simple ?\r\n', ' La variable independante est correlee negativement avec la variable dependante.\r\n\r\n', 'Un residu positif indique que la valeur predite est superieure à la valeur reelle de la variable de', ' La valeur predite est inferieure à la valeur reelle de la variable dependante.\r\n\r\n', 'Un residu positif indique que la valeur predite est superieure à la valeur reelle de la variable de', 90);

-- --------------------------------------------------------

--
-- Structure de la table `Analyse Numerique`
--

CREATE TABLE `Analyse Numerique` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Analyse Numerique`
--

INSERT INTO `Analyse Numerique` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Qu\'est-ce que la methode de Newton-Raphson est utilisee pour faire?\r\n', ' Minimiser une fonction\r\n', ' Resoudre des equations differentielles\r\n', 'Trouver les racines d\'une fonction', 'Trouver les racines d\'une fonction\r\n', 90),
(2, 'Quel est le principal avantage de la methode de Gauss-Seidel par rapport à la methode de Jacobi pour', 'Convergence plus rapide\r\n', ' Plus facile à mettre en œuvre\r\n', 'Moins d\'iterations requises (Reponse', 'Convergence plus rapide\r\n', 90),
(3, 'Qu\'est-ce que la methode des differences finies est utilisee pour faire?\r\n', ' Resoudre des equations differentielles\r\n', 'Trouver les racines d\'une fonction\r\n', ' Approximer les derivees de fonctions ', ' Approximer les derivees de fonctions ', 90),
(4, 'Quelle est la difference entre la methode de Simpson 1/3 et la methode de Simpson 3/8 pour l\'integra', 'La methode de Simpson 1/3 utilise des intervalles plus petits\r\n', ' La methode de Simpson 3/8 utilise des intervalles plus petits\r\n', ' La methode de Simpson 3/8 utilise plus de points d\'evaluation ', ' La methode de Simpson 3/8 utilise plus de points d\'evaluation ', 90),
(5, 'Quel est le principal avantage de la methode des moindres carres pour l\'ajustement de courbe?\r\n', 'Peut être utilise pour ajuster des fonctions non lineaires\r\n', ' Peut être utilise pour ajuster des fonctions lineaires uniquement\r\n', ' Converge rapidement', 'Peut être utilise pour ajuster des fonctions non lineaires\r\n', 90),
(6, 'Qu\'est-ce que la methode de Runge-Kutta est utilisee pour faire?\r\n', 'Integrer des equations differentielles\r\n', ' Trouver les racines d\'une fonction\r\n', ' Resoudre des systemes d\'equations lineaires ', 'Integrer des equations differentielles\r\n', 90),
(7, 'Quelle est la difference entre la methode de Lagrange et la methode de Newton pour l\'interpolation p', ' La methode de Lagrange utilise des differences divisees\r\n', ' La methode de Newton utilise des differences divisees\r\n', ' La methode de Newton utilise des differences finies ', ' La methode de Newton utilise des differences divisees\r\n', 90),
(8, 'Qu\'est-ce que la methode de la transformee de Fourier rapide (FFT) est utilisee pour faire?\r\n', ' Resoudre des equations differentielles\r\n', ' Trouver les racines d\'une fonction\r\n', ' Effectuer des calculs de transformee de Fourier plus rapidement', ' Effectuer des calculs de transformee de Fourier plus rapidement', 90),
(9, 'Qu\'est-ce que la methode de la decomposition en valeurs singulieres (SVD) est utilisee pour faire?\r\n', ' Resoudre des systemes d\'equations lineaires\r\n ', ' Approximer les matrices\r\n', ' Factoriser des matrices ', ' Factoriser des matrices ', 90),
(10, 'La methode de Jacobi peut être utilisee pour resoudre :\r\n', ' Des systemes lineaires', ' Des systemes non-lineaires\r\n', ' Des systemes differentiels\r\n', ' Des systemes lineaires', 90),
(11, 'Dans la methode de Jacobi, à chaque iteration, les nouveaux x_i sont calcules à partir des :\r\n', ' anciens x_i', ' nouveaux x_i\r\n', ' Aucune des reponses ci-dessus.\r\n', ' anciens x_i', 90),
(12, 'La methode de Gauss-Seidel peut être consideree comme une amelioration de :\r\n', 'La methode de Jacobi', ' La methode de la relaxation\r\n', ' La methode de Newton-Raphson\r\n', 'La methode de Jacobi', 90),
(13, 'Dans la methode de Gauss-Seidel, les nouveaux x_i sont calcules à partir des :\r\n', ' anciens x_i', ' nouveaux x_i\r\n', ' Aucune des reponses ci-dessus.\r\n', ' anciens x_i', 90),
(14, 'Les methodes de Jacobi et Gauss-Seidel convergent si :\r\n', 'La matrice du systeme est diagonalement dominante', ' La matrice du systeme est symetrique\r\n\r\n', ' La matrice du systeme est tridiagonale\r\n\r\n', 'La matrice du systeme est diagonalement dominante', 90),
(15, 'Dans la methode de resolution d\'une equation non-lineaire par la methode de la secante, le point ini', ' La racine exacte de l\'equation\r\n', ' Tres eloigne de la racine exacte\r\n', ' Proche de la racine exacte', ' Proche de la racine exacte', 90),
(16, 'La methode de la dichotomie consiste à :\r\n', 'Diviser l\'intervalle en deux à chaque etape', ' Utiliser une methode de Newton-Raphson\r\n', ' Utiliser une methode de Gauss-Seidel\r\n', 'Diviser l\'intervalle en deux à chaque etape', 90),
(17, 'La methode de la dichotomie converge :\r\n', ' Toujours', ' Parfois\r\n', 'Jamais\r\n', ' Toujours', 90),
(18, 'La methode de la dichotomie est applicable à :\r\n', ' Des equations lineaires\r\n', ' Des equations non-lineaires', ' Des equations differentielles\r\n', ' Des equations non-lineaires', 90),
(19, 'La methode de la secante est une methode :\r\n', ' Iterative', ' Directe\r\n', 'Analytique\r\n', ' Iterative', 90),
(20, 'La methode de la relaxation peut être utilisee pour resoudre :\r\n', ' Des systemes lineaires', ' Des systemes non-lineaires\r\n', ' Des systemes differentiels\r\n', ' Des systemes lineaires', 90),
(21, 'Dans la methode de relaxation, le nouveau x_i est calcule à partir des :\r\n', ' anciens x_i', ' nouveaux x_i\r\n', ' Aucune des reponses ci-dessus.\r\n', ' anciens x_i', 90),
(22, 'La methode de Newton-Raphson peut être utilisee pour resoudre :\r\n', ' Des systemes lineaires\r\n', ' Des systemes non-lineaires', ' Des systemes differentiels\r\n', ' Des systemes non-lineaires', 90),
(23, 'Dans la methode de Newton-Raphson, le nouveau x_i est calcule à partir des :\r\n', 'anciens x_i\r\n', ' nouveaux x_i', ' Aucune des reponses ci-dessus.\r\n', ' nouveaux x_i', 90),
(24, 'La methode de Newton-Raphson converge plus rapidement que :\r\n', ' La methode de la relaxation', ' La methode de la dichotomie\r\n', 'La methode de Gauss-Seidel\r\n', ' La methode de la relaxation', 90),
(25, 'La methode de la relaxation converge si :\r\n', ' La matrice du systeme est diagonalement dominante', ' La matrice du systeme est tridiagonale\r\n', ' La matrice du systeme est tridiagonale\r\n', ' La matrice du systeme est diagonalement dominante', 90),
(26, 'La methode de la secante peut être consideree comme une amelioration de :\r\n', ' La methode de la relaxation\r\n', ' La methode de Newton-Raphson', ' La methode de Gauss-Seidel\r\n', ' La methode de Newton-Raphson', 90),
(27, 'Dans la methode de la dichotomie, le critere d\'arrêt est generalement base sur :\r\n', ' La difference entre les nouvelles et anciennes approximations\r\n', 'La taille de l\'intervalle', ' Le nombre d\'iterations\r\n', 'La taille de l\'intervalle', 90),
(28, 'Dans la methode de la relaxation, le parametre de relaxation est generalement choisi pour être :\r\n', ' Tres petit\r\n', ' Tres grand\r\n', ' Entre 0 et 1', ' Entre 0 et 1', 90),
(29, 'La methode de la bissection est une autre appellation pour la methode de :\r\n', ' La relaxation\r\n', ' La dichotomie', ' Gauss-Seidel\r\n', ' La dichotomie', 90),
(30, 'Quelle est l\'objectif principal de la methode de Jacobi ?\r\n', ' Trouver la factorisation LU d\'une matrice\r\n', ' Resoudre un systeme lineaire Ax=b', ' Trouver les valeurs propres d\'une matrice\r\n', ' Resoudre un systeme lineaire Ax=b', 90);

-- --------------------------------------------------------

--
-- Structure de la table `Architecture des ordinateurs`
--

CREATE TABLE `Architecture des ordinateurs` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Architecture des ordinateurs`
--

INSERT INTO `Architecture des ordinateurs` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Quelle est la fonction utilisee pour afficher une valeur à l\'ecran en Python?\r\n', 'print()', ' input()\r\n', ' read()\r\n\r\n', 'print()', 60),
(2, 'Comment creer une liste en Python?\r\n', ' list = (1, 2, 3)\r\n', 'list = [1, 2, 3]', ' list = {1, 2, 3}\r\n', 'list = [1, 2, 3]', 60),
(3, 'Comment creer une fonction en Python?\r\n', 'function nom_de_la_fonction():\r\n\r\n', 'def nom_de_la_fonction():', ' def fonction(nom_de_la_fonction):\r\n\r\n', 'def nom_de_la_fonction():', 60),
(4, 'Comment ajouter un element à une liste existante en Python?\r\n', ' list.add(4)\r\n', ' list.append(4)', 'list.insert(4)\r\n\r\n', ' list.append(4)', 60),
(5, 'Comment parcourir une liste en Python?\r\n', 'for item in list:', ' for item in range(list):\r\n\r\n', ' for i in range(list):\r\n', 'for item in list:', 60),
(6, 'Comment ouvrir un fichier en Python?\r\n', ' open(\"file.txt\")\r\n', 'open(\"file.txt\", \"r\")', ' open(\"file.txt\", \"w\")\r\n\r\n', 'open(\"file.txt\", \"r\")', 60),
(7, 'Comment definir une classe en Python?\r\n', 'class NomDeLaClasse():', 'def NomDeLaClasse():\r\n', ' def classe(NomDeLaClasse):\r\n\r\n', 'class NomDeLaClasse():', 60),
(8, 'Comment importer un module en Python?\r\n', 'import module', ' module.import()\r\n', ' from module import *\r\n\r\n', 'import module', 60),
(9, 'Quel est le symbole utilise pour la division dans Python?\r\n', '/', ' %\r\n', ' //\r\n', '/', 60),
(10, 'Quelle est la methode utilisee pour obtenir la longueur d\'une chaîne de caracteres en Python?\r\n', ' length()\r\n', 'len()', ' size()\r\n', 'len()', 60),
(11, 'Quelle est la methode utilisee pour convertir une chaîne de caracteres en majuscules en Python?\r\n', ' toUpperCase()\r\n', ' upper()', 'capitalize()\r\n', ' upper()', 60),
(12, 'Quelle est la difference entre un tuple et une liste en Python?\r\n', 'Les tuples sont immutables, tandis que les listes sont mutables.', ' Les tuples sont mutables, tandis que les listes sont immutables.\r\n', 'Il n\'y a pas de difference, les deux sont interchangeables.\r\n', 'Les tuples sont immutables, tandis que les listes sont mutables.', 60),
(13, 'Quelle est la methode Python utilisee pour supprimer un element d\'une liste?\r\n', ' list.delete(element)\r\n', 'list.remove(element)', 'list.pop(element)\r\n', 'list.remove(element)', 60),
(14, 'Comment peut-on verifier si une cle existe dans un dictionnaire Python?\r\n', 'en utilisant la methode check()\r\n', ' en utilisant la methode exist()\r\n', 'en utilisant l\'operateur in', 'en utilisant l\'operateur in', 60),
(15, 'Quel est le resultat de l\'operation 3**2 en Python?\r\n', '6', '9', '12', '9', 60),
(16, 'Quelle est la methode Python utilisee pour ajouter un element à un ensemble?\r\n', ' set.add(element)', 'set.insert(element)\r\n', 'set.append(element)\r\n', ' set.add(element)', 60),
(17, 'Comment peut-on ouvrir un fichier en mode ecriture en Python?\r\n', 'en utilisant la fonction open() avec le mode \"w\"', ' en utilisant la fonction open() avec le mode \"r\"\r\n', ' en utilisant la fonction open() avec le mode \"a\"\r\n', 'en utilisant la fonction open() avec le mode \"w\"', 60),
(18, 'Quelle est la fonction Python utilisee pour convertir une chaîne de caracteres en entier?\r\n', ' to_int()\r\n', 'int()', 'convert()\r\n', 'int()', 60),
(19, 'Quel est le resultat de l\'operation bool(0)?\r\n', ' 0\r\n', ' False', ' True', ' False', 60),
(20, 'Comment peut-on effectuer une boucle sur une liste en Python ?\r\n', 'en utilisant la boucle \"for\"', 'en utilisant la boucle \"while\"\r\n', ' en utilisant la boucle \"do while\"\r\n', 'en utilisant la boucle \"for\"', 60),
(21, 'Quelle est la methode Python utilisee pour trier une liste?\r\n', 'list.sort()', ' list.order()\r\n', ' list.sortBy()\r\n', 'list.sort()', 60),
(22, 'Quel est le resultat de l\'operation \"Hello\"+\"World\" en Python?\r\n', '\"HelloWorld\"', ' \"Hello World\"\r\n', 'une erreur se produit\r\n', '\"HelloWorld\"', 60),
(23, 'Quelle est la fonction Python utilisee pour obtenir le maximum d\'une liste?\r\n', ' list.min()\r\n', ' list.maximum()\r\n', ' max(list)', ' max(list)', 60),
(24, 'Comment peut-on importer un module en Python ?\r\n', ' en utilisant la commande \"include\"\r\n', 'en utilisant la commande \"import\"', ' en utilisant la commande \"require\"\r\n', 'en utilisant la commande \"import\"', 60),
(25, 'Comment peut-on ajouter des elements d\'une liste à une autre liste en Python?\r\n', ' en utilisant la methode append()\r\n', 'en utilisant la methode extend()', ' en utilisant la methode add()\r\n', 'en utilisant la methode extend()', 60),
(26, 'Quelle est la methode Python utilisee pour convertir une liste en ensemble?\r\n', 'set(list)', 'list(set)\r\n', ' convert_set(list)\r\n', 'set(list)', 60),
(27, 'Quel est le resultat de l\'operation 5/2 en Python?\r\n', '2', '2.5', '3', '2.5', 30),
(29, 'Quel est le type de donnees utilise pour stocker plusieurs valeurs dans une seule variable en Python', 'liste', ' chaîne de caracteres\r\n', ' dictionnaire\r\n', 'liste', 60),
(30, 'Comment peut-on verifier si une cle existe dans un dictionnaire en Python ?\r\n', ' en utilisant la methode \"keys()\" pour acceder aux cles du dictionnaire\r\n', 'en utilisant la methode \"exist()\" pour verifier l\'existence d\'une cle\r\n', 'en utilisant l\'operateur \"in\" pour verifier si la cle est dans le dictionnaire', 'en utilisant l\'operateur \"in\" pour verifier si la cle est dans le dictionnaire', 60);

-- --------------------------------------------------------

--
-- Structure de la table `Atomistique`
--

CREATE TABLE `Atomistique` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Atomistique`
--

INSERT INTO `Atomistique` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Quelle est la charge electrique d\'un proton ?\r\n', '1', '0', '-1', '1', 60),
(2, 'Quelle est la couche electronique la plus proche du noyau ?\r\n', 'La couche K \r\n', 'La couche L\r\n', ' La couche M', 'La couche K', 90),
(3, 'Combien d\'electrons peuvent être presents dans la couche electronique K ?\r\n', '2', '8', '0', '0', 90),
(4, 'Quelle est la configuration electronique de l\'atome d\'oxygene ?\r\n', ' 1s2 2s2 2p3\r\n', ' 1s2 2s2 2p4\r\n', '1s2 2s2 2p6 ', '1s2 2s2 2p6 ', 120),
(5, 'Quel est le nombre d\'electrons de valence dans un atome de carbone ?\r\n', '4', '6', '8', '4', 90),
(6, 'Qu\'est-ce que la configuration electronique d\'un atome ?\r\n', 'Le nombre total d\'electrons dans un atome\r\n\r\n\r\n', 'La distribution des electrons dans les orbitales atomiques\r\n\r\n\r\n', 'La masse totale d\'un atome\r\n\r\n\r\n', 'La configuration electronique d\'un atome decrit la distribution des electrons dans les orbitales ato', 90),
(7, 'Qu\'est-ce que l\'energie d\'ionisation ?\r\n', 'L\'energie d\'ionisation est l\'energie necessaire pour retirer un electron d\'un atome neutre.', 'L\'energie necessaire pour retirer un proton d\'un noyau atomique\r\n', ' L\'energie necessaire pour transformer un atome en ion\r\n', 'L\'energie d\'ionisation est l\'energie necessaire pour retirer un electron d\'un atome neutre.', 90),
(8, 'Qu\'est-ce que l\'electronegativite ?\r\n', 'L\'electronegativite est la capacite d\'un atome à attirer les electrons dans une liaison covalente.', 'La capacite d\'un atome à perdre des electrons\r\n', ' La capacite d\'un atome à gagner des electrons\r\n', 'L\'electronegativite est la capacite d\'un atome à attirer les electrons dans une liaison covalente.', 90),
(10, 'Comment se mesure le rayon atomique ?\r\n', 'Le rayon atomique se mesure en mesurant la distance entre le noyau et l\'electron le plus externe.', ' En mesurant la distance entre le noyau et l\'electron le plus interne\r\n', ' En mesurant la distance entre deux noyaux atomiques voisins\r\n', 'Le rayon atomique se mesure en mesurant la distance entre le noyau et l\'electron le plus externe.', 90),
(11, 'Quelle est la configuration electronique du carbone ?\r\n', '1s2 2s2 2p2', ' 1s2 2s2 2p3\r\n', ' 1s2 2s2 2p4\r\n', ' 1s2 2s2 2p2', 90),
(12, 'Combien d\'electrons peut contenir la couche n=4 d\'un atome ?\r\n', '2', '10', '18', '18', 120),
(13, 'Quel est le nombre atomique du fer ?\r\n', '26', '27', '28', '26', 60),
(14, 'Comment se nomme le processus par lequel un atome gagne ou perd des electrons pour former un ion ?\r\n', 'Ionisation', '\r\n Reduction\r\n', 'Oxydation\r\n', 'Ionisation', 90),
(15, 'Quelle est la difference entre un isotope et un ion ?\r\n', 'Les isotopes ont un nombre different de neutrons, tandis que les ions ont un nombre different d\'ele', ' Les isotopes ont un nombre different d\'electrons, tandis que les ions ont un nombre different de pr', 'Les isotopes ont un nombre different de neutrons, tandis que les ions ont un nombre different de ch', 'Les isotopes ont un nombre different de neutrons, tandis que les ions ont un nombre different d\'ele', 90),
(16, 'Comment se nomme le modele de l\'atome dans lequel les electrons tournent autour du noyau sur des orb', 'Modele de Bohr', ' Modele de Dalton\r\n\r\n', ' Modele de Rutherford\r\n', 'Modele de Bohr', 90),
(17, 'Quel est le nombre de protons, de neutrons et d\'electrons dans un atome de carbone-14 ?\r\n', '6 protons, 6 neutrons, 8 electrons\r\n', '6 protons, 8 neutrons, 6 electrons', ' 8 protons, 6 neutrons, 6 electrons\r\n', '6 protons, 8 neutrons, 6 electrons', 90),
(18, 'Comment s\'appellent les electrons presents dans la couche la plus externe d\'un atome ?\r\n', 'Les electrons de valence', 'Les electrons de conduction\r\n', ' Les electrons de liaison\r\n', 'Les electrons de valence', 90),
(19, 'Quelle est la charge d\'un ion ayant perdu deux electrons ?\r\n', '-2', '0', '+2', '+2', 120),
(20, 'Comment se nomme l\'ensemble des elements chimiques de la même colonne du tableau periodique ?\r\n', 'Une periode\r\n', 'Une famille\r\n', 'Un groupe', 'Un groupe', 90),
(21, 'Quel est le nombre de protons dans un atome de carbone ?\r\n', '6', '8', '18', '6', 90),
(22, 'Quel est le nombre d\'electrons dans l\'ion fluorure (F-) ?\r\n', '7', '9', '5', '9', 90),
(23, 'Quel est le nom de l\'element chimique dont le symbole est \"Fe\" ?\r\n', 'Fer', ' Fluor\r\n', ' Francium', 'Fer', 60),
(24, 'Quel est le nombre total de protons et de neutrons dans un atome de cuivre-63 ?\r\n', '29 protons et 34 neutrons \r\n', ' 63 protons et 0 neutrons\r\n', '63 protons et 63 neutrons', '29 protons et 34 neutrons \r\n', 90),
(25, 'Quelle est la configuration electronique du calcium ?\r\n', ' 1s² 2s² 2p⁶ 3s² 3p⁶\r\n', ' 1s² 2s² 2p⁶ 3s² 3p⁵ 4s¹ ', '1s² 2s¹ 2p⁶ 3s² 3p⁶ 4s²', ' 1s² 2s² 2p⁶ 3s² 3p⁵ 4s¹ ', 120),
(26, 'Quel est le nombre d\'electrons de valence dans un atome de silicium ?\r\n', '4', '2', '6', '4', 90),
(28, 'Quel est le nom de l\'ion forme lorsque l\'atome de chlore (Cl) gagne un electron ?\r\n', 'Chloride', 'Chlorate\r\n', ' Chlorite', 'Chloride', 90),
(29, 'Quelle est la configuration electronique de l\'ion nitrate (NO₃⁻) ?\r\n', ' 1s² 2s² 2p⁶ 3s² 3p⁶\r\n', ' 1s² 2s² 2p⁶ 3s² 3p⁵', ' 1s² 2s² 2p³', ' 1s² 2s² 2p⁶ 3s² 3p⁵', 120),
(30, 'Quelle est la masse atomique relative de l\'element carbone ?\r\n', '6,02 x 10²³ g/mol\r\n', '12,01 g/mol', ' 14,01 g/mol', '12,01 g/mol', 120),
(1, 'Quelle est la charge electrique d\'un proton ?\r\n', '1', '0', '-1', '1', 60),
(2, 'Quelle est la couche electronique la plus proche du noyau ?\r\n', 'La couche K \r\n', 'La couche L\r\n', ' La couche M', 'La couche K', 90),
(3, 'Combien d\'electrons peuvent être presents dans la couche electronique K ?\r\n', '2', '8', '0', '0', 90),
(4, 'Quelle est la configuration electronique de l\'atome d\'oxygene ?\r\n', ' 1s2 2s2 2p3\r\n', ' 1s2 2s2 2p4\r\n', '1s2 2s2 2p6 ', '1s2 2s2 2p6 ', 120),
(5, 'Quel est le nombre d\'electrons de valence dans un atome de carbone ?\r\n', '4', '6', '8', '4', 90),
(6, 'Qu\'est-ce que la configuration electronique d\'un atome ?\r\n', 'Le nombre total d\'electrons dans un atome\r\n\r\n\r\n', 'La distribution des electrons dans les orbitales atomiques\r\n\r\n\r\n', 'La masse totale d\'un atome\r\n\r\n\r\n', 'La configuration electronique d\'un atome decrit la distribution des electrons dans les orbitales ato', 90),
(7, 'Qu\'est-ce que l\'energie d\'ionisation ?\r\n', 'L\'energie d\'ionisation est l\'energie necessaire pour retirer un electron d\'un atome neutre.', 'L\'energie necessaire pour retirer un proton d\'un noyau atomique\r\n', ' L\'energie necessaire pour transformer un atome en ion\r\n', 'L\'energie d\'ionisation est l\'energie necessaire pour retirer un electron d\'un atome neutre.', 90),
(8, 'Qu\'est-ce que l\'electronegativite ?\r\n', 'L\'electronegativite est la capacite d\'un atome à attirer les electrons dans une liaison covalente.', 'La capacite d\'un atome à perdre des electrons\r\n', ' La capacite d\'un atome à gagner des electrons\r\n', 'L\'electronegativite est la capacite d\'un atome à attirer les electrons dans une liaison covalente.', 90),
(10, 'Comment se mesure le rayon atomique ?\r\n', 'Le rayon atomique se mesure en mesurant la distance entre le noyau et l\'electron le plus externe.', ' En mesurant la distance entre le noyau et l\'electron le plus interne\r\n', ' En mesurant la distance entre deux noyaux atomiques voisins\r\n', 'Le rayon atomique se mesure en mesurant la distance entre le noyau et l\'electron le plus externe.', 90),
(11, 'Quelle est la configuration electronique du carbone ?\r\n', '1s2 2s2 2p2', ' 1s2 2s2 2p3\r\n', ' 1s2 2s2 2p4\r\n', ' 1s2 2s2 2p2', 90),
(12, 'Combien d\'electrons peut contenir la couche n=4 d\'un atome ?\r\n', '2', '10', '18', '18', 120),
(13, 'Quel est le nombre atomique du fer ?\r\n', '26', '27', '28', '26', 60),
(14, 'Comment se nomme le processus par lequel un atome gagne ou perd des electrons pour former un ion ?\r\n', 'Ionisation', '\r\n Reduction\r\n', 'Oxydation\r\n', 'Ionisation', 90),
(15, 'Quelle est la difference entre un isotope et un ion ?\r\n', 'Les isotopes ont un nombre different de neutrons, tandis que les ions ont un nombre different d\'ele', ' Les isotopes ont un nombre different d\'electrons, tandis que les ions ont un nombre different de pr', 'Les isotopes ont un nombre different de neutrons, tandis que les ions ont un nombre different de ch', 'Les isotopes ont un nombre different de neutrons, tandis que les ions ont un nombre different d\'ele', 90),
(16, 'Comment se nomme le modele de l\'atome dans lequel les electrons tournent autour du noyau sur des orb', 'Modele de Bohr', ' Modele de Dalton\r\n\r\n', ' Modele de Rutherford\r\n', 'Modele de Bohr', 90),
(17, 'Quel est le nombre de protons, de neutrons et d\'electrons dans un atome de carbone-14 ?\r\n', '6 protons, 6 neutrons, 8 electrons\r\n', '6 protons, 8 neutrons, 6 electrons', ' 8 protons, 6 neutrons, 6 electrons\r\n', '6 protons, 8 neutrons, 6 electrons', 90),
(18, 'Comment s\'appellent les electrons presents dans la couche la plus externe d\'un atome ?\r\n', 'Les electrons de valence', 'Les electrons de conduction\r\n', ' Les electrons de liaison\r\n', 'Les electrons de valence', 90),
(19, 'Quelle est la charge d\'un ion ayant perdu deux electrons ?\r\n', '-2', '0', '+2', '+2', 120),
(20, 'Comment se nomme l\'ensemble des elements chimiques de la même colonne du tableau periodique ?\r\n', 'Une periode\r\n', 'Une famille\r\n', 'Un groupe', 'Un groupe', 90),
(21, 'Quel est le nombre de protons dans un atome de carbone ?\r\n', '6', '8', '18', '6', 90),
(22, 'Quel est le nombre d\'electrons dans l\'ion fluorure (F-) ?\r\n', '7', '9', '5', '9', 90),
(23, 'Quel est le nom de l\'element chimique dont le symbole est \"Fe\" ?\r\n', 'Fer', ' Fluor\r\n', ' Francium', 'Fer', 60),
(24, 'Quel est le nombre total de protons et de neutrons dans un atome de cuivre-63 ?\r\n', '29 protons et 34 neutrons \r\n', ' 63 protons et 0 neutrons\r\n', '63 protons et 63 neutrons', '29 protons et 34 neutrons \r\n', 90),
(25, 'Quelle est la configuration electronique du calcium ?\r\n', ' 1s² 2s² 2p⁶ 3s² 3p⁶\r\n', ' 1s² 2s² 2p⁶ 3s² 3p⁵ 4s¹ ', '1s² 2s¹ 2p⁶ 3s² 3p⁶ 4s²', ' 1s² 2s² 2p⁶ 3s² 3p⁵ 4s¹ ', 120),
(26, 'Quel est le nombre d\'electrons de valence dans un atome de silicium ?\r\n', '4', '2', '6', '4', 90),
(28, 'Quel est le nom de l\'ion forme lorsque l\'atome de chlore (Cl) gagne un electron ?\r\n', 'Chloride', 'Chlorate\r\n', ' Chlorite', 'Chloride', 90),
(29, 'Quelle est la configuration electronique de l\'ion nitrate (NO₃⁻) ?\r\n', ' 1s² 2s² 2p⁶ 3s² 3p⁶\r\n', ' 1s² 2s² 2p⁶ 3s² 3p⁵', ' 1s² 2s² 2p³', ' 1s² 2s² 2p⁶ 3s² 3p⁵', 120),
(30, 'Quelle est la masse atomique relative de l\'element carbone ?\r\n', '6,02 x 10²³ g/mol\r\n', '12,01 g/mol', ' 14,01 g/mol', '12,01 g/mol', 120);

-- --------------------------------------------------------

--
-- Structure de la table `Chimie en solution`
--

CREATE TABLE `Chimie en solution` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Chimie en solution`
--

INSERT INTO `Chimie en solution` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Qu\'est-ce qui peut influencer la solubilite d\'un solute dans un solvant ?\r\n', 'La temperature', 'La pression\r\n', ' Le volume\r\n', 'La temperature', 60),
(2, 'Qu\'est-ce qu\'une solution saturee ?\r\n', ' Une solution qui contient autant de solute que possible à une temperature donnee', 'Une solution qui contient plus de solute que possible à une temperature donnee\r\n', ' Une solution qui contient moins de solute que possible à une temperature donnee\r\n', ' Une solution qui contient autant de solute que possible à une temperature donnee', 90),
(3, 'Quel est le pH d\'une solution acide ?\r\n', 'pH > 7\r\n pH > 7\r\nb) pH = 7\r\nc) pH < 7\r\nReponse correcte : c) pH < 7', 'pH = 7\r\n', ' pH < 7', 'pH < 7', 60),
(4, 'Qu\'est-ce qu\'une solution tampon ?\r\n', ' Une solution qui contient une grande quantite d\'un solute\r\n', 'Une solution qui peut maintenir un pH relativement constant malgre l\'ajout de petites quantites d\'a', 'Une solution qui ne peut pas dissoudre de solute supplementaire\r\n', 'Une solution qui peut maintenir un pH relativement constant malgre l\'ajout de petites quantites d\'ac', 90),
(5, 'Qu\'est-ce qu\'une reaction d\'oxydoreduction ?\r\n', 'Une reaction où un reactif est oxyde et un autre est reduit.', ' Une reaction où un reactif est transforme en un autre reactif\r\n', ' Une reaction qui ne produit pas de changement d\'oxydation\r\n', 'Une reaction où un reactif est oxyde et un autre est reduit.', 90),
(6, 'Qu\'est-ce que la concentration molaire d\'une solution ?\r\n', ' Le nombre de moles de solute par litre de solution', 'La quantite de solute dissoute dans un litre de solution\r\n', 'Le pourcentage massique de solute dans la solution\r\n', 'Le nombre de moles de solute par litre de solution', 90),
(7, 'Comment calcule-t-on le pH d\'une solution acide ou basique ?\r\n', 'En utilisant la formule pH = -log[H+], où [H+] represente la concentration en ions hydrogene dans l', ' En utilisant la formule pH = log[H+], où [H+] represente la concentration en ions hydrogene dans la', ' En utilisant la formule pH = -log[OH-], où [OH-] represente la concentration en ions hydroxyde dans', 'En utilisant la formule pH = -log[H+], où [H+] represente la concentration en ions hydrogene dans l', 90),
(8, 'Qu\'est-ce que l\'effet de la temperature sur la vitesse d\'une reaction chimique ?\r\n', 'Une augmentation de la temperature augmente la vitesse de la reaction', ' Une diminution de la temperature augmente la vitesse de la reaction\r\n\r\n', ' La temperature n\'a aucun effet sur la vitesse d\'une reaction chimique\r\n', 'Une augmentation de la temperature augmente la vitesse de la reaction', 90),
(9, 'Comment nomme-t-on une solution dont le pH est egal à 7 ?\r\n', ' Une solution basique\r\n', ' Une solution acide\r\n', 'Une solution neutre', 'Une solution neutre', 90),
(10, 'Comment peut-on mesurer la conductivite d\'une solution ?\r\n', ' En utilisant un pH-metre\r\n', ' En utilisant une balance de precision\r\n', 'En utilisant un conductimetre', 'En utilisant un conductimetre', 90),
(11, 'Qu\'est-ce que la loi de Beer-Lambert ?\r\n', ' Une loi qui decrit la relation entre la pression et le volume d\'un gaz à temperature constante\r\n\r\n', 'Une loi qui decrit la relation entre la concentration d\'une solution et l\'absorbance de la lumiere ', ' Une loi qui decrit la relation entre la temperature et la pression d\'un gaz à volume constant\r\n', ' Une loi qui decrit la relation entre la concentration d\'une solution et l\'absorbance de la lumiere ', 90),
(12, 'Qu\'est-ce que la solubilite d\'un solute ?\r\n', ' La capacite d\'un solute à dissoudre dans un solvant\r\n', 'La quantite maximale de solute qu\'un solvant peut dissoudre à une temperature et une pression donnee', 'La vitesse à laquelle un solute se dissout dans un solvant\r\n', 'La quantite maximale de solute qu\'un solvant peut dissoudre à une temperature et une pression donnee', 90),
(13, 'Qu\'est-ce que la reaction d\'hydrolyse ?\r\n', 'Une reaction où une molecule est scindee en deux molecules plus petites grâce à l\'addition d\'eau', ' Une reaction où deux molecules se combinent pour former une molecule plus grande en eliminant de l\'', ' Une reaction où un atome ou un groupe d\'atomes perd un electron\r\n', 'Une reaction où une molecule est scindee en deux molecules plus petites grâce à l\'addition d\'eau', 90),
(14, 'Qu\'est-ce que la loi de conservation de la masse ?\r\n', 'La masse totale des reactifs est egale à la masse totale des produits dans une reaction chimique', ' La masse totale des reactifs est toujours plus grande que la masse totale des produits dans une rea', '\r\nLa masse totale des reactifs est toujours plus petite que la masse totale des produits dans une re', 'La masse totale des reactifs est egale à la masse totale des produits dans une reaction chimique', 90),
(15, 'Qu\'est-ce que la constante d\'equilibre d\'une reaction chimique ?\r\n', 'Une valeur numerique qui exprime la proportion des reactifs et des produits dans une reaction chimiq', '  Une valeur numerique qui exprime la vitesse de la reaction chimique\r\n', ' Une valeur numerique qui exprime l\'energie liberee ou absorbee lors d\'une reaction chimique\r\n', 'Une valeur numerique qui exprime la proportion des reactifs et des produits dans une reaction chimiq', 90),
(16, 'Qu\'est-ce que la concentration molaire d\'une solution?\r\n', ' La quantite de solute par unite de volume de solvant\r\n', ' La quantite de solute par unite de masse de solvant\r\n', 'La quantite de solute par unite de volume de solution', 'La quantite de solute par unite de volume de solution', 90),
(17, 'Comment appelle-t-on une solution dont la concentration en solute est inferieure à la concentration ', ' Une solution sursaturee\r\n', 'Une solution insaturee', ' Une solution saturee\r\n\r\n', 'Une solution insaturee', 90),
(18, 'Qu\'est-ce que la conductivite electrique d\'une solution?\r\n', ' La capacite de la solution à dissoudre des solutes\r\n', 'La capacite de la solution à conduire l\'electricite', ' La capacite de la solution à reagir avec d\'autres substances\r\n', 'La capacite de la solution à conduire l\'electricite', 90),
(19, 'Comment appelle-t-on une solution qui contient un petit nombre de particules de solute dispersees da', ' Une solution concentree\r\n', 'Une solution diluee', ' Une solution saturee\r\n\r\n', ' ne solution diluee', 90),
(20, 'Quelle est la concentration molaire d\'une solution qui contient 0,25 mol de solute dans 500 mL de so', '0,50 M', ' 0,025 M\r\n', ' 0,00125 M\r\n\r\n', '0,50 M', 120),
(21, 'Combien de grammes de NaCl sont necessaires pour preparer 500 mL d\'une solution de concentration 0,2', ' 11 g\r\n', '22 g', ' 58,5 g\r\n\r\n', '22 g', 90),
(22, 'Quelle est la dilution resultante si vous ajoutez 200 mL d\'eau à 300 mL d\'une solution de concentrat', ' 0,24 M\r\n', ' 0,40 M\r\n', '\r\n 0,17 M', '0,17 M', 120),
(23, 'Quelle est la masse de solute necessaire pour preparer 1 L d\'une solution de concentration 0,5 M de ', ' 36,5 g\r\n', '18,25 g', ' 73 g\r\n', '18,25 g', 120),
(24, 'Combien de moles de NaCl sont necessaires pour preparer 500 mL d\'une solution de concentration 0,1 M', ' 0,5 moles\r\n', ' 0,05 moles', ' 0,025 moles\r\n\r\n', ' 0,05 moles', 120),
(25, 'Quelle est la masse de solute necessaire pour preparer 250 mL d\'une solution de concentration 0,02 M', ' 9,8 g\r\n', ' 4,9 g\r\n', '1,96 g', '1,96 g', 120),
(26, 'Quelle est la concentration molaire d\'une solution qui contient 0,25 moles de KCl dans 500 mL de sol', ' 0,50 M', ' 0,25 M\r\n', ' 0,125 M\r\n\r\n', ' 0,50 M', 120),
(27, 'Quelle est la masse de NaOH necessaire pour preparer 500 mL d\'une solution de concentration 0,1 M ?\r', ' 2 g\r\n', ' 5 g', ' 10 g\r\n', ' 5 g', 120),
(28, 'Quelle est la concentration molaire d\'une solution qui contient 10 g de NaOH dans 500 mL de solution', ' 0,1 M\r\n', ' 0,2 M', ' 0,4 M\r\n\r\n', ' 0,2 M', 120),
(29, 'Quelle est la masse de solute necessaire pour preparer 1 L d\'une solution de concentration 0,5 M de ', ' 174 g\r\n', '174,33 g', '348,66 g\r\n\r\n', '174,33 g', 120),
(30, 'Quelle est la concentration massique d\'une solution qui contient 20 g de NaCl dans 500 mL de solutio', '40 g/L', ' 20 g/L\r\n', ' 10 g/L\r\n\r\n', '40 g/L', 120),
(1, 'Qu\'est-ce qui peut influencer la solubilite d\'un solute dans un solvant ?\r\n', 'La temperature', 'La pression\r\n', ' Le volume\r\n', 'La temperature', 60),
(2, 'Qu\'est-ce qu\'une solution saturee ?\r\n', ' Une solution qui contient autant de solute que possible à une temperature donnee', 'Une solution qui contient plus de solute que possible à une temperature donnee\r\n', ' Une solution qui contient moins de solute que possible à une temperature donnee\r\n', ' Une solution qui contient autant de solute que possible à une temperature donnee', 90),
(3, 'Quel est le pH d\'une solution acide ?\r\n', 'pH > 7\r\n pH > 7\r\nb) pH = 7\r\nc) pH < 7\r\nReponse correcte : c) pH < 7', 'pH = 7\r\n', ' pH < 7', 'pH < 7', 60),
(4, 'Qu\'est-ce qu\'une solution tampon ?\r\n', ' Une solution qui contient une grande quantite d\'un solute\r\n', 'Une solution qui peut maintenir un pH relativement constant malgre l\'ajout de petites quantites d\'a', 'Une solution qui ne peut pas dissoudre de solute supplementaire\r\n', 'Une solution qui peut maintenir un pH relativement constant malgre l\'ajout de petites quantites d\'ac', 90),
(5, 'Qu\'est-ce qu\'une reaction d\'oxydoreduction ?\r\n', 'Une reaction où un reactif est oxyde et un autre est reduit.', ' Une reaction où un reactif est transforme en un autre reactif\r\n', ' Une reaction qui ne produit pas de changement d\'oxydation\r\n', 'Une reaction où un reactif est oxyde et un autre est reduit.', 90),
(6, 'Qu\'est-ce que la concentration molaire d\'une solution ?\r\n', ' Le nombre de moles de solute par litre de solution', 'La quantite de solute dissoute dans un litre de solution\r\n', 'Le pourcentage massique de solute dans la solution\r\n', 'Le nombre de moles de solute par litre de solution', 90),
(7, 'Comment calcule-t-on le pH d\'une solution acide ou basique ?\r\n', 'En utilisant la formule pH = -log[H+], où [H+] represente la concentration en ions hydrogene dans l', ' En utilisant la formule pH = log[H+], où [H+] represente la concentration en ions hydrogene dans la', ' En utilisant la formule pH = -log[OH-], où [OH-] represente la concentration en ions hydroxyde dans', 'En utilisant la formule pH = -log[H+], où [H+] represente la concentration en ions hydrogene dans l', 90),
(8, 'Qu\'est-ce que l\'effet de la temperature sur la vitesse d\'une reaction chimique ?\r\n', 'Une augmentation de la temperature augmente la vitesse de la reaction', ' Une diminution de la temperature augmente la vitesse de la reaction\r\n\r\n', ' La temperature n\'a aucun effet sur la vitesse d\'une reaction chimique\r\n', 'Une augmentation de la temperature augmente la vitesse de la reaction', 90),
(9, 'Comment nomme-t-on une solution dont le pH est egal à 7 ?\r\n', ' Une solution basique\r\n', ' Une solution acide\r\n', 'Une solution neutre', 'Une solution neutre', 90),
(10, 'Comment peut-on mesurer la conductivite d\'une solution ?\r\n', ' En utilisant un pH-metre\r\n', ' En utilisant une balance de precision\r\n', 'En utilisant un conductimetre', 'En utilisant un conductimetre', 90),
(11, 'Qu\'est-ce que la loi de Beer-Lambert ?\r\n', ' Une loi qui decrit la relation entre la pression et le volume d\'un gaz à temperature constante\r\n\r\n', 'Une loi qui decrit la relation entre la concentration d\'une solution et l\'absorbance de la lumiere ', ' Une loi qui decrit la relation entre la temperature et la pression d\'un gaz à volume constant\r\n', ' Une loi qui decrit la relation entre la concentration d\'une solution et l\'absorbance de la lumiere ', 90),
(12, 'Qu\'est-ce que la solubilite d\'un solute ?\r\n', ' La capacite d\'un solute à dissoudre dans un solvant\r\n', 'La quantite maximale de solute qu\'un solvant peut dissoudre à une temperature et une pression donnee', 'La vitesse à laquelle un solute se dissout dans un solvant\r\n', 'La quantite maximale de solute qu\'un solvant peut dissoudre à une temperature et une pression donnee', 90),
(13, 'Qu\'est-ce que la reaction d\'hydrolyse ?\r\n', 'Une reaction où une molecule est scindee en deux molecules plus petites grâce à l\'addition d\'eau', ' Une reaction où deux molecules se combinent pour former une molecule plus grande en eliminant de l\'', ' Une reaction où un atome ou un groupe d\'atomes perd un electron\r\n', 'Une reaction où une molecule est scindee en deux molecules plus petites grâce à l\'addition d\'eau', 90),
(14, 'Qu\'est-ce que la loi de conservation de la masse ?\r\n', 'La masse totale des reactifs est egale à la masse totale des produits dans une reaction chimique', ' La masse totale des reactifs est toujours plus grande que la masse totale des produits dans une rea', '\r\nLa masse totale des reactifs est toujours plus petite que la masse totale des produits dans une re', 'La masse totale des reactifs est egale à la masse totale des produits dans une reaction chimique', 90),
(15, 'Qu\'est-ce que la constante d\'equilibre d\'une reaction chimique ?\r\n', 'Une valeur numerique qui exprime la proportion des reactifs et des produits dans une reaction chimiq', '  Une valeur numerique qui exprime la vitesse de la reaction chimique\r\n', ' Une valeur numerique qui exprime l\'energie liberee ou absorbee lors d\'une reaction chimique\r\n', 'Une valeur numerique qui exprime la proportion des reactifs et des produits dans une reaction chimiq', 90),
(16, 'Qu\'est-ce que la concentration molaire d\'une solution?\r\n', ' La quantite de solute par unite de volume de solvant\r\n', ' La quantite de solute par unite de masse de solvant\r\n', 'La quantite de solute par unite de volume de solution', 'La quantite de solute par unite de volume de solution', 90),
(17, 'Comment appelle-t-on une solution dont la concentration en solute est inferieure à la concentration ', ' Une solution sursaturee\r\n', 'Une solution insaturee', ' Une solution saturee\r\n\r\n', 'Une solution insaturee', 90),
(18, 'Qu\'est-ce que la conductivite electrique d\'une solution?\r\n', ' La capacite de la solution à dissoudre des solutes\r\n', 'La capacite de la solution à conduire l\'electricite', ' La capacite de la solution à reagir avec d\'autres substances\r\n', 'La capacite de la solution à conduire l\'electricite', 90),
(19, 'Comment appelle-t-on une solution qui contient un petit nombre de particules de solute dispersees da', ' Une solution concentree\r\n', 'Une solution diluee', ' Une solution saturee\r\n\r\n', ' ne solution diluee', 90),
(20, 'Quelle est la concentration molaire d\'une solution qui contient 0,25 mol de solute dans 500 mL de so', '0,50 M', ' 0,025 M\r\n', ' 0,00125 M\r\n\r\n', '0,50 M', 120),
(21, 'Combien de grammes de NaCl sont necessaires pour preparer 500 mL d\'une solution de concentration 0,2', ' 11 g\r\n', '22 g', ' 58,5 g\r\n\r\n', '22 g', 90),
(22, 'Quelle est la dilution resultante si vous ajoutez 200 mL d\'eau à 300 mL d\'une solution de concentrat', ' 0,24 M\r\n', ' 0,40 M\r\n', '\r\n 0,17 M', '0,17 M', 120),
(23, 'Quelle est la masse de solute necessaire pour preparer 1 L d\'une solution de concentration 0,5 M de ', ' 36,5 g\r\n', '18,25 g', ' 73 g\r\n', '18,25 g', 120),
(24, 'Combien de moles de NaCl sont necessaires pour preparer 500 mL d\'une solution de concentration 0,1 M', ' 0,5 moles\r\n', ' 0,05 moles', ' 0,025 moles\r\n\r\n', ' 0,05 moles', 120),
(25, 'Quelle est la masse de solute necessaire pour preparer 250 mL d\'une solution de concentration 0,02 M', ' 9,8 g\r\n', ' 4,9 g\r\n', '1,96 g', '1,96 g', 120),
(26, 'Quelle est la concentration molaire d\'une solution qui contient 0,25 moles de KCl dans 500 mL de sol', ' 0,50 M', ' 0,25 M\r\n', ' 0,125 M\r\n\r\n', ' 0,50 M', 120),
(27, 'Quelle est la masse de NaOH necessaire pour preparer 500 mL d\'une solution de concentration 0,1 M ?\r', ' 2 g\r\n', ' 5 g', ' 10 g\r\n', ' 5 g', 120),
(28, 'Quelle est la concentration molaire d\'une solution qui contient 10 g de NaOH dans 500 mL de solution', ' 0,1 M\r\n', ' 0,2 M', ' 0,4 M\r\n\r\n', ' 0,2 M', 120),
(29, 'Quelle est la masse de solute necessaire pour preparer 1 L d\'une solution de concentration 0,5 M de ', ' 174 g\r\n', '174,33 g', '348,66 g\r\n\r\n', '174,33 g', 120),
(30, 'Quelle est la concentration massique d\'une solution qui contient 20 g de NaCl dans 500 mL de solutio', '40 g/L', ' 20 g/L\r\n', ' 10 g/L\r\n\r\n', '40 g/L', 120);

-- --------------------------------------------------------

--
-- Structure de la table `Comments`
--

CREATE TABLE `Comments` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Comments`
--

INSERT INTO `Comments` (`comment_id`, `post_id`, `user_id`, `content`, `created_at`) VALUES
(1, 2, 2, '[value-4]', '[value-5]'),
(2, 1, 3, '[value-4]', '[value-5]'),
(3, 1, 4, 'hello', '2023-12-13'),
(4, 2, 4, 'feed it rats', '2023-12-13'),
(5, 2, 4, 'lotus', '2023-12-13'),
(6, 1, 4, 'i want to kill you', '2023-12-13'),
(7, 5, 4, 'drink vodka', '2023-12-13'),
(8, 6, 4, 'true flowers ', '2023-12-13'),
(10, 4, 1, 'meskin', '2023-12-13'),
(11, 7, 1, 'any help ?', '2023-12-13'),
(13, 5, 3, 'hello', '2023-12-14'),
(14, 6, 3, 'hello world !', '2023-12-14'),
(16, 8, 3, 'no way ! ', '2023-12-14'),
(19, 8, 3, 'hello', '2023-12-14'),
(20, 8, 3, 'he', '2023-12-14'),
(21, 8, 3, 'xs', '14-12-2023 14:17'),
(22, 10, 3, 'probably i should feed it meat', '14-12-2023 15:18'),
(23, 10, 1, 'well, that seems crazy hh', '14-12-2023 15:19'),
(24, 11, 1, 'people !', '14-12-2023 15:39'),
(25, 11, 1, 'hello', '14-12-2023 15:50'),
(26, 9, 1, 'feed it dog meat, italways works !', '14-12-2023 18:48'),
(27, 9, 4, 'make it laugh', '14-12-2023 18:49'),
(28, 12, 1, 'b 15dh l ton', '14-12-2023 21:50'),
(30, 9, 1, 'Wa hmida lwa7ch', '14-12-2023 21:53'),
(31, 13, 1, 'hello', '14-12-2023 22:40');

-- --------------------------------------------------------

--
-- Structure de la table `Electrocinetique`
--

CREATE TABLE `Electrocinetique` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Electrocinetique`
--

INSERT INTO `Electrocinetique` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Qu\'est-ce que la loi d\'Ohm ?\r\n', 'La tension est proportionnelle à la resistance\r\n', 'Le courant est proportionnel à la tension', 'La resistance est proportionnelle à la temperature\r\n', 'Le courant est proportionnel à la tension', 60),
(2, 'Comment calcule-t-on la puissance electrique ?\r\n', ' P = U x R\r\n', 'P = I x U', ' P = I x R²\r\n', 'P = I x U', 60),
(3, 'Quelle est la formule pour calculer la resistance electrique ?\r\n', 'R = V/I', ' R = P/I²\r\n', 'R = V/I²\r\n', 'R = V/I', 60),
(4, 'Qu\'est-ce que la capacite electrique ?\r\n', ' La capacite d\'un materiau à resister au courant electrique\r\n', 'La quantite d\'electricite stockee dans un condensateur', 'a mesure de la force electrique\r\n', 'La quantite d\'electricite stockee dans un condensateur', 60),
(5, 'Qu\'est-ce que la loi de Kirchhoff ?\r\n', 'La somme des courants entrants et sortants d\'un nœud est egale à zero', 'La somme des tensions dans une boucle est egale à zero', 'La somme des resistances en serie est egale à la resistance totale', 'La somme des tensions dans une boucle est egale à zero', 60),
(6, 'Quelle est la formule pour calculer la puissance electrique d\'un circuit ?\r\n', 'P = V/R\r\n', 'P = I^2 x R\r\n', ' P = V x I', ' P = V x I', 60),
(7, 'Comment calculer la resistance equivalente de deux resistances en serie ?\r\n', ' R1 + R2\r\n', 'R1 x R2', ' R1 + R2/2', ' R1 + R2/2', 90),
(8, 'Quelle est la formule pour calculer la tension electrique d\'un circuit ?\r\n', ' V = I/R\r\n', ' V = P/I\r\n', 'V = I x R', 'V = I x R', 60),
(9, 'Comment calculer la resistance equivalente de deux resistances en parallele ?\r\n', ' R1 + R2\r\n', 'R1 x R2\r\n', '1/R1 + 1/R2\r\n', '1/R1 + 1/R2\r\n', 90),
(10, 'Quelle est la resistance equivalente de trois resistances de 10 ohms, 20 ohms et 30 ohms en serie ?\r', '60 ohms\r\n', '50 ohms\r\n', '100 ohms', '50 ohms', 90),
(11, 'Quelle est la tension electrique dans un circuit avec une resistance de 5 ohms et un courant de 2 am', '10 volts', ' 2,5 volts\r\n', ' 7,5 volts\r\n', '10 volts', 90),
(12, 'Quelle est la resistance equivalente de deux resistances de 10 ohms et 20 ohms en parallele ?\r\n', '6,7 ohms\r\n', ' 13,3 ohms\r\n', '30 ohms', '6,7 ohms', 90),
(13, 'Quelle est la puissance electrique dissipee par une resistance de 50 ohms avec un courant de 2 amper', ' 50 watts', '100 watts', '200 watts', '100 watts', 120),
(14, 'Quelle est la tension electrique dans un circuit avec une resistance de 10 ohms et une puissance dis', '10 volts\r\n', '100 volts\r\n', '31,6 volts', '31,6 volts', 120),
(15, ' Dans un circuit electrique contenant plusieurs sources de tension, le theoreme de superposition per', ' Calculer la tension totale du circuit en ajoutant les tensions de chaque source ensemble.\r\n', ' Calculer la tension totale du circuit en considerant une seule source de tension à la fois et en co', 'Calculer le courant dans chaque branche du circuit en considerant une seule source de tension à la f', 'Calculer le courant dans chaque branche du circuit en considerant une seule source de tension à la f', 90),
(16, ' Dans un circuit electrique contenant plusieurs sources de tension, le theoreme de superposition per', ' Calculer la tension totale du circuit en ajoutant les tensions de chaque source ensemble.\r\n', 'Calculer la tension totale du circuit en considerant une seule source de tension à la fois et en com', 'Calculer le courant dans chaque branche du circuit en considerant une seule source de tension à la ', 'Calculer le courant dans chaque branche du circuit en considerant une seule source de tension à la ', 90),
(17, 'Le theoreme de superposition s\'applique aux circuits lineaires, c\'est-à-dire aux circuits où:\r\n\r\n', ' La tension aux bornes d\'une resistance est proportionnelle au courant qui la traverse.\r\n', 'La reponse du circuit à une entree est proportionnelle à l\'entree elle-même.\r\n', ' La tension aux bornes d\'une resistance est independante du courant qui la traverse', 'La reponse du circuit à une entree est proportionnelle à l\'entree elle-même', 90),
(18, 'Le theoreme de Millman permet de:', ' Calculer la resistance equivalente d\'un circuit comportant plusieurs resistances en serie.\r\n', ' Calculer la tension aux bornes d\'un noeud d\'un circuit comportant plusieurs sources de tension en p', ' Calculer la resistance equivalente d\'un circuit comportant plusieurs resistances en parallele.', ' Calculer la tension aux bornes d\'un noeud d\'un circuit comportant plusieurs sources de tension en p', 90),
(19, 'Pour utiliser le theoreme de Millman, il faut que', 'Toutes les sources de tension soient en serie.\r\n', 'Toutes les sources de tension soient en parallele.\r\n', 'Les sources de tension peuvent être en serie ou en parallele.', 'Toutes les sources de tension soient en parallele.', 90),
(20, ' Dans un circuit electrique contenant plusieurs sources de tension, le theoreme de Millman permet de', ' Calculer la tension totale du circuit en ajoutant les tensions de chaque source ensemble.\r\n\r\n', ' Calculer le courant dans chaque branche du circuit en considerant une seule source de tension à la ', 'Calculer la tension aux bornes d\'un noeud du circuit en considerant toutes les sources de tension en', 'Calculer la tension aux bornes d\'un noeud du circuit en considerant toutes les sources de tension en', 90),
(21, 'Qu\'est-ce qu\'un condensateur electrique ?\r\n', ' Un dispositif qui stocke de l\'energie electrique sous forme de champ magnetique.\r\n', 'Un dispositif qui stocke de l\'energie electrique sous forme de champ electrique.\r\n', '\r\n Un dispositif qui convertit l\'energie electrique en energie thermique.\r\n', 'Un dispositif qui stocke de l\'energie electrique sous forme de champ electrique.', 90),
(22, 'Comment mesure-t-on la capacite d\'un condensateur electrique ?\r\n', ' En mesurant la tension electrique aux bornes du condensateur.\r\n', ' En mesurant le courant electrique qui traverse le condensateur.\r\n', 'En mesurant la quantite de charge electrique stockee dans le condensateur.', 'En mesurant la quantite de charge electrique stockee dans le condensateur.', 90),
(23, 'Qu\'est-ce que la constante de temps d\'un circuit RC ?\r\n', 'Le temps necessaire pour charger completement un condensateur.\r\n', ' Le temps necessaire pour decharger completement un condensateur.\r\n', 'Le temps necessaire pour que la tension aux bornes d\'un condensateur ', 'Le temps necessaire pour que la tension aux bornes d\'un condensateur ', 90),
(24, 'Qu\'est-ce que le theoreme de Norton en electrocinetique ?\r\n', ' Une methode pour calculer la tension aux bornes d\'un circuit\r\n', ' Une methode pour calculer le courant circulant dans un circuit\r\n', ' Une methode pour remplacer un circuit par un equivalent en courant\r\n', ' Une methode pour remplacer un circuit par un equivalent en courant', 90),
(25, 'Quelle est la difference entre le theoreme de Norton et le theoreme de Thevenin ?\r\n', ' Le theoreme de Norton utilise un equivalent en tension, tandis que le theoreme de Thevenin utilise ', ' Le theoreme de Norton utilise un equivalent en courant, tandis que le theoreme de Thevenin utilise ', '\r\n Il n\'y a pas de difference entre les deux theoremes\r\n', ' Le theoreme de Norton utilise un equivalent en courant, tandis que le theoreme de Thevenin utilise ', 90),
(26, 'Comment peut-on calculer la resistance equivalente d\'un circuit en utilisant le theoreme de Norton ?', ' En remplaçant la source de courant par une source de tension equivalente et en calculant la resista', ' En calculant le courant circulant dans le circuit et en le divisant par la tension de la source de ', ' En remplaçant le circuit par une resistance equivalente et en calculant le courant qui circule dans', ' En remplaçant le circuit par une resistance equivalente et en calculant le courant qui circule dans', 90),
(27, 'Quelle est l\'inductance d\'une bobine de 500 spires parcourue par un courant de 2 A, qui cree un cham', ' 0,2 H\r\n', ' 1,0 H\r\n', '10 H', ' 1,0 H', 120),
(28, 'Qu\'est-ce qu\'une bobine ?\r\n', ' Un composant electronique qui stocke de l\'energie sous forme de charge electrique.\r\n', 'Un composant electronique qui regule le courant electrique.\r\n', ' Un composant electronique qui cree un champ magnetique à partir d\'un courant electrique.\r\n', ' Un composant electronique qui cree un champ magnetique à partir d\'un courant electrique.', 90),
(29, 'Comment calcule-t-on la capacite d\'un condensateur ?\r\n', ' En multipliant la tension par la resistance.\r\n', ' En multipliant la charge par la tension.\r\n', 'En divisant la charge par la tension.\r\n', 'En divisant la charge par la tension.', 90),
(30, 'Qu\'est-ce qu\'un circuit electrique ?\r\n', 'Un chemin ferme permettant à un courant de circuler', ' Un chemin ouvert ne permettant pas à un courant de circuler\r\n', 'Un chemin qui permet à un courant de circuler dans une direction seulement\r\n', 'Un chemin ferme permettant à un courant de circuler', 90),
(1, 'Qu\'est-ce que la loi d\'Ohm ?\r\n', 'La tension est proportionnelle à la resistance\r\n', 'Le courant est proportionnel à la tension', 'La resistance est proportionnelle à la temperature\r\n', 'Le courant est proportionnel à la tension', 60),
(2, 'Comment calcule-t-on la puissance electrique ?\r\n', ' P = U x R\r\n', 'P = I x U', ' P = I x R²\r\n', 'P = I x U', 60),
(3, 'Quelle est la formule pour calculer la resistance electrique ?\r\n', 'R = V/I', ' R = P/I²\r\n', 'R = V/I²\r\n', 'R = V/I', 60),
(4, 'Qu\'est-ce que la capacite electrique ?\r\n', ' La capacite d\'un materiau à resister au courant electrique\r\n', 'La quantite d\'electricite stockee dans un condensateur', 'a mesure de la force electrique\r\n', 'La quantite d\'electricite stockee dans un condensateur', 60),
(5, 'Qu\'est-ce que la loi de Kirchhoff ?\r\n', 'La somme des courants entrants et sortants d\'un nœud est egale à zero', 'La somme des tensions dans une boucle est egale à zero', 'La somme des resistances en serie est egale à la resistance totale', 'La somme des tensions dans une boucle est egale à zero', 60),
(6, 'Quelle est la formule pour calculer la puissance electrique d\'un circuit ?\r\n', 'P = V/R\r\n', 'P = I^2 x R\r\n', ' P = V x I', ' P = V x I', 60),
(7, 'Comment calculer la resistance equivalente de deux resistances en serie ?\r\n', ' R1 + R2\r\n', 'R1 x R2', ' R1 + R2/2', ' R1 + R2/2', 90),
(8, 'Quelle est la formule pour calculer la tension electrique d\'un circuit ?\r\n', ' V = I/R\r\n', ' V = P/I\r\n', 'V = I x R', 'V = I x R', 60),
(9, 'Comment calculer la resistance equivalente de deux resistances en parallele ?\r\n', ' R1 + R2\r\n', 'R1 x R2\r\n', '1/R1 + 1/R2\r\n', '1/R1 + 1/R2\r\n', 90),
(10, 'Quelle est la resistance equivalente de trois resistances de 10 ohms, 20 ohms et 30 ohms en serie ?\r', '60 ohms\r\n', '50 ohms\r\n', '100 ohms', '50 ohms', 90),
(11, 'Quelle est la tension electrique dans un circuit avec une resistance de 5 ohms et un courant de 2 am', '10 volts', ' 2,5 volts\r\n', ' 7,5 volts\r\n', '10 volts', 90),
(12, 'Quelle est la resistance equivalente de deux resistances de 10 ohms et 20 ohms en parallele ?\r\n', '6,7 ohms\r\n', ' 13,3 ohms\r\n', '30 ohms', '6,7 ohms', 90),
(13, 'Quelle est la puissance electrique dissipee par une resistance de 50 ohms avec un courant de 2 amper', ' 50 watts', '100 watts', '200 watts', '100 watts', 120),
(14, 'Quelle est la tension electrique dans un circuit avec une resistance de 10 ohms et une puissance dis', '10 volts\r\n', '100 volts\r\n', '31,6 volts', '31,6 volts', 120),
(15, ' Dans un circuit electrique contenant plusieurs sources de tension, le theoreme de superposition per', ' Calculer la tension totale du circuit en ajoutant les tensions de chaque source ensemble.\r\n', ' Calculer la tension totale du circuit en considerant une seule source de tension à la fois et en co', 'Calculer le courant dans chaque branche du circuit en considerant une seule source de tension à la f', 'Calculer le courant dans chaque branche du circuit en considerant une seule source de tension à la f', 90),
(16, ' Dans un circuit electrique contenant plusieurs sources de tension, le theoreme de superposition per', ' Calculer la tension totale du circuit en ajoutant les tensions de chaque source ensemble.\r\n', 'Calculer la tension totale du circuit en considerant une seule source de tension à la fois et en com', 'Calculer le courant dans chaque branche du circuit en considerant une seule source de tension à la ', 'Calculer le courant dans chaque branche du circuit en considerant une seule source de tension à la ', 90),
(17, 'Le theoreme de superposition s\'applique aux circuits lineaires, c\'est-à-dire aux circuits où:\r\n\r\n', ' La tension aux bornes d\'une resistance est proportionnelle au courant qui la traverse.\r\n', 'La reponse du circuit à une entree est proportionnelle à l\'entree elle-même.\r\n', ' La tension aux bornes d\'une resistance est independante du courant qui la traverse', 'La reponse du circuit à une entree est proportionnelle à l\'entree elle-même', 90),
(18, 'Le theoreme de Millman permet de:', ' Calculer la resistance equivalente d\'un circuit comportant plusieurs resistances en serie.\r\n', ' Calculer la tension aux bornes d\'un noeud d\'un circuit comportant plusieurs sources de tension en p', ' Calculer la resistance equivalente d\'un circuit comportant plusieurs resistances en parallele.', ' Calculer la tension aux bornes d\'un noeud d\'un circuit comportant plusieurs sources de tension en p', 90),
(19, 'Pour utiliser le theoreme de Millman, il faut que', 'Toutes les sources de tension soient en serie.\r\n', 'Toutes les sources de tension soient en parallele.\r\n', 'Les sources de tension peuvent être en serie ou en parallele.', 'Toutes les sources de tension soient en parallele.', 90),
(20, ' Dans un circuit electrique contenant plusieurs sources de tension, le theoreme de Millman permet de', ' Calculer la tension totale du circuit en ajoutant les tensions de chaque source ensemble.\r\n\r\n', ' Calculer le courant dans chaque branche du circuit en considerant une seule source de tension à la ', 'Calculer la tension aux bornes d\'un noeud du circuit en considerant toutes les sources de tension en', 'Calculer la tension aux bornes d\'un noeud du circuit en considerant toutes les sources de tension en', 90),
(21, 'Qu\'est-ce qu\'un condensateur electrique ?\r\n', ' Un dispositif qui stocke de l\'energie electrique sous forme de champ magnetique.\r\n', 'Un dispositif qui stocke de l\'energie electrique sous forme de champ electrique.\r\n', '\r\n Un dispositif qui convertit l\'energie electrique en energie thermique.\r\n', 'Un dispositif qui stocke de l\'energie electrique sous forme de champ electrique.', 90),
(22, 'Comment mesure-t-on la capacite d\'un condensateur electrique ?\r\n', ' En mesurant la tension electrique aux bornes du condensateur.\r\n', ' En mesurant le courant electrique qui traverse le condensateur.\r\n', 'En mesurant la quantite de charge electrique stockee dans le condensateur.', 'En mesurant la quantite de charge electrique stockee dans le condensateur.', 90),
(23, 'Qu\'est-ce que la constante de temps d\'un circuit RC ?\r\n', 'Le temps necessaire pour charger completement un condensateur.\r\n', ' Le temps necessaire pour decharger completement un condensateur.\r\n', 'Le temps necessaire pour que la tension aux bornes d\'un condensateur ', 'Le temps necessaire pour que la tension aux bornes d\'un condensateur ', 90),
(24, 'Qu\'est-ce que le theoreme de Norton en electrocinetique ?\r\n', ' Une methode pour calculer la tension aux bornes d\'un circuit\r\n', ' Une methode pour calculer le courant circulant dans un circuit\r\n', ' Une methode pour remplacer un circuit par un equivalent en courant\r\n', ' Une methode pour remplacer un circuit par un equivalent en courant', 90),
(25, 'Quelle est la difference entre le theoreme de Norton et le theoreme de Thevenin ?\r\n', ' Le theoreme de Norton utilise un equivalent en tension, tandis que le theoreme de Thevenin utilise ', ' Le theoreme de Norton utilise un equivalent en courant, tandis que le theoreme de Thevenin utilise ', '\r\n Il n\'y a pas de difference entre les deux theoremes\r\n', ' Le theoreme de Norton utilise un equivalent en courant, tandis que le theoreme de Thevenin utilise ', 90),
(26, 'Comment peut-on calculer la resistance equivalente d\'un circuit en utilisant le theoreme de Norton ?', ' En remplaçant la source de courant par une source de tension equivalente et en calculant la resista', ' En calculant le courant circulant dans le circuit et en le divisant par la tension de la source de ', ' En remplaçant le circuit par une resistance equivalente et en calculant le courant qui circule dans', ' En remplaçant le circuit par une resistance equivalente et en calculant le courant qui circule dans', 90),
(27, 'Quelle est l\'inductance d\'une bobine de 500 spires parcourue par un courant de 2 A, qui cree un cham', ' 0,2 H\r\n', ' 1,0 H\r\n', '10 H', ' 1,0 H', 120),
(28, 'Qu\'est-ce qu\'une bobine ?\r\n', ' Un composant electronique qui stocke de l\'energie sous forme de charge electrique.\r\n', 'Un composant electronique qui regule le courant electrique.\r\n', ' Un composant electronique qui cree un champ magnetique à partir d\'un courant electrique.\r\n', ' Un composant electronique qui cree un champ magnetique à partir d\'un courant electrique.', 90),
(29, 'Comment calcule-t-on la capacite d\'un condensateur ?\r\n', ' En multipliant la tension par la resistance.\r\n', ' En multipliant la charge par la tension.\r\n', 'En divisant la charge par la tension.\r\n', 'En divisant la charge par la tension.', 90),
(30, 'Qu\'est-ce qu\'un circuit electrique ?\r\n', 'Un chemin ferme permettant à un courant de circuler', ' Un chemin ouvert ne permettant pas à un courant de circuler\r\n', 'Un chemin qui permet à un courant de circuler dans une direction seulement\r\n', 'Un chemin ferme permettant à un courant de circuler', 90);

-- --------------------------------------------------------

--
-- Structure de la table `Electromagnetique`
--

CREATE TABLE `Electromagnetique` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Electromagnetique`
--

INSERT INTO `Electromagnetique` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Qu\'est-ce qu\'un champ electrique ?\r\n', ' Un champ de particules chargees electriquement\r\n', ' Un champ de force cree par des particules chargees electriquement', ' Un champ de force cree par des particules magnetiques\r\n', ' Un champ de force cree par des particules chargees electriquement', 90),
(2, 'Qu\'est-ce qu\'un champ magnetique ?\r\n', ' Un champ de particules chargees electriquement\r\n', ' Un champ de force cree par des particules chargees electriquement\r\n', 'Un champ de force cree par des particules magnetiques', 'Un champ de force cree par des particules magnetiques', 90),
(3, 'Comment un courant electrique est-il cree ?\r\n', ' Par l\'interaction entre des champs electriques et magnetiques', ' Par l\'interaction entre des champs magnetiques et gravitationnels\r\n', ' Par l\'interaction entre des champs electriques et gravitationnels\r\n', ' Par l\'interaction entre des champs electriques et magnetiques', 90),
(4, 'Qu\'est-ce qu\'une onde electromagnetique ?\r\n', 'Une onde creee par l\'interaction entre un champ electrique et un champ gravitationnel\r\n', ' Une onde creee par l\'interaction entre un champ electrique et un champ magnetique', 'Une onde creee par l\'interaction entre un champ magnetique et un champ gravitationnel\r\n', ' Une onde creee par l\'interaction entre un champ electrique et un champ magnetique', 90),
(5, 'Qu\'est-ce que la loi de Coulomb ?\r\n', ' Une loi qui decrit la force gravitationnelle entre deux masses\r\n', ' Une loi qui decrit la force electrique entre deux charges electriques', ' Une loi qui decrit la force magnetique entre deux aimants\r\n', ' Une loi qui decrit la force electrique entre deux charges electriques', 90),
(6, 'Qu\'est-ce qu\'un circuit electrique ?\r\n', ' Une configuration de particules electriquement neutres\r\n', 'Un chemin que les particules electriques peuvent emprunter\r\n', ' Une configuration de conducteurs qui permet le passage d\'un courant electrique', ' Une configuration de conducteurs qui permet le passage d\'un courant electrique', 90),
(7, 'Qu\'est-ce que l\'induction electromagnetique ?\r\n', ' La production d\'un champ electrique par un champ magnetique variable', ' La production d\'un champ magnetique par un champ electrique variable\r\n', 'La production d\'un champ electrique et magnetique par un champ de gravitation variable\r\n', 'La production d\'un champ electrique et magnetique par un champ de gravitation variable\r\n', 90),
(8, 'Qu\'est-ce qu\'un transformateur electrique ?\r\n', ' Un appareil qui convertit l\'energie electrique en energie mecanique\r\n', ' Un appareil qui convertit l\'energie electrique en energie thermique\r\n', 'Un appareil qui transforme la tension electrique d\'un circuit en une autre tension electrique', 'Un appareil qui transforme la tension electrique d\'un circuit en une autre tension electrique', 90),
(9, 'Qu\'est-ce que la loi de Faraday ?\r\n', ' Une loi qui decrit la relation entre la force electrique et la charge electrique\r\n', ' Une loi qui decrit la relation entre la tension electrique et le courant electrique\r\n\r\n', 'Une loi qui decrit la production d\'un courant electrique par un champ magnetique variable', 'Une loi qui decrit la production d\'un courant electrique par un champ magnetique variable', 90),
(10, 'Qu\'est-ce que l\'effet photoelectrique ?\r\n', 'La production d\'un courant electrique par la lumiere', ' La production de lumiere par un courant electrique\r\n', ' La production d\'un champ magnetique par la lumiere\r\n', '\r\n La production d\'un courant electrique par la lumiere', 90),
(11, 'Qu\'est-ce qu\'un dipôle electrique ?\r\n', ' Une charge unique\r\n', 'Deux charges opposees separees par une distance finie\r\n', 'Deux charges identiques separees par une distance finie\r\n', 'Deux charges opposees separees par une distance finie\r\n', 90),
(12, 'Comment calcule-t-on le moment dipolaire electrique d\'un dipôle electrique ?\r\n', ' En multipliant la distance entre les charges par la difference de potentiel entre elles\r\n', ' En multipliant la distance entre les charges par la somme des charges\r\n', 'En multipliant la distance entre les charges par la difference des chargesa', 'En multipliant la distance entre les charges par la difference des chargesa', 90),
(13, 'Comment se comporte un dipôle electrique dans un champ electrique uniforme ?\r\n', ' Il reste immobile\r\n', ' Il tourne autour de son centre de masse\r\n', ' Il est soumis à une force de translation et de rotation.', ' Il est soumis à une force de translation et de rotation.', 90),
(14, 'Comment se calcule le champ electrique cree par un dipôle electrique en un point eloigne de celui-ci', 'En utilisant la loi de Coulomb\r\n', ' En utilisant la loi de Gauss\r\n', ' En utilisant la formule du potentiel electrique', ' En utilisant la formule du potentiel electrique', 90),
(15, 'Comment se comporte un dipôle electrique dans un champ magnetique uniforme ?\r\n', ' Il reste immobile\r\n', ' Il tourne autour de son centre de masse', 'Il est soumis à une force de translation et de rotation\r\n', ' Il tourne autour de son centre de masse', 90),
(16, 'Comment appelle-t-on la region de l\'espace où le champ electrique cree par un dipôle electrique est ', ' Zone de la penombre\r\n', 'Zone de l\'ombre', ' Zone de l\'eclairage direct', 'Zone de l\'ombre', 90);

-- --------------------------------------------------------

--
-- Structure de la table `Electronique`
--

CREATE TABLE `Electronique` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Electronique`
--

INSERT INTO `Electronique` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Qu\'est-ce qu\'un filtre actif?\r\n\r\n', 'Un filtre qui utilise uniquement des composants passifs pour filtrer un signal\r\n', 'Un filtre qui utilise à la fois des composants passifs et actifs pour filtrer un signal\r\n', 'Un filtre qui utilise uniquement des composants actifs pour filtrer un signal\r\n', 'Un filtre qui utilise à la fois des composants passifs et actifs pour filtrer un signal\r\n', 90),
(2, 'Qu\'est-ce qu\'un filtre passe-bas?\r\n', ' Un filtre qui laisse passer les frequences elevees et attenue les basses frequences\r\n', ' Un filtre qui laisse passer les basses frequences et attenue les frequences elevees\r\n', ' Un filtre qui laisse passer toutes les frequences', ' Un filtre qui laisse passer les basses frequences et attenue les frequences elevees\r\n', 90),
(3, 'Qu\'est-ce qu\'un filtre passe-haut?\r\n', 'Un filtre qui laisse passer les frequences elevees et attenue les basses frequences\r\n', 'Un filtre qui laisse passer les basses frequences et attenue les frequences elevees\r\n', ' Un filtre qui laisse passer toutes les frequences\r\n', 'Un filtre qui laisse passer les frequences elevees et attenue les basses frequences\r\n', 90),
(4, 'Qu\'est-ce qu\'un filtre passe-bande?\r\n', 'Un filtre qui laisse passer une plage de frequences specifique\r\n', ' Un filtre qui laisse passer toutes les frequences\r\n', ' Un filtre qui attenue une plage de frequences specifique\r\n', 'Un filtre qui laisse passer une plage de frequences specifique\r\n', 90),
(5, 'Qu\'est-ce qu\'un filtre coupe-bande?\r\n', ' Un filtre qui laisse passer une plage de frequences specifique\r\n', ' Un filtre qui laisse passer toutes les frequences\r\n', ' Un filtre qui attenue une plage de frequences specifique\r\n', ' Un filtre qui attenue une plage de frequences specifique', 90),
(6, 'Qu\'est-ce qu\'un amplificateur operationnel?\r\n', ' Un composant passif utilise dans les filtres actifs\r\n', 'Un composant actif utilise dans les filtres actifs\r\n', ' Un composant qui ne peut pas être utilise dans les filtres actifs\r\n', 'Un composant actif utilise dans les filtres actifs', 90),
(7, 'Qu\'est-ce que la retroaction dans un filtre actif?\r\n', ' Le signal de sortie est ajoute au signal d\'entree\r\n', ' Le signal de sortie est soustrait du signal d\'entree\r\n', '  Le signal de sortie est ignore dans le circuit\r\n', ' Le signal de sortie est ajoute au signal d\'entree\r\n', 90),
(8, 'Qu\'est-ce que la frequence de coupure d\'un filtre actif?\r\n', 'La frequence à laquelle le signal d\'entree est coupe\r\n', ' La frequence à laquelle le signal de sortie est coupe\r\n', ' La frequence à laquelle le gain du filtre est attenue de moitie\r\n', ' La frequence à laquelle le gain du filtre est attenue de moitie\r\n', 90),
(9, 'Qu\'est-ce qu\'un filtre de Butterworth?\r\n', 'Un filtre qui a une reponse en frequence plate\r\n', ' Un filtre qui a une reponse en frequence en forme de cloche\r\n', ' Un filtre qui a une reponse en frequence en forme d\'escalier\r\n', 'Un filtre qui a une reponse en frequence plate\r\n', 90),
(10, 'Qu\'est-ce qu\'un filtre de Chebyshev ?\r\n', ' Un filtre qui a une pente de coupure abrupte.\r\n', ' Un filtre qui a une pente de coupure douce.\r\n', ' Un filtre de Chebyshev a une pente de coupure variable.', ' Un filtre de Chebyshev a une pente de coupure variable.', 90),
(11, 'Quelle est la difference entre un signal analogique et un signal numerique ?\r\n', 'Les signaux analogiques sont continus tandis que les signaux numeriques sont discrets.', ' Les signaux analogiques sont discrets tandis que les signaux numeriques sont continus.\r\n', ' Il n\'y a pas de difference entre les signaux analogiques et numeriques.\r\n', 'Les signaux analogiques sont continus tandis que les signaux numeriques sont discrets.', 90),
(12, 'Qu\'est-ce qu\'un convertisseur analogique-numerique (CAN) ?\r\n', ' Un dispositif qui convertit un signal numerique en un signal analogique.\r\n', ' Un dispositif qui convertit un signal analogique en un signal numerique.', ' Un dispositif qui amplifie un signal analogique.\r\n', ' Un dispositif qui convertit un signal analogique en un signal numerique.', 90),
(13, 'Qu\'est-ce qu\'un amplificateur operationnel (AOP) ?\r\n', 'Un amplificateur qui amplifie les signaux numeriques.\r\n', ' Un amplificateur qui amplifie les signaux analogiques.', ' Un dispositif qui convertit les signaux numeriques en signaux analogiques.\r\n', ' Un amplificateur qui amplifie les signaux analogiques.', 90),
(14, 'Qu\'est-ce qu\'un multiplexeur (MUX) ?\r\n', ' Un dispositif qui convertit un signal numerique en un signal analogique.\r\n', 'Un dispositif qui permet de selectionner l\'une des plusieurs entrees et de la diriger vers la sortie', ' Un dispositif qui permet de combiner plusieurs signaux analogiques en un seul signal.\r\n', 'Un dispositif qui permet de selectionner l\'une des plusieurs entrees et de la diriger vers la sortie', 90),
(15, 'Qu\'est-ce qu\'un compteur binaire ?\r\n', ' Un dispositif qui compte les signaux analogiques.\r\n', 'Un dispositif qui compte les signaux numeriques.', 'Un dispositif qui convertit les signaux numeriques en signaux analogiques.\r\n', 'Un dispositif qui compte les signaux numeriques.', 90),
(16, 'Qu\'est-ce qu\'un oscillateur ?\r\n', 'Un dispositif qui convertit les signaux numeriques en signaux analogiques.\r\n', ' Un dispositif qui genere des signaux electriques oscillants.', ' Un dispositif qui permet de reguler la tension electrique.\r\n', ' Un dispositif qui genere des signaux electriques oscillants.', 90),
(17, 'Qu\'est-ce qu\'un comparateur ?\r\n', 'Un dispositif qui permet de comparer deux signaux numerique', ' Un dispositif qui permet de comparer deux signaux analogiques.\r\n', ' Un dispositif qui permet de convertir un signal analogique en signal numerique.\r\n', 'Un dispositif qui permet de comparer deux signaux numerique', 90),
(18, 'Qu\'est-ce qu\'un demultiplexeur (DEMUX) ?\r\n', ' Un dispositif qui convertit un signal numerique en un signal analogique.\r\n', 'Un dispositif qui permet de prendre un signal d\'entree et de le diviser en plusieurs sorties.', ' Un dispositif qui permet de combiner plusieurs signaux analogiques en un seul signal.\r\n', 'Un dispositif qui permet de prendre un signal d\'entree et de le diviser en plusieurs sorties.', 90),
(19, 'Qu\'est-ce qu\'un convertisseur numerique-analogique (CNA) ?\r\n', 'Un dispositif qui convertit un signal numerique en un signal analogique.', ' Un dispositif qui convertit un signal analogique en un signal numerique.\r\n', 'Un dispositif qui amplifie un signal analogique.\r\n', ' Un dispositif qui convertit un signal numerique en un signal analogique.', 90),
(20, 'Qu\'est-ce qu\'un regulateur de tension ?\r\n', ' Un dispositif qui convertit un signal numerique en un signal analogique.\r\n', 'Un dispositif qui permet de reguler la tension electrique dans un circuit.', ' Un dispositif qui permet de convertir un signal analogique en signal numerique.\r\n', 'Un dispositif qui permet de reguler la tension electrique dans un circuit.', 90),
(21, 'Qu\'est-ce qu\'un convertisseur de puissance (inverter) ?\r\n', ' Un dispositif qui permet de convertir un signal numerique en un signal analogique.\r\n', ' Un dispositif qui permet de convertir un signal analogique en un signal numerique.\r\n', ' Un dispositif qui permet de convertir un courant continu en un courant alternatif.', ' Un dispositif qui permet de convertir un courant continu en un courant alternatif.', 90),
(22, 'Qu\'est-ce qu\'un amplificateur de puissance ?\r\n', ' Un amplificateur qui amplifie les signaux numeriques.\r\n', ' Un amplificateur qui amplifie les signaux analogiques.\r\n', ' Un dispositif qui permet d\'augmenter la puissance d\'un signal electrique.', ' Un dispositif qui permet d\'augmenter la puissance d\'un signal electrique.', 90),
(23, 'Qu\'est-ce qu\'un circuit integre (CI) ?\r\n', 'Un circuit qui integre des composants electroniques discrets.\r\n', ' Un circuit qui integre un grand nombre de composants electroniques sur une seule puce de silicium.', 'Un circuit qui integre un convertisseur numerique-analogique et un convertisseur analogique-numeriqu', ' Un circuit qui integre un grand nombre de composants electroniques sur une seule puce de silicium.', 90),
(24, 'Qu\'est-ce qu\'un comparateur à hysteresis ?\r\n', ' Un comparateur qui permet de comparer deux signaux analogiques.\r\n', 'Un comparateur qui permet de comparer deux signaux numeriques.\r\n', 'Un comparateur qui presente une zone de seuil où le signal de sortie reste stable même si le signal', 'Un comparateur qui presente une zone de seuil où le signal de sortie reste stable même si le signal ', 90),
(25, 'Qu\'est-ce qu\'un modulateur ?\r\n', ' Un dispositif qui convertit un signal numerique en signal analogique\r\n', ' Un dispositif qui convertit un signal analogique en signal numerique\r\n', ' Un dispositif qui modifie la frequence d\'un signal analogique', ' Un dispositif qui modifie la frequence d\'un signal analogique', 90),
(26, 'Qu\'est-ce qu\'un demodulateur ?\r\n', ' Un dispositif qui convertit un signal numerique en signal analogique\r\n', ' Un dispositif qui convertit un signal analogique en signal numerique\r\n', ' Un dispositif qui restaure un signal analogique à sa forme originale apres avoir ete module', ' Un dispositif qui restaure un signal analogique à sa forme originale apres avoir ete module', 90),
(27, 'Qu\'est-ce qu\'un amplificateur ?\r\n', ' Un dispositif qui reduit le niveau d\'un signal\r\n', ' Un dispositif qui augmente le niveau d\'un signal', ' Un dispositif qui convertit un signal numerique en signal analogique\r\n', ' Un dispositif qui augmente le niveau d\'un signal', 90),
(28, 'Qu\'est-ce qu\'un oscilloscope ?\r\n', ' Un dispositif qui mesure la frequence d\'un signal\r\n', ' Un dispositif qui mesure la tension d\'un signal\r\n', ' Un dispositif qui affiche la forme d\'onde d\'un signal', ' Un dispositif qui affiche la forme d\'onde d\'un signal', 90),
(29, 'Qu\'est-ce qu\'un echantillonneur ?\r\n', ' Un dispositif qui mesure la frequence d\'un signal\r\n', ' Un dispositif qui mesure la tension d\'un signal\r\n', 'Un dispositif qui preleve des echantillons d\'un signal analogique pour le convertir en signal numer', 'Un dispositif qui preleve des echantillons d\'un signal analogique pour le convertir en signal numer', 90),
(30, 'Qu\'est-ce qu\'un demultiplexeur ?\r\n', 'Un dispositif qui separe un signal composite en plusieurs signaux individuels', ' Un dispositif qui combine plusieurs signaux en un seul signal composite\r\n', 'Un dispositif qui convertit un signal analogique en signal numerique\r\n', 'Un dispositif qui separe un signal composite en plusieurs signaux individuels', 90);

-- --------------------------------------------------------

--
-- Structure de la table `Electrostatique`
--

CREATE TABLE `Electrostatique` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Electrostatique`
--

INSERT INTO `Electrostatique` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Qu\'est-ce que la charge electrique?\r\n', 'Une force electrique', 'Un courant electrique\r\n', 'Une propriete fondamentale de la matiere', 'Une propriete fondamentale de la matiere', 60),
(2, 'Quel est le nom de la loi qui decrit la force entre deux charges electriques?\r\n', ' La loi d\'Ohm\r\n', 'La loi de Coulomb\r\n\r\n', 'La loi de Faraday', 'La loi de Coulomb', 60),
(3, 'Les charges de même signe se :\r\n', 'repulsente\r\n', 'attirent\r\n', 'annulent\r\n', 'repulsente', 60),
(4, 'Quel est le nom de l\'unite de charge electrique?\r\n', ' Ampere\r\n', 'Ohm\r\n', 'Coulomb', 'Coulomb', 60),
(5, 'Les conducteurs sont des materiaux qui:\r\n', 'permettent le mouvement facile des electrons\r\n', 'empêchent le mouvement des electrons\r\n', 'n\'ont aucun effet sur les electrons\r\n', 'permettent le mouvement facile des electrons', 60),
(6, 'Deux charges ponctuelles q1 = 4.0 μC et q2 = -2.0 μC sont separees par une distance de 10 cm. Quelle', ' -2.2 N\r\n', '2.2 N\r\n', ' 0 N', '2.2 N', 120),
(7, 'Une balle de masse m = 0.1 kg est chargee avec une charge q = 2.0 μC. Si la balle est suspendue à un', '26.6°\r\n', ' 45°', '63.4°', '26.6°', 90),
(8, 'Deux charges q1 = 2.0 μC et q2 = -3.0 μC sont separees par une distance de 10 cm. Quelle est l\'energ', ' 2.7 × 10^-7 J\r\n', '-2.7 × 10^-7 J\r\n', '0 J\r\n', '-2.7 × 10^-7 J', 120),
(9, 'Qu\'est-ce que le champ electrostatique ?\r\n', 'Un champ magnetique', 'Un champ de force cree par des charges electriques\r\n', 'Un champ de force cree par des aimants\r\n', 'Un champ de force cree par des charges electriques\r\n', 60),
(10, 'Comment calcule-t-on le champ electrostatique cree par une charge ponctuelle ?\r\n', 'Un champ magnetique', 'Un champ de force cree par des charges electriques\r\n', 'Un champ de force cree par des aimants\r\n', '\r\nb) Un champ de force cree par des charges electrique', 60),
(11, 'Qu\'est-ce que la condition d\'equilibre electrostatique pour un conducteur?\r\n', 'La somme des charges electriques dans le conducteur est nulle', 'Le champ electrique à l\'interieur du conducteur est nul\r\n', 'Le potentiel electrique à la surface du conducteur est constant\r\n', 'Le champ electrique à l\'interieur du conducteur est nul', 60),
(12, 'Comment une charge electrique est-elle repartie sur un conducteur en equilibre?\r\n', 'Uniformement sur toute la surface du conducteur\r\n', 'Principalement sur la surface du conducteur\r\n', 'Principalement à l\'interieur du conducteur', 'Principalement sur la surface du conducteur', 60),
(13, 'Que se passe-t-il si une charge est placee à l\'interieur d\'un conducteur en equilibre?\r\n', 'La charge se repartit uniformement sur toute la surface du conducteur', 'La charge se repartit principalement à l\'interieur du conducteur', 'La charge se repartit principalement sur la surface du conducteur, mais pas uniformement', 'La charge se repartit principalement à l\'interieur du conducteur', 60),
(14, 'Qu\'est-ce qui determine la magnitude du champ electrostatique cree par une charge electrique ?\r\n', 'La masse de la charge electrique\r\n', 'La distance entre la charge electrique et un point dans l\'espace\r\n', 'La vitesse de la charge electrique\r\n', 'La distance entre la charge electrique et un point dans l\'espace\r\n', 60),
(15, 'Deux charges electriques de 4 µC et 8 µC sont separees par une distance de 10 cm. Quelle est la forc', '2,88 N', ' 28,8 N', '288 N', ' 28,8 N', 90),
(16, 'Une charge de 10 µC est placee à une distance de 20 cm d\'une autre charge de -6 µC. Quelle est la fo', '1,8 N\r\n', '-1,8 N\r\n', '18 N', '-1,8 N', 120),
(17, 'Quelle est l\'unite du champ electrostatique?\r\n', 'Volt/metre\r\n', 'Coulomb/metre carre\r\n', 'Newton/coulomb\r\n\r\n', 'Coulomb/metre carre', 90),
(18, 'Comment peut-on calculer le champ electrostatique cree par une charge ponctuelle Q en un point P à u', 'E = Q/r\r\n', 'E = kQ/r^2\r\n', 'E = kQ/r\r\n\r\n', 'E = kQ/r^2 où k est la constante de Coulomb egale à 9 x 10^9 N.m^2/C^2.', 120),
(19, 'Qu\'est-ce que la densite de charge electrique?\r\n', ' La quantite de charge electrique presente dans une region de l\'espace\r\n', 'La quantite de charge electrique par unite de surface\r\n\r\n', 'La quantite de charge electrique par unite de volume\r\n', 'La quantite de charge electrique par unite de volume.', 90),
(20, 'trostatique cree par une distribution continue de charges en utilisant la densite de charge volumiqu', ' E = ρ/ε0\r\n', ' E = kρ/ε0', ' E = kρ\r\n\r\n', ' E = ρ/ε0\r\n', 120),
(21, 'Comment peut-on calculer le champ electrostatique cree par une distribution continue de charges en u', ' E = σ/ε0', ' E = kσ/ε0\r\n', 'E = kσ\r\n\r\n', ' E = σ/ε0 ', 120),
(22, 'Comment peut-on calculer le champ electrostatique cree par une distribution continue de charges en u', 'E = λ/2πε0r\r\n', 'E = kλ/2πε0r ', ' E = kλ/r\r\n\r\n', 'E = kλ/2πε0r ', 120),
(23, 'Quelle est l\'energie potentielle electrostatique d\'une charge q1 de +2,5 nC placee à 5 cm d\'une char', ' -4,5 x 10^-4 J\r\n', ' 4,5 x 10^-4 J\r\n', '2,5 x 10^-7 J\r\n', ' 4,5 x 10^-4 J\r\n', 120),
(24, 'Deux charges ponctuelles de +2,0 μC et +4,0 μC sont placees à 20 cm l\'une de l\'autre. Si une troisie', '5,4 x 10^-4 N\r\n', '2,2 x 10^-4 N\r\n', ' 1,1 x 10^-4 N', ' 1,1 x 10^-4 N', 120),
(25, 'Quelle est la difference de potentiel electrique entre deux points situes à 0,1 m et 0,3 m de distan', '5,6 x 10^6 V', ' 2,2 x 10^5 V\r\n', '8,9 x 10^4 V', '8,9 x 10^4 V', 120),
(26, 'Deux charges ponctuelles de +3,0 μC et -4,0 μC sont placees à 20 cm l\'une de l\'autre. Si la charge d', '-1,1 x 10^-5 J\r\n', '1,1 x 10^-5 J\r\n', '-3,3 x 10^-5 J\r\n', '1,1 x 10^-5 J', 120),
(27, 'Qu\'est-ce qu\'un conducteur en equilibre electrostatique ?\r\n', 'Un conducteur qui ne peut pas conduire l\'electricite\r\n', 'Un conducteur qui n\'a pas de champ electrique à l\'interieur\r\n', 'Un conducteur qui a un champ electrique constant à l\'interieur\r\n', 'Un conducteur qui n\'a pas de champ electrique à l\'interieur', 90),
(28, 'Quelle est la loi qui regit la relation entre la force electrique et la distance entre deux charges ', 'La loi de Coulomb', 'La loi de Lenz', ' La loi d\'Ohm', 'La loi de Coulomb', 90),
(29, 'Quel est le principe selon lequel la force electrique resultante sur une charge est la somme vectori', 'Le principe de superposition\r\n', 'Le principe de conservation de la charge\r\n', 'Le principe d\'induction electromagnetique', 'Le principe de superposition\r\n', 90),
(30, 'QUelle est la loi qui regit la distribution de la charge sur un conducteur en equilibre electrostati', ' La loi de Faraday', 'La loi de Gauss\r\n', 'La loi d\'Ampere', 'La loi de Gauss\r\n', 90);

-- --------------------------------------------------------

--
-- Structure de la table `Matlab`
--

CREATE TABLE `Matlab` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Matlab`
--

INSERT INTO `Matlab` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Quelle est la fonction MATLAB utilisee pour afficher du texte sur la fenêtre de commande ?\r\n', 'disp()', 'fprintf()\r\n', ' input()', 'disp()', 60),
(2, 'Comment creer une matrice de taille 3x3 remplie de zeros en MATLAB ?\r\n', 'zeros(3, 3)', ' ones(3, 3)\r\n', 'eye(3, 3)\r\n', 'zeros(3, 3)', 60),
(3, 'Quelle est la fonction MATLAB utilisee pour generer un nombre aleatoire compris entre 0 et 1 ?\r\n', 'rand()', 'randi()\r\n', ' randn()\r\n', 'rand()', 60),
(4, 'Comment ajouter une nouvelle ligne à une matrice existante en MATLAB ?\r\n', ' En utilisant la fonction \"concatenate\"\r\n', 'En utilisant la fonction \"vertcat\"', ' En utilisant la fonction \"horzcat\"\r\n', 'En utilisant la fonction \"vertcat\"', 90),
(5, 'Comment afficher la deuxieme colonne d\'une matrice en MATLAB ?\r\n', 'en utilisant l\'operateur de double-points (:)\r\n', ' en utilisant la notation de crochets ([]), par exemple M(:,2)\r\n', ' en utilisant la fonction \"colselect\"\r\n', ' en utilisant la notation de crochets ([]), par exemple M(:,2)', 90),
(6, 'Comment creer un vecteur de 1 à 10 avec un pas de 2 en utilisant MATLAB ?\r\n', '1:2:10', ' 1:10:2\r\n', ' 2:1:10\r\n\r\n', ' 1:2:10', 60),
(7, 'Comment calculer la racine carree d\'un nombre en utilisant MATLAB ?\r\n', 'sqrt(n)', ' n^2\r\n\r\n', ' n/2\r\n\r\n', 'sqrt(n)', 60),
(8, 'Comment importer des donnees à partir d\'un fichier CSV en utilisant MATLAB ?\r\n', 'importdata(\'nom_du_fichier.csv\')', 'readfile(\'nom_du_fichier.csv\')', ' load(\'nom_du_fichier.csv\')\r\n\r\n', 'importdata(\'nom_du_fichier.csv\')', 60),
(9, 'Comment afficher le contenu d\'un tableau en utilisant MATLAB ?\r\n', ' disp(tableau)', ' show(tableau)\r\n', 'print(tableau)\r\n\r\n', ' disp(tableau)', 60),
(10, 'Comment creer une boucle qui s\'execute 10 fois en utilisant MATLAB ?\r\n', ' for i = 1 to 10\r\n', ' for i = 1:10', ' for i = 10:-1:1\r\n\r\n', ' for i = 1:10', 60),
(11, 'Comment definir une matrice 3x3 avec des nombres aleatoires en utilisant MATLAB ?\r\n', 'rand(3,3)', 'ones(3,3)\r\n', ' zeros(3,3)\r\n\r\n', 'rand(3,3)', 60),
(12, 'Comment calculer la moyenne d\'un vecteur en utilisant MATLAB ?\r\n', 'mean(vecteur)', ' sum(vecteur)\r\n', ' median(vecteur)\r\n\r\n', 'mean(vecteur)', 60),
(13, 'Comment creer un graphique de dispersion en utilisant MATLAB ?\r\n', ' scatter(x,y)', ' plot(x,y)\r\n\r\n\r\n', ' bar(x,y)\r\n\r\n', ' scatter(x,y)', 90),
(14, 'Comment calculer la derivee d\'une fonction en utilisant MATLAB ?\r\n', 'derive(fonction)\r\n', ' diff(fonction)', 'gradient(fonction)\r\n\r\n', ' diff(fonction)', 60),
(15, 'Comment acceder au deuxieme element d\'un vecteur en utilisant MATLAB ?\r\n', ' vecteur[1]\r\n', ' vecteur(1)\r\n', 'vecteur(2)', 'vecteur(2)', 90),
(16, 'Comment obtenir la somme de tous les elements d\'une matrice ?\r\n', 'sum(matrix, \'all\')', 'sum(matrix(:))\r\n', ' sum(matrix)', 'sum(matrix, \'all\')', 60),
(17, 'Comment trier un vecteur dans l\'ordre decroissant ?\r\n', ' sort(vector, \'descend\')', ' sort(vector, \'ascend\')\r\n', ' sort(vector)\r\n', ' sort(vector, \'descend\')', 90),
(18, 'Comment obtenir la diagonale d\'une matrice ?\r\n', ' diag(matrix)\r\n', ' diag(matrix, 1)\r\n', ' diag(matrix, -1)\r\n', ' diag(matrix)', 60),
(19, 'Comment elever chaque element d\'un vecteur au carre ?\r\n', 'vector * vector\r\n', ' vector .^ 2', ' vector ^ 2\r\n', ' vector .^ 2', 60),
(20, 'Comment ajouter une nouvelle ligne à une matrice existante ?\r\n', ' matrix(end+1,:) = new_row', ' matrix(:,end+1) = new_row\r\n', ' matrix(end,:) = new_row\r\n', ' matrix(end+1,:) = new_row', 90),
(21, 'Comment faire la transposee d\'une matrice ?\r\n', ' transpose(matrix)\r\n', ' matrix\'', ' flip(matrix)\r\n', ' matrix\'', 90),
(22, 'Comment trouver l\'indice de la valeur maximale dans un vecteur ?\r\n', 'find(vector == max(vector))', 'max(vector)\r\n', ' index(max(vector))\r\n', 'find(vector == max(vector))', 90),
(23, 'Comment concatener deux vecteurs horizontalement ?\r\n', ' horzcat(vector1, vector2)', ' vertcat(vector1, vector2)\r\n', ' cat(2, vector1, vector2)\r\n', ' horzcat(vector1, vector2)', 90),
(24, 'Comment supprimer toutes les valeurs nulles d\'un vecteur ?\r\n', 'vector(vector == 0) = []\r\n', ' vector(vector ~= 0)', ' delete(vector, 0)\r\n', ' vector(vector ~= 0)', 90),
(25, 'Comment calculer la norme euclidienne d\'un vecteur ?\r\n', 'norm(vector)\r\n', ' sum(vector.^2)\r\n', 'sqrt(sum(vector.^2))', 'sqrt(sum(vector.^2))', 90),
(26, 'Comment creer une fonction en MATLAB ?', ' function my_function()\r\n', ' def my_function()\r\n', ' function [output] = my_function(input)', ' function [output] = my_function(input)', 90),
(27, 'Comment importer un fichier CSV dans MATLAB ?\r\n', ' readtable(\'file.csv\')', ' readcsv(\'file.csv\')\r\n', ' load(\'file.csv\')\r\n', ' readtable(\'file.csv\')', 90),
(28, 'Comment creer un graphique lineaire en utilisant les donnees d\'un vecteur ?\r\n', 'plot(vector)', ' hist(vector)\r\n', 'scatter(vector)\r\n', 'plot(vector)', 90),
(29, 'Comment ajouter un titre à un graphique en MATLAB ?\r\n', ' title(\'Mon titre\')', ' xlabel(\'Mon titre\')\r\n', ' ylabel(\'Mon titre\')\r\n', ' title(\'Mon titre\')', 90),
(30, 'Comment afficher plusieurs graphiques dans une même figure ?\r\n', 'subplot()', 'figure()\r\n', ' hold on\r\n', 'subplot()', 90),
(1, 'Quelle est la fonction MATLAB utilisee pour afficher du texte sur la fenêtre de commande ?\r\n', 'disp()', 'fprintf()\r\n', ' input()', 'disp()', 60),
(2, 'Comment creer une matrice de taille 3x3 remplie de zeros en MATLAB ?\r\n', 'zeros(3, 3)', ' ones(3, 3)\r\n', 'eye(3, 3)\r\n', 'zeros(3, 3)', 60),
(3, 'Quelle est la fonction MATLAB utilisee pour generer un nombre aleatoire compris entre 0 et 1 ?\r\n', 'rand()', 'randi()\r\n', ' randn()\r\n', 'rand()', 60),
(4, 'Comment ajouter une nouvelle ligne à une matrice existante en MATLAB ?\r\n', ' En utilisant la fonction \"concatenate\"\r\n', 'En utilisant la fonction \"vertcat\"', ' En utilisant la fonction \"horzcat\"\r\n', 'En utilisant la fonction \"vertcat\"', 90),
(5, 'Comment afficher la deuxieme colonne d\'une matrice en MATLAB ?\r\n', 'en utilisant l\'operateur de double-points (:)\r\n', ' en utilisant la notation de crochets ([]), par exemple M(:,2)\r\n', ' en utilisant la fonction \"colselect\"\r\n', ' en utilisant la notation de crochets ([]), par exemple M(:,2)', 90),
(6, 'Comment creer un vecteur de 1 à 10 avec un pas de 2 en utilisant MATLAB ?\r\n', '1:2:10', ' 1:10:2\r\n', ' 2:1:10\r\n\r\n', ' 1:2:10', 60),
(7, 'Comment calculer la racine carree d\'un nombre en utilisant MATLAB ?\r\n', 'sqrt(n)', ' n^2\r\n\r\n', ' n/2\r\n\r\n', 'sqrt(n)', 60),
(8, 'Comment importer des donnees à partir d\'un fichier CSV en utilisant MATLAB ?\r\n', 'importdata(\'nom_du_fichier.csv\')', 'readfile(\'nom_du_fichier.csv\')', ' load(\'nom_du_fichier.csv\')\r\n\r\n', 'importdata(\'nom_du_fichier.csv\')', 60),
(9, 'Comment afficher le contenu d\'un tableau en utilisant MATLAB ?\r\n', ' disp(tableau)', ' show(tableau)\r\n', 'print(tableau)\r\n\r\n', ' disp(tableau)', 60),
(10, 'Comment creer une boucle qui s\'execute 10 fois en utilisant MATLAB ?\r\n', ' for i = 1 to 10\r\n', ' for i = 1:10', ' for i = 10:-1:1\r\n\r\n', ' for i = 1:10', 60),
(11, 'Comment definir une matrice 3x3 avec des nombres aleatoires en utilisant MATLAB ?\r\n', 'rand(3,3)', 'ones(3,3)\r\n', ' zeros(3,3)\r\n\r\n', 'rand(3,3)', 60),
(12, 'Comment calculer la moyenne d\'un vecteur en utilisant MATLAB ?\r\n', 'mean(vecteur)', ' sum(vecteur)\r\n', ' median(vecteur)\r\n\r\n', 'mean(vecteur)', 60),
(13, 'Comment creer un graphique de dispersion en utilisant MATLAB ?\r\n', ' scatter(x,y)', ' plot(x,y)\r\n\r\n\r\n', ' bar(x,y)\r\n\r\n', ' scatter(x,y)', 90),
(14, 'Comment calculer la derivee d\'une fonction en utilisant MATLAB ?\r\n', 'derive(fonction)\r\n', ' diff(fonction)', 'gradient(fonction)\r\n\r\n', ' diff(fonction)', 60),
(15, 'Comment acceder au deuxieme element d\'un vecteur en utilisant MATLAB ?\r\n', ' vecteur[1]\r\n', ' vecteur(1)\r\n', 'vecteur(2)', 'vecteur(2)', 90),
(16, 'Comment obtenir la somme de tous les elements d\'une matrice ?\r\n', 'sum(matrix, \'all\')', 'sum(matrix(:))\r\n', ' sum(matrix)', 'sum(matrix, \'all\')', 60),
(17, 'Comment trier un vecteur dans l\'ordre decroissant ?\r\n', ' sort(vector, \'descend\')', ' sort(vector, \'ascend\')\r\n', ' sort(vector)\r\n', ' sort(vector, \'descend\')', 90),
(18, 'Comment obtenir la diagonale d\'une matrice ?\r\n', ' diag(matrix)\r\n', ' diag(matrix, 1)\r\n', ' diag(matrix, -1)\r\n', ' diag(matrix)', 60),
(19, 'Comment elever chaque element d\'un vecteur au carre ?\r\n', 'vector * vector\r\n', ' vector .^ 2', ' vector ^ 2\r\n', ' vector .^ 2', 60),
(20, 'Comment ajouter une nouvelle ligne à une matrice existante ?\r\n', ' matrix(end+1,:) = new_row', ' matrix(:,end+1) = new_row\r\n', ' matrix(end,:) = new_row\r\n', ' matrix(end+1,:) = new_row', 90),
(21, 'Comment faire la transposee d\'une matrice ?\r\n', ' transpose(matrix)\r\n', ' matrix\'', ' flip(matrix)\r\n', ' matrix\'', 90),
(22, 'Comment trouver l\'indice de la valeur maximale dans un vecteur ?\r\n', 'find(vector == max(vector))', 'max(vector)\r\n', ' index(max(vector))\r\n', 'find(vector == max(vector))', 90),
(23, 'Comment concatener deux vecteurs horizontalement ?\r\n', ' horzcat(vector1, vector2)', ' vertcat(vector1, vector2)\r\n', ' cat(2, vector1, vector2)\r\n', ' horzcat(vector1, vector2)', 90),
(24, 'Comment supprimer toutes les valeurs nulles d\'un vecteur ?\r\n', 'vector(vector == 0) = []\r\n', ' vector(vector ~= 0)', ' delete(vector, 0)\r\n', ' vector(vector ~= 0)', 90),
(25, 'Comment calculer la norme euclidienne d\'un vecteur ?\r\n', 'norm(vector)\r\n', ' sum(vector.^2)\r\n', 'sqrt(sum(vector.^2))', 'sqrt(sum(vector.^2))', 90),
(26, 'Comment creer une fonction en MATLAB ?', ' function my_function()\r\n', ' def my_function()\r\n', ' function [output] = my_function(input)', ' function [output] = my_function(input)', 90),
(27, 'Comment importer un fichier CSV dans MATLAB ?\r\n', ' readtable(\'file.csv\')', ' readcsv(\'file.csv\')\r\n', ' load(\'file.csv\')\r\n', ' readtable(\'file.csv\')', 90),
(28, 'Comment creer un graphique lineaire en utilisant les donnees d\'un vecteur ?\r\n', 'plot(vector)', ' hist(vector)\r\n', 'scatter(vector)\r\n', 'plot(vector)', 90),
(29, 'Comment ajouter un titre à un graphique en MATLAB ?\r\n', ' title(\'Mon titre\')', ' xlabel(\'Mon titre\')\r\n', ' ylabel(\'Mon titre\')\r\n', ' title(\'Mon titre\')', 90),
(30, 'Comment afficher plusieurs graphiques dans une même figure ?\r\n', 'subplot()', 'figure()\r\n', ' hold on\r\n', 'subplot()', 90);

-- --------------------------------------------------------

--
-- Structure de la table `Mecanique de fluide`
--

CREATE TABLE `Mecanique de fluide` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Mecanique de fluide`
--

INSERT INTO `Mecanique de fluide` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Qu\'est-ce que la viscosite d\'un fluide ?\r\n', ' La mesure de la densite du fluide\r\n', 'La mesure de la resistance du fluide à l\'ecoulement', ' La mesure de la temperature du fluide\r\n', 'La mesure de la resistance du fluide à l\'ecoulement', 90),
(2, ' La force de gravite\r\n', ' La force de frottement', 'La force centripete\r\n', 'La force centripete\r\n', ' La force de frottement', 90),
(3, 'Qu\'est-ce que la pression d\'un fluide ?\r\n', ' La force exercee par le fluide sur une surface', 'La vitesse du fluide à travers un tuyau ou une canalisation\r\n', ' La densite du fluide\r\n', ' La force exercee par le fluide sur une surface', 90),
(4, 'Comment s\'appelle le phenomene selon lequel la pression d\'un fluide diminue lorsque sa vitesse augme', 'L\'effet Venturi', ' L\'effet Magnus\r\n', '\r\n L\'effet Doppler\r\n', 'L\'effet Venturi', 90),
(5, 'Qu\'est-ce que la portance d\'un objet en mouvement dans un fluide ?\r\n', ' La force qui s\'oppose au mouvement de l\'objet\r\n', 'La force qui maintient l\'objet en mouvement\r\n', 'La force qui souleve l\'objet', 'La force qui souleve l\'objet', 60),
(6, 'Qu\'est-ce que la viscosite dynamique?\r\n', ' La mesure de la resistance d\'un fluide à l\'ecoulement', ' La mesure de la viscosite d\'un fluide à une temperature donnee\r\n\r\n', ' La mesure de la densite d\'un fluide\r\n', ' La mesure de la resistance d\'un fluide à l\'ecoulement', 90),
(7, 'Dynamique des fluides incompressibles (F1)\r\n\r\n', 'Le debit massique est constant dans un ecoulement incompressible.', 'La somme des pressions et des vitesses dans un ecoulement est constante.\r\n', 'La somme des forces appliquees sur un fluide est egale à la masse multipliee par l\'acceleration.\r\n', 'Le debit massique est constant dans un ecoulement incompressible.', 60),
(8, 'Quelle est l\'equation de Bernoulli ?\r\n', '  P + 1/2 * rho * v^2 + rho * g * h = constante', ' P + rho * g * h = constante\r\n', ' P + rho * v * h = constante\r\n', '  P + 1/2 * rho * v^2 + rho * g * h = constante', 90),
(9, 'Quelle est la difference entre un ecoulement laminaire et turbulent ?\r\n', 'L\'ecoulement laminaire est caracterise par des tourbillons et des fluctuations, tandis que l\'ecoulem', 'L\'ecoulement turbulent est caracterise par des tourbillons et des fluctuations, tandis que l\'ecoule', ' L\'ecoulement laminaire et turbulent sont des termes interchangeables et decrivent tous deux des eco', ' L\'ecoulement turbulent est caracterise par des tourbillons et des fluctuations, tandis que l\'ecoule', 90),
(10, 'Comment mesure-t-on le debit d\'un fluide ?\r\n', 'En mesurant la difference de pression entre deux points.\r\n', 'En mesurant la hauteur de fluide qui s\'ecoule à travers une section donnee en un temps donne.\r\n', ' En mesurant la hauteur de fluide qui s\'ecoule à travers une section donnee en un temps donne.', ' En mesurant la hauteur de fluide qui s\'ecoule à travers une section donnee en un temps donne.', 90),
(11, 'Comment definit-on la viscosite d\'un fluide ?\r\n', ' Comme la resistance du fluide à l\'ecoulement.', ' Comme la quantite de fluide qui s\'ecoule à travers une section donnee en un temps donne.\r\n', ' Comme la difference de pression entre deux points dans le fluide.\r\n', ' Comme la resistance du fluide à l\'ecoulement.', 60),
(12, 'Qu\'est-ce que la viscosite?\r\n', ' La resistance d\'un fluide à l\'ecoulement', 'La capacite d\'un fluide à couler facilement\r\n', ' La mesure de la densite d\'un fluide\r\n\r\n', ' La resistance d\'un fluide à l\'ecoulement', 60),
(13, 'Comment mesure-t-on la viscosite d\'un fluide?\r\n', ' En mesurant la vitesse à laquelle le fluide s\'ecoule\r\n', ' En mesurant la force necessaire pour faire couler le fluide', ' En mesurant la masse volumique du fluide\r\n\r\n', ' En mesurant la force necessaire pour faire couler le fluide', 90),
(14, 'Comment la viscosite d\'un fluide change-t-elle avec la temperature?\r\n', ' Elle augmente avec la temperature\r\n', ' Elle diminue avec la temperature', ' Elle ne change pas avec la temperature\r\n\r\n', ' Elle diminue avec la temperature', 60),
(15, 'Comment la viscosite d\'un fluide affecte-t-elle l\'ecoulement du fluide?\r\n', ' Elle accelere l\'ecoulement\r\n', ' Elle ralentit l\'ecoulement', ' Elle n\'a pas d\'effet sur l\'ecoulement\r\n\r\n', ' Elle ralentit l\'ecoulement', 90),
(16, 'Comment la viscosite d\'un fluide change-t-elle avec la pression?\r\n', ' Elle augmente avec la pression\r\n', ' Elle diminue avec la pression\r\n', ' Elle ne change pas avec la pression', ' Elle ne change pas avec la pression', 60),
(17, 'Quel est le nom de la loi qui decrit l\'ecoulement d\'un fluide visqueux?\r\n', 'Loi de Bernoulli\r\n', ' Loi de Newton\r\n', ' Loi de Stokes', ' Loi de Stokes', 90),
(18, 'Qu\'est-ce que la viscosite cinematique?\r\n', ' La mesure de la viscosite d\'un fluide à une temperature donnee\r\n', ' La mesure de la densite d\'un fluide\r\n', ' La mesure de la viscosite d\'un fluide à une temperature donnee divisee par sa densite', ' La mesure de la viscosite d\'un fluide à une temperature donnee divisee par sa densite', 90),
(19, 'Comment la viscosite d\'un fluide affecte-t-elle la turbulence de l\'ecoulement?\r\n', ' Elle augmente la turbulence\r\n', ' Elle diminue la turbulence', ' Elle n\'a pas d\'effet sur la turbulence\r\n\r\n', ' Elle diminue la turbulence', 90),
(20, 'Qu\'est-ce que le nombre de Reynolds?\r\n', ' La mesure de la viscosite d\'un fluide\r\n', ' La mesure de la densite d\'un fluide\r\n', 'Le rapport entre les forces d\'inertie et les forces de viscosite dans un ecoulement', 'Le rapport entre les forces d\'inertie et les forces de viscosite dans un ecoulement', 90),
(21, 'Qu\'est-ce que la pression d\'un fluide ?\r\n', 'La pression d\'un fluide correspond à la force par unite de surface exercee par le fluide sur une su', ' La quantite de fluide qui coule à travers une surface donnee.\r\n', ' La vitesse du fluide à travers une surface donnee.\r\n', 'La pression d\'un fluide correspond à la force par unite de surface exercee par le fluide sur une su', 90),
(22, 'Comment varie la pression dans un fluide en fonction de la profondeur ?\r\n', 'La pression augmente avec la profondeur.\r\n', ' La pression diminue avec la profondeur.\r\n', ' La pression reste constante avec la profondeur.\r\n', 'La pression d\'un fluide augmente avec la profondeur, en raison du poids du fluide qui exerce une fo', 90),
(23, 'Comment appelle-t-on la loi qui decrit la variation de pression avec la profondeur dans un fluide st', ' La loi de Boyle-Mariotte.\r\n', 'La loi de Pascal.\r\n', 'La loi d\'Archimede.\r\n', 'La loi de Pascal decrit la variation de pression avec la profondeur dans un fluide statique. Elle e', 90),
(24, 'Comment appelle-t-on la force exercee par un fluide sur une surface ?\r\n', ' La force hydrostatique.\r\n', ' La force de poussee.\r\n', ' La force de gravite.', ' La force de poussee.\r\n', 60),
(25, 'Comment calcule-t-on la force de poussee exercee par un fluide sur une surface plane immergee vertic', 'En multipliant la surface de la surface plane par la pression du fluide à cette profondeur.\r\n', ' En multipliant la densite du fluide par le volume de fluide deplace.\r\n', ' En multipliant la pression à la surface libre du fluide par la hauteur de la surface plane immergee', 'En multipliant la surface de la surface plane par la pression du fluide à cette profondeur.\r\n', 90),
(26, 'Comment appelle-t-on le point d\'un fluide où la pression est la plus basse ?\r\n', 'Le point de stagnation.\r\n', ' Le point de remous.\r\n', ' Le point d\'etranglement.', 'Le point de stagnation.\r\n', 90),
(27, 'Qu\'est-ce qu\'un fluide parfait ?\r\n', 'Un fluide sans viscosite.\r\n', ' Un fluide sans densite.\r\n', 'Un fluide sans pression.', 'Un fluide sans viscosite.\r\n', 60),
(28, 'Comment s\'appelle la loi qui decrit la conservation de la masse dans un fluide parfait incompressibl', 'La loi de Bernoulli.\r\n', 'La loi de Laplace.\r\n', ' La loi de conservation de la masse.', ' La loi de conservation de la masse.', 90),
(29, 'Comment s\'appelle la loi qui decrit la conservation de la quantite de mouvement dans un fluide parfa', ' La loi de Bernoulli.\r\n', 'La loi de Laplace.\r\n', 'La loi de conservation de la quantite de mouvement.', ' La loi de conservation de la quantite de mouvement.', 90),
(30, 'Comment appelle-t-on le phenomene où la vitesse d\'un fluide augmente à mesure que sa pression diminu', ' La loi de conservation de la masse.\r\n', ' L\'effet Venturi.\r\n', ' La loi de Bernoulli', ' La loi de Bernoulli', 90);

-- --------------------------------------------------------

--
-- Structure de la table `Mecanique du point`
--

CREATE TABLE `Mecanique du point` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Mecanique du point`
--

INSERT INTO `Mecanique du point` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Quelle est l\'unite de la force ?\r\n', 'Metre\r\n', 'Joule', 'Newton', 'Newton', 30),
(2, 'Qu\'est-ce que la vitesse ?', 'La distance parcourue par unite de temps\r\n', 'Le temps mis pour parcourir une distance donnee', 'La combinaison de la distance parcourue et du temps mis pour parcourir cette distance', 'La combinaison de la distance parcourue et du temps mis pour parcourir cette distance', 60),
(3, 'Qu\'est-ce que l\'acceleration ?\r\n', ' La distance parcourue par unite de temps', 'Le temps mis pour parcourir une distance donnee\r\n', 'Le changement de vitesse par unite de temps', 'Le changement de vitesse par unite de temps', 60),
(4, 'Qu\'est-ce que la quantite de mouvement ?\r\n', 'La force appliquee sur un objet', 'La masse d\'un objet multipliee par sa vitesse\r\n', 'La masse d\'un objet multipliee par son acceleration', 'La masse d\'un objet multipliee par sa vitesse\r\n', 60),
(5, 'Qu\'est-ce que la loi de Newton du mouvement ?\r\n', 'Tout corps continue de se deplacer à une vitesse constante à moins qu\'une force nette ne soit appliq', 'Pour chaque action, il y a une reaction egale et opposee\r\n', 'La force appliquee sur un objet est egale à sa masse multipliee par son acceleration\r\n', 'Pour chaque action, il y a une reaction egale et opposee', 60),
(6, 'Un objet de masse 2 kg est soumis à une force constante de 10 N pendant 5 secondes. Quelle est la va', '20 kg.m/s', '10 kg.m/s', '5 kg.m/s', '20 kg.m/s,', 90),
(7, 'Une balle de 0,2 kg est lancee verticalement vers le haut avec une vitesse initiale de 10 m/s. À que', '10 m\r\n', '20 m', '5 m', '20 m,', 90),
(8, 'Un objet de masse 1 kg est en mouvement circulaire uniforme avec une vitesse de 4 m/s sur un rayon d', '8 N\r\n', '2 N\r\n', '16 N', '16 N,', 90),
(9, 'Un objet de masse 5 kg est initialement au repos. Une force constante de 20 N est appliquee horizont', '16 m/s', '8 m/s\r\n', '5 m/s\r\n', '8 m/s.', 90),
(10, 'Une voiture de 1200 kg voyage à une vitesse constante de 20 m/s sur une route horizontale. Si les fr', '600 N', '1000 N', '500 N\r\n', '500 N', 120),
(11, 'Une balle de 0,1 kg est lancee horizontalement avec une vitesse de 20 m/s à partir d\'une falaise de ', ' 40 m\r\n', '100 m', '200 m', '200 m', 90),
(12, 'Quelle est l\'unite de la quantite de mouvement ?\r\n', ' Joule', 'Kilogramme metre par seconde\r\n', 'Newton\r\n', 'Kilogramme metre par seconde', 60),
(13, 'Comment est definie la force nette sur un objet ?\r\n', ' La somme des forces appliquees sur l\'objet\r\n', 'La difference entre les forces appliquees sur l\'objet\r\n', 'La multiplication des forces appliquees sur l\'objet\r\n', 'La difference entre les forces appliquees sur l\'objet', 90),
(14, 'Quelle est la relation entre la force, la masse et l\'acceleration ?\r\n', 'F = ma', 'F = mv\r\n', 'F = m/a', 'F = ma', 90),
(15, 'Qu\'est-ce que la position d\'un point materiel ?\r\n', ' La distance parcourue par le point materiel', 'La vitesse du point materiel\r\n', 'L\'emplacement du point materiel dans l\'espace', 'L\'emplacement du point materiel dans l\'espace', 90),
(16, 'Qu\'est-ce que la vitesse d\'un point materiel ?\r\n', 'La variation de la position du point materiel par unite de temps', 'La variation de l\'acceleration du point materiel par unite de temps', 'La variation de la force exercee sur le point materiel par unite de temps', 'La variation de la position du point materiel par unite de temps', 90),
(17, 'Qu\'est-ce que l\'acceleration d\'un point materiel ?\r\n', 'La variation de la vitesse du point materiel par unite de temps', 'La variation de la position du point materiel par unite de temps\r\n', 'La variation de la force exercee sur le point materiel par unite de temps\r\n', 'La variation de la vitesse du point materiel par unite de temps', 60),
(18, 'Qu\'est-ce que la force de gravite?\r\n', ' La force de gravite est la force qui maintient les objets en rotation autour d\'un centre de masse', 'La force de gravite est la force qui attire les objets l\'un vers l\'autre en raison de leur masse', 'La force de gravite est la force qui pousse les objets à s\'eloigner les uns des autres', 'La force de gravite est la force qui attire les objets l\'un vers l\'autre en raison de leur masse.', 60),
(19, 'Un objet de 2 kg est soumis à une force de 10 N. Quelle est l\'acceleration de l\'objet ?\n', '2 m/s^2\r\n', '5 m/s^2\r\n', '10 m/s^2\r\n', '5 m/s^2', 90),
(20, 'Un objet de 5 kg est pose sur une surface plane et horizontale. Si le coefficient de frottement stat', ' 19,6 N\r\n', '24,5 N\r\n', '30 N\r\n', '24,5 N\r\n', 120),
(21, 'Un objet est suspendu à une corde qui exerce une force de tension de 20 N. Si l\'objet est immobile, ', ' 0 N', '9,81 N\r\n', '20 N', '20 N\r\n', 120),
(22, 'Un objet de masse 2 kg est place à une hauteur de 5 m au-dessus du sol. Quelle est l\'energie potenti', ' 10 J\r\n', '19,6 J\r\n', '98 J', '98 J', 120),
(23, 'Un objet de masse 1 kg est lance verticalement vers le haut avec une vitesse de 10 m/s. Quelle est l', ' 5 m', '10 m\r\n', '20 m\r\n', '10 m\r\n', 120),
(24, 'Qu\'est-ce que le changement de referentiel en mecanique du point ?\r\n', 'Un changement de vitesse d\'un point\r\n', 'Un changement de position d\'un point\r\n', 'Un changement de systeme de reference utilise pour mesurer la position et le mouvement du point.', 'Un changement de systeme de reference utilise pour mesurer la position et le mouvement du point.', 60),
(25, 'Un point se deplace à une vitesse de 10 m/s dans un referentiel fixe. Si le referentiel est maintena', ' 5 m/s', '10 m/s', '15 m/s\r\n', '10 m/s', 120),
(26, 'Un objet se deplace à une vitesse de 10 m/s. Combien de temps faut-il pour parcourir une distance de', ' 5 s', '10 s\r\n', ' 15 s', '5 s', 90),
(27, 'Un objet accelere à une vitesse de 5 m/s^2. Combien de temps faut-il pour atteindre une vitesse de 5', ' 10 s', '15 s\r\n', '20 s', '10 s', 90),
(28, 'Un objet de masse 2 kg est en mouvement à une vitesse de 10 m/s. Quelle est son energie cinetique ?\r', ' 50 J', '100 J\r\n', '200 J\r\n', '100 J', 120),
(29, 'Qu\'est-ce que l\'acceleration d\'un objet ?\r\n', 'a vitesse d\'un objet divisee par la distance parcourue.\r\n', 'Le changement de vitesse d\'un objet par unite de temps.\r\n', 'La distance parcourue par unite de temps.\r\n', 'Le changement de vitesse d\'un objet par unite de temps.', 60),
(30, 'Qu\'est-ce que l\'energie cinetique ?\r\n', 'L\'energie stockee dans un objet en raison de sa position.\r\n', 'L\'energie due au mouvement d\'un objet ', 'L\'energie necessaire pour soulever un objet.\r\n', 'L\'energie due au mouvement d\'un objet.', 60);

-- --------------------------------------------------------

--
-- Structure de la table `Mecanique du solide`
--

CREATE TABLE `Mecanique du solide` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Mecanique du solide`
--

INSERT INTO `Mecanique du solide` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Qu\'est-ce que le moment d\'une force ?\r\n', ' La force necessaire pour faire tourner un objet\r\n', 'La mesure de la force qui tend à faire tourner un objet autour d\'un axe', ' La quantite de mouvement d\'un objet\r\n', 'La mesure de la force qui tend à faire tourner un objet autour d\'un axe', 90),
(2, 'Quelle est la relation entre la force et l\'acceleration ?\r\n', ' La force est egale à l\'acceleration multipliee par la masse\r\n', ' La force est egale à l\'acceleration divisee par la masse\r\n', 'La force est egale à la masse multipliee par l\'acceleration', 'La force est egale à la masse multipliee par l\'acceleration', 90),
(3, 'Quelle est la definition de la rigidite d\'un materiau ?\r\n', ' La capacite d\'un materiau à absorber l\'energie avant de se deformer\r\n', ' La capacite d\'un materiau à resister à la deformation sous l\'effet d\'une force externe', ' La capacite d\'un materiau à revenir à sa forme originale apres avoir ete deforme\r\n', ' La capacite d\'un materiau à resister à la deformation sous l\'effet d\'une force externe', 90),
(4, 'Comment calcule-t-on la densite d\'un objet ?\r\n', ' En divisant la masse de l\'objet par sa surface\r\n', ' En divisant la masse de l\'objet par son volume', ' En divisant la surface de l\'objet par son volume\r\n', 'En divisant la masse de l\'objet par son volume', 90),
(5, 'Qu\'est-ce que le moment d\'inertie ?\r\n', ' La mesure de la force qui tend à faire tourner un objet autour d\'un axe\r\n', 'La capacite d\'un objet à resister à une force qui tend à le faire tourner autour d\'un axe', ' La quantite de mouvement d\'un objet\r\n', 'La capacite d\'un objet à resister à une force qui tend à le faire tourner autour d\'un axe', 90),
(6, 'Quelle est la relation entre la force, la distance et le travail ?\r\n', 'La force multipliee par la distance parcourue est egale au travail', ' La distance parcourue divisee par la force est egale au travail\r\n', ' La force divisee par la distance parcourue est egale au travail\r\n', 'La force multipliee par la distance parcourue est egale au travail', 90),
(7, 'Qu\'est-ce que la contrainte de cisaillement ?\r\n', ' La force qui agit sur une surface par unite de surface.\r\n', 'La contrainte de cisaillement est la force qui agit perpendiculairement à une surface par unite de s', ' La force qui agit parallelement à une surface par unite de surface.\r\n', 'La contrainte de cisaillement est la force qui agit perpendiculairement à une surface par unite de s', 90),
(8, 'Qu\'est-ce que la contrainte normale ?\r\n', 'La contrainte normale est la force qui agit sur une surface par unite de surface.', ' La force qui agit perpendiculairement à une surface par unite de surface.\r\n', ' La force qui agit parallelement à une surface par unite de surface.', 'La contrainte normale est la force qui agit sur une surface par unite de surface.', 90),
(9, 'Qu\'est-ce que la deformation elastique ?\r\n', 'La deformation permanente d\'un materiau.\r\n', ' La deformation temporaire d\'un materiau.\r\n', 'La deformation elastique est la deformation reversible d\'un materiau.', 'La deformation elastique est la deformation reversible d\'un materiau.', 90),
(10, 'Qu\'est-ce que la cinematique?\r\n', ' L\'etude des forces qui agissent sur un corps en mouvement.\r\n', 'L\'etude des mouvements des corps sans tenir compte des forces qui les produisent.', ' L\'etude des forces qui produisent des mouvements.\r\n', 'L\'etude des mouvements des corps sans tenir compte des forces qui les produisent.', 90),
(11, 'Qu\'est-ce que la trajectoire d\'un objet?\r\n', 'Le chemin parcouru par un objet dans l\'espace.', ' La distance totale parcourue par un objet.\r\n', ' La vitesse à laquelle un objet se deplace.\r\n\r\n', 'Le chemin parcouru par un objet dans l\'espace.', 90),
(12, 'Qu\'est-ce que la vitesse moyenne d\'un objet?\r\n', ' La distance parcourue par un objet en un temps donne.\r\n', ' Le temps qu\'il faut à un objet pour parcourir une certaine distance.\r\n', 'La distance totale parcourue par un objet divisee par le temps ecoule.', 'La distance totale parcourue par un objet divisee par le temps ecoule.', 90),
(13, 'Qu\'est-ce que l\'acceleration?\r\n', ' La vitesse à laquelle un objet se deplace.\r\n', ' Le changement de vitesse d\'un objet par unite de temps.', ' La force qui produit un mouvement.\r\n', ' Le changement de vitesse d\'un objet par unite de temps.', 90),
(14, 'Comment peut-on representer graphiquement le mouvement d\'un objet?\r\n', ' En utilisant un graphique de la distance parcourue par rapport au temps.', ' En utilisant un graphique de la vitesse par rapport au temps.\r\n', ' En utilisant un graphique de l\'acceleration par rapport au temps.\r\n', ' En utilisant un graphique de la distance parcourue par rapport au temps.', 90),
(15, 'Quelle est la formule pour calculer le travail effectue par une force sur un objet ?\r\n', 'W = F * d * cos(theta)', ' W = m * g * h\r\n', ' W = P * t\r\n', 'W = F * d * cos(theta)', 90),
(16, 'Quelle est l\'unite de mesure du travail ?\r\n', 'Joule (J)', ' Watt (W)\r\n', ' Newton (N)\r\n', 'Joule (J)', 60),
(17, 'Quelle est la formule pour calculer l\'energie cinetique d\'un objet ?\r\n', ' E = m * v^2', ' E = m * g * h\r\n\r\n', ' E = F * d * cos(theta)\r\n', ' E = m * v^2', 90),
(18, 'Qu\'est-ce que l\'energie cinetique d\'un objet ?\r\n', 'L\'energie stockee dans un objet en raison de sa position ou de sa configuration\r\n', 'L\'energie associee au mouvement d\'un objet', ' L\'energie qui provient de la frottement entre deux surfaces\r\n', 'L\'energie associee au mouvement d\'un objet', 90),
(19, 'Quelle est la formule pour calculer la variation d\'energie cinetique d\'un objet ?\r\n', ' ΔE = m * g * h\r\n', ' ΔE = F * d * cos(theta)\r\n', 'ΔE = 1/2 * m * v^2', 'ΔE = 1/2 * m * v^2', 90),
(20, 'Qu\'est-ce que l\'energie potentielle ?\r\n', ' L\'energie d\'un objet en mouvement\r\n', 'L\'energie due à la position d\'un objet', ' L\'energie cinetique d\'un objet\r\n\r\n', 'L\'energie due à la position d\'un objet', 90),
(21, 'Comment calcule-t-on l\'energie potentielle gravitationnelle d\'un objet ?\r\n', ' Ep = mgh', ' Ep = mv²/2\r\n', ' Ep = Fd\r\n', ' Ep = mgh', 90),
(22, 'Qu\'est-ce que l\'energie mecanique ?\r\n', 'L\'energie totale d\'un objet en mouvement', 'L\'energie due à la position d\'un objet\r\n', ' L\'energie cinetique d\'un objet\r\n\r\n', 'L\'energie totale d\'un objet en mouvement', 90),
(23, 'Comment calcule-t-on l\'energie mecanique d\'un objet ?\r\n', ' Em = mgh\r\n', ' Em = mv²/2\r\n', 'Em = Ep + Ec', 'Em = Ep + Ec', 60),
(24, 'Comment calcule-t-on l\'energie potentielle elastique d\'un objet ?\r\n', 'Ep = kx²/2', ' Ep = mgh\r\n', ' Ep = Fd\r\n', 'Ep = kx²/2', 60),
(25, 'Quelle est l\'unite de mesure de la constante de raideur (k) d\'un ressort ?\r\n', 'Joules (J)\r\n', ' Newtons/metre (N/m)', ' Metres par seconde carre (m/s²)\r\n', ' Newtons/metre (N/m)', 60),
(26, 'Comment calcule-t-on la force elastique d\'un ressort ?\r\n', 'F = kx', ' F = mv²/2\r\n', ' F = mgh\r\n', 'F = kx', 60),
(27, 'Comment calcule-t-on la hauteur maximale atteinte par un objet lance verticalement vers le haut à pa', ' h = v₀²/2g', ' h = v₀/g\r\n', ' h = v₀/g - gt²/2\r\n', ' h = v₀²/2g', 60),
(28, 'Comment calcule-t-on la vitesse maximale atteinte par un objet lance verticalement vers le haut à pa', 'v = √(2gh)', ' v = gt\r\n', 'v = v₀ - gt\r\n', 'v = √(2gh)', 60),
(29, 'Quelle est la formule pour la force gravitationnelle entre deux objets de masses m1 et m2, separes p', 'F = m1m2/r\r\n', 'F = Gm1m2/r^2 ', ' F = Gm1m2/r', 'F = Gm1m2/r^2 ', 60),
(30, 'Si la distance entre deux objets est doublee, comment la force gravitationnelle entre eux change-t-e', 'Elle devient quatre fois plus faible ', ' Elle devient deux fois plus faible\r\n', ' Elle reste la même', 'Elle devient quatre fois plus faible', 60);

-- --------------------------------------------------------

--
-- Structure de la table `Optique geometrique`
--

CREATE TABLE `Optique geometrique` (
  `id` int(1) NOT NULL,
  `question` varchar(200) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Optique geometrique`
--

INSERT INTO `Optique geometrique` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Quelle est la nature de l\'image formee par un miroir concave lorsque l\'objet est place entre le foye', ' Image reelle, inversee et agrandie', ' Image virtuelle, droite et agrandie\r\n', '  Image reelle, inversee et reduite\r\n', ' Image reelle, inversee et agrandie', 60),
(2, 'Quel type de lentille est utilise pour corriger la vision des personnes atteintes de myopie ?\r\n', ' Lentille convexe\r\n', 'Lentille concave', ' Lentille plan-convexe\r\n', 'Lentille concave', 90),
(3, 'Pourquoi une cuillere apparaît-elle tordue lorsqu\'elle est partiellement plongee dans un verre d\'eau', ' La cuillere se plie reellement sous l\'eau\r\n', 'La lumiere est refractee en traversant l\'eau, ce qui change l\'angle de la lumiere et modifie l\'appa', ' La surface de l\'eau perturbe la reflexion de la cuillere, ce qui cree l\'illusion qu\'elle est tordue', 'La lumiere est refractee en traversant l\'eau, ce qui change l\'angle de la lumiere et modifie l\'appa', 90),
(4, 'Qu\'est-ce que la refraction de la lumiere ?\r\n', ' La reflexion de la lumiere sur une surface\r\n', ' La diffusion de la lumiere à travers un milieu\r\n', ' Le changement de direction de la lumiere lorsqu\'elle passe d\'un milieu à un autre - ', ' Le changement de direction de la lumiere lorsqu\'elle passe d\'un milieu à un autre - ', 90),
(5, 'Qu\'est-ce que la distance focale d\'une lentille ?\r\n', ' La distance entre la lentille et l\'objet observe\r\n', ' La distance entre la lentille et l\'image formee par l\'objet observe\r\n', ' La distance entre le centre optique de la lentille et son foyer ', ' La distance entre le centre optique de la lentille et son foyer ', 90),
(6, 'Comment se forme une image sur une lentille convergente ?\r\n', ' L\'image se forme à l\'endroit où les rayons lumineux se croisent apres avoir traverse la lentille\r\n', ' L\'image se forme à l\'endroit où les rayons lumineux divergent apres avoir traverse la lentille\r\n', 'L\'image se forme à l\'endroit où les rayons lumineux semblent provenir apres avoir traverse la lentil', 'L\'image se forme à l\'endroit où les rayons lumineux semblent provenir apres avoir traverse la lentil', 90),
(7, 'Comment la distance focale d\'une lentille depend-elle de son rayon de courbure?\r\n', 'La distance focale augmente avec le rayon de courbure.\r\n', 'La distance focale diminue avec le rayon de courbure.', 'La distance focale est independante du rayon de courbure.\r\n', 'La distance focale diminue avec le rayon de courbure.', 90),
(9, 'Comment la taille apparente d\'un objet vu à travers une lentille divergente compare-t-elle à sa tail', ' La taille apparente est plus grande que la taille reelle.\r\n', ' La taille apparente est plus petite que la taille reelle.', ' La taille apparente est la même que la taille reelle.\r\n', ' La taille apparente est plus petite que la taille reelle.', 90),
(10, 'Dans quel type de miroir l\'image d\'un objet est-elle droite, mais plus petite que l\'objet lui-même?\r', ' Miroir convexe.', ' Miroir concave.\r\n', ' Miroir plan.\r\n', ' Miroir convexe.', 90),
(11, 'Qu\'est-ce que la refraction de la lumiere?\r\n', 'Le changement de direction de la lumiere lorsqu\'elle passe d\'un milieu à un autre.', ' La reflexion de la lumiere sur une surface lisse.\r\n', ' La propagation de la lumiere dans l\'air.\r\n', 'Le changement de direction de la lumiere lorsqu\'elle passe d\'un milieu à un autre.', 90),
(12, 'Comment la distance entre un objet et une lentille affecte-t-elle la position de l\'image formee par ', 'Plus l\'objet est proche de la lentille, plus l\'image est proche de la lentille', ' Plus l\'objet est eloigne de la lentille, plus l\'image est proche de la lentille.\r\n', ' La distance entre l\'objet et la lentille n\'affecte pas la position de l\'image.\r\n', 'Plus l\'objet est proche de la lentille, plus l\'image est proche de la lentille', 120),
(13, 'Qu\'est-ce que la dispersion de la lumiere ?\r\n', ' Le phenomene par lequel la lumiere est refractee en traversant une surface courbe\r\n', ' Le phenomene par lequel la lumiere change de direction lorsqu\'elle traverse une surface entre deux ', ' Le phenomene par lequel la lumiere est separee en differentes couleurs\r\n', ' Le phenomene par lequel la lumiere est separee en differentes couleurs\r\n', 90),
(14, ' Le phenomene par lequel la lumiere est reflechie sur une surface rugueuse\r\n', ' Le phenomene par lequel la lumiere change de direction lorsqu\'elle traverse une surface entre deux ', ' Le phenomene par lequel la lumiere se plie autour d\'un objet ou d\'une ouverture\r\n', ' Le phenomene par lequel la lumiere se plie autour d\'un objet ou d\'une ouverture\r\n', ' Le phenomene par lequel la lumiere se plie autour d\'un objet ou d\'une ouverture\r\n', 90),
(15, 'Quelle est la distance focale d\'une lentille convergente de 10 cm de rayon de courbure ?\r\n', ' 5 cm\r\n', ' 10 cm', ' 20 cm\r\n', ' 10 cm', 120),
(16, 'Un objet est place à 20 cm d\'une lentille convergente de distance focale de 15 cm. Où se formera l\'i', ' À 30 cm de la lentille', ' À 10 cm de la lentille\r\n', ' À 45 cm de la lentille\r\n', ' À 30 cm de la lentille', 120),
(17, 'Un rayon de lumiere est incident sur une surface plane avec un angle d\'incidence de 30 degres. Quel ', '30 degres\r\n', ' 60 degres\r\n', ' 90 degres', '30 degres\r\n', 120),
(18, 'La distance focale d\'une lentille convergente de 10 cm est :\r\n', ' 10 cm\r\n', ' -10 cm\r\n', '20 cm', '20 cm', 120),
(19, 'Un objet est place à une distance de 30 cm d\'une lentille convergente de distance focale 20 cm. L\'im', ' reelle et inversee à une distance de 60 cm de la lentille', ' virtuelle et droite à une distance de 60 cm de la lentille\r\n', ' virtuelle et inversee à une distance de 60 cm de la lentille\r\n', ' reelle et inversee à une distance de 60 cm de la lentille', 90),
(20, 'Un objet de 5 cm de hauteur est place à une distance de 20 cm d\'une lentille convergente de distance', ' 2 cm\r\n', ' 3,3 cm', ' 5 cm\r\n', ' 3,3 cm', 120),
(21, 'La distance entre l\'objet et l\'image d\'une lentille convergente est de 50 cm. Si la distance focale ', ' 12,5 cm\r\n', ' 20 cm\r\n\r\n', ' 40 cm', ' 40 cm', 120),
(22, 'Un objet est place à 20 cm devant un miroir plan. Quelle est la distance de l\'image ?\r\n', '10 cm devant le miroir\r\n', '20 cm derriere le miroir', ' 40 cm derriere le miroir\r\n', '20 cm derriere le miroir', 120),
(23, 'Un objet est place à 10 cm devant un dioptre convergent dont la distance focale est de 15 cm. Où se ', ' 5 cm devant le dioptre\r\n', ' 15 cm derriere le dioptre\r\n', '30 cm derriere le dioptre', '30 cm derriere le dioptre', 120),
(24, 'Un objet est place à 50 cm devant un dioptre divergent dont la distance focale est de -30 cm. Où se ', '75 cm devant le dioptre\r\n\r\n', '100 cm derriere le dioptre', ' 150 cm derriere le dioptre\r\n', '100 cm derriere le dioptre', 120),
(25, 'Quelle est la formule pour calculer le grossissement d\'une loupe ?\r\n', ' G = f / d\r\n', 'G = 1 + f / d\r\n', ' G = d / f', ' G = d / f', 120),
(26, 'Si la distance focale d\'une loupe est de 10 cm, quelle sera la puissance de la loupe en dioptries ?\r', '10 D\r\n', ' 100 D\r\n', ' 0,1 D', ' 0,1 D', 90),
(27, 'Quelle est la difference entre la distance focale d\'une lentille convergente et celle d\'une lentille', ' La distance focale d\'une lentille convergente est negative, tandis que celle d\'une lentille diverge', 'La distance focale d\'une lentille convergente est plus grande que celle d\'une lentille divergente.\r\n', ' La distance focale d\'une lentille divergente est nulle, tandis que celle d\'une lentille convergente', ' La distance focale d\'une lentille convergente est negative, tandis que celle d\'une lentille diverge', 90),
(28, 'Si une loupe est utilisee pour examiner un objet à une distance de 10 cm, quelle sera la distance mi', ' 10 cm\r\n ', '20 cm ', ' 30 cm\r\n', '20 cm ', 120),
(29, 'Comment peut-on ameliorer la qualite de l\'image vue à travers une loupe ?\r\n', ' En utilisant une lentille plus petite.\r\n', ' En utilisant une lentille de meilleure qualite optique.', ' En augmentant la distance entre l\'objet et la loupe.\r\n', ' En utilisant une lentille de meilleure qualite optique.', 90),
(30, 'Si une loupe a un grossissement de 3x et un objet est place à une distance de 20 cm de la loupe, à q', ' 60 cm ', ' 6,7 cm\r\n', ' 66,7 cm\r\n', ' 60 cm ', 120),
(1, 'Quelle est la nature de l\'image formee par un miroir concave lorsque l\'objet est place entre le foye', ' Image reelle, inversee et agrandie', ' Image virtuelle, droite et agrandie\r\n', '  Image reelle, inversee et reduite\r\n', ' Image reelle, inversee et agrandie', 60),
(2, 'Quel type de lentille est utilise pour corriger la vision des personnes atteintes de myopie ?\r\n', ' Lentille convexe\r\n', 'Lentille concave', ' Lentille plan-convexe\r\n', 'Lentille concave', 90),
(3, 'Pourquoi une cuillere apparaît-elle tordue lorsqu\'elle est partiellement plongee dans un verre d\'eau', ' La cuillere se plie reellement sous l\'eau\r\n', 'La lumiere est refractee en traversant l\'eau, ce qui change l\'angle de la lumiere et modifie l\'appa', ' La surface de l\'eau perturbe la reflexion de la cuillere, ce qui cree l\'illusion qu\'elle est tordue', 'La lumiere est refractee en traversant l\'eau, ce qui change l\'angle de la lumiere et modifie l\'appa', 90),
(4, 'Qu\'est-ce que la refraction de la lumiere ?\r\n', ' La reflexion de la lumiere sur une surface\r\n', ' La diffusion de la lumiere à travers un milieu\r\n', ' Le changement de direction de la lumiere lorsqu\'elle passe d\'un milieu à un autre - ', ' Le changement de direction de la lumiere lorsqu\'elle passe d\'un milieu à un autre - ', 90),
(5, 'Qu\'est-ce que la distance focale d\'une lentille ?\r\n', ' La distance entre la lentille et l\'objet observe\r\n', ' La distance entre la lentille et l\'image formee par l\'objet observe\r\n', ' La distance entre le centre optique de la lentille et son foyer ', ' La distance entre le centre optique de la lentille et son foyer ', 90),
(6, 'Comment se forme une image sur une lentille convergente ?\r\n', ' L\'image se forme à l\'endroit où les rayons lumineux se croisent apres avoir traverse la lentille\r\n', ' L\'image se forme à l\'endroit où les rayons lumineux divergent apres avoir traverse la lentille\r\n', 'L\'image se forme à l\'endroit où les rayons lumineux semblent provenir apres avoir traverse la lentil', 'L\'image se forme à l\'endroit où les rayons lumineux semblent provenir apres avoir traverse la lentil', 90),
(7, 'Comment la distance focale d\'une lentille depend-elle de son rayon de courbure?\r\n', 'La distance focale augmente avec le rayon de courbure.\r\n', 'La distance focale diminue avec le rayon de courbure.', 'La distance focale est independante du rayon de courbure.\r\n', 'La distance focale diminue avec le rayon de courbure.', 90),
(9, 'Comment la taille apparente d\'un objet vu à travers une lentille divergente compare-t-elle à sa tail', ' La taille apparente est plus grande que la taille reelle.\r\n', ' La taille apparente est plus petite que la taille reelle.', ' La taille apparente est la même que la taille reelle.\r\n', ' La taille apparente est plus petite que la taille reelle.', 90),
(10, 'Dans quel type de miroir l\'image d\'un objet est-elle droite, mais plus petite que l\'objet lui-même?\r', ' Miroir convexe.', ' Miroir concave.\r\n', ' Miroir plan.\r\n', ' Miroir convexe.', 90),
(11, 'Qu\'est-ce que la refraction de la lumiere?\r\n', 'Le changement de direction de la lumiere lorsqu\'elle passe d\'un milieu à un autre.', ' La reflexion de la lumiere sur une surface lisse.\r\n', ' La propagation de la lumiere dans l\'air.\r\n', 'Le changement de direction de la lumiere lorsqu\'elle passe d\'un milieu à un autre.', 90),
(12, 'Comment la distance entre un objet et une lentille affecte-t-elle la position de l\'image formee par ', 'Plus l\'objet est proche de la lentille, plus l\'image est proche de la lentille', ' Plus l\'objet est eloigne de la lentille, plus l\'image est proche de la lentille.\r\n', ' La distance entre l\'objet et la lentille n\'affecte pas la position de l\'image.\r\n', 'Plus l\'objet est proche de la lentille, plus l\'image est proche de la lentille', 120),
(13, 'Qu\'est-ce que la dispersion de la lumiere ?\r\n', ' Le phenomene par lequel la lumiere est refractee en traversant une surface courbe\r\n', ' Le phenomene par lequel la lumiere change de direction lorsqu\'elle traverse une surface entre deux ', ' Le phenomene par lequel la lumiere est separee en differentes couleurs\r\n', ' Le phenomene par lequel la lumiere est separee en differentes couleurs\r\n', 90),
(14, ' Le phenomene par lequel la lumiere est reflechie sur une surface rugueuse\r\n', ' Le phenomene par lequel la lumiere change de direction lorsqu\'elle traverse une surface entre deux ', ' Le phenomene par lequel la lumiere se plie autour d\'un objet ou d\'une ouverture\r\n', ' Le phenomene par lequel la lumiere se plie autour d\'un objet ou d\'une ouverture\r\n', ' Le phenomene par lequel la lumiere se plie autour d\'un objet ou d\'une ouverture\r\n', 90),
(15, 'Quelle est la distance focale d\'une lentille convergente de 10 cm de rayon de courbure ?\r\n', ' 5 cm\r\n', ' 10 cm', ' 20 cm\r\n', ' 10 cm', 120),
(16, 'Un objet est place à 20 cm d\'une lentille convergente de distance focale de 15 cm. Où se formera l\'i', ' À 30 cm de la lentille', ' À 10 cm de la lentille\r\n', ' À 45 cm de la lentille\r\n', ' À 30 cm de la lentille', 120),
(17, 'Un rayon de lumiere est incident sur une surface plane avec un angle d\'incidence de 30 degres. Quel ', '30 degres\r\n', ' 60 degres\r\n', ' 90 degres', '30 degres\r\n', 120),
(18, 'La distance focale d\'une lentille convergente de 10 cm est :\r\n', ' 10 cm\r\n', ' -10 cm\r\n', '20 cm', '20 cm', 120),
(19, 'Un objet est place à une distance de 30 cm d\'une lentille convergente de distance focale 20 cm. L\'im', ' reelle et inversee à une distance de 60 cm de la lentille', ' virtuelle et droite à une distance de 60 cm de la lentille\r\n', ' virtuelle et inversee à une distance de 60 cm de la lentille\r\n', ' reelle et inversee à une distance de 60 cm de la lentille', 90),
(20, 'Un objet de 5 cm de hauteur est place à une distance de 20 cm d\'une lentille convergente de distance', ' 2 cm\r\n', ' 3,3 cm', ' 5 cm\r\n', ' 3,3 cm', 120),
(21, 'La distance entre l\'objet et l\'image d\'une lentille convergente est de 50 cm. Si la distance focale ', ' 12,5 cm\r\n', ' 20 cm\r\n\r\n', ' 40 cm', ' 40 cm', 120),
(22, 'Un objet est place à 20 cm devant un miroir plan. Quelle est la distance de l\'image ?\r\n', '10 cm devant le miroir\r\n', '20 cm derriere le miroir', ' 40 cm derriere le miroir\r\n', '20 cm derriere le miroir', 120),
(23, 'Un objet est place à 10 cm devant un dioptre convergent dont la distance focale est de 15 cm. Où se ', ' 5 cm devant le dioptre\r\n', ' 15 cm derriere le dioptre\r\n', '30 cm derriere le dioptre', '30 cm derriere le dioptre', 120),
(24, 'Un objet est place à 50 cm devant un dioptre divergent dont la distance focale est de -30 cm. Où se ', '75 cm devant le dioptre\r\n\r\n', '100 cm derriere le dioptre', ' 150 cm derriere le dioptre\r\n', '100 cm derriere le dioptre', 120),
(25, 'Quelle est la formule pour calculer le grossissement d\'une loupe ?\r\n', ' G = f / d\r\n', 'G = 1 + f / d\r\n', ' G = d / f', ' G = d / f', 120),
(26, 'Si la distance focale d\'une loupe est de 10 cm, quelle sera la puissance de la loupe en dioptries ?\r', '10 D\r\n', ' 100 D\r\n', ' 0,1 D', ' 0,1 D', 90),
(27, 'Quelle est la difference entre la distance focale d\'une lentille convergente et celle d\'une lentille', ' La distance focale d\'une lentille convergente est negative, tandis que celle d\'une lentille diverge', 'La distance focale d\'une lentille convergente est plus grande que celle d\'une lentille divergente.\r\n', ' La distance focale d\'une lentille divergente est nulle, tandis que celle d\'une lentille convergente', ' La distance focale d\'une lentille convergente est negative, tandis que celle d\'une lentille diverge', 90),
(28, 'Si une loupe est utilisee pour examiner un objet à une distance de 10 cm, quelle sera la distance mi', ' 10 cm\r\n ', '20 cm ', ' 30 cm\r\n', '20 cm ', 120),
(29, 'Comment peut-on ameliorer la qualite de l\'image vue à travers une loupe ?\r\n', ' En utilisant une lentille plus petite.\r\n', ' En utilisant une lentille de meilleure qualite optique.', ' En augmentant la distance entre l\'objet et la loupe.\r\n', ' En utilisant une lentille de meilleure qualite optique.', 90),
(30, 'Si une loupe a un grossissement de 3x et un objet est place à une distance de 20 cm de la loupe, à q', ' 60 cm ', ' 6,7 cm\r\n', ' 66,7 cm\r\n', ' 60 cm ', 120);

-- --------------------------------------------------------

--
-- Structure de la table `Posts`
--

CREATE TABLE `Posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `created_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Posts`
--

INSERT INTO `Posts` (`post_id`, `user_id`, `title`, `content`, `created_at`) VALUES
(2, 1, 'problem with my cat', 'hey guys ! does anyone know how to prevent my cat from running away ?', '2023-12-13'),
(8, 1, 'my batterie is too low', 'how can i solve the dracula formula ?', '2023-12-13'),
(9, 3, 'feeding dracula', 'hello everyone, i have a dragon in my backyard eating people, how can i kill it', '14-12-2023 15:17'),
(12, 4, 'brit nechri zit !', 'chkon li 3arf b chhal zit f ait meloul ? ', '14-12-2023 21:50'),
(13, 1, 'i want to buy a car', 'how much does a used bmw cost in 2023', '14-12-2023 22:40');

-- --------------------------------------------------------

--
-- Structure de la table `Probabilites et statistiques`
--

CREATE TABLE `Probabilites et statistiques` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Probabilites et statistiques`
--

INSERT INTO `Probabilites et statistiques` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Quelle est la probabilite de lancer un de à six faces et d\'obtenir un nombre pair ?\r\n', ' 1/3\r\n', '1/2', ' 1/6\r\n', '1/2', 90),
(2, 'Si vous choisissez au hasard une carte d\'un jeu de 52 cartes, quelle est la probabilite que ce soit ', ' 1/4\r\n', ' 1/13', '1/52\r\n', ' 1/13', 90),
(3, 'Si vous lancez deux pieces de monnaie, quelle est la probabilite d\'obtenir au moins une face pile ?\r', '1/4\r\n', ' 1/2\r\n', ' 3/4', ' 3/4', 90),
(4, 'Si vous choisissez au hasard une lettre de l\'alphabet anglais, quelle est la probabilite qu\'elle soi', '1/5', ' 1/26\r\n', ' 5/26\r\n', '1/5', 90),
(5, 'Si vous lancez un de à 20 faces deux fois, quelle est la probabilite d\'obtenir un 20 lors des deux l', '1/20\r\n', '1/400', ' 1/8000\r\n', '1/400', 90),
(6, 'Si vous choisissez deux nombres au hasard entre 1 et 10, quelle est la probabilite que leur somme so', ' 1/2\r\n', ' 2/5\r\n', ' 3/10', ' 3/10', 90),
(7, 'Si vous tirez une carte d\'un jeu de 52 cartes, la remettez dans le jeu et tirez une autre carte, que', ' 1/2704', ' 1/169\r\n', ' 1/16\r\n', ' 1/2704', 90),
(8, 'Si vous choisissez au hasard un nombre entre 1 et 100, quelle est la probabilite qu\'il soit divisibl', '1/7\r\n', ' 3/14', ' 1/10\r\n', ' 3/14', 90),
(9, 'Si vous lancez un de equilibre trois fois, quelle est la probabilite d\'obtenir trois nombres impairs', '1/8\r\n', '1/27', ' 1/125\r\n', '1/27', 90),
(10, 'Si vous choisissez au hasard deux chiffres differents d\'un nombre de trois chiffres, quelle est la p', ' 1/3\r\n', ' 4/9\r\n', '5/9', '5/9', 90),
(11, 'Qu\'est-ce que la moyenne arithmetique ?\r\n', 'La somme de tous les nombres divisee par leur nombre total\r\n', ' Le nombre qui apparaît le plus souvent dans un ensemble de donnees\r\n', ' La valeur du milieu d\'un ensemble de donnees triees par ordre croissant ou decroissant.\r\n', 'La somme de tous les nombres divisee par leur nombre total\r\n', 90),
(12, 'Quelle est la formule pour calculer l\'ecart-type ?\r\n', ' ∑ (xi - x)²/n\r\n', '∑ xi/n\r\n', ' (max - min)/2\r\n', ' ∑ (xi - x)²/n\r\n', 90),
(13, 'Qu\'est-ce que la mediane ?\r\n', ' La somme de tous les nombres divisee par leur nombre total\r\n', ' Le nombre qui apparaît le plus souvent dans un ensemble de donnees\r\n', ' La valeur du milieu d\'un ensemble de donnees triees par ordre croissant ou decroissant.\r\n', ' La valeur du milieu d\'un ensemble de donnees triees par ordre croissant ou decroissant.\r\n', 90),
(14, 'Qu\'est-ce que la variance ?\r\n', ' La somme de tous les nombres divisee par leur nombre total\r\n', ' La moyenne des carres des ecarts à la moyenne arithmetique\r\n', ' La valeur du milieu d\'un ensemble de donnees triees par ordre croissant ou decroissant.\r\n', ' La moyenne des carres des ecarts à la moyenne arithmetique\r\n', 90),
(15, 'Qu\'est-ce qu\'une distribution normale ?\r\n', 'Une distribution dans laquelle les donnees sont reparties uniformement\r\n', ' Une distribution dans laquelle les donnees sont reparties en une courbe symetrique centree sur la m', ' Une distribution dans laquelle les donnees sont reparties en plusieurs pics distincts.\r\n', ' Une distribution dans laquelle les donnees sont reparties en une courbe symetrique centree sur la m', 90),
(16, 'Qu\'est-ce que l\'erreur standard ?\r\n', ' La difference entre la moyenne et la mediane\r\n', ' La mesure de la variabilite de l\'echantillon\r\n', 'La difference entre la variance et l\'ecart-type.\r\n', ' La mesure de la variabilite de l\'echantillon\r\n', 90),
(17, 'Quelle est la formule pour calculer la correlation ?\r\n', ' (n * ∑ xy - ∑ x * ∑ y)/[(n * ∑ x² - (∑ x)²) * (n * ∑ y² - (∑ y)²)]^0.5\r\n', ' ∑ xi/n\r\n', ' (max - min)/2\r\n', ' (n * ∑ xy - ∑ x * ∑ y)/[(n * ∑ x² - (∑ x)²) * (n * ∑ y² - (∑ y)²)]^0.5\r\n', 90),
(18, 'Qu\'est-ce qu\'une regression lineaire ?\r\n', ' Une methode pour predire les valeurs futures en fonction des valeurs passees\r\n', ' Une methode pour trouver la moyenne d\'un ensemble de donnees\r\n', ' Une methode pour calculer l\'ecart-type.\r\n', ' Une methode pour predire les valeurs futures en fonction des valeurs passees\r\n', 90),
(19, 'Qu\'est-ce que l\'inference statistique ?\r\n', ' L\'utilisation de donnees pour comprendre des modeles causaux\r\n', ' L\'utilisation de donnees pour predire des resultats futurs\r\n', ' L\'utilisation de donnees pour tirer des conclusions sur une population à partir d\'un echantillon.\r\n', ' L\'utilisation de donnees pour tirer des conclusions sur une population à partir d\'un echantillon.\r\n', 90),
(20, 'Qu\'est-ce que l\'analyse de variance (ANOVA) ?\r\n', 'Une methode pour comparer les moyennes de plusieurs groupes\r\n', ' Une methode pour trouver la mediane d\'un ensemble de donnees\r\n', ' Une methode pour calculer la correlation.\r\n', 'Une methode pour comparer les moyennes de plusieurs groupes\r\n', 90),
(21, 'Qu\'est-ce que l\'echantillonnage aleatoire ?\r\n', ' Une methode d\'echantillonnage où chaque individu de la population a la même chance d\'être selection', ' Une methode d\'echantillonnage où l\'on selectionne des individus en fonction de leur âge\r\n', 'Une methode d\'echantillonnage où l\'on selectionne des individus en fonction de leur sexe.\r\n', ' Une methode d\'echantillonnage où chaque individu de la population a la même chance d\'être selection', 90),
(22, 'Qu\'est-ce que la significativite statistique ?\r\n', ' La probabilite que les resultats observes soient dus au hasard\r\n', ' La taille de l\'echantillon utilise dans l\'etude\r\n', ' La methode utilisee pour collecter les donnees.\r\n', ' La probabilite que les resultats observes soient dus au hasard\r\n', 90),
(23, 'Qu\'est-ce que l\'erreur de type I ?\r\n', ' Rejeter à tort une hypothese nulle qui est vraie\r\n', ' Accepter à tort une hypothese nulle qui est fausse\r\n', ' Rejeter une hypothese alternative qui est vraie.\r\n', ' Rejeter à tort une hypothese nulle qui est vraie\r\n', 90),
(24, 'Qu\'est-ce que la methode des moindres carres ?\r\n', ' Une methode pour trouver la mediane d\'un ensemble de donnees\r\n', ' Une methode pour ajuster une ligne de regression aux donnees en minimisant la somme des carres des ', ' Une methode pour trouver la moyenne d\'un ensemble de donnees.\r\n', ' Une methode pour ajuster une ligne de regression aux donnees en minimisant la somme des carres des ', 90),
(25, 'Quelle est la probabilite qu\'une variable aleatoire discrete prenne une valeur inferieure à sa moyen', ' Moins de 50%\r\n', ' Exactement 50%\r\n', 'Plus de 50%\r\n', ' Moins de 50%. La probabilite qu\'une variable aleatoire discrete prenne une valeur inferieure à sa m', 90),
(26, 'Qu\'est-ce que la variance d\'une variable aleatoire discrete mesure?\r\n', ' La mesure de l\'etendue des valeurs possibles de la variable\r\n', ' La mesure de la dispersion des valeurs autour de la moyenne\r\n', ' La mesure de la probabilite que la variable prenne une valeur donnee\r\n', ' La variance d\'une variable aleatoire discrete mesure la dispersion des valeurs autour de la moyenne', 90),
(27, 'Si deux variables aleatoires discretes sont independantes, quelle est la probabilite que les deux pr', ' La probabilite est la somme des probabilites de chaque variable\r\n', ' La probabilite est la multiplication des probabilites de chaque variable\r\n', ' La probabilite est la difference entre les probabilites de chaque variable\r\n', ' Si deux variables aleatoires discretes sont independantes, la probabilite que les deux prennent une', 90),
(28, 'Qu\'est-ce qu\'une distribution de probabilite binomiale?\r\n', ' Une distribution de probabilite pour une variable aleatoire discrete qui peut prendre deux valeurs ', ' Une distribution de probabilite pour une variable aleatoire discrete qui suit une distribution norm', ' Une distribution de probabilite pour une variable aleatoire discrete qui suit un modele de Bernoull', ' Une distribution de probabilite pour une variable aleatoire discrete qui suit un modele de Bernoull', 90),
(29, 'Qu\'est-ce que la fonction de masse de probabilite d\'une variable aleatoire discrete?\r\n', ' Une fonction qui mesure la probabilite que la variable prenne une valeur donnee\r\n', 'Une fonction qui mesure la variance de la variable\r\n', ' Une fonction qui mesure la probabilite que la variable prenne une valeur superieure à sa moyenne', ' Une fonction qui mesure la probabilite que la variable prenne une valeur donnee\r\n', 90),
(30, 'Qu\'est-ce qu\'une distribution de probabilite de Poisson?\r\n', ' Une distribution de probabilite pour une variable aleatoire discrete qui suit un process', ' Une distribution de probabilite pour une variable aleatoire discrete qui suit un processus de compt', ' Une distribution de probabilite pour une variable aleatoire discrete qui suit une distribution unif', ' Une distribution de probabilite pour une variable aleatoire discrete qui suit un processus de compt', 90);

-- --------------------------------------------------------

--
-- Structure de la table `results`
--

CREATE TABLE `results` (
  `userId` int(2) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `note` int(11) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `results`
--

INSERT INTO `results` (`userId`, `subject`, `note`, `date`) VALUES
(1, 'Physics', 8, '2023-12-02'),
(1, 'Chemistry', 6, '2023-12-03'),
(1, 'Biology', 7, '2023-12-04'),
(2, 'Geography', 9, '2023-12-06'),
(2, 'English', 4, '2023-12-07'),
(2, 'Art', 8, '2023-12-08'),
(3, 'Computer Science', 5, '2023-12-11'),
(3, 'Economics', 10, '2023-12-12'),
(3, 'Physical Education', 3, '2023-12-13'),
(4, 'Algebre I', 1, '14-12-2023 20:37'),
(4, 'Analyse I', 8, '14-12-2023 20:44');

-- --------------------------------------------------------

--
-- Structure de la table `Thermodynamique`
--

CREATE TABLE `Thermodynamique` (
  `id` int(1) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reponseA` varchar(100) NOT NULL,
  `reponseB` varchar(100) NOT NULL,
  `reponseC` varchar(100) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `temps` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Thermodynamique`
--

INSERT INTO `Thermodynamique` (`id`, `question`, `reponseA`, `reponseB`, `reponseC`, `solution`, `temps`) VALUES
(1, 'Quelle est la loi fondamentale de la Thermodynamique qui definit l\'entropie ?\r\n', 'La premiere loi de la Thermodynamique\r\n', ' La deuxieme loi de la Thermodynamique', ' La troisieme loi de la Thermodynamique\r\n', ' La deuxieme loi de la Thermodynamique', 60),
(2, 'Quelle est l\'unite SI de la chaleur ?\r\n', 'Joule', 'Watt', 'Kelvin', 'Joule', 60),
(3, 'Dans un systeme ferme, que represente la premiere loi de la Thermodynamique ?\r\n', ' La conservation de la masse\r\n', ' La conservation de l\'energie', ' La conservation de l\'entropie\r\n', ' La conservation de l\'energie', 90),
(4, 'Qu\'est-ce que le travail en Thermodynamique ?\r\n', ' Une mesure de l\'energie interne du systeme\r\n', ' Une mesure de l\'enthalpie du systeme\r\n', 'Une mesure de l\'energie transferee entre un systeme et son environnement', 'Une mesure de l\'energie transferee entre un systeme et son environnement', 90),
(5, 'Qu\'est-ce que l\'enthalpie ?\r\n', 'La somme de l\'energie interne et du produit de la pression et du volume du systeme', ' La difference entre l\'energie interne du systeme et l\'energie transferee sous forme de chaleur\r\n', ' La mesure de la quantite d\'energie transferee sous forme de travail\r\n', 'La somme de l\'energie interne et du produit de la pression et du volume du systeme', 90),
(6, 'Qu\'est-ce que la temperature d\'un systeme ?\r\n', ' La mesure de l\'agitation moleculaire dans le systeme', ' La mesure de la quantite de chaleur contenue dans le systeme\r\n', ' La mesure de la pression exercee par le systeme\r\n', ' La mesure de l\'agitation moleculaire dans le systeme', 90),
(7, 'Qu\'est-ce que la capacite Thermique d\'un systeme ?\r\n', 'La quantite de chaleur necessaire pour elever la temperature d\'un systeme d\'une unite', ' La quantite de chaleur necessaire pour fondre un materiau\r\n', ' La quantite de chaleur necessaire pour vaporiser un materiau\r\n', 'La quantite de chaleur necessaire pour elever la temperature d\'un systeme d\'une unite', 90),
(8, 'Qu\'est-ce que le coefficient de dilatation Thermique ?\r\n', ' La mesure de la variation de la pression en fonction de la temperature\r\n', ' La mesure de la variation de la capacite Thermique en fonction de la temperature\r\n', ' La mesure de la variation de la longueur en fonction de la temperature', ' La mesure de la variation de la longueur en fonction de la temperature', 90),
(9, 'Qu\'est-ce que la loi de Boyle-Mariotte ?\r\n', ' La pression et le volume d\'un gaz sont inversement proportionnels si la temperature est constante', 'La pression et la temperature d\'un gaz sont directement proportionnelles si le volume est constant\r\n', ' La quantite de chaleur necessaire pour elever la temperature d\'un gaz est proportionnelle à sa mass', ' La pression et le volume d\'un gaz sont inversement proportionnels si la temperature est constante', 90),
(10, 'Qu\'est-ce que la loi de Charles ?\r\n', 'Le volume d\'un gaz est directement proportionnel à la pression si la temperature est constante\r\n\r\n', ' La pression et la temperature d\'un gaz sont directement proportionnelles si le volume est constant\r', ' Le volume d\'un gaz est directement proportionnel à la temperature si la pression est constante', ' Le volume d\'un gaz est directement proportionnel à la temperature si la pression est constante', 90),
(11, 'Qu\'est-ce que le cycle de Carnot ?\r\n', ' Un processus cyclique reversible qui decrit un moteur Thermique ideal', 'Un processus cyclique irreversible qui decrit un moteur Thermique reel\r\n', ' Un processus de chauffage et de refroidissement d\'un materiau pour augmenter sa resistance electriq', ' Un processus cyclique reversible qui decrit un moteur Thermique ideal', 90),
(12, 'Qu\'est-ce que la loi de la conservation de l\'entropie ?\r\n', ' L\'entropie d\'un systeme isole ne peut pas diminuer au cours du temps', ' L\'entropie d\'un systeme isole ne peut pas augmenter au cours du temps\r\n', ' L\'entropie d\'un systeme isole reste constante au cours du temps\r\n', ' L\'entropie d\'un systeme isole ne peut pas diminuer au cours du temps', 90),
(13, 'Qu\'est-ce que le rendement d\'un moteur Thermique ?\r\n', 'Le rapport entre l\'energie Thermique produite par le moteur et l\'energie electrique fournie au moteu', 'Le rapport entre l\'energie Thermique produite par le moteur et l\'energie Thermique fournie au moteu', 'Le rapport entre l\'energie electrique produite par le moteur et l\'energie Thermique fournie au moteu', 'Le rapport entre l\'energie Thermique produite par le moteur et l\'energie Thermique fournie au moteur', 90),
(14, 'Qu\'est-ce que la chaleur latente ?\r\n', ' La quantite de chaleur necessaire pour elever la temperature d\'un materiau d\'une unite ', 'La quantite de chaleur necessaire pour fondre un materiau\r\n', 'La quantite de chaleur necessaire pour vaporiser un materiau', 'La quantite de chaleur necessaire pour vaporiser un materiau', 90),
(15, 'Qu\'est-ce que la pression partielle d\'un gaz ?\r\n', 'La pression totale exercee par un melange de gaz\r\n', 'La pression exercee par chaque gaz individuellement dans un melange de gaz', 'La quantite de gaz dissous dans un liquide\r\n', 'La pression exercee par chaque gaz individuellement dans un melange de gaz', 90),
(16, 'Quel est le premier principe de la Thermodynamique ?\r\n', ' L\'energie ne peut être creee ni detruite, seulement transformee', ' Tout systeme isole evolue spontanement vers un etat de plus grande desorganisation\r\n', ' L\'entropie de tout systeme isole tend à augmenter au fil du temps\r\n', ' L\'energie ne peut être creee ni detruite, seulement transformee', 90),
(17, 'Quelle est la difference entre une transformation isoTherme et une transformation adiabatique ?\r\n', ' Dans une transformation isoTherme, la temperature du systeme reste constante, tandis que dans une t', ' Dans une transformation isoTherme, le systeme ne subit aucun echange de chaleur, tandis que dans un', ' Dans une transformation isoTherme, la pression du systeme reste constante, tandis que dans une tran', ' Dans une transformation isoTherme, la temperature du systeme reste constante, tandis que dans une t', 90),
(18, 'Qu\'est-ce que le cycle de Carnot ?\r\n', ' Un processus qui convertit la chaleur en travail mecanique de maniere tres efficace', ' Un processus qui convertit l\'energie cinetique en energie potentielle\r\n', ' Un processus qui convertit l\'energie potentielle en energie cinetique\r\n', ' Un processus qui convertit la chaleur en travail mecanique de maniere tres efficace', 90),
(19, 'Qu\'est-ce que le travail en Thermodynamique ?\r\n', ' L\'energie Thermique transferee entre deux corps à des temperatures differentes\r\n', ' L\'energie liberee lors de la combustion de combustibles fossiles\r\n', ' L\'energie mecanique transferee à un systeme par l\'application d\'une force', ' L\'energie mecanique transferee à un systeme par l\'application d\'une force', 90),
(20, 'Qu\'est-ce que la chaleur en Thermodynamique ?\r\n', ' L\'energie liberee lors de la combustion de combustibles fossiles\r\n', ' L\'energie mecanique transferee à un systeme par l\'application d\'une force\r\n', ' L\'energie Thermique transferee entre deux corps à des temperatures differentes', ' L\'energie Thermique transferee entre deux corps à des temperatures differentes', 90),
(21, 'Comment la premiere loi de la Thermodynamique relie-t-elle le travail et la chaleur ?\r\n', ' Elle montre que la chaleur est une forme de travail mecanique\r\n', ' Elle montre que le travail et la chaleur sont deux formes d\'energie equivalentes', ' Elle montre que le travail et la chaleur peuvent être convertis l\'un en l\'autre, mais qu\'il y a tou', ' Elle montre que le travail et la chaleur sont deux formes d\'energie equivalentes', 90),
(22, 'Qu\'est-ce que la loi zero de la Thermodynamique ?\r\n', ' Deux corps en equilibre Thermique avec un troisieme corps sont en equilibre Thermique entre eux.', ' La chaleur ne peut pas passer spontanement d\'un objet plus froid à un objet plus chaud.\r\n', ' L\'entropie de tout systeme isole tend à augmenter au fil du temps.\r\n', ' Deux corps en equilibre Thermique avec un troisieme corps sont en equilibre Thermique entre eux.', 90),
(23, 'Qu\'est-ce que l\'entropie en Thermodynamique ?\r\n', ' La mesure de la temperature d\'un systeme\r\n', ' La mesure de la quantite d\'energie ', 'La mesure du desordre ou de l\'incertitude dans un systeme', 'La mesure du desordre ou de l\'incertitude dans un systeme', 90),
(24, 'Qu\'est-ce que le cycle de Rankine ?\r\n', ' Un cycle de production d\'energie qui utilise la vapeur d\'eau pour generer de l\'electricite', ' Un cycle de production d\'energie qui utilise le gaz naturel pour generer de l\'electricite\r\n', '  Un cycle de production d\'energie qui utilise l\'energie solaire pour generer de l\'electricite\r\n', ' Un cycle de production d\'energie qui utilise la vapeur d\'eau pour generer de l\'electricite', 90),
(25, 'Qu\'est-ce que la capacite Thermique d\'un objet ?\r\n', ' La quantite de chaleur necessaire pour faire fondre l\'objet\r\n', ' La quantite de chaleur necessaire pour faire passer l\'objet d\'un etat solide à un etat liquide', 'La quantite de chaleur necessaire pour elever la temperature de l\'objet d\'un degre', ' La quantite de chaleur necessaire pour elever la temperature de l\'objet d\'un degre', 90),
(26, 'Comment peut-on definir la chaleur latente de fusion ?\r\n', ' La quantite de chaleur necessaire pour faire passer une substance de l\'etat solide à l\'etat liquide', ' La quantite de chaleur necessaire pour faire passer une substance de l\'etat liquide à l\'etat gazeux', ' La quantite de chaleur necessaire pour faire passer une substance de l\'etat gazeux à l\'etat solide ', ' La quantite de chaleur necessaire pour faire passer une substance de l\'etat solide à l\'etat liquide', 90),
(27, 'Qu\'est-ce que le coefficient de performance d\'un refrigerateur ?\r\n', ' La quantite de chaleur rejetee par le refrigerateur\r\n', 'La quantite d\'energie mecanique utilisee par le refrigerateur pour faire fonctionner son compresseur', 'La quantite de chaleur extraite par le refrigerateur pour chaque unite d\'energie mecanique utilisee ', 'La quantite de chaleur extraite par le refrigerateur pour chaque unite d\'energie mecanique utilisee', 90),
(28, 'Qu\'est-ce que la loi de Boyle-Mariotte ?\r\n', ' La pression et le volume d\'un gaz sont inversement proportionnels à temperature constante', ' La pression et la temperature d\'un gaz sont proportionnelles à volume constant\r\n', ' Le volume et la temperature d\'un gaz sont proportionnels à pression constante\r\n', ' La pression et le volume d\'un gaz sont inversement proportionnels à temperature constante', 90),
(29, 'Qu\'est-ce que le coefficient de dilatation Thermique d\'un materiau ?\r\n', ' La quantite de chaleur necessaire pour faire passer le materiau de l\'etat solide à l\'etat liquide s', ' La mesure de la variation de volume d\'un materiau en fonction de la temperature', ' La quantite de chaleur necessaire pour faire passer le materiau de l\'etat liquide à l\'etat gazeux s', ' La mesure de la variation de volume d\'un materiau en fonction de la temperature', 90),
(30, 'Comment peut-on definir l\'effet Joule-Thomson ?\r\n', ' L\'augmentation de temperature d\'un gaz qui se produit lorsque le gaz est comprime\r\n', ' La diminution de temperature d\'un gaz qui se produit lorsqu\'il se detend brusquement\r\n', ' La variation de volume d\'un gaz qui se produit lorsque sa pression change à temperature constante', ' La diminution de temperature d\'un gaz qui se produit lorsqu\'il se detend brusquement\r\n', 90);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `hashcode` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `fname`, `lname`, `password`, `hashcode`) VALUES
(1, 'benhamza@uca.ma', 'sofiane', 'benhamza', '00001111', 'shqdjhdqhsdsqhdqjdhqsdjqjhdsqsssssssssssssssssssssssss'),
(3, 'learn@uca.ma', 'solo', 'learn', '0000000', '0a2eeb3b4563ed5e275c1f45f4e186637eecff423744941508f0f139b0ebfbd3'),
(4, 'alas@uca.ma', 'moha', 'ait baha', '00000000', 'db81c3ce85a945d4fcb46328c4bd6a65fb888317eeedff1f767dfb3474b3fcf1'),
(6, 'fatiha@uca.ma', 'zahira', 'fatiha', '00000000', '6b973af2b33c21232d5da321434462a7c48f934905fa5e5d74826c4c2c75bfe9');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Algebre III`
--
ALTER TABLE `Algebre III`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Analyse I`
--
ALTER TABLE `Analyse I`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Analyse III`
--
ALTER TABLE `Analyse III`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Analyse IV`
--
ALTER TABLE `Analyse IV`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Analyse Numerique`
--
ALTER TABLE `Analyse Numerique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Architecture des ordinateurs`
--
ALTER TABLE `Architecture des ordinateurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Index pour la table `Electromagnetique`
--
ALTER TABLE `Electromagnetique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Electronique`
--
ALTER TABLE `Electronique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Electrostatique`
--
ALTER TABLE `Electrostatique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Mecanique de fluide`
--
ALTER TABLE `Mecanique de fluide`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Mecanique du point`
--
ALTER TABLE `Mecanique du point`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Mecanique du solide`
--
ALTER TABLE `Mecanique du solide`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Posts`
--
ALTER TABLE `Posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `Probabilites et statistiques`
--
ALTER TABLE `Probabilites et statistiques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Thermodynamique`
--
ALTER TABLE `Thermodynamique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Algebre III`
--
ALTER TABLE `Algebre III`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `Analyse III`
--
ALTER TABLE `Analyse III`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `Analyse IV`
--
ALTER TABLE `Analyse IV`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `Analyse Numerique`
--
ALTER TABLE `Analyse Numerique`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `Architecture des ordinateurs`
--
ALTER TABLE `Architecture des ordinateurs`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `Comments`
--
ALTER TABLE `Comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `Electromagnetique`
--
ALTER TABLE `Electromagnetique`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `Electronique`
--
ALTER TABLE `Electronique`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `Electrostatique`
--
ALTER TABLE `Electrostatique`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `Mecanique de fluide`
--
ALTER TABLE `Mecanique de fluide`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `Mecanique du point`
--
ALTER TABLE `Mecanique du point`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `Mecanique du solide`
--
ALTER TABLE `Mecanique du solide`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `Posts`
--
ALTER TABLE `Posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `Probabilites et statistiques`
--
ALTER TABLE `Probabilites et statistiques`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `Thermodynamique`
--
ALTER TABLE `Thermodynamique`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Posts`
--
ALTER TABLE `Posts`
  ADD CONSTRAINT `Posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
