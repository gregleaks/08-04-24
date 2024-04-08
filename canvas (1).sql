-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/04/2024 às 15:24
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `canvas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `beneficios`
--

CREATE TABLE `beneficios` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_projeto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `custos`
--

CREATE TABLE `custos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_projeto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipes`
--

CREATE TABLE `equipes` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_projeto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupos_de_entrega`
--

CREATE TABLE `grupos_de_entrega` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_projeto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `justificativas`
--

CREATE TABLE `justificativas` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_projeto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `linhas_do_tempo`
--

CREATE TABLE `linhas_do_tempo` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_projeto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `objetivos_smart`
--

CREATE TABLE `objetivos_smart` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_projeto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `premissas`
--

CREATE TABLE `premissas` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_projeto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_projeto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `requisitos`
--

CREATE TABLE `requisitos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_projeto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `restricoes`
--

CREATE TABLE `restricoes` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_projeto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `riscos`
--

CREATE TABLE `riscos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_projeto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `stakeholders`
--

CREATE TABLE `stakeholders` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_projeto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `beneficios`
--
ALTER TABLE `beneficios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `custos`
--
ALTER TABLE `custos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `grupos_de_entrega`
--
ALTER TABLE `grupos_de_entrega`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `justificativas`
--
ALTER TABLE `justificativas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `linhas_do_tempo`
--
ALTER TABLE `linhas_do_tempo`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `objetivos_smart`
--
ALTER TABLE `objetivos_smart`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `premissas`
--
ALTER TABLE `premissas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `requisitos`
--
ALTER TABLE `requisitos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `restricoes`
--
ALTER TABLE `restricoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `riscos`
--
ALTER TABLE `riscos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `stakeholders`
--
ALTER TABLE `stakeholders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `beneficios`
--
ALTER TABLE `beneficios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `custos`
--
ALTER TABLE `custos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `equipes`
--
ALTER TABLE `equipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `grupos_de_entrega`
--
ALTER TABLE `grupos_de_entrega`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `justificativas`
--
ALTER TABLE `justificativas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `linhas_do_tempo`
--
ALTER TABLE `linhas_do_tempo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `objetivos_smart`
--
ALTER TABLE `objetivos_smart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `premissas`
--
ALTER TABLE `premissas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `requisitos`
--
ALTER TABLE `requisitos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `restricoes`
--
ALTER TABLE `restricoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `riscos`
--
ALTER TABLE `riscos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `stakeholders`
--
ALTER TABLE `stakeholders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
