-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: mysql669.umbler.com
-- Generation Time: 02-Set-2019 às 21:12
-- Versão do servidor: 5.6.40-log
-- PHP Version: 5.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coloquio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividades`
--

CREATE TABLE IF NOT EXISTS `atividades` (
  `id` bigint(20) unsigned NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vagas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `atividades`
--

INSERT INTO `atividades` (`id`, `descricao`, `vagas`, `created_at`, `updated_at`) VALUES
(1, 'Laboratório INTEREURISLAND experiência na sala de aula de Relações Interpessoais e dinâmicas de grupo PhD Nicola Andrian (UNEB) - (número máximo de inscritos 60) ', 60, NULL, NULL),
(2, ' - Visitas na Comunidade Projetos de extensão e de educação contextualizada (Atividade de extensão) - (número máximo de inscritos 40)', 40, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividades_participante`
--

CREATE TABLE IF NOT EXISTS `atividades_participante` (
  `id` bigint(20) unsigned NOT NULL,
  `atividade_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_18_041524_create_atividades_table', 1),
(4, '2019_07_18_130838_create_atividades_inscricaos_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('biancasantana1220@gmail.com', '$2y$10$AF5ZZLI51.ZflCjkkH/aEuySJlE1owpmj.gHZnlY/GMCT3E6m9J6G', '2019-07-30 19:03:31'),
('jpmmedrado@gmail.com', '$2y$10$U9VWjs8/8VYEZmYsvin24OvVA1fDSeEBQqSReIbqEXmQqifBMaMsK', '2019-08-13 15:17:09'),
('jamillejornalismo@gmail.com', '$2y$10$M.PoYDKK6IgJ6lPxbI7SgOOoL87d4j/AiciUweuueb2KPZGKegf8i', '2019-08-19 20:45:57'),
('pereirakley@hotmail.com', '$2y$10$oVBGUepkU86PgN8VNF.ek.SNRM5j952Ll0aWQe2yP7/HQVPW9H9rm', '2019-08-20 14:34:25'),
('aurinetemulato@hotmail.com', '$2y$10$TkaAB.XH4BY3IUACg6zc1OJy.77/34kPft4jfbz.O65HLOTvmMFea', '2019-08-21 06:11:21'),
('maribrasileirom@gmail.com', '$2y$10$WrPgzIf7jjkuWYEfLAFkaOjKQJfVrzpZhSpdMnPbjK0393GPj.gei', '2019-08-21 20:37:07'),
('odair.carvalho@upe.br', '$2y$10$IroMPK87zIodNjehH3TElOlgLYRPM7X5i7nJlt1ZvfbVdtk6enYlm', '2019-08-30 03:36:54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ocupacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pagamento` text COLLATE utf8mb4_unicode_ci,
  `vinculo` text COLLATE utf8mb4_unicode_ci,
  `situacao` text COLLATE utf8mb4_unicode_ci,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `ocupacao`, `pagamento`, `vinculo`, `situacao`, `tipo`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'herbetjr@gmail.com', 'herbetjr@gmail.com', 'aluno-graduacao', 'pagamento-1.pdf', 'vinculo-1.pdf', 'confirmada', NULL, NULL, '$2y$10$DysoeqbzOuUVx5amFHPH1.KeylG//bDC7eqsk9KqJzybLZzEIOfHa', NULL, '2019-07-18 19:44:10', '2019-08-29 18:50:05'),
(2, 'Julia Stéfani De Jesus', 'jul.fat@hotmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$DGYNNoT/Ub6NV2YefoNjGu12uW8nzIUnQJ6LKxi5qMkTBj5v5JTFm', NULL, '2019-07-20 20:39:31', '2019-08-29 19:50:51'),
(3, 'Nicola Andrian', 'nandrian@uneb.br', 'professor-uni', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$BoL.5sVJDeac7Wl5BE0H3ewFDaq3jOZnYsAWBgPzzTgw3QtOegHCG', NULL, '2019-07-23 19:14:20', '2019-08-29 19:56:29'),
(4, 'Karlos Victor da Silva Ferreira', 'kakadelicia2@hotmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$kt.LhVxcSQpmZZKnvC.aBOHrHxwJO8QsVCQ7ZjpX6Pt1IYwRZXd0W', NULL, '2019-07-24 05:46:41', '2019-08-29 19:56:50'),
(5, 'Edimar Aguiar Siles', 'edi.aguiardireito@outlook.com', 'profissional-educacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$j/1/tN1VbZe.zQEcpRiRfexOVbO367rfdANKhlNCF0yRdQXIma6IW', NULL, '2019-07-24 17:02:12', '2019-08-29 19:57:11'),
(6, 'Josemar da Silva Martins', 'pinzoh@hotmail.com', 'professor-uni', 'pagamento-6.pdf', 'vinculo-6.pdf', 'confirmada', NULL, NULL, '$2y$10$BdAPepZgIWZnh9M/2ESgM.dXC7rkSzaqeSHGABF98xtSxfXXhPvAm', 'rey5LY4C40rxbEcpjQGHrUnJauEkxsgm0UWNJ4EgnS3PZrbWIlzGEBuErvJA', '2019-07-24 17:49:15', '2019-08-05 19:17:39'),
(7, 'Atena Agencia', 'suporte@atenaagencia.com', 'administrador', NULL, NULL, NULL, 'admin', NULL, '$2y$10$NjK6b2h7CEbHxCC8pqpGuOMJKziw1DaOZDBEGq50kOLTwJ9uju4ci', NULL, NULL, NULL),
(8, 'Jieli Brito Neves Nascimento', 'jieli_fdr@hotmail.com', 'profissional-educacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$TydHOPO/FilbY5dSPbPWfe0sGR4J06AEhg3b9u7yJ8hNZlDo/oM4O', NULL, '2019-07-25 20:17:04', '2019-08-29 19:57:35'),
(9, 'Fredson Ferreira do Nascimento', 'fredsonascimento@gmail.com', 'aluno-pos', 'pagamento-9.pdf', 'vinculo-9.pdf', 'confirmada', NULL, NULL, '$2y$10$q8CX7A5VS1DB3Mfm8/yrV.J4sopIcrhysbvYzgeP.8i5FNiBNNGne', 'TJaoFf3sfJZNphesu0cHoHOz2ZeXH0xk3LGp4NAGyDZB4SaiD3pEnWdn0FaT', '2019-07-26 18:13:04', '2019-08-06 22:35:50'),
(10, 'Luiz Eduardo Souza Coelho Pereira', 'luizeduardocoelho55@gmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$B364IE70iQnAmojeaKKlz.LJJyen0gkfPBRJM.uoyZObwAlm67uGm', NULL, '2019-07-27 02:17:46', '2019-08-29 19:57:57'),
(11, 'Francineide Santana Silva', 'francy.santana@uol.com.br', 'professor-uni', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$wuBB7DPitUwPOQKYTEnwi.kl/Qxfjt4.a7Ue6tOS3Hf/yTvX9hJFy', NULL, '2019-07-27 05:18:01', '2019-08-29 19:59:39'),
(12, 'MARIA BETANIA', 'betania.ribeirocruz@yahoo.com.br', 'profissional-educacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$HKj8zwD3GI2A3Kqx2hMjK.3LhG66MHY90TW4bv2vp4uTbYSec0Nh2', NULL, '2019-07-27 07:06:41', '2019-08-29 19:59:58'),
(13, 'Leidinar Batista de Oliveira', 'leidinar.oliveirars@hotmail.com', 'aluno-pos', NULL, 'vinculo-13.pdf', 'confirmada', NULL, NULL, '$2y$10$zyeIFzrRX4tgCoqZVlLoO.ONZB7uJAD1i1VmFkccNAfxlzFZvEESe', NULL, '2019-07-27 14:54:58', '2019-08-29 20:00:12'),
(14, 'Allicia Silva Cabral', 'allicia43@hotmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$kt58ig1HFnTs8EikgLH7BeEfkCNFFpfRGTS2ERsXIGxMRHkDlomcK', NULL, '2019-07-29 04:27:35', '2019-08-29 20:00:49'),
(15, 'Bianca Silva Santana', 'biancasantana1220@gmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$E//b8LdxVwkAOgwdcnPL0ODJi/j.C580Fz568WmgrUABmwTMbBKsS', NULL, '2019-07-29 17:51:43', '2019-08-29 20:01:02'),
(16, 'ANA JAMILLE NUNES DOS SANTOS', 'jamillejornalismo@gmail.com', 'aluno-pos', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$S3GoovJvDDrwADjgQirhE./3baqI2MvRwVxXu4aYseC5y6ldkqeMq', NULL, '2019-07-29 22:41:24', '2019-08-29 20:01:25'),
(17, 'Lícia Raniele Ribeiro Martins Lino', 'licialino12@outlook.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$l.Bh6f2qKXFqKXlRE9dDvOk0Q9CM4M2gYP4PTpW9CJ75mMB51q.cm', NULL, '2019-07-30 00:52:26', '2019-08-29 20:01:57'),
(18, 'Bianca Silva Santana', 'biancasantana80@hotmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$MBTJVNlDuqvacmAtw/MF1OXZIYyhwRG.Wsr0Kj6fkSaJLJXrF3rGq', NULL, '2019-07-30 19:05:25', '2019-08-29 20:02:12'),
(19, 'CÍCERA JUSSIMARA DA SILVA OLIVEIRA', 'jussimara.silva.oliveira@gmail.com', 'aluno-pos', 'pagamento-19.pdf', 'vinculo-19.pdf', 'confirmada', NULL, NULL, '$2y$10$tZ42wdJ2ApIz4jdXtn6WrO4qkwsvAlKoOfRkZwdGREl9Bd9Cf9PW6', NULL, '2019-07-30 20:13:33', '2019-08-15 18:50:22'),
(20, 'Raoni Bories', 'rmbories@gmail.com', 'aluno-pos', 'pagamento-20.pdf', 'vinculo-20.pdf', 'confirmada', NULL, NULL, '$2y$10$7j3ZV8w.0l8b9Y2rlj/yd.pG87rE8rLRf.JOdqRrh0kkbE1iHsLVq', NULL, '2019-07-30 20:24:03', '2019-08-15 18:51:07'),
(21, 'ELISSANDRA RIBEIRO DE BRITO', 'elissandrabcost@gmail.com', 'aluno-pos', 'pagamento-21.pdf', 'vinculo-21.pdf', 'confirmada', NULL, NULL, '$2y$10$sz7MsMZiGl1jyoDKr0IEyOc76BOV4Y9jCX7L7bbrRG4sUnAfB6eYC', NULL, '2019-07-30 22:04:09', '2019-08-06 22:42:31'),
(22, 'Flávia Pedrosa Vasconcelos', 'flaviapedrosavasconcelos@gmail.com', 'professor-uni', 'pagamento-22.pdf', 'vinculo-22.pdf', 'confirmada', NULL, NULL, '$2y$10$CFC0.k0KDVRiitvD23wo0OcLcjOjNnKuEXlXg63YXMnurYbbP8rFG', NULL, '2019-07-31 20:40:40', '2019-08-06 22:44:36'),
(23, 'Edmerson dos Santos Reis', 'edmerson@oi.com.br', 'professor-uni', 'pagamento-23.pdf', 'vinculo-23.pdf', 'confirmada', NULL, NULL, '$2y$10$5HEIqt1zi2fs.9.oL.bvZOwnJi1kxdDMhShj1IG1zfbMCFT2zFO7.', NULL, '2019-07-31 20:44:04', '2019-08-06 22:43:55'),
(24, 'Mariana Menezes', 'marianamenezes.pnz@gmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$ltd.DGGR0CI1u9lGc0N69ezw280LBB50Tb39qSPv2QBcjNwSxlhfu', NULL, '2019-07-31 21:51:52', '2019-08-29 20:02:46'),
(25, 'Kaila Dias muniz', 'Kaila_dias@hotmail.com', 'aluno-graduacao', 'pagamento-25.pdf', NULL, 'confirmada', NULL, NULL, '$2y$10$Gtap2WCryxvuHIF0DlB/y.B9IbNgfR9valTbt9GHFFz6o4rfcMWoW', NULL, '2019-08-01 20:07:47', '2019-08-29 20:06:29'),
(26, 'Jefferson Pereira Medrado', 'jpmmedrado@gmail.com', 'aluno-pos', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$OIvXDSwPhiT/9fghgDFc1.O7eKe2xmJP8x/2JMtCDjWdtNzZ8Hp5K', NULL, '2019-08-01 20:14:16', '2019-08-29 20:06:46'),
(27, 'Atena Agencia', 'suporte@atenaagencia.com', 'administrador', NULL, NULL, NULL, 'admin', NULL, '$2y$10$m07VANPPKVn/XO4fBOMdo.hTL8tBUqZR3YDCGpSglO1Ia/EjZgMc2', NULL, NULL, NULL),
(28, 'Coloquio Brasil-Itália', 'coloquio@uneb', 'administrador', NULL, NULL, NULL, 'admin', NULL, '$2y$10$1PECGC892C07Sla3jZ4YgOVitSKrQMmcBWq4ZRsymQncCw5WEwqLi', '8hQ5seke5K7aqGMv3Yq3sts2zbKx50rsZbIK8qcLlrRiSQtVEwd4jd5dyAn5', NULL, NULL),
(29, 'AURINETE BARBOSA MULATO PEREIRA', 'aurinetemulato@hotmail.com', 'aluno-pos', 'pagamento-29.pdf', 'vinculo-29.pdf', 'confirmada', NULL, NULL, '$2y$10$cim/tqm3J3NxGQwIcNUblOzp2PcRM9Ds677trR6QpBDYa6LphzXI.', NULL, '2019-08-06 03:55:44', '2019-08-06 22:43:00'),
(31, 'Erika Jane Ribeiro', 'erikabrit@hotmail.com', 'aluno-pos', 'pagamento-31.pdf', 'vinculo-31.pdf', 'confirmada', NULL, NULL, '$2y$10$XofbxWKd/4HEXb9HunXHyeTsj.ALtYMRCiCFFWfIg1OyzYp4Vwyey', NULL, '2019-08-07 17:15:58', '2019-08-29 20:07:21'),
(32, 'Marcos Aurélio Soares de Souza', 'marcosbalancarte@hotmail.com', 'aluno-pos', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$wZVPPXJ3h4Hmu/VrmGgfxuxhA5nwWCoOwsA7euW3L.OEPpUEp7m0u', NULL, '2019-08-07 20:55:06', '2019-08-29 20:07:56'),
(33, 'Carliane de Oliveira Silva', 'gabriel.carlianeoliv@gmail.com', 'profissional-educacao', 'pagamento-33.pdf', 'vinculo-33.pdf', 'confirmada', NULL, NULL, '$2y$10$xvmbFR3elr2mlv/Ayk5wc.10iAVQVccS7t74Yrs8mjwAILp9jnNXu', NULL, '2019-08-07 22:37:30', '2019-08-15 18:53:19'),
(34, 'Francisco Alex Rodrigues', 'allex_rodrigues92@hotmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$hmcDpeZ9ZptxVl1c1Gblc.wp5gsmeVOKtVdoQlorq3urU1OmV0uG.', 'o742azkIGENRWDXaYG3dbU3jRbXd83Y9u9QcPSGtnWGEBVffRUIXCd1Fmv6Q', '2019-08-11 01:17:48', '2019-08-29 20:08:33'),
(35, 'Michela D´Arc', 'michela.mota@facape.br', 'professor-uni', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$6YgYEKLLRt2yRogP7TeAD.4Be2q2RkUqAmeArkQn/NuCNSj.eMzS.', NULL, '2019-08-12 01:40:23', '2019-08-29 20:09:51'),
(36, 'Fábio Ronne de Santana Lima', 'fabioronne@hotmail.com', 'aluno-pos', 'pagamento-36.pdf', 'vinculo-36.pdf', 'confirmada', NULL, NULL, '$2y$10$iUOjSIxsJ5JnhJImFeJkMOlHwclTFoN6xiOIG89n.5aU/uEac3PRa', 'roTQ038tmlt8uxX9RKdYBQXeG8dNxnMmH7vfRsmv0xxvky4qrZSUYKTaLlhh', '2019-08-12 18:42:59', '2019-08-19 23:18:48'),
(37, 'Vitor', 'vhr.carvalho@hotmail.com', 'aluno-pos', 'pagamento-37.pdf', 'vinculo-37.pdf', 'confirmada', NULL, NULL, '$2y$10$p2ohIBoUTOgLF78b4Z5FYudhLIEcSbCshvLSaFlMNeanqvzNTQhRq', '91ei4vsQlkqUIXOLfpYAU1bBvAtoYasBcTNJQqHc8im8NZ74hMXKgjMgGWqV', '2019-08-12 21:04:07', '2019-08-29 20:11:08'),
(38, 'Lícia Raniele Ribeiro Martins Lino', 'liciajhonatan12@outlook.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$CHUw/9iL4jy5UvRz4kCpDe3A05xGLA5OS96Hg0Sl6A0/yMAixWEie', NULL, '2019-08-13 07:12:42', '2019-08-29 20:12:01'),
(39, 'Conceição Angelica dos Santos Ramos', 'conceicaoangelicasr@hotmail.com', 'aluno-pos', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$jVxFaLkmtTGM45udlziiiO3rI17ei/x./6fIyQVrLxJ7gOFbQnePm', NULL, '2019-08-13 12:01:44', '2019-08-29 20:13:07'),
(40, 'Leopoldina Francimar Amorim Coelho Diniz', 'leopoldina.amorim@ifsertao-pe.edu.br', 'aluno-pos', 'pagamento-40.pdf', NULL, 'confirmada', NULL, NULL, '$2y$10$0iFwr/oeiw6iwVcxYta8BehIdAlL.wucAMTnDabu/6fa0q2lQrKuO', NULL, '2019-08-13 13:43:45', '2019-08-29 20:15:32'),
(41, 'Raiane Barboza de Sousa', 'sousa_raiane@hotmail.com', 'aluno-pos', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$2AO94/WCX8O1ayNDC/.VT.KamDUaBEv/h7Mi98oNMc98o3pLM4wSe', NULL, '2019-08-13 14:26:05', '2019-08-29 20:16:45'),
(42, 'Jefferson Pereira Medrado', 'jeffersonmedrado26@gmail.com', 'aluno-pos', NULL, 'vinculo-42.pdf', 'confirmada', NULL, NULL, '$2y$10$qA4sDReYWjUbvEENNU0d7OeKi0bzY3Oh47m8KmFNjviLmzhG0rMQS', NULL, '2019-08-13 15:18:21', '2019-08-29 20:17:16'),
(43, 'Ana Paula Rocha dos Santos', 'anaprs2013@gmail.com', 'profissional-educacao', 'pagamento-43.pdf', 'vinculo-43.pdf', 'confirmada', NULL, NULL, '$2y$10$KZD0tfE5N3NgTRVpulEOeuViDrNLj4Os.nL1k8fsWhy7K0KfR145i', 'GyNcXixITYRLXKBkZ0n6mWwcmy2pvROcb6stHsSRNCejQikDx0q2N8ypX1ai', '2019-08-13 16:01:17', '2019-08-15 18:55:04'),
(44, 'Andrea Lafisca', 'alafis@gmail.com', 'profissional-educacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$sH0F6Mg6UckCZGpoGz3v/eh1XtJxArFhuvhNZsuyXWXvNnuRKeojS', NULL, '2019-08-13 23:35:10', '2019-08-29 20:17:43'),
(45, 'ELANE CRISTINA NUNES DE SOUZA', 'elanensouza@yahoo.com.br', 'profissional-educacao', 'pagamento-45.pdf', 'vinculo-45.pdf', 'confirmada', NULL, NULL, '$2y$10$w2dWof3Obg8JsKkiqwmue.UYDFcOcfAkdBh0c0Wi7AyoMmIbzXGq6', NULL, '2019-08-14 00:20:39', '2019-08-15 18:56:22'),
(46, 'Luciano Cintrão Barros', 'luciano.cintrao@univasf.edu.br', 'professor-uni', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$4wPRz3RFwxuEXjaK5qEH4.Grf1MPIJEzWkSWnamTNTx2Jb3RlSylW', NULL, '2019-08-14 16:05:54', '2019-08-29 20:18:07'),
(47, 'AITLA LIDIANE HERMÓGENES DE SOUZA JATOBÁ', 'aitla.lidiane@univasf.edu.br', 'profissional-educacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$JOVdkdZySxm7PECzZrapNOukTIYPqXcsQc2cJfN1IfWu6S2T2g4.G', NULL, '2019-08-14 17:56:01', '2019-08-29 20:18:27'),
(48, 'Wagner Soares de Lima', 'wagner.soareslima@ufpe.br', 'aluno-pos', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$kpjxU545IkgApF4n8a3kxu6Q.wacFxqy60XZy4ohW.eYD2UdoMaQK', NULL, '2019-08-14 19:45:33', '2019-08-29 20:18:46'),
(49, 'Herberth Pionório Vilaronga', 'herberthpv@gmail.com', 'profissional-educacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$dDMDAxhrJle/77SmRjTXneyqGQnraCdv6dvfAlvjtjm4xNXl4HA4q', NULL, '2019-08-14 22:40:56', '2019-08-29 20:19:14'),
(50, 'Danielle Mendonça Paiva', 'danielle-mend@hotmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$8nRTBU8v2KJ6szcnoL9U4.qjov3xVZEezydntDKS1EM9F9Uk3oRq2', NULL, '2019-08-15 04:08:27', '2019-08-29 20:20:48'),
(51, 'Adriana Maria Santos de Almeida Campana', 'didacampana@yahoo.com.br', 'profissional-educacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$uJipNQsXrMH1x2giQsMfve2nQDrgEfEkuJ5gRWlayZfIlX0Aa6GAq', NULL, '2019-08-15 16:25:05', '2019-08-29 20:19:59'),
(52, 'Camila Araújo Andrade', 'mila_jua22@hotmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$nFngMYbNRoemxLcL1GJ8c.UJZkw5Q.R58Fxp8avW5FALuNM5P/DvO', NULL, '2019-08-15 16:50:19', '2019-08-29 20:20:28'),
(53, 'Wellington Martins da Silva', 'martins9357@gmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$TL7pcHkSBpYsh.MXXo/Nu.LRyBaSwQvBBtPUWPT4K4rYGcBbnavoa', NULL, '2019-08-15 19:51:17', '2019-08-29 20:22:47'),
(54, 'Diomária Gonçalves Santana', 'diomaria9791@gmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$FqFJ.jEB.u5d48DNQmL1a.MxvenV6ka23KwsL/nbYLZr/8gyDobd.', NULL, '2019-08-15 19:52:29', '2019-08-29 20:23:07'),
(55, 'Micael Benaic Honório Santos', 'benaic@gmail.com', 'aluno-pos', 'pagamento-55.pdf', 'vinculo-55.pdf', 'confirmada', NULL, NULL, '$2y$10$t00vT7kL0U3OAuBqEhl63.s/ieYQ1r/82zo5ui0fDC8YmsbIQ1sSy', NULL, '2019-08-16 00:16:03', '2019-08-29 20:23:34'),
(56, 'Taylane Quirino', 'taylanefquirino@hotmail.com', 'aluno-graduacao', 'pagamento-56.pdf', 'vinculo-56.pdf', 'confirmada', NULL, NULL, '$2y$10$ZeT8zXKAKmuwXM/XFg9jXOGkaLsCGBiHGLlO2wRiH2RCv2.HvP8Cm', 'Vh97NN7VUqwO6YLMJ7cQHKsQP5VcBWgpbBl5VG1VZAOxMIj2iH4AWEhLvBGk', '2019-08-16 01:26:11', '2019-08-29 20:23:55'),
(57, 'kleyanne Pereira', 'pereirakley@hotmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$bl3L4sc7p/QkqygyQ2I9T.q.O1pzqoh0XEvI3/03tVTIJY8fQHpie', NULL, '2019-08-16 04:47:36', '2019-08-29 20:24:20'),
(58, 'Laura', 'laurabitu@outlook.con', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$khdhnmtEmcJcyJB74Qu6BO.dH0dx7LHSVfjKm6U2m/Rfr5zyNGzHK', NULL, '2019-08-16 05:19:05', '2019-08-29 21:08:30'),
(59, 'Aylla Silva Cabral', 'aylla3cabral@gmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$zNuvW0DdOP7ssozFrhE9uuP8xLqYCGIK5svq81V3/Fze8ygnjLx1m', NULL, '2019-08-16 16:36:48', '2019-08-29 21:09:01'),
(60, 'amos alves de lemos', 'eimosteacher@gmail.com', 'profissional-educacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$bw7SIpKIYEErQn6tE02DVeG1BpxpnHe3dqaaiPv1LglMiUuhdttcG', NULL, '2019-08-16 20:53:02', '2019-08-29 21:09:23'),
(61, 'Sheila Lidiane Jatobá Pereira Reis', 'sheilinhajatoba@gmail.com', 'aluno-pos', NULL, 'vinculo-61.pdf', 'confirmada', NULL, NULL, '$2y$10$/rxXiDxwcvlXb3YWIV0gk.5w2dwdqM9nsQ1BQG44DOOQ7xIdhxi2K', NULL, '2019-08-16 21:05:51', '2019-08-29 21:10:10'),
(62, 'Schirley Sampaio', 'schirleysampaio@gmail.com', 'aluno-pos', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$zyDB7YCgwKYNvzP1JU9Geu24Bdz0xOmWsNtgOBE9B7kPA.dDjzWwq', NULL, '2019-08-16 21:27:24', '2019-08-29 21:10:53'),
(63, 'Maria', 'mary.spalletta.ms@gmail.com', 'aluno-graduacao', 'pagamento-63.pdf', 'vinculo-63.pdf', 'confirmada', NULL, NULL, '$2y$10$Q156RBYwe32kOamnZR0Y/.z2hIseBoWG2xeN9CxalMCbFG49N3VTm', NULL, '2019-08-16 22:18:27', '2019-08-29 21:11:17'),
(64, 'ANDREA VIEIRA COLOMBO', 'andrea.colombo@univasf.edu.br', 'professor-uni', 'pagamento-64.pdf', 'vinculo-64.pdf', 'confirmada', NULL, NULL, '$2y$10$3aOIbkkqu/3OHOX5XfmAu.LQzz0s7G9ByBKbN1BJFGaCtL5.oGISm', '1rF4lJo086C0HjLYTfxxsFq3FBmqktFNpgcki1hQTliOjcylFqpcpGKksWG4', '2019-08-16 23:18:38', '2019-08-29 21:12:53'),
(65, 'Jaqueline', 'jaqueline.aquino.rodrigues@gmail.com', 'profissional-educacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$60FjpuAk39/Hff7VDRZTKuePALkacVG8uEA8Wu4aGBHIqJB6EM9SS', NULL, '2019-08-17 00:04:04', '2019-08-29 21:13:31'),
(66, 'Clara Freire de Sá Amorim', 'claradeamorim@outlook.com', 'aluno-pos', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$FG.tjC2T9u7JWya6Bde05urfPlyp8BrrPUGFP7qpgmbJPBz/3Hc/a', NULL, '2019-08-17 01:44:03', '2019-08-29 21:13:56'),
(67, 'Vitória Régia Conceição Alves', 'vitoria.vrcalves@gmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$9TWsclTpNW9/wR/uDIVMUudEcqjzKlZHAyx5NS9fJ5v/1C0KnlTdK', 'S4OzfIFgVSUQAnGoE9u7hvhXrT4Ak8y2YSMx1oQfUdb2jsmhcsjJTGzy1mlw', '2019-08-17 02:23:47', '2019-08-29 21:21:24'),
(68, 'Fabiana da Silva Nascimento', 'fabiologica6@gmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$W4AuRHLXlKo/zVQxyzNkL.BxlfTZgdfsuA6DhdOIoDvYzBpsRuGJq', NULL, '2019-08-18 17:03:29', '2019-08-29 21:21:47'),
(69, 'Ádma Hermenegildo Rocha', 'admarocha_@hotmail.com', 'aluno-pos', 'pagamento-69.pdf', NULL, 'confirmada', NULL, NULL, '$2y$10$bYAHFlY/BNDMSBQvzWQxgO.zOaEUnPjLnGnpJuYhOd2RoJl6xgofy', NULL, '2019-08-18 20:20:22', '2019-08-29 21:22:10'),
(70, 'Lucivânia de Sousa Silva', 'vaniarubi@outlook.com', 'aluno-pos', NULL, 'vinculo-70.pdf', 'confirmada', NULL, NULL, '$2y$10$9pTeF.UdJKIgTRSqTUIh1uGARq0lp5NKEaHqsisfzcYvTFR4UFIXW', NULL, '2019-08-18 23:18:35', '2019-08-29 21:22:38'),
(71, 'IVANESSA  BRITO', 'ivanessa_brito@hotmail.com', 'aluno-pos', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$ZuKsQ9BEPIICr5gpJYAtTeI4mtw1kVaL0u9knoO9C6SD8YtNKn9g6', NULL, '2019-08-19 00:33:44', '2019-08-29 21:23:01'),
(72, 'Irenilda Maria da Silva', 'irenildam.silva03@gmail.com', 'aluno-pos', NULL, 'vinculo-72.pdf', 'confirmada', NULL, NULL, '$2y$10$1HLiqGb9Z9CgDj3HDiux5eB9dnO2ecFmbH1fWpCl6Vq0bTPxxyONW', NULL, '2019-08-19 14:00:15', '2019-08-29 21:23:24'),
(73, 'Leonardo Amaral Gomes Pires', 'leopires08@gmail.com', 'aluno-graduacao', 'pagamento-73.pdf', 'vinculo-73.pdf', 'confirmada', NULL, NULL, '$2y$10$RhSLhtj4l/6PeAyWnL5z9.EQC7p/J4ZgaPtuJWgDdBpaHg7165Kvq', 'dHcRVAXa4aa4X4m9PINpxSTnDmppMJtevfEMHzuy6X6tgUi8NMaHYqPxH2MN', '2019-08-19 15:18:05', '2019-08-29 21:20:17'),
(74, 'Jackeline Maciel de Azevedo', 'jackmaaciel@gmail.com', 'aluno-graduacao', 'pagamento-74.pdf', NULL, 'confirmada', NULL, NULL, '$2y$10$bsn0vhhnx5jyrm786xuQRucN6SQoCs1UHMiCRF7LGw7CRmm9QRCA6', NULL, '2019-08-19 16:23:09', '2019-08-29 21:20:51'),
(75, 'Lívia Pricila Xavier de Souza', 'liviapricila83@gmail.com', 'aluno-graduacao', 'pagamento-75.pdf', NULL, 'confirmada', NULL, NULL, '$2y$10$IJLQgo4dsEXiQoygwlyVlezu54furypwrQ4hkLuc0fCx.40BABnh.', NULL, '2019-08-19 16:25:12', '2019-08-29 21:19:30'),
(76, 'Laura', 'laurabitu@outlook.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$JyW4BXvYucqB8RBbQ7lJMOaYHabADZ/9mb9KFwHmcb/Opo/Pai1Om', NULL, '2019-08-19 16:46:27', '2019-08-29 21:18:50'),
(77, 'Hanna Karoliny Feitosa Barbosa', 'karollinyhanna@gmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$7lHuFyIqEmh5/aoq04C8beYAhwtxZ2rmgfG3/5vcOerdaGzy1QGL.', NULL, '2019-08-19 17:41:16', '2019-08-29 21:18:10'),
(78, 'Carla Conceição da Silva Paiva', 'ccspaiva@gmail.com', 'professor-uni', 'pagamento-78.pdf', 'vinculo-78.pdf', 'confirmada', NULL, NULL, '$2y$10$jhADjTJWi4IjPcBZF2UQBuykK5/A0163MJdUmRCxufsYKbtOE7cc.', NULL, '2019-08-19 20:04:08', '2019-08-20 18:17:58'),
(79, 'Etelvina de Oliveira Silva Neto', 'etelvinaneta1@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$ysoJsLBS1TwhDiSKO1hGIuHGuG0jxvMNvu7czQoR/jf1HSeeKNcyW', NULL, '2019-08-19 22:19:44', '2019-08-19 22:19:44'),
(80, 'Lídia Cecília Menezes Reis de Castro', 'lidiacecilia455@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$79nmPkM0IW8PCZGsirugqOUq5qABL.4vqKLpqcxITZAU7JYlXGSZa', NULL, '2019-08-19 22:21:15', '2019-08-19 22:21:15'),
(81, 'Ilara Malena dos Santos Amy Martins', 'ilaramalenabela@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$ua5q1/MSjl7yI2XV8OHJfuGotinOa42k9uNodXekRLo/LPQY.BOo2', NULL, '2019-08-19 22:23:06', '2019-08-19 22:23:06'),
(82, 'Emanuella Maranatha Felíx dos Santos', 'emanuellamaranatha@hotmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$8Z0Jey56J3ynqqSlEW85zeMF7LJLtRX0Yg8l.wujTMH1GSwwIGqpC', NULL, '2019-08-19 22:25:21', '2019-08-19 22:25:21'),
(83, 'Lícia Raniele Ribeiro Martins Lino', 'licialino12@outlook.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$Mr4i0SZduTAHUmXSd.knM.eYZ5.KW6RysFOcNZrjWjKVx8mn66VM2', NULL, '2019-08-19 22:26:45', '2019-08-19 22:26:45'),
(84, 'Naiane da silva oliveira', 'naiiannedasilva@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$uumURMXiNyNoEGxPRWStIOV.T.405bP4AALYKR9tDvXeKwQ6beAMG', NULL, '2019-08-19 22:28:15', '2019-08-19 22:28:15'),
(85, 'Emilly Rayanne Soares da Silva', 'emilly.rayanne.jua@hotmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$abP2SO1llRXpsRNq5f9zxOSz8LXOjelsm/JctmdxoQIieeCYPUyfq', NULL, '2019-08-19 22:30:20', '2019-08-19 22:30:20'),
(86, 'Barbara de Souza Nascimento', 'bah2311@outlook.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$tfLv7BZrUKBSZjA6LNJ35.LPaE8hjHeNvLTq8RW0h0MzxrRy6UNhe', NULL, '2019-08-19 22:31:42', '2019-08-19 22:31:42'),
(87, 'kleyanne Pereira', 'pereirakley@hotmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$qL3xNMVlDuxLvKVCamvG0ed2hr9XY04kTYeBOS2n/0HMkalreU2bK', NULL, '2019-08-19 22:32:48', '2019-08-19 22:32:48'),
(88, 'Kecyanne Pereira da Silva Santos', 'kessy0072011@live.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$gQrgC/Q62SdDJZ3vGS93Gu.J5BiztNb3btEAnBB6ciQ08vd5YZ6dm', NULL, '2019-08-19 22:34:22', '2019-08-19 22:34:22'),
(89, 'Ana Caroline Silva Oliveira', 'anacarol_oliveira2016@hotmali.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$VFwkkqEV.OIjJfog3Ah0tu5X4009i6U/rAkE6VWyvCxvE.eS7ghgu', NULL, '2019-08-19 22:35:29', '2019-08-19 22:35:29'),
(90, 'Niquele Macedo Bonfim', 'niquelebonfim03@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$eiz846Fw6sjL3B/DYL/6JOf32dAqd6jG5KmezBxum7IX6gjj2ElX.', NULL, '2019-08-19 22:36:45', '2019-08-19 22:36:45'),
(91, 'Silvana Araújo Sobreira', 'silvanasobreira70@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$cl672v4GddjEMgjSBiTw0O1Nt4Cus1TkOz1neoxjiTicl77xG1zdm', NULL, '2019-08-19 22:39:03', '2019-08-19 22:39:03'),
(92, 'Maria Aparecida Gomes de Souza', 'cidagomes6@outlook.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$zaEWuth7/dHVZwPzdwZii.0Yc6FPxzK6GiJlsP6m.uG4Y3cLo.jwe', NULL, '2019-08-19 22:41:28', '2019-08-19 22:41:28'),
(93, 'Vivian de Barros Lima', 'viviandebarroslima@outlook.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$Bj2Twttil1Rhg2LhXFNwT.Cl2KUpIONYiq9lFhv6ja7SalWnymys6', NULL, '2019-08-19 22:42:46', '2019-08-19 22:42:46'),
(94, 'Hanna Karoliny Feitosa Barbosa', 'karollinyhanna@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$TQD1yDKm9kY3qw.Bf26LFeyisVlf2KGg4m3ahHAeVaCk8cUy1mpK6', NULL, '2019-08-19 22:50:10', '2019-08-19 22:50:10'),
(95, 'Wellington Martins da Silva', 'martins9357@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$jAFxTaukQ27nhhpZ38lSuevPtAAZbqpr7sT1tCnm/Eo50Q0eLV.LK', NULL, '2019-08-19 23:06:34', '2019-08-19 23:06:34'),
(96, 'Joana Dark da Silva Costa', 'darckcosta8@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$Fl8BpSBScFrf2rCn0R2J4OeG7Ux0N.x2tGss85reqEVRVYELymQcO', NULL, '2019-08-19 23:14:23', '2019-08-19 23:14:23'),
(97, 'Aurea da Silva Pereira', 'aureauneb@gmail.com', 'professor-uni', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$luMPvWdWb3Is4jtnBXkSj.LvEwWQ1oDS.N4Bah0Aiup/OYuHqC3.G', NULL, '2019-08-19 23:17:03', '2019-08-29 21:17:44'),
(98, 'ANA JAMILLE NUNES DOS SANTOS', 'jamillejornalismo2@gmail.com', 'aluno-pos', 'pagamento-98.pdf', NULL, 'confirmada', NULL, NULL, '$2y$10$nTsc1E9UTl3rbq6nGOjO7OlgiN38MSxUN6gtdSs42gbkcIk9hMSsq', NULL, '2019-08-19 23:56:16', '2019-08-20 18:16:13'),
(99, 'Maurizio', 'mauriziodorsa94@gmail.com', 'aluno-pos', 'pagamento-99.pdf', 'vinculo-99.pdf', 'confirmada', NULL, NULL, '$2y$10$RUpbfUDGv2o3mypgM08iuuvST.wRNEHy9N/k1twvrqfmKxvwHcPOO', NULL, '2019-08-20 01:19:13', '2019-08-29 21:16:57'),
(100, 'Helisandra dos Reis Santos', 'helisandra_reis@hotmail.com', 'profissional-educacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$5LOH0pTdofo4e1pjGdZ83eXg1zqka7I4hCXdAWKXF01EKS4ikvTJm', NULL, '2019-08-20 01:40:54', '2019-08-29 21:16:20'),
(101, 'Renata Alves', 'renata.abdias@outlook.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$GRwybhqBeUZEZcthTDecLuo9FWraXKo7JbKlVXZ7SNSnh4fNQM41a', NULL, '2019-08-20 05:11:06', '2019-08-29 21:15:44'),
(102, 'ANDRESSA MARINA', 'andressa03.marina@gmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$NH9LQvmn6OuZXjD2Pr2yXuFbBvsLcB0a51ST5EMBWBhP2/VgwLJ7u', NULL, '2019-08-20 14:09:29', '2019-08-29 21:15:15'),
(103, 'Scarlet de Jesus Cardozo', 'scarletcardozo2015@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$3CohBGXreTlYBCG8B/2qz.mXoXv/EhYuf98c82Rbedz4WKX2RBU1i', NULL, '2019-08-20 16:26:24', '2019-08-20 16:26:24'),
(104, 'MARCIA GUENA DOS SANTOS', 'mguena@uneb.br', 'professor-uni', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$RXYT9fD94/XBbrhB4iAZw.fCHX.6BCIlj4dVCBOvcT16uFUz3NRwi', NULL, '2019-08-20 17:00:30', '2019-08-29 21:14:29'),
(105, 'Francisca de Assis de Sá', 'franjua1980@hotmail.com', 'professor-uni', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$.D/kCtye8aK4rvNPt8DO5.kXQKU/FzX03BmgDjuOSsaYLXlUfq0tm', NULL, '2019-08-20 17:05:33', '2019-08-20 17:05:33'),
(106, 'Adélia Cristina Fazio Sá Ferreira Coêlho', 'adeliaccoelho@hotmail.com', 'aluno-pos', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$DwN8ZArfFhHwXQYdlHbYBunzZrvP.tqORdIoAfF4RKpVQ4kdl/LHS', NULL, '2019-08-20 17:10:28', '2019-08-29 21:06:38'),
(107, 'Maria do Socorro Macedo Coelho lima', 'socorrofacape@hotmail.com', 'profissional-educacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$IYCoFhC5snDJIGdTHLw1zuI5JcSw90yUwbLb9lGk5pFrppwt236KS', NULL, '2019-08-20 17:11:52', '2019-08-29 21:06:03'),
(108, 'Emanuelle Santos Matias', 'emanuellemaa@gmail.com', 'aluno-graduacao', 'pagamento-108.pdf', 'vinculo-108.pdf', 'confirmada', NULL, NULL, '$2y$10$ntCMDEUoWVqWb6/c3Q1gVuSeVSDcIz6B/0Vz3Wi4/xfyNWQsnTW/6', NULL, '2019-08-20 18:34:23', '2019-08-29 21:04:19'),
(109, 'Adélia Nunes dos Santos', 'adelianunessantos@yahoo.com.br', 'aluno-pos', 'pagamento-109.pdf', NULL, 'confirmada', NULL, NULL, '$2y$10$38EGSC2abCw2h2VqF/sVv.mTAalFOiFe.Av4bCJxmws/QsgtURp9O', NULL, '2019-08-20 20:34:16', '2019-08-29 21:01:57'),
(110, 'Juliana Alves', 'contato.alvesjuliana@gmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$BeypH3PWTLsQUVvPfAQk2.80dKJZiB8jzHO/N/cGWpuWPCLGWzDpC', 'DKdf3ieXP52QDvkTMPdyXyxWt6PprXQTpHLS2vrCy6i2NFZpuBHGJ0mjH4lb', '2019-08-20 20:35:25', '2019-08-29 21:01:29'),
(111, 'Renata Thaiane de Castro Medeiros', 'imrecastro@outlook.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$leY750OBbLbcJ0MTWu9NL.TGB79DvINriApxbnA93.FF7C.sy9ajW', NULL, '2019-08-20 22:17:03', '2019-08-20 22:17:03'),
(112, 'Igor José Silva dos Santos', 'sygor356@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$53LMeCoydF5OkhaWqhQAHOxz.bgHSG5oD3RRzzozOMRpoSSrTf1E6', NULL, '2019-08-20 22:26:13', '2019-08-20 22:26:13'),
(113, 'Daniel de Oliveira Sousa', 'oliveiradanie201579@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$0ByM.VRMABPL6KcSKf.a.eqYCRGOFaJgCeMIZJOhXiMN/rw/UIIYm', NULL, '2019-08-20 22:28:11', '2019-08-20 22:28:11'),
(114, 'Alexia Brenda de Souza Costa Viana', 'lexia073@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$BNXgoNS1XpUSxmbK/ThcMe5d4hylUyS1yD5YFL2olbxzPwL/t6PM2', NULL, '2019-08-20 22:32:56', '2019-08-20 22:32:56'),
(115, 'Jônatas Pereira do Nascimento Rosa', 'jonataspereiradonascimento@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$eYbhhGYGsN8iCnQfj8C0kuV6GEyrzmDFt6xpi7xea2Dq7lgmL4wxW', NULL, '2019-08-20 22:34:23', '2019-08-20 22:34:23'),
(116, 'Jônatas Pereira do Nascimento Rosa', 'jonataspereiradonascimento@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$ktL1HcmkEcz7GMWOitofreaWc1sGvpqs3HBXn4hzt.sLdWxnnGzqS', NULL, '2019-08-20 22:34:24', '2019-08-20 22:34:24'),
(117, 'Kleyanne Pereira dos Santos', 'pereirakley@hotmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$OsA5g8qxd.URUbydshP84OvdpsLSC3TL2HGV8byPGjaHyBc3qtN5m', NULL, '2019-08-20 22:39:17', '2019-08-20 22:39:17'),
(118, 'Jamille Sobral Costa', 'jamille.morena@hotmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$BP/8/7QT3IAHL6h4HD2YjObOR6u8YtLp8jfZ7IAHtsnaTkSe1LBue', NULL, '2019-08-20 22:47:41', '2019-08-20 22:47:41'),
(119, 'Julia Stéfani De Jesus', 'jul.fat@hotmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$rnEKNgRaM5ajjTeWpJ8nb.WtFGybINwVoB01ImsavhOe78l9EeaBq', NULL, '2019-08-20 22:56:26', '2019-08-20 22:56:26'),
(120, 'Dilaila Eduarda Batista dos Santos', 'dialailaeduarda@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$x/3TI0JGr3WaBWZNbi/ZRuosSUDGAUqskgp0RKlMh/Sp4JmQD3fje', NULL, '2019-08-20 23:03:49', '2019-08-20 23:03:49'),
(121, 'Andreia Cariri dos Santos', 'andreiacariri2014@outlook.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$EsCtbGClD2lRJssh96PpMOIlbeZAAlD5Ahnk9t17zewXw7PIZsTji', NULL, '2019-08-20 23:12:53', '2019-08-20 23:12:53'),
(122, 'Karlos Victor da Silva Ferreira', 'kakadelicia2@hotmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$MtaYUJGlrSmhkXGolbIbsOfOK6AWTUXL5VXGrggAJ4CwJsu6OF.L6', NULL, '2019-08-20 23:14:28', '2019-08-20 23:14:28'),
(123, 'Juliana Vargão dos Santos', 'juuvarjao51@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$.Yi7nU07CDWrFpUEA5CP1.Pxm6bgkQ0bsmgdCUO/A/MdxZBYnD/pS', NULL, '2019-08-20 23:18:18', '2019-08-20 23:18:18'),
(124, 'kamila de Oliveira  Souza', 'kamilaasouzas1997@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$j92UhMIKA8Sp7LhDrjwRtehlnyB5dYY7YETwBJ0jL0zENaQTawaRK', NULL, '2019-08-20 23:27:38', '2019-08-20 23:27:38'),
(125, 'Barbara Eleonora Bezerra Cabral', 'barbaraebcabral@gmail.com', 'professor-uni', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$pdgzjtNh0Fd34Z1a0AXzAOSnr4cEb8WXRDs4nzt6uGFb8waFL8KZS', NULL, '2019-08-21 00:28:15', '2019-08-29 21:00:40'),
(126, 'JOSE JOSINALDO DE ALENCAR LIMA', 'ten.josealencar@gmail.com', 'professor-uni', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$0arQEIBo60XAyFQfG/iR1uNAPQjX6Ut5eE8WlVR.Ml0COIGKBi552', NULL, '2019-08-21 00:56:52', '2019-08-29 20:44:48'),
(127, 'Fernanda Rodrigues de Lemos', 'fernandinha.frl18@gmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$B5V/iEmmGla5eBszX1ds7e./jzYfpGJtNT13PUUpuWe2tscZms93q', NULL, '2019-08-21 01:17:06', '2019-08-29 20:34:12'),
(128, 'Neucimeire Santos de Souza', 'neucimeire@gmail.com', 'aluno-pos', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$vvn6sl6LOSKO/IV1ie./s.CQBINp282jpjfP/2PnjwV2vg5BxwluS', NULL, '2019-08-21 03:06:37', '2019-08-21 03:06:37'),
(129, 'Ericlene maria araujo borges', 'ericlenedejesus@hotmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$N8j4ppgMEBbEaH/D1m2hcuvSf3qKXqp7oIXTmQ28tgvhWJB/VIdBe', NULL, '2019-08-21 03:23:14', '2019-08-29 20:33:08'),
(130, 'Raiane Tupina Cardoso', 'Raiane.T.cardoso@hotmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$djkhgKPK5meta/OXaySs8.QFfM9a9VBBdHwItVV8R3FpybxajZ1IK', NULL, '2019-08-21 05:20:16', '2019-08-29 20:32:49'),
(131, 'JESSICA PACHECO ALVES', 'jesspacheco1998@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$BDKdJiVMp3hANsuS63PqJeyq9W2o9F3qp/oQ6v19fO1RXgGjJt3Z6', NULL, '2019-08-21 05:38:43', '2019-08-21 05:38:43'),
(132, 'Tarcila de Oliveira Santana', 'tarcila_oliveira.1@hotmail.com', 'aluno-pos', 'pagamento-132.pdf', NULL, 'confirmada', NULL, NULL, '$2y$10$S2pBZgiZQbl7Koaq6TxLdOTTv6cA534ZSxCL0FmGWlK38ODeCEzDW', NULL, '2019-08-21 05:51:15', '2019-08-29 20:32:24'),
(133, 'roberta lorenzetto', 'roberta.lorenzetto@portoalegrerovigo.it', 'profissional-educacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$z3x10UcKHsRyrw7xptQqfuvRDHPu3Y1Wl8l.4Gb/pDEIBjyV6nY0K', NULL, '2019-08-21 14:40:02', '2019-08-21 14:40:02'),
(134, 'Massimo Santinello', 'massimo.santinello@unipd.it', 'professor-uni', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$NoKe2vo8cPiG7YJhVSYYqOgQmb1mNiOeF1eo1cJiKaJO30HWbyeJq', NULL, '2019-08-21 14:41:10', '2019-08-21 14:41:10'),
(135, 'Beatrice Girotto', 'beatrice.girotto@gmail.com', 'profissional-educacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$0mJDIu2Hmn5Katl6MV2byedzxLM1rKLYcJNMZ3D9V0F.ICxupKqeW', NULL, '2019-08-21 14:43:06', '2019-08-21 14:43:06'),
(136, 'Isabella Polloni', 'isabella@enars.it', 'profissional-educacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$5fH0rv/nHoquyL7zTTg5r.kUUk9r/MOpYg1c0PmoBx0HvtiRKh08G', NULL, '2019-08-21 14:44:24', '2019-08-21 14:44:24'),
(137, 'Isnaldo José de Souza Coelho', 'isnaldo.coelho@univasf.edu.br', 'professor-uni', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$8ZGF00Qb7vI6FdWNz/neJOeZvMaH82FNJ9fAG.K9jJxwZ5aOgSyPC', NULL, '2019-08-21 14:47:33', '2019-08-21 14:47:33'),
(138, 'Nilson Borges dos Santos', 'ilsonborges30@gmail.com', 'profissional-educacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$iGkQImaGiUXas4UJWWL.D.mIR4MgwRya9StW7HoDdscY4lx53gh82', NULL, '2019-08-21 14:50:11', '2019-08-21 14:50:11'),
(139, 'Jaciara Candido da Silva', 'jacicandido319@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$hucNECCeYGYePhWzY8v7j.vTkM8hL0NYtlQpUwM2BgemvckyM7RaC', NULL, '2019-08-21 14:53:08', '2019-08-21 14:53:08'),
(140, 'Edilane Carvalho Teles', 'ecteles@uneb.br', 'professor-uni', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$yeFStShaSu5ZJjyjfaT8gOJphHAbAQBy67vqWmA1842BI2aFIca16', NULL, '2019-08-21 14:54:26', '2019-08-21 14:54:26'),
(141, 'Ivanildo Alves de Almeida', 'ivan.pe.brasil@hotmail.com', 'professor-uni', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$3DqPeIB6gO45a0b8jAAIjOGS/.si1/g/.erE0O3pe5BfDIV68x3bK', NULL, '2019-08-21 14:54:48', '2019-08-21 14:54:48'),
(142, 'Rosa Santos Mendes da Silva', 'rosa.sns@hotmail.com', 'aluno-pos', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$WOF1MAMrJhm/GvwctlcnPucB1rIGkoAzh7S5QSp5Tin6FdUkOSXOG', NULL, '2019-08-21 14:56:26', '2019-08-21 14:56:26'),
(143, 'Maria Spalletta', 'mary.spalletta.ms@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$DxBr095q59eagm8Hbzh5wu1KGQaISbcftMXadrdC8VTK3WtJYl0J6', NULL, '2019-08-21 14:59:16', '2019-08-21 14:59:16'),
(144, 'sandra helena soeiro de andrade', 'sandrasoeiro97@gmail.com', 'profissional-educacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$sj4WDaShQLlO/AH5kCcfVeE0Do8mEu8ncoaREUxc85bOfAQluEqPq', NULL, '2019-08-21 15:05:42', '2019-08-21 15:05:42'),
(145, 'Telio Nobre Leite', 'telio.leite@univasf.edu.br', 'professor-uni', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$pPCFrrf.H2kQk4YBjOQZ8.kIw2Np0O/UKXpn0xqWQO3fj.0MD3SGO', NULL, '2019-08-21 15:06:08', '2019-08-21 15:06:08'),
(146, 'José Josinaldo de Alencar lima', 'ten.josealencar@gmail.com', 'professor-uni', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$wU8BzEPtEzTpsnY5JG/S3e1p8pA24QyhNfH5WYhB.QdfjYtwyfK7i', NULL, '2019-08-21 15:09:08', '2019-08-21 15:09:08'),
(147, 'Jamile Soares Da Silva', 'jamile_ssilva@outlook.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$cLChzWLN8HAX83XjgyotlebuQ6/19xszuTUT5MSPV725JiIBvrYiW', NULL, '2019-08-21 15:09:30', '2019-08-21 15:09:30'),
(148, 'ELIANE PEREIRA DE SENA', 'elipsena@hotmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$zyZi9HAekkXJjDSxp7LA.ua9Xci3HbtWCktLM4XX4s0UpzzGXlQ2m', NULL, '2019-08-21 15:11:19', '2019-08-21 15:11:19'),
(149, 'MARCIA GUENA DOS SANTOS', 'mguena@uneb.br', 'professor-uni', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$eTY86fVHM3cA36X3yqY25uxTyBAklrw.IWMAkJ7GjlwCtEWm77T7y', NULL, '2019-08-21 15:19:32', '2019-08-21 15:19:32'),
(150, 'Elzirene Oliveira da Silva', 'elzireneoliveiras@gmail.com', 'profissional-educacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$ZEBgr9ZUrtC/MCDVk/NdHeUNxaMkZN2zd/iHYeYDauOhW3B0KXEeK', NULL, '2019-08-21 15:26:23', '2019-08-21 15:26:23'),
(151, 'Liane Costa Alves de Moraes', 'lianecam@gmail.com', 'profissional-educacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$jM1JxqUcIc.P10zOQspq5eZwGH7/6MsKNvC73yOWndlMjBNn3DoD2', NULL, '2019-08-21 15:47:57', '2019-08-21 15:47:57'),
(152, 'Peterson Martins Alves Araujo', 'peterson.martins@upe.br', 'professor-uni', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$IvMgALvKUV0/kIyBASLTru0arq36Stb9eHSdPZEF8UYo2k/PHpGm.', NULL, '2019-08-21 15:49:58', '2019-08-21 15:49:58'),
(153, 'Raquel Monteiro da Silva', 'raquelwesley10@gmail.com', 'profissional-educacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$AFQH/uzy/w/q980NcMUF1erSQ8RUdurusz28NdyRPivvr6VTB4jiy', NULL, '2019-08-21 15:51:51', '2019-08-21 15:51:51'),
(154, 'MARIANA BRANDAO BRASILEIRO', 'maribrasileirom@gmail.com', 'aluno-graduacao', 'pagamento-154.pdf', 'vinculo-154.pdf', 'confirmada', NULL, NULL, '$2y$10$ASv9t6fhVQJ8xYLsg5lRZ.V6jDPQv3YUXYckUEVjdGfSKaK65mveO', NULL, '2019-08-21 15:55:14', '2019-08-29 20:31:51'),
(155, 'Odair França de Carvalho', 'odair.carvalho@upe.br', 'professor-uni', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$v8jj.I.q8E7RcH2FBsBd4uxCG7LKRDzxvYZpWxOMH5qXtrn6FlVq.', NULL, '2019-08-21 15:55:45', '2019-08-21 15:55:45'),
(156, 'Monica Rodrigues Lima da Costa', 'advmonicarodrigues@gmail.com', 'profissional-educacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$0LBiTQ9Y1EWF1.VwqVakgeXLKD9JunZus6r67Pt8p/KYq82wMjv0e', NULL, '2019-08-21 16:10:42', '2019-08-21 16:10:42'),
(157, 'Erine Estevam de Santana', 'erineestevam@gmail.com', 'aluno-pos', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$cntrifB/u.aCL.gZchvc7.xEIxoPfHPoFTnDfyEZvqzHec5cxew1a', NULL, '2019-08-21 16:11:54', '2019-08-21 16:11:54'),
(158, 'andrea  cavalcanti s lira', 'andreacsl38@gmail.com', 'profissional-educacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$2bJ5s/Enth5Uazb5AtlpVOqQAePQ8GYSQMp97iSnthmtstRYB4yBa', NULL, '2019-08-21 16:13:30', '2019-08-21 16:13:30'),
(159, 'ISLA GONÇALVES DO NASCIMENTO', 'islagoncalves789@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$l2lO78KeRJiCPMgf16b4dOS02FlDwiqphj7J6C3CBUt9LH8pzBAhC', NULL, '2019-08-21 16:21:08', '2019-08-21 16:21:08'),
(160, 'joao jose de santana borges', 'jjborges@uneb.br', 'professor-uni', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$Cq.lH.GIhyByQvf9TwkKOO7n3ynphrdifv9i1JqNpemQCoJiouF6K', NULL, '2019-08-21 16:40:10', '2019-08-21 16:40:10'),
(161, 'Marilia Tomaz Belé', 'marilia_bele@hotmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$YLU7psUrPZV6VYILTVu2iOQcMB9I45hEE/GFOTx6ADbH9oSxzyHi6', NULL, '2019-08-21 17:42:59', '2019-08-21 17:42:59'),
(162, 'Ingrid Santos Silva', 'ingridsantos0309@hotmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$gXsQdS.p8gxde8MEhdtJb.DuudYbIKrxdI6xTTE3eR.stOqWTKlBi', NULL, '2019-08-21 17:48:09', '2019-08-21 17:48:09'),
(163, 'EDONILCE DA ROCHA BARROS', 'ebarros@uneb.br', 'professor-uni', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$5ANvTJUdDmFA4FiOD66Gm.z/teBZBsmD0c5s4iOmAeHkNqgeWG3WC', NULL, '2019-08-21 18:19:33', '2019-08-21 18:19:33'),
(164, 'noesio santos de jesus', 'noesiosantos35@gmail.com', 'aluno-graduacao', 'pagamento-164.pdf', NULL, 'confirmada', NULL, NULL, '$2y$10$un41cQ/1vCzrWF/39F2.nOj82qcHo4GSIUl/cdjom1IAfBPb4.Oz.', NULL, '2019-08-21 19:44:14', '2019-08-29 20:30:41'),
(165, 'Noésio Santos de Jesus', 'noesiosantos35@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$bWPOM6TcoM960rCjYX31iOp8dolS7nioCNXkI0LXoTEKrOkSIz4bG', NULL, '2019-08-21 20:55:55', '2019-08-21 20:55:55'),
(166, 'jamille sobral costa', 'jamille.morena@hotmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$phCEx6yloQjZTdYBNt6SpOYmICO9MQEi/sfiLiudUkv7o./sTT6d6', NULL, '2019-08-21 21:21:14', '2019-08-21 21:21:14'),
(167, 'Oton Magno Santana dos Santos', 'omsantos@uneb.br', 'professor-uni', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$I0jaZqjyVTpJcm3Gm1qyPuKibPZZSSQ2uW7EYFrk911Yo8WBFbeeq', NULL, '2019-08-21 21:25:43', '2019-08-21 21:25:43'),
(168, 'Maria Eduarda dos Santos', 'eduarda.uaua@outlook.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$VOeF.nKZ8CV2jlcnvYyKme5KTtJ9lEY3VcXEOZKQ70cEAI0rmhk2q', NULL, '2019-08-21 22:50:49', '2019-08-21 22:50:49'),
(169, 'Erisvania de Souza Costa', 'erisvania.souzacosta@gmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$gX9dhgtJ3HHiSTjPYFdmpegzrm8pYmeS6vcO6redLNwB2M/uJGcx.', NULL, '2019-08-22 18:17:07', '2019-08-29 20:25:09'),
(170, 'Yanca Vitória Antunes de Souza', 'yanca.vitoria23@gmail.com', 'aluno-graduacao', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$nmdHKkZcTNoYxZSFVhEpnOeln4zg7O9Vg6R/sa8hIg9SnlmxW5KjS', NULL, '2019-08-22 21:06:12', '2019-08-22 21:06:12'),
(171, 'Adélia Cristina Fazio Sá Ferreira Coelho', 'adeliaccoelho@hotmail.com', 'aluno-pos', 'presencial', 'presencial', 'confirmada', NULL, NULL, '$2y$10$szuZaVZbzPt7mXUN1ufgC.FdB24oMJ1nKZC7fvlSRDaTTBuLmDAi2', NULL, '2019-08-23 17:34:36', '2019-08-23 17:34:36'),
(172, 'Eduarda', 'es8347383@gmail.com', 'aluno-graduacao', NULL, NULL, 'confirmada', NULL, NULL, '$2y$10$kMUSAntsuPeg78Qm/1WbBOLZj.GvPEUWL8dCzZf/Dxw3tyrGif57y', NULL, '2019-08-25 00:46:21', '2019-08-29 20:24:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atividades`
--
ALTER TABLE `atividades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atividades_participante`
--
ALTER TABLE `atividades_participante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `atividades_participante_user_id_foreign` (`user_id`),
  ADD KEY `atividades_participante_atividade_id_foreign` (`atividade_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atividades`
--
ALTER TABLE `atividades`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `atividades_participante`
--
ALTER TABLE `atividades_participante`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=173;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `atividades_participante`
--
ALTER TABLE `atividades_participante`
  ADD CONSTRAINT `atividades_participante_atividade_id_foreign` FOREIGN KEY (`atividade_id`) REFERENCES `atividades` (`id`),
  ADD CONSTRAINT `atividades_participante_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
