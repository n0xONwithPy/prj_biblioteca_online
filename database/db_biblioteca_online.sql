-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Nov-2022 às 20:33
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_biblioteca_online`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_livros_online`
--

CREATE TABLE `tbl_livros_online` (
  `id` int(11) NOT NULL COMMENT 'Chave de identificação',
  `nome_livro` varchar(100) DEFAULT NULL COMMENT 'Titulo do Livro',
  `autor_livro` varchar(100) DEFAULT NULL COMMENT 'Nome do autor do Livro',
  `ano_livro` int(4) DEFAULT NULL COMMENT 'Ano de publicação do Livro',
  `sinopse_livro` varchar(255) DEFAULT NULL COMMENT 'Sinopse da Obra',
  `categoria_livro` varchar(20) DEFAULT NULL COMMENT 'Categoria do Livro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_livros_online`
--

INSERT INTO `tbl_livros_online` (`id`, `nome_livro`, `autor_livro`, `ano_livro`, `sinopse_livro`, `categoria_livro`) VALUES
(1, 'Harry Potter', 'JK Rollings', 1997, 'Hogwarts nunca mais sera a mesma.', 'Aventura'),
(2, 'Animais Fantasticos', 'JK Rowllin', 1997, 'New Scamander em busca das criaturas magicas mais sensacionais.', 'Aventura');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbl_livros_online`
--
ALTER TABLE `tbl_livros_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbl_livros_online`
--
ALTER TABLE `tbl_livros_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Chave de identificação', AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
