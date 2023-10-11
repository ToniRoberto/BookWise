-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Out-2023 às 04:51
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bookwise`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acesso`
--

CREATE TABLE `acesso` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `usuario` varchar(220) NOT NULL,
  `senha_usuario` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `acesso`
--

INSERT INTO `acesso` (`id`, `nome`, `usuario`, `senha_usuario`) VALUES
(1, 'Toni', 'toni', '$2y$10$h8ZgUrhzl9mOY3pjhBJNs.Mna5tmXAGsn35aitbvAwreVtHWHDE6u'),
(2, 'Roberto', 'roberto', '$2y$10$sn7I8XkvrZCakFIFKxmaOuRO0m53d75L6iO6ITEgBKLSZPs8NoQJq'),
(3, 'Silveira', 'silveira', '$2y$10$9sK8y92QKVJBbfIej2dcGuC9MRegiqAQZYYx2X2hUg1U1TzWM/vZy');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `id` int(11) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Ano` int(4) NOT NULL,
  `Autor` varchar(255) NOT NULL,
  `Classificacao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id`, `imagem`, `Titulo`, `Ano`, `Autor`, `Classificacao`) VALUES
(1, 'https://m.media-amazon.com/images/I/41PVVpQf-sL.jpg', 'Fahrenheit 451', 1950, 'Ray Bradbury', 'Ficção'),
(2, 'https://m.media-amazon.com/images/I/41IKTYiymKL.jpg', 'Admirável mundo novo', 2014, 'Aldous Huxley', 'Ficção'),
(3, 'https://m.media-amazon.com/images/I/510bAR7sKpL.jpg', 'Frankenstein', 1818, 'Mary Shelley', 'Ficção'),
(4, 'https://m.media-amazon.com/images/I/51Q954CZD1L.jpg', 'Laços de Sangue', 1979, 'Dana', 'Ficção'),
(5, 'https://m.media-amazon.com/images/I/51PH-CKf-kL.jpg', 'Um Estranho', 1961, 'Valentine Michael Smith', 'Ficção'),
(6, 'https://m.media-amazon.com/images/I/51QuzUOWMcS.jpg', 'A Guerra dos Mundos', 1898, 'H.G. Wells', 'Ficção'),
(7, 'https://m.media-amazon.com/images/I/51feD87yuEL.jpg', '1984', 1949, 'George Orwell', 'Ficção'),
(8, 'https://m.media-amazon.com/images/I/51byqshyGnL.jpg', 'Duna', 1965, 'Frank Herbert', 'Ficção'),
(9, 'https://m.media-amazon.com/images/I/51NllOwQA7L.jpg', '2001: Uma Odisséia', 1968, 'Arthur C. Clarke', 'Ficção'),
(10, 'https://m.media-amazon.com/images/I/51kUNrtDR-L.jpg', 'Andróides Sonham', 1968, 'Philip K. Dick', 'Ficção'),
(11, 'https://m.media-amazon.com/images/I/41uH8zurEeL.jpg', 'Eu, Robô', 1950, 'Isaac Asimov', 'Ficção'),
(12, 'https://m.media-amazon.com/images/I/51bJleesV-L.jpg', 'O Guia Definitivo do Mochileiro', 1979, 'Douglas Adams', 'Ficção'),
(13, 'https://m.media-amazon.com/images/I/41PVVpQf-sL.jpg', 'Neuromancer', 1984, 'William Gibson', 'Ficção'),
(14, 'https://m.media-amazon.com/images/I/41D5QQMs-TL.jpg', 'Fundação', 2019, 'Isaac Asimov', 'Ficção'),
(15, 'https://m.media-amazon.com/images/I/51oLP+rvEAL.jpg', 'O Fim da Infância', 1953, 'Arthur C. Clarke', 'Ficção'),
(16, 'https://m.media-amazon.com/images/I/41GtZwIeWoL._SY445_SX342_.jpg', 'Blink', 2016, 'Malcolm Gladwell', 'Não-Ficção'),
(17, 'https://m.media-amazon.com/images/I/41vS6hdURBL._SY445_SX342_.jpg', 'Falso Espelho', 2017, 'Jia Tolentino', 'Não-Ficção'),
(18, 'https://m.media-amazon.com/images/I/81eT2pjx4jL._SY466_.jpg', 'Hábitos Atômicos', 2002, 'James Clear', 'Não-Ficção'),
(19, 'https://m.media-amazon.com/images/I/712PTfYaKyL._SY466_.jpg', 'Ioga para quem não está nem aí', 2007, 'Geoff Dyer', 'Não-Ficção'),
(20, 'https://i0.wp.com/matheusdesouza.com/wp-content/uploads/2020/12/livro-nomade-digital-matheus-de-souza-premio-jabtuti-370x532-1.png?w=370&ssl=1', 'trabalho remoto', 2020, 'Matheus de Souza', 'Não-Ficção'),
(21, 'https://m.media-amazon.com/images/I/511OpWbL5eL._SY445_SX342_.jpg', 'Pequeno manual antirracista', 2020, 'Djamila Ribeiro', 'Não-Ficção'),
(22, 'https://m.media-amazon.com/images/I/41QwZ7i7BAL._SY445_SX342_.jpg', 'Rastejando até Belém', 1968, 'Joan Didion', 'Não-Ficção'),
(23, 'https://m.media-amazon.com/images/I/81BTkpMrLYL._SY466_.jpg', 'Sapiens', 2015, 'Yuval Noah Harari', 'Não-Ficção'),
(24, 'https://m.media-amazon.com/images/I/411MEkpTzwL._SY445_SX342_.jpg', 'Sociedade do Cansaço', 2015, 'Byung-Chul Han', 'Não-Ficção'),
(25, 'https://m.media-amazon.com/images/I/51amS8W5mUL._SY445_SX342_.jpg', 'Walden (ou A vida nos bosques)', 1854, 'Henry D. Thoreau', 'Não-Ficção'),
(26, 'https://m.media-amazon.com/images/I/51WyyYv1QrL._SY445_SX342_.jpg', 'Um Reflexo na Escuridão', 1977, 'Philip K. Dick', 'Mistério'),
(27, 'https://m.media-amazon.com/images/I/31Y33PweWWS._SY445_SX342_.jpg', '1Q84', 2012, 'Haruki Murakami', 'Mistério'),
(28, 'https://res.cloudinary.com/buzzfeed-brasil/image/upload/q_auto,f_auto/image-uploads/photo-set-collection-images/jpeg/8e69257d549b15dcbf56493ce88d8bd6.jpg', 'O Advogado do Diabo', 2017, 'Jonathan Maberry', 'Mistério'),
(29, 'https://m.media-amazon.com/images/I/71YFOLrSsRL._SY466_.jpg', 'Boneco de Pano', 2017, 'Daniel Cole', 'Mistério'),
(30, 'https://m.media-amazon.com/images/I/91rf5cZynmL._SY466_.jpg', 'O Menino da Mala', 2013, 'Agnete Friis e Lene Kaaberb', 'Mistério'),
(31, 'https://m.media-amazon.com/images/I/51ZKPCaMJbL._SY445_SX342_.jpg', 'Em Águas Sombrias', 2017, 'Paula Hawkins', 'Mistério'),
(32, 'https://m.media-amazon.com/images/I/41wRfPg5t4L._SY445_SX342_.jpg', 'Alva Lebre, Lobo Avermelhado', 2019, 'Tom Pollock', 'Mistério'),
(33, 'https://res.cloudinary.com/buzzfeed-brasil/image/upload/q_auto,f_auto/image-uploads/subbuzz-images/png/1fc0c35805cf96d14a9a8ada99f0e1b5.png', 'Terríveis Mestres', 2020, 'Edgar Allan Poe', 'Mistério'),
(34, 'https://m.media-amazon.com/images/I/51H+HDbmsCL._SY445_SX342_.jpg', 'Codinome Villanelle', 2020, 'Luke Jennings', 'Mistério'),
(35, 'https://m.media-amazon.com/images/I/51cL8NBxRzL._SY445_SX342_.jpg', 'As Cavernas de Aço', 2019, 'Isaac Asimov', 'Mistério'),
(36, 'https://m.media-amazon.com/images/I/51FweX0IIxL._SY445_SX342_.jpg', 'As Sombras de Outubro', 2019, 'Soren Sveistrup', 'Mistério'),
(37, 'https://m.media-amazon.com/images/I/51Hn22xLqyL._SX342_SY445_.jpg', 'A História Secreta de Twin Peaks', 1990, 'Mark Frost', 'Mistério'),
(38, 'https://m.media-amazon.com/images/I/71veccCx+oL._SY466_.jpg', 'Sherlock Holmes', 1887, 'Arthur Conan Doyle', 'Mistério'),
(39, 'https://m.media-amazon.com/images/I/51uqpEo+mCL._SX342_SY445_.jpg', 'Convite Para um Homicídio', 2019, 'Agatha Christie', 'Mistério'),
(40, 'https://cdn.culturagenial.com/imagens/me-chame-pelo-seu-nome-0-cke.jpg', 'Me chame pelo seu nome', 2007, 'André Aciman', 'Romance'),
(41, 'https://cdn.culturagenial.com/imagens/a-culpa-e-das-estrelas-0-cke.jpg', 'A culpa é das estrelas', 2012, 'John Green', 'Romance'),
(42, 'https://cdn.culturagenial.com/imagens/garoto-encontra-garoto-livro.jpg', 'Garoto encontra garoto', 2003, 'David Levithan', 'Romance'),
(43, 'https://cdn.culturagenial.com/imagens/ps-eu-te-amo-livro-cke.jpg', 'P.S: Eu te amo', 2007, 'Cecelia Ahern', 'Romance'),
(44, 'https://cdn.culturagenial.com/imagens/anne-de-green-gables-livro-cke.jpg', 'Anne de Green Gables', 1908, 'L. M. Montgomery', 'Romance'),
(45, 'https://cdn.culturagenial.com/imagens/vermelho-branco-e-sangue-azul-livro-cke.jpg', 'Vermelho, branco e sangue azul', 2019, 'Casey Mcquiston', 'Romance'),
(46, 'https://cdn.culturagenial.com/imagens/gua-para-elefantes-livro-cke.jpg', 'Água para elefantes', 2007, 'Sara Gruen', 'Romance'),
(47, 'https://cdn.culturagenial.com/imagens/quinze-dias-livro-cke.jpg', 'Quinze dias', 2017, 'Vitor Martins', 'Romance'),
(48, 'https://cdn.culturagenial.com/imagens/amor-e-gelato-livro-cke.jpg', 'Amor e Gelato', 2017, 'Jenna Evans Welch', 'Romance'),
(49, 'https://cdn.culturagenial.com/imagens/quem-e-voce-alasca-livro-cke.jpg', 'Quem é você, Alasca?', 2005, 'John Green', 'Romance');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `id_login` varchar(3) NOT NULL,
  `id_livro` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `id_login`, `id_livro`) VALUES
(5, '1', '6'),
(6, '1', '2'),
(7, '1', '3'),
(8, '1', '7'),
(9, '1', '10'),
(10, '1', '16'),
(11, '2', '1'),
(12, '1', '47');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acesso`
--
ALTER TABLE `acesso`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
