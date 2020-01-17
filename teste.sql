-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 17-Jan-2020 às 10:42
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
CREATE TABLE IF NOT EXISTS `fornecedores` (
  `nome` varchar(20) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`nome`, `descricao`, `id`) VALUES
('ioi.de', 'wqwqwwqwwqwqwqwq', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

DROP TABLE IF EXISTS `servicos`;
CREATE TABLE IF NOT EXISTS `servicos` (
  `nome` varchar(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `id_servico` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_servico`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`nome`, `descricao`, `id_servico`) VALUES
('ed', 'ded', 1),
('unhas', 'ola\r\n', 2),
('pes', 'fazer coise dos pes', 3),
('pernas', 'asasasas', 4),
('tyesteeee', 'fazersasas', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicoutilizador`
--

DROP TABLE IF EXISTS `servicoutilizador`;
CREATE TABLE IF NOT EXISTS `servicoutilizador` (
  `id_servicoutilizador` int(11) NOT NULL AUTO_INCREMENT,
  `id_servico` int(11) DEFAULT NULL,
  `id_utilizador` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_servicoutilizador`),
  KEY `id_servico` (`id_servico`),
  KEY `id_utilizador` (`id_utilizador`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `servicoutilizador`
--

INSERT INTO `servicoutilizador` (`id_servicoutilizador`, `id_servico`, `id_utilizador`) VALUES
(1, 1, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizadores`
--

DROP TABLE IF EXISTS `utilizadores`;
CREATE TABLE IF NOT EXISTS `utilizadores` (
  `nome` varchar(20) NOT NULL,
  `idade` int(11) NOT NULL,
  `palavra_passe` int(11) NOT NULL,
  `id_utilizador` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_utilizador`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `utilizadores`
--

INSERT INTO `utilizadores` (`nome`, `idade`, `palavra_passe`, `id_utilizador`) VALUES
('joao', 19, 123, 5),
('rita', 22, 123, 6),
('miahil', 12, 123, 8),
('dwdwd', 1212, 11212, 9);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `servicoutilizador`
--
ALTER TABLE `servicoutilizador`
  ADD CONSTRAINT `servicoutilizador_ibfk_1` FOREIGN KEY (`id_servico`) REFERENCES `servicos` (`id_servico`),
  ADD CONSTRAINT `servicoutilizador_ibfk_2` FOREIGN KEY (`id_utilizador`) REFERENCES `utilizadores` (`id_utilizador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
