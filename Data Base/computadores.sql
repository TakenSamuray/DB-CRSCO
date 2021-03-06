-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Dez-2021 às 16:11
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `computadores`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_computadores`
--

CREATE TABLE `tbl_computadores` (
  `id_pc` varchar(10) NOT NULL,
  `nome_pc` varchar(15) NOT NULL,
  `num_serie` varchar(30) DEFAULT NULL,
  `modelo` varchar(40) DEFAULT NULL,
  `sistema_operacional` varchar(100) DEFAULT NULL,
  `setor` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_computadores`
--

INSERT INTO `tbl_computadores` (`id_pc`, `nome_pc`, `num_serie`, `modelo`, `sistema_operacional`, `setor`) VALUES
('0621103634', 'SMSCRSCOC2', '1A266SC17', 'CORE2DUO', 'WIN 10 - 32BITS', 23),
('0621104036', 'SMSCRSCOC140', '1A4232L66', 'SLIM I5', 'WIN 10 - 64BITS', 9),
('0621112127', 'SMSCRSCOC85', '3714612', 'PENTIUM', 'WIN 7', 21),
('0621112230', 'SMSCRSCOC144', '1A181553C', 'CORE2DUO', 'WIN 10', 20),
('0621113043', 'SMSCRSCOC112', '1A5755B0V', 'D550', 'WIN 7 - 32BITS', 19),
('0621113627', 'SMSCRSCOC193', '1A9747N5CJ', 'D570', 'WIN 10 - 64BITS', 14),
('0621113858', 'SMSCRSCOC183', '4A181PJ7M', 'D580', 'WIN 10 - 64BITS', 12),
('0621114001', 'SMSCRSCOC41', '1A975009G', 'D570', 'WIN 7 - 32BITS', 13),
('0621114437', 'SMSCRSCOC45', NULL, NULL, 'WIN 7 - 32BITS', 10),
('0621114613', 'SMSCRSCOC99', '1A974YM3Z', 'D570', 'WIN 10 - 64BITS', 8),
('0621114755', 'SMSCRSCOC135', '1A5754V66', 'D550', 'WIN 10 - 32BITS', 7),
('0621115139', 'SMSCRSCOC14', '1A247T255', 'CORE2DUO', 'WIN 10', 4),
('0621115222', 'SMSCRSCOC28', '1A974YV8F', 'D570', 'WIN 7', 5),
('0621115345', 'SMSCRSCOC48', '4A214HL7R', 'D580', 'WIN 8 - 64BITS', 6),
('0621115458', 'SMSCRSCOC58', '3714607', 'PENTIUM', 'WIN 10 - 32BITS', 3),
('0621115538', 'SMSCRSCOC124', '1A1815699', 'CORE2DUO', 'WIN 10', 1),
('0621115641', 'SMSCRSCOC186', '1AC59M11Z', 'D570', 'WIN 7', 2),
('0621123355', 'SMSCRSCOC3', 'FSQV173', 'DELL D11S', 'WIN 10 - 64BITS', 15),
('0621123357', 'SMSCRSCOC4', '1A266R834', 'CORE2DUO', NULL, 23),
('0621123358', 'SMSCRSCOC10', '1A266RD5T', 'CORE2DUO', 'WIN 7 - 32BITS', 23),
('0621123359', 'SMSCRSCOC111', 'DPC0Q33', 'DELL D11S', 'WIN 10 - 64BITS', 23),
('0621124135', 'SMSCRSCOC108', '4A1816R46', 'D580', 'WIN 10 - 64BITS', 15),
('0621124143', 'SMSCRSCOC156', '1A247T09J', 'CORE2DUO', 'WIN 10 - 32BITS', 15),
('0621124428', 'SMSCRSCOC5', '1A266RQ5W', 'CORE2DUO', 'WIN10 - 32BITS', 20),
('0621124439', 'SMSCRSCOC29', 'CWPWJN1', 'DELL D11S', 'WIN 7 - 64BITS', 20),
('0621124640', 'SMSCRSCOC15', '1A975004R', 'D570', 'WIN 7 - 32BITS', 21),
('mmaaHHMMss', 'SMSCRSCOCXX', 'xxxxxxx', 'SLIM i5', 'WIN 7 - 32BITS', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_setor`
--

CREATE TABLE `tbl_setor` (
  `id_setor` int(10) UNSIGNED NOT NULL,
  `nome_setor` varchar(30) NOT NULL,
  `andar` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_setor`
--

INSERT INTO `tbl_setor` (`id_setor`, `nome_setor`, `andar`) VALUES
(1, 'DESENVOLVIMENTO', 'TÉRREO'),
(2, 'ESCOLA', 'TÉRREO'),
(3, 'SALA 1', 'TÉRREO'),
(4, 'Administração', '1° Andar'),
(5, 'EQUIP. TÉCNICA', '1° Andar'),
(6, 'GABINETE', '1° Andar'),
(7, 'CEINFO CRS-OESTE', '2° Andar'),
(8, 'CONTRATOS', '2° Andar'),
(9, 'INFORMÁTICA', '2° Andar'),
(10, 'JURÍDICO', '2° Andar'),
(11, 'DIV. PESSOAS', '3° Andar'),
(12, 'REGULAÇÃO', '3° Andar'),
(13, 'RH', '3° Andar'),
(14, 'CONTABILIDADE', '4° Andar'),
(15, 'DAF', '4° Andar'),
(16, 'PATRIMÔNIO', '4° Andar'),
(17, 'SAMU', '4° Andar'),
(18, 'SALA REUNIÃO', '5° Andar'),
(19, 'SUPERVISÃO TÉCNICA LA/PI', '5° Andar'),
(20, 'DRUVIS', '6° Andar'),
(21, 'OUVIDORIA', '6° Andar'),
(22, 'SUPERVISÃO SUVIS LA/PI', '6° Andar'),
(23, 'V. EPIDEMIO', '6° Andar');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbl_computadores`
--
ALTER TABLE `tbl_computadores`
  ADD PRIMARY KEY (`id_pc`),
  ADD UNIQUE KEY `nome_pc` (`nome_pc`),
  ADD KEY `setor` (`setor`);

--
-- Índices para tabela `tbl_setor`
--
ALTER TABLE `tbl_setor`
  ADD PRIMARY KEY (`id_setor`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbl_setor`
--
ALTER TABLE `tbl_setor`
  MODIFY `id_setor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tbl_computadores`
--
ALTER TABLE `tbl_computadores`
  ADD CONSTRAINT `tbl_computadores_ibfk_1` FOREIGN KEY (`setor`) REFERENCES `tbl_setor` (`id_setor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
