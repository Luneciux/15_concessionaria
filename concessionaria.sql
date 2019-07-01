-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Jul-2019 às 02:38
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `concessionaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `COD` int(11) NOT NULL,
  `NOME_1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `NOME_2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CPF` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `RG` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `SENHA` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CNH` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CIDADE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ESTADO` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `FOTO` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `DT_NASC` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

CREATE TABLE `config` (
  `NOME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `SLOGAN` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `FOTO` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CIDADE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `COD` int(11) NOT NULL,
  `ANO_CRIACAO` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `NOME_PROPRIETARIO` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `TELEFONE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ESTADO` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`NOME`, `SLOGAN`, `FOTO`, `CIDADE`, `COD`, `ANO_CRIACAO`, `NOME_PROPRIETARIO`, `EMAIL`, `TELEFONE`, `ESTADO`) VALUES
('Concessionaria', 'concessionaria genérica', '80ffc26cac90827917d797b69f5fb52aa8619bd6.png', 'cidade A', 1, '0001-01-10', 'Cliente', 'cliente email', 'obs: sempre usar padrao, (xx) x xxxx-xxxx', 'estado A');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `COD` int(11) NOT NULL,
  `SENHA` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `RG` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CPF` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `NOME` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `NUMERO_PIS` int(11) DEFAULT NULL,
  `DT_ADMISSAO` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `FOTO` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `TIPO` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `NIVEL` int(11) NOT NULL,
  `EMAIL` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`COD`, `SENHA`, `RG`, `LOGIN`, `CPF`, `NOME`, `NUMERO_PIS`, `DT_ADMISSAO`, `FOTO`, `TIPO`, `NIVEL`, `EMAIL`) VALUES
(47, 'b46ed916053cdadc7a2d2b3b3e725933', '1', 'admin', '1', '1', 1, '2019-06-12', '680e79520ac734debe1d2b965250be73f98b9a2c.jpg', NULL, 1, '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `site`
--

CREATE TABLE `site` (
  `COR_BG` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `COR_NAV` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `COD` int(1) NOT NULL,
  `COR_FOT` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `COR_BTN` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `COR_MODAL_BG` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `COR_PRESET` int(2) DEFAULT NULL,
  `COR_BASE` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `site`
--

INSERT INTO `site` (`COR_BG`, `COR_NAV`, `COD`, `COR_FOT`, `COR_BTN`, `COR_MODAL_BG`, `COR_PRESET`, `COR_BASE`) VALUES
('#009B9D', '#02A7CC', 1, '#089AD5', '#71838A', '#7DF1F1', 0, '#00CED1'),
('#BF9200', '#E1CD03', 2, '#EFEF1A', '#71838A', '#F1DB39', 0, '#FFC300'),
('#50449A', '#B175FF', 3, '#565FD6', '#71838A', '#7970E2', 0, '#6A5ACD'),
('#BF4F87', '#ED83F8', 4, '#E64B83', '#71838A', '#FF81E6', 0, '#FF69B4'),
('#A50F28', '#FF3A27', 5, '#FF3A27', '#71838A', '#DE4848', 1, '#DC1435'),
('#2D8655', '#22864F', 6, '#42C678', '#71838A', '#63CEA1', 0, '#3CB371'),
('#314FA9', '#384ABD', 7, '#3C47E7', '#71838A', '#5C65EB', 0, '#4169E1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `slider`
--

CREATE TABLE `slider` (
  `COD` int(11) NOT NULL,
  `FOTO` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `COD` int(11) NOT NULL,
  `MODELO` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ANO` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `FABRICANTE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `COR` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CHASSI` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `PRECO` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `DT_FABRICACAO` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `FOTO` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`COD`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`COD`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`COD`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`COD`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`COD`);

--
-- Indexes for table `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`COD`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `COD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `COD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `COD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `COD` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `COD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `COD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
