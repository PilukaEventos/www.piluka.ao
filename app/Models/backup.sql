-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 03, 2025 at 01:29 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u932371295_bd_piluka`
--

-- --------------------------------------------------------

--
-- Table structure for table `cargos`
--

CREATE TABLE `cargos` (
  `idCargo` int(11) NOT NULL,
  `nomeCargo` varchar(30) NOT NULL,
  `descricaoCargo` varchar(100) NOT NULL,
  `idFun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cargos`
--

INSERT INTO `cargos` (`idCargo`, `nomeCargo`, `descricaoCargo`, `idFun`) VALUES
(1, 'Gerente', 'Gestor primario', 1),
(2, 'Admin', 'Administrador do sistema', 2);

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `idCat` int(11) NOT NULL,
  `nomeCat` varchar(30) NOT NULL,
  `descricaoCat` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`idCat`, `nomeCat`, `descricaoCat`) VALUES
(1, 'Confeitaria', 'restaurante comida, mariscos'),
(2, 'Buffet', 'comida, restaurante'),
(3, 'Doces,Salgados e Mouse', 'comida, restaurante bolinhos risois'),
(4, 'pastelaria e colinaria', 'bolos doces e salgados'),
(5, 'Musica e djs', 'dj, musica, aparelhagem, luzes'),
(6, 'Garrafeira', 'bebidas, drink,coquiteis, cocktails, caipirinhas, vinhos wiskys'),
(7, 'Bebida mix', 'bebidas, drink,coquiteis, cocktails, caipirinhas, vinhos wiskys'),
(8, 'Bares e Barman', 'bebidas, drink,coquiteis, cocktails, caipirinhas, vinhos wiskys'),
(9, 'Bolos', 'bolos e doces'),
(10, 'Mariscos e frutas do mar', 'Decoracao mesa do mar frutos do mar mariscos caranguejo camarão lagosta kingoli quingole quingoli Mariscos e frutas do m'),
(11, 'Rodizio', 'Carnes grelhados assados vaca cabrite frango boi no espeto'),
(12, 'Fotografias', 'Fotografos fotografia imagens Foto'),
(13, 'Bebidas', 'bebidas, drinks, servejas,beers, finos, serpentinas, wiskys, vinhos,Gasosas');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `idCli` int(11) NOT NULL,
  `nomeCli` varchar(50) DEFAULT NULL,
  `telefoneCli` varchar(30) DEFAULT NULL,
  `emailCli` varchar(100) DEFAULT NULL,
  `nomeEsp` varchar(30) DEFAULT NULL,
  `numConv` int(5) DEFAULT NULL,
  `dataEvento` date DEFAULT NULL,
  `nomeEve` varchar(20) DEFAULT NULL,
  `tipoCli` varchar(30) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`idCli`, `nomeCli`, `telefoneCli`, `emailCli`, `nomeEsp`, `numConv`, `dataEvento`, `nomeEve`, `tipoCli`, `updated_at`, `created_at`) VALUES
(1, 'Paulo Bartolomeu Epalanga', '928392536', 'pauloepalanga@gmail.com', 'Tropicalissimo', 1220, '2023-12-02', 'Otorga', 'particular', NULL, NULL),
(2, 'Pro', '929080952', 'mrx@gmail.com', 'Zukaeventos', 250, '2025-04-19', 'Aniversario', 'particular', '2025-04-10 19:43:01', '2025-01-15 08:26:33'),
(3, 'tuluek', '92350000', 'tuluek@gmail.com', 'Kissewas', 150, '2025-06-09', 'Aniversario', 'particular', '2025-01-15 08:26:33', '2025-01-15 08:26:33'),
(4, 'Hariclenes melo', '9349425600', 'marmeladas@gmail.com', '3M', 200, '2025-05-30', 'aniversario', NULL, '2025-02-18 17:21:34', '2025-02-18 17:21:34'),
(5, 'Sergio Reis', '9349425600', 'reisscorpion86@gmail.com', 'Tropicalissimo', 150, '2025-06-27', 'aniversario', NULL, '2025-02-22 08:46:51', '2025-02-22 08:46:51'),
(6, 'cezannyfuna', '926490311', 'cezannyfuna642@gmail.com', 'Tropicalissimo', 100, '2025-05-26', 'aniversario', NULL, '2025-04-07 07:01:23', '2025-04-07 06:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `idCom` int(11) NOT NULL,
  `nomeEsp` varchar(30) NOT NULL,
  `nomeCom` varchar(30) DEFAULT NULL,
  `comentario` varchar(400) DEFAULT NULL,
  `dia` date DEFAULT NULL,
  `horario` varchar(5) DEFAULT NULL,
  `estrelas` varchar(11) DEFAULT NULL,
  `_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`idCom`, `nomeEsp`, `nomeCom`, `comentario`, `dia`, `horario`, `estrelas`, `_token`) VALUES
(1, 'Lago Azul', 'Paulinho', 'muito Lindo', '2023-11-11', '12:03', '4', NULL),
(2, 'Tropicalissimo', 'Paulo Epalanga', 'muito f&aacute;cil de decorar e muito lindo', '2023-11-11', '12:15', '3', NULL),
(3, 'Tropicalissimo', 'Sergio', 'explendido', '2023-11-11', '12:26', '5', NULL),
(5, 'Lago Azul', 'Sofia', 'aqui aonde os sonhos se realizam', '2023-11-11', '12:15', '4', NULL),
(6, '', '', '', '0000-00-00', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `espacos`
--

CREATE TABLE `espacos` (
  `idEsp` int(11) NOT NULL,
  `nomeEsp` varchar(80) NOT NULL,
  `fotoEsp` varchar(255) DEFAULT NULL,
  `telefoneEsp` varchar(30) DEFAULT NULL,
  `telefoneAlternativo` varchar(30) DEFAULT NULL,
  `emailEsp` varchar(100) DEFAULT NULL,
  `moradaEsp` varchar(100) NOT NULL,
  `descricaoEsp` varchar(200) NOT NULL,
  `redes` varchar(100) DEFAULT NULL,
  `limitePax` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `espacos`
--

INSERT INTO `espacos` (`idEsp`, `nomeEsp`, `fotoEsp`, `telefoneEsp`, `telefoneAlternativo`, `emailEsp`, `moradaEsp`, `descricaoEsp`, `redes`, `limitePax`, `updated_at`, `created_at`) VALUES
(1, 'Lago Azul', 'LagoAzul0.jpg', '931231530', '929402027', 'j.reiseventos@gmail.com', 'Morro Bento, luanda', 'casamentos, batizados, pedidos, festas tematicas, aniversarios', 'j.reiseventos', 400, '2025-05-10 12:05:12', NULL),
(2, 'Zuka Eventos', 'zuka0_1280_720.jpg', '921478020', '931340684', 'grupozukaeventos@gmail.com', 'Rua da maxi, Morro Bento, luanda', 'casamentos, batizados, pedidos, festas tematicas, aniversarios', 'instagram@kissewas.zuka', 250, '2025-04-16 12:19:39', NULL),
(3, 'Kissewas', 'zuka4_640_480.jpg', '93232222', '93231100', 'grupozukaeventos@gmail.com', 'Rua do Mundo verde, Luanda', 'casamentos, batizados, pedidos, festas tematicas, aniversarios', 'instagram@kissewas.zuka', 550, '2025-04-16 12:18:23', NULL),
(4, 'Tropicalissimo', 'tropicalissimo7.jpg', '931 231 530', '925 787 260', 'j.reiseventos@gmail.com', 'Frente ao muro da UGP,  1a Rua do lado do talatona', 'casamentos, batizados, pedidos, festas tematicas, aniversarios', '@kissewas.zuka', 500, '2025-04-16 12:52:36', NULL),
(9, 'ANA 3M', 'ana3m0.jpg', '925 765 766', '244  925 765 766', 'ANA-3M@gmail.com', 'Zango 1, Luanda', 'Para eventos de noivado, casamento, aniversario, batismos e outros.', 'facebook@Ana3MLda', 400, '2025-04-16 17:32:26', '2025-01-22 07:30:39'),
(12, 'Trans Diva', 'transdivaimg.jpeg', '998 220 157', '938673228', 'transdiva2009@hotmail.com', 'Futungo, Luanda', 'Estrada do futungo, bairro talatona, por tráz do condomínio Aquaville Rua 01, quarteirão 01', '@transdiva', 200, '2025-07-17 07:34:25', '2025-05-13 07:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `eventos`
--

CREATE TABLE `eventos` (
  `idAgen` int(11) NOT NULL,
  `idCli` int(11) DEFAULT NULL,
  `idRes` int(11) DEFAULT NULL,
  `dataEvento` date DEFAULT NULL,
  `horaEvento` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `idEve` int(11) DEFAULT NULL,
  `idEsp` int(11) DEFAULT NULL,
  `idFun` int(11) DEFAULT NULL,
  `idPla` int(11) DEFAULT NULL,
  `investimento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eventos`
--

INSERT INTO `eventos` (`idAgen`, `idCli`, `idRes`, `dataEvento`, `horaEvento`, `idEve`, `idEsp`, `idFun`, `idPla`, `investimento`) VALUES
(1, 1, 1, '2023-12-02', '2025-03-24 09:28:55', 2, 1, 1, NULL, 0),
(2, 2, 2, '2025-04-19', '2025-04-18 09:42:00', 1, 2, 2, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `eventosrealizados`
--

CREATE TABLE `eventosrealizados` (
  `idEve` int(11) NOT NULL,
  `nomeCli` varchar(50) NOT NULL,
  `nomeEsp` varchar(30) NOT NULL,
  `numConv` varchar(11) NOT NULL,
  `nomePar` varchar(30) NOT NULL,
  `tipoEve` varchar(20) NOT NULL,
  `dataEve` date NOT NULL,
  `descricaoEve` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eventosrealizados`
--

INSERT INTO `eventosrealizados` (`idEve`, `nomeCli`, `nomeEsp`, `numConv`, `nomePar`, `tipoEve`, `dataEve`, `descricaoEve`) VALUES
(1, 'Janio Pacheco', 'Kissewas', '150', 'Ladr&atilde;o', 'Aniversario', '2023-10-28', 'aniversario do Ladr&atilde;o'),
(2, 'Paulo', 'Tropicalissimo', '250', 'Tupuka', 'outorga', '2023-12-02', 'entrega dos diplomas dos finalistas da universidade independente de angola.');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `fornecedores`
--

CREATE TABLE `fornecedores` (
  `idFor` int(11) NOT NULL,
  `nomeFor` varchar(80) NOT NULL,
  `imgFor` varchar(50) DEFAULT NULL,
  `emailFor` varchar(100) NOT NULL,
  `descricaoFor` varchar(200) NOT NULL,
  `telefoneFor` varchar(20) NOT NULL,
  `nif` varchar(16) NOT NULL,
  `tipoFor` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fornecedores`
--

INSERT INTO `fornecedores` (`idFor`, `nomeFor`, `imgFor`, `emailFor`, `descricaoFor`, `telefoneFor`, `nif`, `tipoFor`, `updated_at`, `created_at`) VALUES
(1, 'proteste', '', 'moetchandon@gmail.com', 'Bares e cafeteria', '929402027', '3265FF65312', 'Empresa', '2025-05-23 21:24:35', NULL),
(2, 'HMC', '', 'hmc@gmail.com', 'Catering e decoração', '95256452', '554664HG56454', 'Empresa', '2025-05-21 20:38:09', NULL),
(3, 'HE Doce Sorriso', '', 'helenaepalanga20@gmail.com', 'Bolos de qualidade 928392327', '935423812', '0004534fdgHE046', 'Particular', NULL, NULL),
(4, 'Salgados e Salgadinhos', '', 'Gisella@gmail.com', 'Confeitaria de doces e salgados para todo tipo de evento', '93542000', '000534fdgHE046', 'Empresa', '2025-03-21 15:12:34', NULL),
(19, 'Coca Cola', NULL, 'cocacola@gmail.com', 'Bebidas e bares', '935625290', '0000222Coca912', NULL, '2025-03-02 19:03:36', '2025-03-02 19:03:36'),
(20, 'HMC', NULL, 'J.REISEVENTOS', 'DECRAÇÃO E BUFFET', '924615678', '00000', NULL, '2025-05-20 11:36:04', '2025-05-20 11:36:04'),
(21, 'Eunice Caprichos', NULL, 'J.reiseventos', 'Decoração, buffet, Rodízio,', '925003019', '00000', NULL, '2025-05-20 13:08:03', '2025-05-20 13:08:03'),
(22, 'Eunice capricho', NULL, 'J.reiseventos', 'Decoração e buffê', '925003019', '00000', NULL, '2025-05-20 13:17:38', '2025-05-20 13:17:38'),
(23, 'HMC', NULL, 'HMC@gmail.com', 'Buffet e decoracao', '924615678', '000000000', NULL, '2025-05-21 20:40:37', '2025-05-21 20:40:37'),
(24, 'decoracao pro', NULL, 'pro@gmail.com', 'decoracao e pista de danca', '929080952', '00000000', NULL, '2025-05-23 21:04:27', '2025-05-23 21:04:27'),
(29, 'proteste', NULL, 'pista@gmail.com', 'pista de danca', '92908001', '00000000', NULL, '2025-05-24 21:32:15', '2025-05-24 19:34:49'),
(30, 'pista', NULL, 'pista@gmail.com', 'pista de danca', '929080952', '00000000', NULL, '2025-05-24 19:37:36', '2025-05-24 19:37:36'),
(31, 'pista', NULL, 'pista@gmail.com', 'pista de danca', '929080952', '00000000', NULL, '2025-05-24 19:38:07', '2025-05-24 19:38:07'),
(32, 'pista', NULL, 'pista@gmail.com', 'pista de danca', '929080952', '00000000', NULL, '2025-05-24 21:09:18', '2025-05-24 21:09:18'),
(33, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', 'PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-03 17:09:23', '2025-07-02 12:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `fotos`
--

CREATE TABLE `fotos` (
  `idImg` int(11) NOT NULL,
  `nomeImg` varchar(30) NOT NULL,
  `idEsp` int(11) DEFAULT NULL,
  `idFun` int(11) DEFAULT NULL,
  `idFor` int(11) DEFAULT NULL,
  `idCli` int(11) DEFAULT NULL,
  `id` bigint(20) UNSIGNED DEFAULT NULL,
  `idCom` int(11) DEFAULT NULL,
  `idAgen` int(11) DEFAULT NULL,
  `idEve` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `_token` varchar(100) DEFAULT NULL,
  `_method` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fotos`
--

INSERT INTO `fotos` (`idImg`, `nomeImg`, `idEsp`, `idFun`, `idFor`, `idCli`, `id`, `idCom`, `idAgen`, `idEve`, `updated_at`, `created_at`, `_token`, `_method`) VALUES
(1, 'sofia.png', NULL, NULL, NULL, NULL, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Sérgio1.png', NULL, NULL, NULL, NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'licenciatura.png', NULL, 2, NULL, 2, 3, 1, NULL, NULL, '2025-04-15 08:11:16', NULL, NULL, NULL),
(4, 'Victor Reis.jpg', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'paulo.png', NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'catering1.jpg132', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'sofia.png', NULL, NULL, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Lago_Azul1.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Lago_Azul2.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Lago_Azul3.jpg', 1, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Lago_Azul4.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'zuka0_video.mp4', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'zuka1.jpg', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'zuka2.jpg', 2, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'zuka3_960_720.jpg', 2, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'zuka0_video.mp4', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'kissewas2.jpg', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'kissewas1.jpg', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'kissewas2.jpg', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'kissewas3.jpg', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'kissewas4.jpg', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'tropicalissimo1.jpg', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'tropicalissimo2.jpg', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'tropicalissimo3.jpg', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'tropicalissimo4.jpg', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'tropicalissimo5.jpg', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'tropicalissimo6.jpg', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'tropicalissimo7.jpg', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'decoracao.jpeg837', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'decoracao.jpg839', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'decoracao1.jpg77', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'decoracao2.jpg481', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'decoracao3.jpg989', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'decoracao4.jpg915', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'decoracao8.jpg415', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'decoracao9.jpg227', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'decoracao10.jpg689', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'IMG-20231020-WA0003.', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'azul-piscina.png', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'IMG-20231020-WA0010.', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Kissewas .jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Kissewas 2023-11-07 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Kissewas 2023-11-07 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Kissewas 2023-11-07 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Kissewas 2023-11-07 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Kissewas 2023-11-07 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'IMG-20231020-WA0001.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'IMG-20231020-WA0002.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'IMG-20231020-WA0003.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'IMG-20231020-WA0004.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'IMG-20231020-WA0005.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'IMG-20231020-WA0006.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'IMG-20231020-WA0007.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'IMG-20231020-WA0008.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'IMG-20231020-WA0009.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'IMG-20231020-WA0010.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'decoracao9.jpg1737530414.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-22 07:20:14', '2025-01-22 07:20:14', NULL, NULL),
(58, 'decoracao9.jpg1737530527.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-22 07:22:07', '2025-01-22 07:22:07', NULL, NULL),
(59, 'zuka5.jpg', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-29 08:15:05', '2025-01-29 08:15:05', NULL, NULL),
(60, 'zuka7_civil.jpg', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Lago_Azul5.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-24 14:25:05', '2025-03-24 14:25:05', NULL, NULL),
(62, 'Lago_Azul6.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-24 14:25:05', '2025-03-24 14:25:05', NULL, NULL),
(63, 'Lago_Azul7.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-24 14:25:05', '2025-03-24 14:25:05', NULL, NULL),
(64, 'feio.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-15 07:29:26', '2025-04-15 07:01:12', NULL, NULL),
(65, 'ana3m1.jpg', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'ana3m2.jpg', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'ana3m3.jpg', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'ana3m4.jpg', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'ana3m5.jpg', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'ana3m6.jpg', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'ana3m7.jpg', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Lago_Azul6.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-24 14:25:05', '2025-03-24 14:25:05', NULL, NULL),
(73, 'Lago_Azul7.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-24 14:25:05', '2025-03-24 14:25:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `funcao`
--

CREATE TABLE `funcao` (
  `idFuncao` int(11) NOT NULL,
  `nomeFuncao` varchar(30) NOT NULL,
  `descricaoFuncao` varchar(100) NOT NULL,
  `idCargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `funcao`
--

INSERT INTO `funcao` (`idFuncao`, `nomeFuncao`, `descricaoFuncao`, `idCargo`) VALUES
(1, 'Gestor', 'Gestor do negocio', 1);

-- --------------------------------------------------------

--
-- Table structure for table `funcionarios`
--

CREATE TABLE `funcionarios` (
  `idFun` int(11) NOT NULL,
  `idEsp` int(11) DEFAULT NULL,
  `id` bigint(20) UNSIGNED DEFAULT NULL,
  `nomeFun` varchar(80) NOT NULL,
  `telefoneFun` varchar(30) NOT NULL,
  `emailFun` varchar(100) NOT NULL,
  `dataNascFun` date NOT NULL,
  `moradaFun` varchar(80) NOT NULL,
  `dataIngreFun` date NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `funcionarios`
--

INSERT INTO `funcionarios` (`idFun`, `idEsp`, `id`, `nomeFun`, `telefoneFun`, `emailFun`, `dataNascFun`, `moradaFun`, `dataIngreFun`, `updated_at`, `created_at`, `_token`) VALUES
(1, 1, 4, 'Victor Reis', '929402020', 'victor@piluka.com', '1973-11-03', 'Morro Bento', '2010-05-05', '2025-04-15 07:01:13', NULL, NULL),
(2, 2, 3, 'Paulo Bartolomeu', '929402027', 'mrx@piluka.com', '1999-04-19', 'Morro Bento\r\n', '2023-11-02', NULL, NULL, NULL),
(7, 12, 5, 'Edvaldo Edvaldo', '929402027', 'edvaldotransdiva@piluka.com', '1999-04-19', 'Futungo\r\n', '2023-11-02', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_12_16_181244_add_tipo_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `planos`
--

CREATE TABLE `planos` (
  `idPla` int(11) NOT NULL,
  `numConv` varchar(5) NOT NULL,
  `precoPla` varchar(50) NOT NULL,
  `idEsp` int(11) NOT NULL,
  `idServ` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `planos`
--

INSERT INTO `planos` (`idPla`, `numConv`, `precoPla`, `idEsp`, `idServ`) VALUES
(1, '250', '4500000', 1, NULL),
(2, '350', '5400000', 2, NULL),
(3, '500', '7500000', 3, NULL),
(4, '500', '5400000', 4, NULL),
(5, '400', '5500000', 3, NULL),
(6, '160', '3200000', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provincia`
--

CREATE TABLE `provincia` (
  `idProv` int(11) NOT NULL,
  `nomeProv` varchar(30) NOT NULL,
  `Cidade` varchar(30) DEFAULT NULL,
  `Bairro` varchar(30) DEFAULT NULL,
  `descricaoProv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservas`
--

CREATE TABLE `reservas` (
  `idRes` int(11) NOT NULL,
  `nomeRes` varchar(30) NOT NULL,
  `contactoRes` varchar(30) NOT NULL,
  `emailRes` varchar(100) NOT NULL,
  `dataEvento` date NOT NULL,
  `reserva` varchar(40) NOT NULL,
  `tipoEve` varchar(40) NOT NULL,
  `numConv` varchar(5) NOT NULL,
  `servicos` varchar(200) NOT NULL,
  `idEsp` int(11) DEFAULT NULL,
  `dataVisita` date NOT NULL,
  `updated_at` text NOT NULL,
  `created_at` datetime NOT NULL,
  `_token` varchar(100) DEFAULT NULL,
  `_method` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservas`
--

INSERT INTO `reservas` (`idRes`, `nomeRes`, `contactoRes`, `emailRes`, `dataEvento`, `reserva`, `tipoEve`, `numConv`, `servicos`, `idEsp`, `dataVisita`, `updated_at`, `created_at`, `_token`, `_method`) VALUES
(1, 'cezannyfuna', '926490311', 'cezannyfuna642@gmail.com', '2024-11-26', 'P8k', 'Baptismo', '4323', '[\"Musica\",\"Buffet\",\"decoracao\",\"Outros\"]', 3, '2024-12-30', '2025-04-07 07:56:18', '2024-11-25 09:31:30', NULL, NULL),
(2, 'Paulo Epalanga', '923531612', 'pauluchooalicerces@gmail.com', '2025-04-19', 'Paulo Epalanga', 'Aniversário', '1234', '[\"Musica\",\"decoracao\"]', 3, '2025-02-20', '2025-01-06 14:42:01', '2025-01-06 14:42:01', NULL, NULL),
(3, 'Pro', '925230000', 'mrx@gmail.com', '2025-01-17', 'P8k', 'Aniversario', '1200', '[\"Outros\"]', 2, '2024-12-30', '2025-04-15 09:59:11', '2024-11-25 09:31:30', NULL, NULL),
(4, 'Hariclenes melo', '9349425600', 'marmeladas@gmail.com', '2025-05-30', 'Hariclenes melo', 'aniversario', '200', '[\"Musica\",\"Buffet\",\"decoracao\",\"Bebidas\"]', 9, '2025-04-12', '2025-02-18 18:21:34', '2025-02-18 18:21:34', NULL, NULL),
(5, 'Sergio Reis', '9349425600', 'reisscorpion86@gmail.com', '2025-06-27', 'Sergio Reis', 'aniversario', '150', '[\"Musica\",\"Buffet\",\"decoracao\",\"Bebidas\"]', 4, '2025-04-01', '2025-02-22 09:46:51', '2025-02-22 09:46:51', NULL, NULL),
(6, 'Sergio Reis', '9349425600', 'reisscorpion86@gmail.com', '2025-12-10', 'Sergio Reis', 'aniversario', '210', '[\"Musica\",\"decoracao\"]', 1, '2025-04-01', '2025-03-20 13:50:03', '2025-02-22 09:46:51', NULL, NULL),
(24, 'P8k', '92342445', 'mrx@gmail.com', '2024-11-26', 'P8k', 'Baptismo', '4323', '[\"Musica\",\"decoracao\"]', 3, '2024-12-30', '2024-11-25 09:31:30', '2024-11-25 09:31:30', NULL, NULL),
(102, 'Paulo Epalanga', '923531612', 'pauluchooalicerces@gmail.com', '2025-04-19', 'Paulo Epalanga', 'Aniversário', '1234', '[\"Musica\",\"decoracao\"]', 3, '2025-02-20', '2025-01-06 14:42:01', '2025-01-06 14:42:01', NULL, NULL),
(122, 'Pro', '925230000', 'mrx@gmail.com', '2025-01-17', 'P8k', 'Aniversario', '1200', '[\"espaco\",\"Musica\",\"Bebida\",\"Decoracao\"]', 2, '2024-12-30', '2024-11-25 09:31:30', '2024-11-25 09:31:30', NULL, NULL),
(182, 'Hariclenes melo', '9349425600', 'marmeladas@gmail.com', '2025-05-30', 'Hariclenes melo', 'aniversario', '200', '[\"Musica\",\"Buffet\",\"decoracao\",\"Bebidas\"]', 9, '2025-04-12', '2025-02-18 18:21:34', '2025-02-18 18:21:34', NULL, NULL),
(183, 'Sergio Reis', '9349425600', 'reisscorpion86@gmail.com', '2025-06-27', 'Sergio Reis', 'aniversario', '150', '[\"Musica\",\"Buffet\",\"decoracao\",\"Bebidas\"]', 4, '2025-04-01', '2025-02-22 09:46:51', '2025-02-22 09:46:51', NULL, NULL),
(184, 'Sergio Reis', '9349425600', 'reisscorpion86@gmail.com', '2025-06-27', 'Sergio Reis', 'aniversario', '200', '[\"Musica\",\"Buffet\",\"decoracao\",\"Bebidas\"]', 1, '2025-04-01', '2025-02-22 09:46:51', '2025-02-22 09:46:51', NULL, NULL),
(185, 'cezannyfuna', '926490311', 'cezannyfuna642@gmail.com', '2025-05-26', 'cezannyfuna', 'aniversario', '100', '[\"Musica\",\"Buffet\",\"decoracao\",\"Outros\"]', 4, '2025-05-01', '2025-04-07 07:57:01', '2025-04-07 07:52:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `servicos`
--

CREATE TABLE `servicos` (
  `idServ` int(11) NOT NULL,
  `nomeServ` varchar(50) NOT NULL,
  `telefoneServ` varchar(20) DEFAULT NULL,
  `emailServ` varchar(200) DEFAULT NULL,
  `idFor` int(11) NOT NULL,
  `idEsp` int(11) DEFAULT NULL,
  `descricaoServ` varchar(200) NOT NULL,
  `fotoCapa` varchar(100) DEFAULT NULL,
  `idCat` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `servicos`
--

INSERT INTO `servicos` (`idServ`, `nomeServ`, `telefoneServ`, `emailServ`, `idFor`, `idEsp`, `descricaoServ`, `fotoCapa`, `idCat`, `updated_at`, `created_at`) VALUES
(1, 'HMC', '924615678', NULL, 1, NULL, 'Buffet, Decoraçao e reportagem', 'moetchandonbar.jpg', 6, '2025-05-23 21:24:35', NULL),
(2, 'Tia São', '95256452', NULL, 2, 3, 'decoracao, restauracao', 'decoracao3.jpg', 2, '2025-03-02 19:49:48', NULL),
(3, 'Dom', '95256452', NULL, 2, NULL, 'deejay, bebidas,Fotografias', 'ballantines.jpg', 2, '2025-05-21 20:38:09', NULL),
(4, 'Gizella', '93542001', NULL, 4, 2, 'Doces e salgados para todo tipo de evento', 'catering.jpg', 4, '2025-03-21 15:12:34', NULL),
(5, 'Bayo', '95256452', NULL, 2, 1, 'deejay, bebidas,Luzes, musica', 'luzes.jpg', 5, '2025-04-15 13:18:38', NULL),
(6, 'Dj S Sociedade', '95256452', NULL, 2, 3, 'deejay, bebidas,Luzes musica', 'luzes.jpg', 5, '2025-04-15 13:18:44', NULL),
(7, 'Feliciana & Filhos', '929402027', NULL, 1, 1, 'Restauracao e bar', 'restaurante.jpg', 1, '2025-03-02 19:49:48', NULL),
(13, 'proteste', '929080002', NULL, 29, 1, 'pista de danca', 'pro.jpg', 12, '2025-05-24 21:53:13', '2025-05-24 21:09:18'),
(14, 'Rodízio Maravilha', '943 175 568', NULL, 33, 2, 'comida, Rodízio.', 'rod.jpg', 11, '2025-07-03 18:03:52', '2025-07-02 12:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `idSession` int(11) NOT NULL,
  `TimeOfLogin` datetime DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `payload` text DEFAULT NULL,
  `last_activity` text DEFAULT NULL,
  `field list` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` int(11) DEFAULT NULL,
  `user_agent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`idSession`, `TimeOfLogin`, `Date`, `payload`, `last_activity`, `field list`, `user_id`, `ip_address`, `user_agent`) VALUES
(1, '2024-12-16 17:16:27', '2024-12-16', '', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sessoes`
--

CREATE TABLE `sessoes` (
  `idSessao` int(11) NOT NULL,
  `TimeOfLogin` datetime DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `payload` text DEFAULT NULL,
  `last_activity` text DEFAULT NULL,
  `field list` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(250) DEFAULT NULL,
  `user_client` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessoes`
--

INSERT INTO `sessoes` (`idSessao`, `TimeOfLogin`, `Date`, `payload`, `last_activity`, `field list`, `user_id`, `ip_address`, `user_client`, `updated_at`, `created_at`) VALUES
(1, '2025-06-10 17:16:31', '2025-06-10', NULL, NULL, NULL, 3, '2c0f:f888:a980:1951:8933:a75f:13e2:4dd6', NULL, '2025-06-10 17:16:31', '2025-06-10 17:16:31'),
(2, '2025-06-13 06:08:41', '2025-06-13', NULL, NULL, NULL, 3, '41.63.179.79', NULL, '2025-06-13 06:08:41', '2025-06-13 06:08:41'),
(3, '2025-06-20 07:05:45', '2025-06-20', NULL, NULL, NULL, 4, '41.63.179.79', NULL, '2025-06-20 07:05:45', '2025-06-20 07:05:45'),
(4, '2025-06-20 07:23:51', '2025-06-20', NULL, NULL, NULL, 3, '41.63.179.79', NULL, '2025-06-20 07:23:51', '2025-06-20 07:23:51'),
(5, '2025-06-24 10:09:39', '2025-06-24', NULL, NULL, NULL, 4, '41.63.179.79', NULL, '2025-06-24 10:09:39', '2025-06-24 10:09:39'),
(6, '2025-06-28 09:58:05', '2025-06-28', NULL, NULL, NULL, 4, '105.172.28.170', NULL, '2025-06-28 09:58:05', '2025-06-28 09:58:05'),
(7, '2025-07-01 10:29:00', '2025-07-01', NULL, NULL, NULL, 4, '41.63.179.79', NULL, '2025-07-01 10:29:00', '2025-07-01 10:29:00'),
(8, '2025-07-01 10:32:52', '2025-07-01', NULL, NULL, NULL, 3, '41.63.179.79', NULL, '2025-07-01 10:32:52', '2025-07-01 10:32:52'),
(9, '2025-07-02 07:22:50', '2025-07-02', NULL, NULL, NULL, 3, '41.63.179.79', NULL, '2025-07-02 07:22:50', '2025-07-02 07:22:50'),
(10, '2025-07-02 07:39:16', '2025-07-02', NULL, NULL, NULL, 5, '41.63.179.79', NULL, '2025-07-02 07:39:16', '2025-07-02 07:39:16'),
(11, '2025-07-02 07:43:40', '2025-07-02', NULL, NULL, NULL, 3, '41.63.179.79', NULL, '2025-07-02 07:43:40', '2025-07-02 07:43:40'),
(12, '2025-07-02 07:44:54', '2025-07-02', NULL, NULL, NULL, 4, '41.63.179.79', NULL, '2025-07-02 07:44:54', '2025-07-02 07:44:54'),
(13, '2025-07-02 07:47:38', '2025-07-02', NULL, NULL, NULL, 5, '41.63.179.79', NULL, '2025-07-02 07:47:38', '2025-07-02 07:47:38'),
(14, '2025-07-02 07:54:32', '2025-07-02', NULL, NULL, NULL, 5, '41.63.179.79', NULL, '2025-07-02 07:54:32', '2025-07-02 07:54:32'),
(15, '2025-07-02 08:00:52', '2025-07-02', NULL, NULL, NULL, 5, '41.63.179.79', NULL, '2025-07-02 08:00:52', '2025-07-02 08:00:52'),
(16, '2025-07-02 08:05:54', '2025-07-02', NULL, NULL, NULL, 5, '41.63.179.79', NULL, '2025-07-02 08:05:54', '2025-07-02 08:05:54'),
(17, '2025-07-02 08:09:32', '2025-07-02', NULL, NULL, NULL, 5, '41.63.179.79', NULL, '2025-07-02 08:09:32', '2025-07-02 08:09:32'),
(18, '2025-07-02 08:11:51', '2025-07-02', NULL, NULL, NULL, 4, '41.63.179.79', NULL, '2025-07-02 08:11:51', '2025-07-02 08:11:51'),
(19, '2025-07-02 11:31:00', '2025-07-02', NULL, NULL, NULL, 5, '41.63.179.79', NULL, '2025-07-02 11:31:00', '2025-07-02 11:31:00'),
(20, '2025-07-02 11:57:57', '2025-07-02', NULL, NULL, NULL, 3, '41.63.179.79', NULL, '2025-07-02 11:57:57', '2025-07-02 11:57:57'),
(21, '2025-07-03 16:56:25', '2025-07-03', NULL, NULL, NULL, 3, '41.63.179.79', NULL, '2025-07-03 16:56:25', '2025-07-03 16:56:25'),
(22, '2025-07-03 17:04:17', '2025-07-03', NULL, NULL, NULL, 3, '41.205.50.189', NULL, '2025-07-03 17:04:17', '2025-07-03 17:04:17'),
(23, '2025-07-09 14:38:13', '2025-07-09', NULL, NULL, NULL, 4, '41.63.179.79', NULL, '2025-07-09 14:38:13', '2025-07-09 14:38:13'),
(24, '2025-07-17 07:22:45', '2025-07-17', NULL, NULL, NULL, 3, '41.63.179.79', NULL, '2025-07-17 07:22:45', '2025-07-17 07:22:45'),
(25, '2025-07-17 08:09:45', '2025-07-17', NULL, NULL, NULL, 5, '41.63.179.79', NULL, '2025-07-17 08:09:45', '2025-07-17 08:09:45'),
(26, '2025-07-17 08:12:47', '2025-07-17', NULL, NULL, NULL, 4, '41.63.179.79', NULL, '2025-07-17 08:12:47', '2025-07-17 08:12:47'),
(27, '2025-07-17 08:14:18', '2025-07-17', NULL, NULL, NULL, 3, '41.63.179.79', NULL, '2025-07-17 08:14:18', '2025-07-17 08:14:18'),
(28, '2025-07-17 08:15:40', '2025-07-17', NULL, NULL, NULL, 5, '41.63.179.79', NULL, '2025-07-17 08:15:40', '2025-07-17 08:15:40'),
(29, '2025-07-17 08:16:00', '2025-07-17', NULL, NULL, NULL, 3, '41.63.179.79', NULL, '2025-07-17 08:16:00', '2025-07-17 08:16:00'),
(30, '2025-07-17 09:10:28', '2025-07-17', NULL, NULL, NULL, 5, '41.63.179.79', NULL, '2025-07-17 09:10:28', '2025-07-17 09:10:28'),
(31, '2025-07-17 10:54:18', '2025-07-17', NULL, NULL, NULL, 5, '41.63.179.79', NULL, '2025-07-17 10:54:18', '2025-07-17 10:54:18'),
(32, '2025-09-03 12:34:53', '2025-09-03', NULL, NULL, NULL, 4, '154.71.128.137', NULL, '2025-09-03 12:34:53', '2025-09-03 12:34:53'),
(33, '2025-09-03 12:38:19', '2025-09-03', NULL, NULL, NULL, 4, '154.71.128.137', NULL, '2025-09-03 12:38:19', '2025-09-03 12:38:19'),
(34, '2025-09-03 12:38:33', '2025-09-03', NULL, NULL, NULL, 4, '154.71.128.137', NULL, '2025-09-03 12:38:33', '2025-09-03 12:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipo` varchar(100) NOT NULL,
  `_method` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `_token`, `created_at`, `updated_at`, `tipo`, `_method`) VALUES
(1, 'Sofia Luis', 'sof@piluka.com', NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL, '2025-02-27 15:55:26', 'Gerente', ''),
(2, 'sergio Reis', 'ser@piluka.com', NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, 'Admin', ''),
(3, 'Paulo Bartolomeu', 'mrx@piluka.com', NULL, '202cb962ac59075b964b07152d234b70', 'ctj22L3VDHMw7Z6VLKc7suFTCtJ1EaGxaWGeNDDM', NULL, '2025-01-09 20:53:04', 'Admin', 'PUT'),
(4, 'Victor Reis', 'victor@piluka.com', NULL, 'bb832a17eefaec1d46a669d088287527', NULL, NULL, '2025-09-03 12:37:47', 'Gerente', ''),
(5, 'Edvaldo Edvaldo', 'edvaldotransdiva@piluka.com', NULL, '202cb962ac59075b964b07152d234b70', NULL, '2025-07-01 10:50:17', '2025-07-01 10:50:17', 'Gerente', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsu` int(11) NOT NULL,
  `nomeUsu` varchar(40) NOT NULL,
  `emailUsu` varchar(40) NOT NULL,
  `senhaUsu` varchar(255) NOT NULL,
  `tipoUsu` enum('Admin','Gerente','Funcionario','Fornecedor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`idUsu`, `nomeUsu`, `emailUsu`, `senhaUsu`, `tipoUsu`) VALUES
(1, 'Sofia Luis', 'sof@piluka.com', '202cb962ac59075b964b07152d234b70', 'Funcionario'),
(2, 'sergio Reis', 'ser@piluka.com', '202cb962ac59075b964b07152d234b70', 'Admin'),
(3, 'Paulo Epalanga', 'mrx@piluka.com', '202cb962ac59075b964b07152d234b70', 'Admin'),
(4, 'Victor Reis', 'victor@piluka.com', '202cb962ac59075b964b07152d234b70', 'Gerente');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`idCargo`),
  ADD UNIQUE KEY `idFun` (`idFun`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCat`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCli`);

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idCom`);

--
-- Indexes for table `espacos`
--
ALTER TABLE `espacos`
  ADD PRIMARY KEY (`idEsp`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`idAgen`),
  ADD UNIQUE KEY `idFun` (`idFun`),
  ADD KEY `idCliente` (`idCli`),
  ADD KEY `idEsp` (`idEsp`),
  ADD KEY `idEve` (`idEve`),
  ADD KEY `espaco_plano_ibfk_3` (`idPla`),
  ADD KEY `reservas_eventos` (`idRes`);

--
-- Indexes for table `eventosrealizados`
--
ALTER TABLE `eventosrealizados`
  ADD PRIMARY KEY (`idEve`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`idFor`);

--
-- Indexes for table `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`idImg`),
  ADD KEY `idEsp` (`idEsp`),
  ADD KEY `idCli` (`idCli`),
  ADD KEY `idFor` (`idFor`),
  ADD KEY `idFun` (`idFun`),
  ADD KEY `idUsu` (`id`),
  ADD KEY `idCom` (`idCom`),
  ADD KEY `fotos_eventos` (`idAgen`),
  ADD KEY `fotos_realizados` (`idEve`);

--
-- Indexes for table `funcao`
--
ALTER TABLE `funcao`
  ADD PRIMARY KEY (`idFuncao`),
  ADD UNIQUE KEY `idCargo` (`idCargo`);

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`idFun`),
  ADD KEY `funcionario_espaco` (`idEsp`),
  ADD KEY `funcionario_user` (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `planos`
--
ALTER TABLE `planos`
  ADD PRIMARY KEY (`idPla`),
  ADD KEY `idEsp` (`idEsp`),
  ADD KEY `planos_servicos` (`idServ`);

--
-- Indexes for table `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`idProv`);

--
-- Indexes for table `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idRes`),
  ADD KEY `reserva_espaco` (`idEsp`);

--
-- Indexes for table `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`idServ`),
  ADD KEY `idFor` (`idFor`),
  ADD KEY `idCat` (`idCat`),
  ADD KEY `servicos_ibfk_3` (`idEsp`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`idSession`);

--
-- Indexes for table `sessoes`
--
ALTER TABLE `sessoes`
  ADD PRIMARY KEY (`idSessao`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cargos`
--
ALTER TABLE `cargos`
  MODIFY `idCargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idCom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `espacos`
--
ALTER TABLE `espacos`
  MODIFY `idEsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `idAgen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eventosrealizados`
--
ALTER TABLE `eventosrealizados`
  MODIFY `idEve` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `idFor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `fotos`
--
ALTER TABLE `fotos`
  MODIFY `idImg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `funcao`
--
ALTER TABLE `funcao`
  MODIFY `idFuncao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `idFun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `planos`
--
ALTER TABLE `planos`
  MODIFY `idPla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `provincia`
--
ALTER TABLE `provincia`
  MODIFY `idProv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservas`
--
ALTER TABLE `reservas`
  MODIFY `idRes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `servicos`
--
ALTER TABLE `servicos`
  MODIFY `idServ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `idSession` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sessoes`
--
ALTER TABLE `sessoes`
  MODIFY `idSessao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cargos`
--
ALTER TABLE `cargos`
  ADD CONSTRAINT `cargos_ibfk_1` FOREIGN KEY (`idFun`) REFERENCES `funcionarios` (`idFun`);

--
-- Constraints for table `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `espaco_plano_ibfk_3` FOREIGN KEY (`idPla`) REFERENCES `planos` (`idPla`) ON UPDATE SET NULL,
  ADD CONSTRAINT `eventos_clientes` FOREIGN KEY (`idCli`) REFERENCES `clientes` (`idCli`),
  ADD CONSTRAINT `funcionario_eventos` FOREIGN KEY (`idFun`) REFERENCES `funcionarios` (`idFun`),
  ADD CONSTRAINT `reservas_eventos` FOREIGN KEY (`idRes`) REFERENCES `reservas` (`idRes`);

--
-- Constraints for table `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_cliente` FOREIGN KEY (`idCli`) REFERENCES `clientes` (`idCli`),
  ADD CONSTRAINT `fotos_comentarios` FOREIGN KEY (`idCom`) REFERENCES `comentarios` (`idCom`),
  ADD CONSTRAINT `fotos_espacos` FOREIGN KEY (`idEsp`) REFERENCES `espacos` (`idEsp`),
  ADD CONSTRAINT `fotos_eventos` FOREIGN KEY (`idAgen`) REFERENCES `eventos` (`idAgen`),
  ADD CONSTRAINT `fotos_fornecedores` FOREIGN KEY (`idFor`) REFERENCES `fornecedores` (`idFor`),
  ADD CONSTRAINT `fotos_funcionario` FOREIGN KEY (`idFun`) REFERENCES `funcionarios` (`idFun`),
  ADD CONSTRAINT `fotos_realizados` FOREIGN KEY (`idEve`) REFERENCES `eventosrealizados` (`idEve`),
  ADD CONSTRAINT `fotos_usuario` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `funcao`
--
ALTER TABLE `funcao`
  ADD CONSTRAINT `funcao_ibfk_1` FOREIGN KEY (`idCargo`) REFERENCES `cargos` (`idCargo`);

--
-- Constraints for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `funcionario_espaco` FOREIGN KEY (`idEsp`) REFERENCES `espacos` (`idEsp`),
  ADD CONSTRAINT `funcionario_user` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `planos`
--
ALTER TABLE `planos`
  ADD CONSTRAINT `planos_ibfk_1` FOREIGN KEY (`idEsp`) REFERENCES `espacos` (`idEsp`),
  ADD CONSTRAINT `planos_servicos` FOREIGN KEY (`idServ`) REFERENCES `servicos` (`idServ`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reserva_espaco` FOREIGN KEY (`idEsp`) REFERENCES `espacos` (`idEsp`);

--
-- Constraints for table `servicos`
--
ALTER TABLE `servicos`
  ADD CONSTRAINT `servicos_ibfk_1` FOREIGN KEY (`idFor`) REFERENCES `fornecedores` (`idFor`) ON DELETE NO ACTION,
  ADD CONSTRAINT `servicos_ibfk_2` FOREIGN KEY (`idCat`) REFERENCES `categorias` (`idCat`) ON DELETE NO ACTION,
  ADD CONSTRAINT `servicos_ibfk_3` FOREIGN KEY (`idEsp`) REFERENCES `espacos` (`idEsp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
