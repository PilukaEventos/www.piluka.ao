-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Set-2025 às 20:17
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_piluka`
--
CREATE DATABASE IF NOT EXISTS `bd_piluka` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_piluka`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `idCargo` int(11) NOT NULL,
  `nomeCargo` varchar(30) NOT NULL,
  `descricaoCargo` varchar(100) NOT NULL,
  `idFun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`idCargo`, `nomeCargo`, `descricaoCargo`, `idFun`) VALUES
(1, 'Gerente', 'Gestor primario', 1),
(2, 'Admin', 'Administrador do sistema', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `idCat` int(11) NOT NULL,
  `nomeCat` varchar(30) NOT NULL,
  `descricaoCat` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categorias`
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
-- Estrutura da tabela `clientes`
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
-- Extraindo dados da tabela `clientes`
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
-- Estrutura da tabela `comentarios`
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
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`idCom`, `nomeEsp`, `nomeCom`, `comentario`, `dia`, `horario`, `estrelas`, `_token`) VALUES
(1, 'Lago Azul', 'Paulinho', 'muito Lindo', '2023-11-11', '12:03', '4', NULL),
(2, 'Tropicalissimo', 'Paulo Epalanga', 'muito f&aacute;cil de decorar e muito lindo', '2023-11-11', '12:15', '3', NULL),
(3, 'Tropicalissimo', 'Sergio', 'explendido', '2023-11-11', '12:26', '5', NULL),
(5, 'Lago Azul', 'Sofia', 'aqui aonde os sonhos se realizam', '2023-11-11', '12:15', '4', NULL),
(6, '', '', '', '0000-00-00', '', '', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `espacos`
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
-- Extraindo dados da tabela `espacos`
--

INSERT INTO `espacos` (`idEsp`, `nomeEsp`, `fotoEsp`, `telefoneEsp`, `telefoneAlternativo`, `emailEsp`, `moradaEsp`, `descricaoEsp`, `redes`, `limitePax`, `updated_at`, `created_at`) VALUES
(1, 'Lago Azul', 'LagoAzul1.jpg', '931231530', '929402027', 'j.reiseventos@gmail.com', 'Morro Bento, luanda', 'casamentos, batizados, pedidos, festas tematicas, aniversarios', 'j.reiseventos', 400, '2025-05-10 12:05:12', NULL),
(2, 'Zuka Eventos', 'zuka0_1280_720.jpg', '921478020', '931340684', 'grupozukaeventos@gmail.com', 'Rua da maxi, Morro Bento, luanda', 'casamentos, batizados, pedidos, festas tematicas, aniversarios', 'instagram@kissewas.zuka', 250, '2025-04-16 12:19:39', NULL),
(3, 'Kissewas', 'zuka4_640_480.jpg', '93232222', '93231100', 'grupozukaeventos@gmail.com', 'Rua do Mundo verde, Luanda', 'casamentos, batizados, pedidos, festas tematicas, aniversarios', 'instagram@kissewas.zuka', 550, '2025-04-16 12:18:23', NULL),
(4, 'Tropicalissimo', 'tropicalissimo7.jpg', '931 231 530', '925 787 260', 'j.reiseventos@gmail.com', 'Frente ao muro da UGP,  1a Rua do lado do talatona', 'casamentos, batizados, pedidos, festas tematicas, aniversarios', '@kissewas.zuka', 500, '2025-04-16 12:52:36', NULL),
(9, 'ANA 3M', 'ana3m0.jpg', '925 765 766', '244  925 765 766', 'ANA-3M@gmail.com', 'Zango 1, Luanda', 'Para eventos de noivado, casamento, aniversario, batismos e outros.', 'facebook@Ana3MLda', 400, '2025-04-16 17:32:26', '2025-01-22 07:30:39'),
(12, 'Floresta', 'civil.jpg', '93231132', '93231132', 'florestaeventos@gmail.com', 'Luanda', 'rwewrwerwere', 'ewrewrw', 244, '2025-05-13 07:32:03', '2025-05-13 07:31:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
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
-- Extraindo dados da tabela `eventos`
--

INSERT INTO `eventos` (`idAgen`, `idCli`, `idRes`, `dataEvento`, `horaEvento`, `idEve`, `idEsp`, `idFun`, `idPla`, `investimento`) VALUES
(1, 1, 1, '2023-12-02', '2025-03-24 09:28:55', 2, 1, 1, NULL, 0),
(2, 2, 2, '2025-04-19', '2025-04-18 09:42:00', 1, 2, 2, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventosrealizados`
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
-- Extraindo dados da tabela `eventosrealizados`
--

INSERT INTO `eventosrealizados` (`idEve`, `nomeCli`, `nomeEsp`, `numConv`, `nomePar`, `tipoEve`, `dataEve`, `descricaoEve`) VALUES
(1, 'Janio Pacheco', 'Kissewas', '150', 'Ladr&atilde;o', 'Aniversario', '2023-10-28', 'aniversario do Ladr&atilde;o'),
(2, 'Paulo', 'Tropicalissimo', '250', 'Tupuka', 'outorga', '2023-12-02', 'entrega dos diplomas dos finalistas da universidade independente de angola.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
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
-- Estrutura da tabela `fornecedores`
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
-- Extraindo dados da tabela `fornecedores`
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
(33, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', '⭕️PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-02 11:17:54', '2025-07-02 11:17:54'),
(34, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', '⭕️PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-02 11:18:13', '2025-07-02 11:18:13'),
(35, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', '⭕️PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-02 11:18:17', '2025-07-02 11:18:17'),
(36, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', '⭕️PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-02 11:18:21', '2025-07-02 11:18:21'),
(37, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', '⭕️PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-02 11:18:22', '2025-07-02 11:18:22'),
(38, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', '⭕️PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-02 11:24:20', '2025-07-02 11:24:20'),
(39, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', '⭕️PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-02 11:30:39', '2025-07-02 11:30:39'),
(40, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', '⭕️PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-02 11:30:48', '2025-07-02 11:30:48'),
(41, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', '⭕️PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-02 11:30:49', '2025-07-02 11:30:49'),
(42, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', '⭕️PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-02 11:34:03', '2025-07-02 11:34:03'),
(43, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', '⭕️PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-02 11:49:38', '2025-07-02 11:49:38'),
(44, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', '⭕️PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-02 12:14:30', '2025-07-02 12:14:30'),
(45, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', '⭕️PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-02 12:24:53', '2025-07-02 12:24:53'),
(46, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', 'PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-02 12:30:25', '2025-07-02 12:30:25'),
(47, 'Rodízio Maravilha', NULL, 'rodiziomaravilha@gmail.com', 'PRESTAÇÃO DE SERVIÇO\r\nubra a autêntica experiência de rodízio em nossa empresa! 😋 RESERVA JÁ.', '943 175 568', '00000', NULL, '2025-07-02 12:44:40', '2025-07-02 12:44:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

CREATE TABLE `fotos` (
  `idImg` int(11) NOT NULL,
  `nomeImg` varchar(200) NOT NULL,
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
-- Extraindo dados da tabela `fotos`
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
(71, 'ana3m7.jpg', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcao`
--

CREATE TABLE `funcao` (
  `idFuncao` int(11) NOT NULL,
  `nomeFuncao` varchar(30) NOT NULL,
  `descricaoFuncao` varchar(100) NOT NULL,
  `idCargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `funcao`
--

INSERT INTO `funcao` (`idFuncao`, `nomeFuncao`, `descricaoFuncao`, `idCargo`) VALUES
(1, 'Gestor', 'Gestor do negocio', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
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
  `_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`idFun`, `idEsp`, `id`, `nomeFun`, `telefoneFun`, `emailFun`, `dataNascFun`, `moradaFun`, `dataIngreFun`, `updated_at`, `created_at`, `_token`) VALUES
(1, 1, 4, 'Victor Reis', '929402020', 'victor@piluka.com', '1973-11-03', 'Morro Bento', '2010-05-05', '2025-04-15 07:01:13', NULL, NULL),
(2, 2, 3, 'Paulo Bartolomeu', '929402027', 'mrx@piluka.com', '1999-04-19', 'Morro Bento\r\n', '2023-11-02', NULL, NULL, NULL),
(7, NULL, 5, 'Edvaldo Edvaldo', '998 220 157', 'edvaldotransdiva@piluka.com', '1999-07-15', 'futungo', '2025-07-02', '2025-07-02 08:19:50', '2025-07-02 08:19:50', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_12_16_181244_add_tipo_to_users_table', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
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
-- Estrutura da tabela `planos`
--

CREATE TABLE `planos` (
  `idPla` int(11) NOT NULL,
  `numConv` varchar(5) NOT NULL,
  `precoPla` varchar(50) NOT NULL,
  `idEsp` int(11) NOT NULL,
  `idServ` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `planos`
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
-- Estrutura da tabela `provincia`
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
-- Estrutura da tabela `reservas`
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
-- Extraindo dados da tabela `reservas`
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
-- Estrutura da tabela `servicos`
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
-- Extraindo dados da tabela `servicos`
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
(28, 'Rodízio Maravilha', '943 175 568', NULL, 33, 2, 'Comida, rodizio.', 'rod.jpg', 11, '2025-07-02 12:56:49', '2025-07-02 12:44:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessions`
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
-- Extraindo dados da tabela `sessions`
--

INSERT INTO `sessions` (`idSession`, `TimeOfLogin`, `Date`, `payload`, `last_activity`, `field list`, `user_id`, `ip_address`, `user_agent`) VALUES
(1, '2024-12-16 17:16:27', '2024-12-16', '', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessoes`
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
-- Extraindo dados da tabela `sessoes`
--

INSERT INTO `sessoes` (`idSessao`, `TimeOfLogin`, `Date`, `payload`, `last_activity`, `field list`, `user_id`, `ip_address`, `user_client`, `updated_at`, `created_at`) VALUES
(1, '2025-06-10 17:16:31', '2025-06-10', NULL, NULL, NULL, 3, '2c0f:f888:a980:1951:8933:a75f:13e2:4dd6', NULL, '2025-06-10 17:16:31', '2025-06-10 17:16:31'),
(2, '2025-06-13 06:08:41', '2025-06-13', NULL, NULL, NULL, 3, '41.63.179.79', NULL, '2025-06-13 06:08:41', '2025-06-13 06:08:41'),
(3, '2025-06-17 07:53:00', '2025-06-17', NULL, NULL, NULL, 3, '127.0.0.1', NULL, '2025-06-17 07:53:01', '2025-06-17 07:53:01'),
(4, '2025-06-19 11:07:34', '2025-06-19', NULL, NULL, NULL, 3, '127.0.0.1', NULL, '2025-06-19 11:07:34', '2025-06-19 11:07:34'),
(5, '2025-06-19 15:24:50', '2025-06-19', NULL, NULL, NULL, 4, '127.0.0.1', NULL, '2025-06-19 15:24:50', '2025-06-19 15:24:50'),
(6, '2025-06-19 15:38:02', '2025-06-19', NULL, NULL, NULL, 4, '127.0.0.1', NULL, '2025-06-19 15:38:02', '2025-06-19 15:38:02'),
(7, '2025-06-19 15:41:25', '2025-06-19', NULL, NULL, NULL, 3, '127.0.0.1', NULL, '2025-06-19 15:41:25', '2025-06-19 15:41:25'),
(8, '2025-06-19 15:41:47', '2025-06-19', NULL, NULL, NULL, 4, '127.0.0.1', NULL, '2025-06-19 15:41:47', '2025-06-19 15:41:47'),
(9, '2025-06-19 15:46:08', '2025-06-19', NULL, NULL, NULL, 3, '127.0.0.1', NULL, '2025-06-19 15:46:08', '2025-06-19 15:46:08'),
(10, '2025-06-19 15:46:23', '2025-06-19', NULL, NULL, NULL, 3, '127.0.0.1', NULL, '2025-06-19 15:46:23', '2025-06-19 15:46:23'),
(11, '2025-06-19 15:46:37', '2025-06-19', NULL, NULL, NULL, 4, '127.0.0.1', NULL, '2025-06-19 15:46:37', '2025-06-19 15:46:37'),
(12, '2025-06-19 17:34:36', '2025-06-19', NULL, NULL, NULL, 3, '127.0.0.1', NULL, '2025-06-19 17:34:36', '2025-06-19 17:34:36'),
(13, '2025-06-20 09:07:19', '2025-06-20', NULL, NULL, NULL, 4, '127.0.0.1', NULL, '2025-06-20 09:07:19', '2025-06-20 09:07:19'),
(14, '2025-06-20 09:23:19', '2025-06-20', NULL, NULL, NULL, 3, '127.0.0.1', NULL, '2025-06-20 09:23:19', '2025-06-20 09:23:19'),
(15, '2025-06-20 09:25:48', '2025-06-20', NULL, NULL, NULL, 4, '127.0.0.1', NULL, '2025-06-20 09:25:48', '2025-06-20 09:25:48'),
(16, '2025-07-02 08:14:52', '2025-07-02', NULL, NULL, NULL, 3, '127.0.0.1', NULL, '2025-07-02 08:14:52', '2025-07-02 08:14:52'),
(17, '2025-07-02 08:49:03', '2025-07-02', NULL, NULL, NULL, 4, '127.0.0.1', NULL, '2025-07-02 08:49:03', '2025-07-02 08:49:03'),
(18, '2025-07-02 08:53:55', '2025-07-02', NULL, NULL, NULL, 4, '127.0.0.1', NULL, '2025-07-02 08:53:55', '2025-07-02 08:53:55'),
(19, '2025-07-02 08:54:15', '2025-07-02', NULL, NULL, NULL, 3, '127.0.0.1', NULL, '2025-07-02 08:54:15', '2025-07-02 08:54:15'),
(20, '2025-07-02 09:00:15', '2025-07-02', NULL, NULL, NULL, 4, '127.0.0.1', NULL, '2025-07-02 09:00:15', '2025-07-02 09:00:15'),
(21, '2025-07-02 09:04:45', '2025-07-02', NULL, NULL, NULL, 3, '127.0.0.1', NULL, '2025-07-02 09:04:45', '2025-07-02 09:04:45'),
(22, '2025-07-02 11:32:48', '2025-07-02', NULL, NULL, NULL, 5, '127.0.0.1', NULL, '2025-07-02 11:32:49', '2025-07-02 11:32:49'),
(23, '2025-07-02 11:36:04', '2025-07-02', NULL, NULL, NULL, 5, '127.0.0.1', NULL, '2025-07-02 11:36:04', '2025-07-02 11:36:04'),
(24, '2025-07-02 11:50:13', '2025-07-02', NULL, NULL, NULL, 3, '127.0.0.1', NULL, '2025-07-02 11:50:13', '2025-07-02 11:50:13'),
(25, '2025-07-17 09:20:14', '2025-07-17', NULL, NULL, NULL, 4, '127.0.0.1', NULL, '2025-07-17 09:20:14', '2025-07-17 09:20:14'),
(26, '2025-07-17 09:20:39', '2025-07-17', NULL, NULL, NULL, 5, '127.0.0.1', NULL, '2025-07-17 09:20:39', '2025-07-17 09:20:39'),
(27, '2025-07-17 09:26:41', '2025-07-17', NULL, NULL, NULL, 4, '127.0.0.1', NULL, '2025-07-17 09:26:41', '2025-07-17 09:26:41'),
(28, '2025-07-17 09:27:22', '2025-07-17', NULL, NULL, NULL, 5, '127.0.0.1', NULL, '2025-07-17 09:27:22', '2025-07-17 09:27:22'),
(29, '2025-09-05 18:04:15', '2025-09-05', NULL, NULL, NULL, 3, '127.0.0.1', NULL, '2025-09-05 18:04:15', '2025-09-05 18:04:15'),
(30, '2025-09-05 18:05:15', '2025-09-05', NULL, NULL, NULL, 4, '127.0.0.1', NULL, '2025-09-05 18:05:15', '2025-09-05 18:05:15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
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
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `_token`, `created_at`, `updated_at`, `tipo`, `_method`) VALUES
(1, 'Sofia Luis', 'sof@piluka.com', NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL, '2025-02-27 15:55:26', 'Gerente', ''),
(2, 'sergio Reis', 'ser@piluka.com', NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, 'Admin', ''),
(3, 'Paulo Bartolomeu', 'mrx@piluka.com', NULL, '202cb962ac59075b964b07152d234b70', 'ctj22L3VDHMw7Z6VLKc7suFTCtJ1EaGxaWGeNDDM', NULL, '2025-01-09 20:53:04', 'Admin', 'PUT'),
(4, 'Victor Reis', 'victor@piluka.com', NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL, '2025-03-24 10:59:49', 'Gerente', ''),
(5, 'Edvaldo Edvaldo', 'edvaldotransdiva@piluka.com', NULL, '202cb962ac59075b964b07152d234b70', NULL, '2025-07-02 08:19:50', '2025-07-02 08:19:50', 'Gerente', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsu` int(11) NOT NULL,
  `nomeUsu` varchar(40) NOT NULL,
  `emailUsu` varchar(40) NOT NULL,
  `senhaUsu` varchar(255) NOT NULL,
  `tipoUsu` enum('Admin','Gerente','Funcionario','Fornecedor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsu`, `nomeUsu`, `emailUsu`, `senhaUsu`, `tipoUsu`) VALUES
(1, 'Sofia Luis', 'sof@piluka.com', '202cb962ac59075b964b07152d234b70', 'Funcionario'),
(2, 'sergio Reis', 'ser@piluka.com', '202cb962ac59075b964b07152d234b70', 'Admin'),
(3, 'Paulo Epalanga', 'mrx@piluka.com', '202cb962ac59075b964b07152d234b70', 'Admin'),
(4, 'Victor Reis', 'victor@piluka.com', '202cb962ac59075b964b07152d234b70', 'Gerente');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`idCargo`),
  ADD UNIQUE KEY `idFun` (`idFun`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCat`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCli`);

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idCom`);

--
-- Índices para tabela `espacos`
--
ALTER TABLE `espacos`
  ADD PRIMARY KEY (`idEsp`);

--
-- Índices para tabela `eventos`
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
-- Índices para tabela `eventosrealizados`
--
ALTER TABLE `eventosrealizados`
  ADD PRIMARY KEY (`idEve`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`idFor`);

--
-- Índices para tabela `fotos`
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
-- Índices para tabela `funcao`
--
ALTER TABLE `funcao`
  ADD PRIMARY KEY (`idFuncao`),
  ADD UNIQUE KEY `idCargo` (`idCargo`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`idFun`),
  ADD KEY `funcionario_espaco` (`idEsp`),
  ADD KEY `funcionario_user` (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `planos`
--
ALTER TABLE `planos`
  ADD PRIMARY KEY (`idPla`),
  ADD KEY `idEsp` (`idEsp`),
  ADD KEY `planos_servicos` (`idServ`);

--
-- Índices para tabela `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`idProv`);

--
-- Índices para tabela `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idRes`),
  ADD KEY `reserva_espaco` (`idEsp`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`idServ`),
  ADD KEY `idFor` (`idFor`),
  ADD KEY `idCat` (`idCat`),
  ADD KEY `servicos_ibfk_3` (`idEsp`);

--
-- Índices para tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`idSession`);

--
-- Índices para tabela `sessoes`
--
ALTER TABLE `sessoes`
  ADD PRIMARY KEY (`idSessao`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsu`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `idCargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idCom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `espacos`
--
ALTER TABLE `espacos`
  MODIFY `idEsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `eventos`
--
ALTER TABLE `eventos`
  MODIFY `idAgen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `eventosrealizados`
--
ALTER TABLE `eventosrealizados`
  MODIFY `idEve` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `idFor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `idImg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de tabela `funcao`
--
ALTER TABLE `funcao`
  MODIFY `idFuncao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `idFun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `planos`
--
ALTER TABLE `planos`
  MODIFY `idPla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `provincia`
--
ALTER TABLE `provincia`
  MODIFY `idProv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `reservas`
--
ALTER TABLE `reservas`
  MODIFY `idRes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `idServ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `sessions`
--
ALTER TABLE `sessions`
  MODIFY `idSession` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sessoes`
--
ALTER TABLE `sessoes`
  MODIFY `idSessao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cargos`
--
ALTER TABLE `cargos`
  ADD CONSTRAINT `cargos_ibfk_1` FOREIGN KEY (`idFun`) REFERENCES `funcionarios` (`idFun`);

--
-- Limitadores para a tabela `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `espaco_plano_ibfk_3` FOREIGN KEY (`idPla`) REFERENCES `planos` (`idPla`) ON UPDATE SET NULL,
  ADD CONSTRAINT `eventos_clientes` FOREIGN KEY (`idCli`) REFERENCES `clientes` (`idCli`),
  ADD CONSTRAINT `funcionario_eventos` FOREIGN KEY (`idFun`) REFERENCES `funcionarios` (`idFun`),
  ADD CONSTRAINT `reservas_eventos` FOREIGN KEY (`idRes`) REFERENCES `reservas` (`idRes`);

--
-- Limitadores para a tabela `fotos`
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
-- Limitadores para a tabela `funcao`
--
ALTER TABLE `funcao`
  ADD CONSTRAINT `funcao_ibfk_1` FOREIGN KEY (`idCargo`) REFERENCES `cargos` (`idCargo`);

--
-- Limitadores para a tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `funcionario_espaco` FOREIGN KEY (`idEsp`) REFERENCES `espacos` (`idEsp`),
  ADD CONSTRAINT `funcionario_user` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `planos`
--
ALTER TABLE `planos`
  ADD CONSTRAINT `planos_ibfk_1` FOREIGN KEY (`idEsp`) REFERENCES `espacos` (`idEsp`),
  ADD CONSTRAINT `planos_servicos` FOREIGN KEY (`idServ`) REFERENCES `servicos` (`idServ`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reserva_espaco` FOREIGN KEY (`idEsp`) REFERENCES `espacos` (`idEsp`);

--
-- Limitadores para a tabela `servicos`
--
ALTER TABLE `servicos`
  ADD CONSTRAINT `servicos_ibfk_1` FOREIGN KEY (`idFor`) REFERENCES `fornecedores` (`idFor`) ON DELETE NO ACTION,
  ADD CONSTRAINT `servicos_ibfk_2` FOREIGN KEY (`idCat`) REFERENCES `categorias` (`idCat`) ON DELETE NO ACTION,
  ADD CONSTRAINT `servicos_ibfk_3` FOREIGN KEY (`idEsp`) REFERENCES `espacos` (`idEsp`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Banco de dados: `parks_and_recreation`
--
CREATE DATABASE IF NOT EXISTS `parks_and_recreation` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `parks_and_recreation`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `employee_demographics`
--

CREATE TABLE `employee_demographics` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `employee_demographics`
--

INSERT INTO `employee_demographics` (`employee_id`, `first_name`, `last_name`, `age`, `gender`, `birth_date`) VALUES
(1, 'Leslie', 'Knope', 44, 'Female', '1979-09-25'),
(3, 'Tom', 'Haverford', 36, 'Male', '1987-03-04'),
(4, 'April', 'Ludgate', 29, 'Female', '1994-03-27'),
(5, 'Jerry', 'Gergich', 61, 'Male', '1962-08-28'),
(6, 'Donna', 'Meagle', 46, 'Female', '1977-07-30'),
(7, 'Ann', 'Perkins', 35, 'Female', '1988-12-01'),
(8, 'Chris', 'Traeger', 43, 'Male', '1980-11-11'),
(9, 'Ben', 'Wyatt', 38, 'Male', '1985-07-26'),
(10, 'Andy', 'Dwyer', 34, 'Male', '1989-03-25'),
(11, 'Mark', 'Brendanawicz', 40, 'Male', '1983-06-14'),
(12, 'Craig', 'Middlebrooks', 37, 'Male', '1986-07-27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `employee_salary`
--

CREATE TABLE `employee_salary` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `ocupation` varchar(50) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `employee_salary`
--

INSERT INTO `employee_salary` (`employee_id`, `first_name`, `last_name`, `ocupation`, `salary`, `dept_id`) VALUES
(1, 'Leslie', 'Knope', 'Deputy Director of Parks and Recreation', 75000, 1),
(2, 'Ron', 'Swanson', 'Director of Parks and Recreation', 70000, 1),
(3, 'Tom', 'Haverford', 'Entrepreneur', 50000, 1),
(4, 'April', 'Ludgate', 'Assistant to the Director of Parks and Recreation', 25000, 1),
(5, 'Jerry', 'Gergich', 'Office Manager', 50000, 1),
(6, 'Donna', 'Meagle', 'Office Manager', 60000, 1),
(7, 'Ann', 'Perkins', 'Nurse', 55000, 4),
(8, 'Chris', 'Traeger', 'City Manager', 90000, 3),
(9, 'Ben', 'Wyatt', 'State Auditor', 70000, 6),
(10, 'Andy', 'Dwyer', 'Shoe Shiner and Musician', 20000, NULL),
(11, 'Mark', 'Brendanawicz', 'City Planner', 57000, 3),
(12, 'Craig', 'Middlebrooks', 'Parks Director', 65000, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `parks_departaments`
--

CREATE TABLE `parks_departaments` (
  `departament_id` int(11) NOT NULL,
  `departament_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `parks_departaments`
--

INSERT INTO `parks_departaments` (`departament_id`, `departament_name`) VALUES
(1, 'Parks and Recreation'),
(2, 'Animal Control'),
(3, 'Public Works'),
(4, 'Healthcare'),
(5, 'Library'),
(6, 'Finance');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `employee_demographics`
--
ALTER TABLE `employee_demographics`
  ADD PRIMARY KEY (`employee_id`);

--
-- Índices para tabela `parks_departaments`
--
ALTER TABLE `parks_departaments`
  ADD PRIMARY KEY (`departament_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `parks_departaments`
--
ALTER TABLE `parks_departaments`
  MODIFY `departament_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bd_piluka\",\"table\":\"planos\"},{\"db\":\"bd_piluka\",\"table\":\"espacos\"},{\"db\":\"bd_piluka\",\"table\":\"servicos\"},{\"db\":\"bd_piluka\",\"table\":\"funcionarios\"},{\"db\":\"bd_piluka\",\"table\":\"users\"},{\"db\":\"bd_piluka\",\"table\":\"usuarios\"},{\"db\":\"parks_and_recreation\",\"table\":\"employee_demographics\"},{\"db\":\"parks_and_recreation\",\"table\":\"employee_salary\"},{\"db\":\"bd_piluka\",\"table\":\"funcao\"},{\"db\":\"bd_piluka\",\"table\":\"migrations\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-09-05 18:06:08', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\",\"NavigationWidth\":232}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
