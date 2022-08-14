-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Ago-2022 às 00:42
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `crud_asp_net_6_v2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE `contatos` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(250) NOT NULL,
  `Sexo` enum('Masculino','Feminino') NOT NULL,
  `Data` date NOT NULL,
  `Cidade` varchar(250) NOT NULL,
  `Codcontato` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`Id`, `Nome`, `Sexo`, `Data`, `Cidade`, `Codcontato`) VALUES
(9, 'Thiago', 'Masculino', '1987-01-26', 'Bicas', '32988775514'),
(10, 'Rodrigo', 'Masculino', '1989-01-15', 'Bicas', '32988896330'),
(11, 'Larisa', 'Feminino', '2005-01-22', 'Bicas', '32991956334'),
(12, 'Fabio', 'Masculino', '1991-02-26', 'Bicas', '32985966426'),
(13, 'Fabricia', 'Feminino', '1988-01-18', 'Bicas', '32988773314'),
(14, 'Icaro', 'Masculino', '2013-01-12', 'Juiz de fora', '32984059633'),
(15, 'Lais', 'Feminino', '1996-01-06', 'Juiz de fora', '32985913566'),
(16, 'Thiago', 'Feminino', '1995-01-17', 'Juiz de fora', '32988959135'),
(17, 'Bruno', 'Masculino', '1996-02-18', 'Juiz de fora', '32985913566'),
(18, 'Pamela', 'Feminino', '1995-02-16', 'Juiz de fora', '32988663996'),
(19, 'Rodolfo', 'Masculino', '1990-04-16', 'Juiz de fora', '32988639299'),
(20, 'Beatris', 'Feminino', '1995-04-24', 'Juiz de fora', '32991356627');

-- --------------------------------------------------------

--
-- Estrutura da tabela `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20220813210109_Criacao-Inicial', '6.0.8');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
