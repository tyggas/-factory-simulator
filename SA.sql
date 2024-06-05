-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.27-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para sa
DROP DATABASE IF EXISTS `sa`;
CREATE DATABASE IF NOT EXISTS `sa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `sa`;

-- Copiando estrutura para tabela sa.alerta
DROP TABLE IF EXISTS `alerta`;
CREATE TABLE IF NOT EXISTS `alerta` (
  `id_alerta` int(11) NOT NULL AUTO_INCREMENT,
  `id_sensor` int(11) NOT NULL,
  `hora_alerta` datetime NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id_alerta`),
  KEY `id_sensor` (`id_sensor`),
  CONSTRAINT `alerta_ibfk_1` FOREIGN KEY (`id_sensor`) REFERENCES `sensor` (`id_sensor`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela sa.alerta: ~37 rows (aproximadamente)
DELETE FROM `alerta`;
INSERT INTO `alerta` (`id_alerta`, `id_sensor`, `hora_alerta`, `descricao`, `status`) VALUES
	(1, 1, '2024-06-02 09:00:00', 'Temperatura acima do limite', 'Pendente'),
	(2, 3, '2024-06-02 09:05:00', 'Umidade fora do intervalo', 'Resolvido'),
	(3, 5, '2024-06-02 09:10:00', 'pH abaixo do nível ideal', 'Pendente'),
	(4, 7, '2024-06-02 09:15:00', 'Pressão acima do limite', 'Resolvido'),
	(5, 9, '2024-06-02 09:20:00', 'Precisão de corte fora do padrão', 'Pendente'),
	(6, 5, '2023-10-28 01:46:33', 'pH fora do intervalo', 'Pendente'),
	(7, 1, '2024-02-27 11:37:58', 'Temperatura acima do limite', 'Resolvido'),
	(8, 1, '2023-09-02 08:45:07', 'Temperatura acima do limite', 'Resolvido'),
	(9, 9, '2023-07-27 02:19:02', 'Precisão de corte fora do padrão', 'Resolvido'),
	(10, 1, '2024-01-24 08:22:13', 'Temperatura acima do limite', 'Resolvido'),
	(11, 7, '2024-06-03 17:34:22', 'Pressão acima do limite', 'Resolvido'),
	(12, 6, '2023-11-11 22:53:50', 'Temperatura acima do limite', 'Pendente'),
	(13, 5, '2024-01-29 08:00:55', 'pH fora do intervalo', 'Pendente'),
	(14, 1, '2024-02-27 23:42:32', 'Temperatura acima do limite', 'Resolvido'),
	(15, 1, '2023-08-16 10:25:38', 'Temperatura acima do limite', 'Pendente'),
	(16, 10, '2024-02-26 16:20:51', 'Temperatura acima do limite', 'Resolvido'),
	(17, 1, '2023-06-28 11:35:08', 'Temperatura acima do limite', 'Pendente'),
	(18, 9, '2024-02-10 09:05:10', 'Precisão de corte fora do padrão', 'Pendente'),
	(19, 2, '2023-07-21 11:23:24', 'Vibração excessiva', 'Resolvido'),
	(20, 9, '2023-10-15 17:47:57', 'Precisão de corte fora do padrão', 'Resolvido'),
	(21, 10, '2023-11-03 08:03:00', 'Temperatura acima do limite', 'Pendente'),
	(22, 3, '2024-06-05 08:52:57', 'Umidade fora do intervalo', 'Pendente'),
	(23, 9, '2024-06-05 08:52:57', 'Precisão de corte fora do padrão', 'Pendente'),
	(24, 7, '2024-06-05 08:52:57', 'Pressão acima do limite', 'Pendente'),
	(25, 9, '2024-06-05 08:52:57', 'Precisão de corte fora do padrão', 'Resolvido'),
	(26, 7, '2024-06-05 08:52:57', 'Pressão acima do limite', 'Pendente'),
	(27, 2, '2024-06-05 08:52:57', 'Vibração excessiva', 'Pendente'),
	(28, 2, '2024-06-05 08:52:57', 'Vibração excessiva', 'Pendente'),
	(29, 7, '2024-06-05 08:52:57', 'Pressão acima do limite', 'Pendente'),
	(30, 6, '2024-06-05 08:52:57', 'Temperatura acima do limite', 'Pendente'),
	(31, 1, '2024-06-05 08:52:57', 'Temperatura acima do limite', 'Pendente'),
	(32, 10, '2024-06-05 08:52:57', 'Temperatura acima do limite', 'Pendente'),
	(33, 5, '2024-06-05 08:52:57', 'pH fora do intervalo', 'Pendente'),
	(34, 3, '2024-06-05 08:52:57', 'Umidade fora do intervalo', 'Pendente'),
	(35, 2, '2024-06-05 08:52:57', 'Vibração excessiva', 'Resolvido'),
	(36, 3, '2024-06-05 08:52:57', 'Umidade fora do intervalo', 'Pendente'),
	(37, 1, '2024-06-05 08:52:57', 'Temperatura acima do limite', 'Resolvido');

-- Copiando estrutura para tabela sa.manutencao
DROP TABLE IF EXISTS `manutencao`;
CREATE TABLE IF NOT EXISTS `manutencao` (
  `id_manutencao` int(11) NOT NULL AUTO_INCREMENT,
  `id_maquina` int(11) NOT NULL,
  `data_manutencao` date NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `tecnico` varchar(255) NOT NULL,
  PRIMARY KEY (`id_manutencao`),
  KEY `id_maquina` (`id_maquina`),
  CONSTRAINT `manutencao_ibfk_1` FOREIGN KEY (`id_maquina`) REFERENCES `maquina` (`id_maquina`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela sa.manutencao: ~5 rows (aproximadamente)
DELETE FROM `manutencao`;
INSERT INTO `manutencao` (`id_manutencao`, `id_maquina`, `data_manutencao`, `descricao`, `tecnico`) VALUES
	(1, 1, '2023-12-01', 'Troca de peças desgastadas', 'José Silva'),
	(2, 2, '2024-01-15', 'Lubrificação das partes móveis', 'Ana Pereira'),
	(3, 3, '2024-02-20', 'Reparo no sistema de aquecimento', 'Carlos Lima'),
	(4, 4, '2024-03-10', 'Substituição do motor', 'Mariana Souza'),
	(5, 5, '2024-04-25', 'Ajuste da precisão de corte', 'Roberto Oliveira');

-- Copiando estrutura para tabela sa.maquina
DROP TABLE IF EXISTS `maquina`;
CREATE TABLE IF NOT EXISTS `maquina` (
  `id_maquina` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `localizacao` varchar(255) NOT NULL,
  `data_instalacao` date NOT NULL,
  PRIMARY KEY (`id_maquina`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela sa.maquina: ~5 rows (aproximadamente)
DELETE FROM `maquina`;
INSERT INTO `maquina` (`id_maquina`, `nome`, `descricao`, `localizacao`, `data_instalacao`) VALUES
	(1, 'Máquina de Fiação 1', 'Máquina para fiar algodão', 'Setor A', '2022-01-15'),
	(2, 'Máquina de Tecelagem 1', 'Máquina para tecer tecidos', 'Setor B', '2021-05-20'),
	(3, 'Máquina de Tingimento 1', 'Máquina para tingir tecidos', 'Setor C', '2023-03-10'),
	(4, 'Máquina de Acabamento 1', 'Máquina para acabamento final dos tecidos', 'Setor D', '2020-11-05'),
	(5, 'Máquina de Corte 1', 'Máquina para cortar tecidos', 'Setor E', '2022-07-25');

-- Copiando estrutura para tabela sa.monitoramento
DROP TABLE IF EXISTS `monitoramento`;
CREATE TABLE IF NOT EXISTS `monitoramento` (
  `id_monitoramento` int(11) NOT NULL AUTO_INCREMENT,
  `id_sensor` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_monitoramento`),
  KEY `id_sensor` (`id_sensor`),
  CONSTRAINT `monitoramento_ibfk_1` FOREIGN KEY (`id_sensor`) REFERENCES `sensor` (`id_sensor`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela sa.monitoramento: ~176 rows (aproximadamente)
DELETE FROM `monitoramento`;
INSERT INTO `monitoramento` (`id_monitoramento`, `id_sensor`, `timestamp`, `valor`) VALUES
	(1, 1, '2024-06-01 08:00:00', 75.00),
	(2, 2, '2024-06-01 08:00:00', 30.50),
	(3, 3, '2024-06-01 08:00:00', 60.00),
	(4, 4, '2024-06-01 08:00:00', 5.50),
	(5, 5, '2024-06-01 08:00:00', 7.20),
	(6, 6, '2024-06-01 08:00:00', 80.00),
	(7, 7, '2024-06-01 08:00:00', 1000.00),
	(8, 8, '2024-06-01 08:00:00', 4.00),
	(9, 9, '2024-06-01 08:00:00', 0.10),
	(10, 10, '2024-06-01 08:00:00', 85.00),
	(18, 6, '2023-10-23 15:14:46', 28.53),
	(19, 5, '2023-06-06 21:07:29', 8.07),
	(20, 2, '2024-04-13 19:50:50', 8.39),
	(21, 5, '2023-08-06 14:57:39', 0.59),
	(22, 2, '2023-10-30 07:13:39', 3.56),
	(23, 7, '2024-03-10 07:28:25', 1895.25),
	(24, 6, '2023-12-24 20:31:40', 19.10),
	(25, 3, '2024-05-26 21:04:41', 66.82),
	(26, 3, '2023-08-23 11:02:51', 43.95),
	(27, 3, '2023-08-27 23:32:07', 42.17),
	(28, 7, '2024-02-02 05:54:20', 1634.38),
	(29, 9, '2024-02-03 16:26:46', 0.20),
	(30, 9, '2023-07-26 02:49:35', 0.54),
	(31, 1, '2023-07-01 17:57:29', 28.51),
	(32, 5, '2024-05-17 07:33:04', 2.56),
	(33, 9, '2024-01-01 21:23:53', 0.05),
	(34, 5, '2023-08-17 05:16:42', 7.80),
	(35, 9, '2024-05-11 06:15:44', 0.14),
	(36, 2, '2024-05-01 11:07:36', 3.45),
	(37, 7, '2023-07-10 05:12:44', 1873.22),
	(38, 6, '2023-08-07 22:14:26', 34.88),
	(39, 10, '2023-09-15 06:46:07', 29.03),
	(40, 6, '2024-03-10 22:58:37', 33.10),
	(41, 5, '2023-08-02 05:32:33', 1.41),
	(42, 10, '2024-01-02 22:32:41', 24.50),
	(43, 9, '2023-06-16 22:28:04', 0.07),
	(44, 5, '2024-05-18 09:58:05', 11.41),
	(45, 5, '2023-08-31 18:40:16', 0.84),
	(46, 5, '2024-04-10 20:50:15', 8.80),
	(47, 9, '2024-03-10 13:02:42', 0.66),
	(48, 6, '2023-11-12 19:53:38', 21.70),
	(49, 5, '2023-11-15 13:53:27', 1.50),
	(50, 3, '2024-01-09 23:14:41', 68.69),
	(51, 7, '2023-06-26 10:26:43', 1280.00),
	(52, 3, '2024-04-05 01:51:40', 59.45),
	(53, 5, '2023-09-18 00:21:55', 10.28),
	(54, 1, '2023-11-26 19:43:57', 27.48),
	(55, 6, '2024-05-31 07:56:48', 34.72),
	(56, 1, '2023-10-28 05:50:08', 31.58),
	(57, 2, '2024-04-07 20:01:07', 9.57),
	(58, 9, '2023-08-20 09:43:31', 0.52),
	(59, 2, '2023-08-17 06:44:10', 2.90),
	(60, 7, '2024-02-24 14:16:01', 1166.30),
	(61, 6, '2023-07-14 20:55:14', 20.03),
	(62, 3, '2024-02-04 13:40:09', 63.31),
	(63, 7, '2024-02-16 12:56:54', 1214.31),
	(64, 1, '2024-03-14 08:57:28', 21.22),
	(65, 6, '2023-06-20 19:07:37', 27.14),
	(66, 5, '2024-02-18 08:06:25', 8.36),
	(67, 9, '2024-04-01 17:17:53', 0.40),
	(68, 10, '2023-08-19 10:15:19', 21.91),
	(69, 2, '2024-05-24 23:30:37', 9.88),
	(70, 7, '2024-02-06 01:18:52', 1354.75),
	(71, 7, '2024-02-17 01:26:43', 1159.07),
	(72, 1, '2023-11-06 00:04:26', 22.04),
	(73, 6, '2023-11-06 10:53:46', 21.51),
	(74, 3, '2024-03-06 00:36:26', 58.21),
	(75, 3, '2023-07-14 09:05:19', 53.96),
	(76, 5, '2023-12-09 04:41:02', 5.25),
	(77, 9, '2023-08-11 15:30:28', 0.84),
	(78, 9, '2024-04-25 17:34:36', 0.42),
	(79, 10, '2023-10-09 11:46:37', 32.14),
	(80, 7, '2023-10-15 12:00:25', 1985.32),
	(81, 3, '2023-10-25 10:20:32', 53.46),
	(82, 3, '2023-07-25 04:39:27', 40.32),
	(83, 5, '2023-10-27 01:17:49', 3.28),
	(84, 10, '2024-06-05 05:06:15', 33.84),
	(85, 6, '2023-08-10 06:12:10', 28.13),
	(86, 2, '2024-01-28 18:12:23', 2.01),
	(87, 7, '2023-07-25 05:21:03', 1081.32),
	(88, 9, '2023-06-24 11:01:31', 0.07),
	(89, 2, '2023-08-19 06:51:56', 0.34),
	(90, 10, '2023-06-09 16:59:50', 32.06),
	(91, 10, '2024-02-25 02:58:11', 21.57),
	(92, 5, '2024-04-09 00:08:13', 4.50),
	(93, 7, '2024-01-01 09:25:48', 1369.24),
	(94, 10, '2023-09-27 21:20:27', 31.96),
	(95, 7, '2024-03-16 04:37:27', 1822.18),
	(96, 10, '2023-09-01 15:16:05', 24.97),
	(97, 2, '2024-06-05 08:52:56', 3.06),
	(98, 10, '2024-06-05 08:52:56', 34.17),
	(99, 7, '2024-06-05 08:52:56', 1974.27),
	(100, 10, '2024-06-05 08:52:56', 27.43),
	(101, 10, '2024-06-05 08:52:56', 18.86),
	(102, 5, '2024-06-05 08:52:56', 2.01),
	(103, 5, '2024-06-05 08:52:56', 1.70),
	(104, 3, '2024-06-05 08:52:56', 32.72),
	(105, 5, '2024-06-05 08:52:56', 5.13),
	(106, 6, '2024-06-05 08:52:56', 20.04),
	(107, 5, '2024-06-05 08:52:56', 8.05),
	(108, 1, '2024-06-05 08:52:56', 34.52),
	(109, 1, '2024-06-05 08:52:56', 20.19),
	(110, 5, '2024-06-05 08:52:57', 6.10),
	(111, 3, '2024-06-05 08:52:57', 35.40),
	(112, 6, '2024-06-05 08:52:57', 20.85),
	(113, 1, '2024-06-05 08:52:57', 28.15),
	(114, 10, '2024-06-05 08:52:57', 34.14),
	(115, 10, '2024-06-05 08:52:57', 17.52),
	(116, 5, '2024-06-05 08:52:57', 4.17),
	(117, 5, '2024-06-05 08:52:57', 6.43),
	(118, 9, '2024-06-05 08:52:57', 0.93),
	(119, 2, '2024-06-05 08:52:57', 5.91),
	(120, 7, '2024-06-05 08:52:57', 1973.62),
	(121, 7, '2024-06-05 08:52:57', 1372.96),
	(122, 1, '2024-06-05 08:52:57', 22.95),
	(123, 6, '2024-06-05 08:52:57', 29.55),
	(124, 3, '2024-06-05 08:52:57', 55.48),
	(125, 3, '2024-06-05 08:52:57', 44.70),
	(126, 5, '2024-06-05 08:52:57', 10.39),
	(127, 5, '2024-06-05 08:52:57', 4.53),
	(128, 6, '2024-06-05 08:52:57', 26.30),
	(129, 9, '2024-06-05 08:52:57', 0.65),
	(130, 3, '2024-06-05 08:52:57', 37.74),
	(131, 10, '2024-06-05 08:52:57', 28.24),
	(132, 1, '2024-06-05 08:52:57', 30.58),
	(133, 9, '2024-06-05 08:52:57', 0.75),
	(134, 2, '2024-06-05 08:52:57', 6.90),
	(135, 9, '2024-06-05 08:52:57', 0.59),
	(136, 1, '2024-06-05 08:52:57', 18.15),
	(137, 6, '2024-06-05 08:52:57', 29.35),
	(138, 3, '2024-06-05 08:52:57', 38.86),
	(139, 10, '2024-06-05 08:52:57', 34.86),
	(140, 1, '2024-06-05 08:52:57', 33.09),
	(141, 1, '2024-06-05 08:52:57', 27.24),
	(142, 10, '2024-06-05 08:52:57', 26.52),
	(143, 9, '2024-06-05 08:52:57', 0.11),
	(144, 7, '2024-06-05 08:52:57', 1764.13),
	(145, 1, '2024-06-05 08:52:57', 17.86),
	(146, 2, '2024-06-05 08:52:57', 3.87),
	(147, 5, '2024-06-05 08:52:57', 5.28),
	(148, 3, '2024-06-05 08:52:57', 49.42),
	(149, 3, '2024-06-05 08:52:57', 36.23),
	(150, 3, '2024-06-05 08:52:57', 56.85),
	(151, 5, '2024-06-05 08:52:57', 1.72),
	(152, 6, '2024-06-05 08:52:57', 20.03),
	(153, 6, '2024-06-05 08:52:57', 21.63),
	(154, 6, '2024-06-05 08:52:57', 30.82),
	(155, 7, '2024-06-05 08:52:57', 1071.00),
	(156, 6, '2024-06-05 08:52:57', 31.71),
	(157, 2, '2024-06-05 08:52:57', 8.23),
	(158, 10, '2024-06-05 08:52:57', 30.49),
	(159, 9, '2024-06-05 08:52:57', 0.94),
	(160, 3, '2024-06-05 08:52:57', 61.68),
	(161, 6, '2024-06-05 08:52:57', 23.03),
	(162, 1, '2024-06-05 08:52:57', 27.34),
	(163, 3, '2024-06-05 08:52:57', 41.84),
	(164, 2, '2024-06-05 08:52:57', 2.40),
	(165, 9, '2024-06-05 08:52:57', 0.65),
	(166, 2, '2024-06-05 08:52:57', 4.63),
	(167, 9, '2024-06-05 08:52:57', 0.80),
	(168, 1, '2024-06-05 08:52:57', 23.03),
	(169, 10, '2024-06-05 08:52:57', 19.39),
	(170, 6, '2024-06-05 08:52:57', 31.12),
	(171, 2, '2024-06-05 08:52:57', 6.96),
	(172, 10, '2024-06-05 08:52:57', 25.75),
	(173, 3, '2024-06-05 08:52:57', 64.24),
	(174, 9, '2024-06-05 08:52:57', 0.21),
	(175, 6, '2024-06-05 08:52:57', 23.84),
	(176, 1, '2024-06-05 08:52:57', 18.92),
	(177, 10, '2024-06-05 08:52:57', 29.49),
	(178, 10, '2024-06-05 08:52:57', 15.47),
	(179, 2, '2024-06-05 08:52:57', 2.72),
	(180, 7, '2024-06-05 08:52:57', 1871.09),
	(181, 2, '2024-06-05 08:52:57', 0.57),
	(182, 9, '2024-06-05 08:52:57', 0.79),
	(183, 5, '2024-06-05 08:52:57', 11.53);

-- Copiando estrutura para tabela sa.sensor
DROP TABLE IF EXISTS `sensor`;
CREATE TABLE IF NOT EXISTS `sensor` (
  `id_sensor` int(11) NOT NULL AUTO_INCREMENT,
  `id_maquina` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `unidade` varchar(255) NOT NULL,
  `data_instalacao` date NOT NULL,
  PRIMARY KEY (`id_sensor`),
  KEY `id_maquina` (`id_maquina`),
  CONSTRAINT `sensor_ibfk_1` FOREIGN KEY (`id_maquina`) REFERENCES `maquina` (`id_maquina`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela sa.sensor: ~10 rows (aproximadamente)
DELETE FROM `sensor`;
INSERT INTO `sensor` (`id_sensor`, `id_maquina`, `tipo`, `unidade`, `data_instalacao`) VALUES
	(1, 1, 'Temperatura', 'Celsius', '2022-01-16'),
	(2, 1, 'Vibração', 'Hertz', '2022-01-16'),
	(3, 2, 'Umidade', 'Percentual', '2021-05-21'),
	(4, 2, 'Velocidade', 'Metros por segundo', '2021-05-21'),
	(5, 3, 'pH', 'pH', '2023-03-11'),
	(6, 3, 'Temperatura', 'Celsius', '2023-03-11'),
	(7, 4, 'Pressão', 'Pascal', '2020-11-06'),
	(8, 4, 'Velocidade', 'Metros por segundo', '2020-11-06'),
	(9, 5, 'Precisão de Corte', 'Milímetros', '2022-07-26'),
	(10, 5, 'Temperatura', 'Celsius', '2022-07-26');

-- Copiando estrutura para tabela sa.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nivel_permissao` int(11) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela sa.usuario: ~3 rows (aproximadamente)
DELETE FROM `usuario`;
INSERT INTO `usuario` (`username`, `password`, `nivel_permissao`) VALUES
	('admin', 'senha123', 8),
	('operador1', 'senha456', 5),
	('tecnico1', 'senha789', 6);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
