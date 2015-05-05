-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29-Abr-2015 às 06:10
-- Versão do servidor: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clinica`
--
CREATE DATABASE IF NOT EXISTS `clinica` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `clinica`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `duvidas`
--

CREATE TABLE IF NOT EXISTS `duvidas` (
`id_duvida` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mensagem` varchar(500) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Extraindo dados da tabela `duvidas`
--

INSERT INTO `duvidas` (`id_duvida`, `nome`, `email`, `mensagem`, `status`) VALUES
(1, 'José da Silva Pinto', 'jose.pinto@gmail.com', 'Olá gostaria de saber se vocês possuem exame de HIV', 'Pendente'),
(2, 'Maria Cristina', 'marcris@hotmail.com', 'Gostaria de saber qual o horário de atendimento', 'Pendente'),
(3, 'Danilo Missio', 'danilinho24@hotmail.com', 'Hoje acordei meio estranho, podem me ajudar?', 'Respondido'),
(4, 'Jurema Lucréia Maria Silva ', 'jujusisi@uol.com.br', 'mim add no face oxente vcs num mi aceita', 'Respondido'),
(5, 'Romão Vinicius', 'vinygatinho.69@google.com', 'Primeiramente Boa tarde!', 'Respondido'),
(6, 'Marcio Marinho', 'marcinhomarinho@gmail.com', 'Vocês fazem exame de fezes?', 'Pendente'),
(7, 'Roberto Justus', 'justus@empres.com.br', 'Tenho enteresse em ser sócio da clinica se pud,erem entrar em contato nomeu email. Obrigado', 'Pendente'),
(8, 'Joséfa FalaMuito', 'josefafalomuitomesmo@hotmail.com', 'Olá gente, tudo bem ? <br/> meu nome é Joséfa fala muito e eu venho através desse perguntar se vocês tem alguma filial aqui em Pernambuco, gostaria muito de fazer um exame com vocês. Minha prima de ca', 'Pendente'),
(9, 'Goku Farias', 'goku.namek@dbz.com.br', 'séhloiro', 'Respondido'),
(10, 'Ruinho Barrichello', 'nuncaganhoumacorrida@uol.com.br', 'Gostaria de mudar de nome, como faço?', 'Respondido'),
(11, 'Lucas Farias Lima de Ngola', 'email@email.com.ao', 'sou imigrante da angola, posso fazer meus exames ai?', 'Respondido'),
(12, 'Joaquim Muhongo', 'joaquim.muhongo@angola.com.ao', 'Minha filha esta com dores vaginais vocês tem exames para isso?', 'Pendente'),
(13, 'Gabriel Majimbu', 'gabriel.majimbu@namek.dbz', 'Meus poderes estão acabando vocês possuem algum exame para aumentar meu chi?', 'Pendente'),
(14, 'Confuso Sobrinho', 'cofuosobino@htmliail.co', 'dia om, veces po de mim ahuda...........xa.........uu.....', 'Respondido'),
(15, 'MC Rodolfinho', 'mcrodolfinho@contato.com.br', 'Salve, salve...familia. Paparazzi ta de olho em nóis, boa fase pré, ao vivo e pós', 'Pendente'),
(16, 'Kid Bengola', 'kid40cm@nacam.com', 'Os mlk é liso????', 'Respondido'),
(17, 'Bruno Cassarola', 'bruno.cassarola@ig.com.br', 'Bom dia, fiz um exame no dia 02/04/2015 e até agora ele consta como Pendente', 'Respondido'),
(18, 'Vanilson Reepson', 'vanirepson@hotmail.com', 'Qual o horario de funcionamento de vocês? obrigado', 'Respondido'),
(19, 'Json Javascript Jquery', 'htmlcssjsp@bol.com.br', '<p><b>Boa Tarde,</b><br/>Sou desenvolvedor web e estou com LÉR no pulso, vocês me sugerem algum exame?</p>', 'Pendente'),
(20, 'Danilo Misso', 'danilo.missio@cpqd.com.br', 'Olá mandei uma mensagem a um tempo atras e vocês mandaram eu sair do armário, só queria agradecer funcionou muito bem. obrigadA', 'Pendente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
`id_estado` int(11) NOT NULL,
  `sigla_estado` char(2) NOT NULL,
  `nome_estado` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`id_estado`, `sigla_estado`, `nome_estado`) VALUES
(1, 'AC', 'ACRE'),
(2, 'AL', 'ALAGOAS'),
(3, 'AP', 'AMAPÁ'),
(4, 'AM', 'AMAZONAS'),
(5, 'BA', 'BAHIA'),
(6, 'CE', 'CEARÁ'),
(7, 'ES', 'ESPÍRITO SANTO'),
(8, 'GO', 'GOIÁS'),
(9, 'MA', 'MARANHÃO'),
(10, 'MT', 'MATO GROSSO'),
(11, 'MS', 'MATO GROSSO DO SUL'),
(12, 'MG', 'MINAS GERAIS'),
(13, 'PA', 'PARÁ'),
(14, 'PB', 'PARAÍBA'),
(15, 'PR', 'PARANÁ'),
(16, 'PE', 'PERNANBUCO'),
(17, 'PI', 'PIAUÍ'),
(18, 'RJ', 'RIO DE JANEIRO'),
(19, 'RN', 'RIO GRANDE DO NORTE'),
(20, 'RS', 'RIO GRANDE DO SUL'),
(21, 'RO', 'RONDÔNIA'),
(22, 'RR', 'RORAIMA'),
(23, 'SC', 'SANTA CATARINA'),
(24, 'SP', 'SÃO PAULO'),
(25, 'SE', 'SERGIPE'),
(26, 'TO', 'TOCANTINS'),
(27, 'DF', 'DISTRITO FEDERAL');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exame`
--

CREATE TABLE IF NOT EXISTS `exame` (
`id_exame` int(11) NOT NULL,
  `id_tabelaExame` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `id_status` int(4) NOT NULL,
  `Data_exame` date NOT NULL,
  `nome_medico` varchar(100) NOT NULL,
  `crm_medico` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Extraindo dados da tabela `exame`
--

INSERT INTO `exame` (`id_exame`, `id_tabelaExame`, `id_paciente`, `descricao`, `id_status`, `Data_exame`, `nome_medico`, `crm_medico`) VALUES
(1, 10, 1, 'DESCRICAO EXAME', 1, '2014-10-08', '', ''),
(2, 50, 2, 'DESCRICAO EXAME', 2, '2015-04-10', '', ''),
(3, 150, 3, 'DESCRICAO EXAME', 2, '2015-03-30', '', ''),
(4, 188, 4, 'DESCRICAO EXAME', 1, '2013-08-08', '', ''),
(5, 178, 5, 'DESCRICAO EXAME', 1, '2015-04-01', '', ''),
(6, 151, 6, 'DESCRICAO EXAME', 2, '2015-04-20', '', ''),
(7, 20, 7, 'DESCRICAO EXAME', 1, '2012-07-08', '', ''),
(8, 200, 8, 'DESCRICAO EXAME', 1, '2014-12-08', '', ''),
(9, 78, 9, 'DESCRICAO EXAME', 1, '2015-04-08', '', ''),
(10, 98, 10, 'DESCRICAO EXAME', 1, '2014-11-16', '', ''),
(11, 99, 11, 'DESCRICAO EXAME', 1, '2014-04-18', '', ''),
(12, 105, 12, 'DESCRICAO EXAME', 1, '2011-02-03', '', ''),
(13, 201, 14, 'DESCRICAO EXAME', 2, '2015-04-22', '', ''),
(14, 88, 13, 'DESCRICAO EXAME', 1, '2003-04-30', '', ''),
(15, 55, 15, 'DESCRICAO EXAME', 1, '2009-09-28', '', ''),
(16, 12, 15, 'DESCRICAO EXAME', 2, '2015-03-29', '', ''),
(17, 7, 16, 'DESCRICAO EXAME', 1, '2014-03-09', '', ''),
(18, 10, 17, 'DESCRICAO EXAME', 1, '2015-01-09', '', ''),
(19, 92, 18, 'DESCRICAO EXAME', 1, '2010-10-22', '', ''),
(20, 147, 19, 'DESCRICAO EXAME', 2, '2015-04-15', '', ''),
(21, 211, 20, 'DESCRICAO EXAME', 1, '2015-02-12', '', ''),
(22, 200, 1, 'DESCRICAO EXAME', 2, '2015-03-02', '', ''),
(23, 167, 2, 'DESCRICAO EXAME', 2, '2015-04-05', '', ''),
(24, 190, 3, 'DESCRICAO EXAME', 1, '2011-07-03', '', ''),
(25, 72, 4, 'DESCRICAO EXAME', 1, '2015-02-01', '', ''),
(26, 54, 5, 'DESCRICAO EXAME', 2, '2015-01-30', '', ''),
(27, 8, 6, 'DESCRICAO EXAME', 1, '2012-08-16', '', ''),
(28, 28, 7, 'DESCRICAO EXAME', 2, '2015-02-13', '', ''),
(29, 133, 8, 'DESCRICAO EXAME', 1, '2014-10-18', '', ''),
(30, 111, 9, 'DESCRICAO EXAME', 1, '2009-03-24', '', ''),
(31, 77, 10, 'DESCRICAO EXAME', 2, '2015-04-01', '', ''),
(32, 9, 11, 'DESCRICAO EXAME', 2, '2015-03-28', '', ''),
(33, 203, 12, 'DESCRICAO EXAME', 1, '2013-08-02', '', ''),
(34, 153, 13, 'DESCRICAO EXAME', 1, '2012-11-19', '', ''),
(35, 187, 14, 'DESCRICAO EXAME', 1, '2011-05-23', '', ''),
(36, 164, 20, 'DESCRICAO EXAME', 2, '2015-04-21', '', ''),
(37, 53, 16, 'DESCRICAO EXAME', 2, '2015-04-12', '', ''),
(38, 120, 17, 'DESCRICAO EXAME', 1, '2014-09-27', '', ''),
(39, 201, 18, 'DESCRICAO EXAME', 1, '2014-12-18', '', ''),
(40, 94, 19, 'DESCRICAO EXAME', 2, '2015-03-15', '', ''),
(41, 164, 2, 'DESCRICAO EXAME', 1, '2013-07-17', '', ''),
(42, 33, 20, 'DESCRICAO EXAME', 1, '2014-05-25', '', ''),
(43, 29, 5, 'DESCRICAO EXAME', 2, '2015-04-01', '', ''),
(44, 176, 8, 'DESCRICAO EXAME', 1, '2014-02-02', '', ''),
(45, 199, 10, 'DESCRICAO EXAME', 2, '2015-04-20', '', ''),
(46, 205, 16, 'DESCRICAO EXAME', 1, '2013-07-07', '', ''),
(47, 176, 18, 'DESCRICAO EXAME', 1, '2012-03-20', '', ''),
(48, 100, 1, 'DESCRICAO EXAME', 1, '2009-12-12', '', ''),
(49, 65, 3, 'DESCRICAO EXAME', 2, '2015-03-30', '', ''),
(50, 177, 9, 'DESCRICAO EXAME', 2, '2015-04-17', '', ''),
(51, 13, 20, 'asdsad\r\nasd\r\nasd\r\nasd\r\nasdasda\r\nsd\r\nasasd\r\nasd\r\nas\r\nda\r\nsd\r\nas', 1, '2015-04-28', 'Ronaldo Barbosa', '1237213P1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `logradouro`
--

CREATE TABLE IF NOT EXISTS `logradouro` (
`id_logradouro` int(11) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `bairro` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Extraindo dados da tabela `logradouro`
--

INSERT INTO `logradouro` (`id_logradouro`, `cep`, `endereco`, `bairro`) VALUES
(1, '13033615', 'Rua Antonio Rodrigues de Carvalho', 'Vila Proost de Souza'),
(2, '13033720', 'Rua Professor João Augusto de Toledo', 'Vila Proost de Souza'),
(3, '13033555', 'Praça João Alves', 'Jardim Magnólia'),
(4, '12220971', 'Rua Israel Diamante', 'Vila Industrial'),
(5, '13073009', 'Praça Vinte e Cinco de Abril', 'Jardim Brasil'),
(6, '13073010', 'Rua Buarque de Macedo', 'Jardim Brasil'),
(7, '13069480', 'Rua Maria Cândida Conceição', 'Jardim Mirassol'),
(8, '13069530', 'Rua Valentin Biffi', 'Jardim Mirassol'),
(9, '13060461', 'Rua José Machado', 'Jardim Santa Lúcia'),
(10, '13060494', 'Rua Juréia', 'Jardim Santa Lúcia'),
(11, '13034340', 'Rua Michelina Spina Samartine', 'Vila Iapi'),
(12, '13034450', 'Rua João Virgílio Baptista', 'Vila Iapi'),
(13, '13087635', 'Avenida Guilherme Campos', 'Parque das Flores'),
(14, '13087610', 'Rua Luiz Oliveira', 'Parque das Flores'),
(15, '13077112', 'Rua B', 'Novo Taquaral'),
(16, '13077101', 'Rua Arlindo Carpino', 'Novo Taquaral'),
(17, '13044745', 'Rua da Administração', 'Núcleo Residencial Bairro da Vitória'),
(18, '13044780', 'Rua Feliz Esperança', 'Núcleo Residencial Bairro da Vitória'),
(19, '13046510', 'Rua Antônio Vicente de Paula', 'Jardim Samambaia'),
(20, '13046540', 'Rua Joaquim Severino', 'Jardim Samambaia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

CREATE TABLE IF NOT EXISTS `paciente` (
`id_paciente` int(11) NOT NULL,
  `cod_verif` int(20) NOT NULL,
  `nome_paciente` varchar(100) NOT NULL,
  `rg_paciente` varchar(20) NOT NULL,
  `cpf_paciente` varchar(20) NOT NULL,
  `id_logradouro` int(11) NOT NULL,
  `cidade_endereco` varchar(30) NOT NULL,
  `numero_endereco` int(8) NOT NULL,
  `complemento_endereco` varchar(200) DEFAULT NULL,
  `id_estado` int(11) NOT NULL,
  `datanasc_paciente` date NOT NULL,
  `telefone_paciente` varchar(20) DEFAULT NULL,
  `email_paciente` varchar(100) DEFAULT NULL,
  `convenio_paciente` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`id_paciente`, `cod_verif`, `nome_paciente`, `rg_paciente`, `cpf_paciente`, `id_logradouro`, `cidade_endereco`, `numero_endereco`, `complemento_endereco`, `id_estado`, `datanasc_paciente`, `telefone_paciente`, `email_paciente`, `convenio_paciente`) VALUES
(1, 563254416, 'Danilo César Missio', '49.516.483-5', '422.076.628-61', 1, 'Campinas', 1695, '', 24, '1993-05-12', '(19)3388-5101', 'danilo.missio@hotmail.com', 'Unimed'),
(2, 566906246, 'Pedro Vinicus Marcolongo Gimenes', '49.549.459-4', '422.076.628-61', 2, 'Campinas', 1695, 'ap 93 ', 24, '1993-01-05', '(19)3213-7060', 'pedrov.gimenes@hotmail.com', 'Beneficiência Portug'),
(3, 115369604, 'Vinicius Romão', '44.984.984-9', '483.566.961-43', 3, 'Campinas', 123, 'ap 77', 24, '1993-05-01', '(19)3388-5121', 'viiny.romao@gmail.com', 'Unimed'),
(4, 652487925, 'Marcia Fagundes Pereira da Silva Junior', '78.654.982-8', '454.743.614-24', 4, 'Campinas', 54, '', 24, '1954-12-22', '(19)3242-0683', 'marcinha.camburao@ig.com.br', 'Sul América'),
(5, 201548750, 'Gabriel Piccolito', '88.654.895-8', '681.706.822-31', 5, 'Campinas', 8774, '', 24, '1992-01-24', '(19)3564-8547', 'gabelocao@hotmail.com', 'Santa Helena Saúde'),
(6, 987654321, 'Felipe Nogueira', '46.654.654-3', '391.786.366-98', 6, 'Campinas', 544, 'Apto 421', 24, '1987-09-30', '(19)3214-9877', 'felipe.nogueira@email.com', 'Beneficiência Portug'),
(7, 21548965, 'Roselle Amaral Pinto', '65.854.852-7', '595.828.887-33', 7, 'Campinas', 9877, 'Próximo ao posto interlagos', 24, '1988-04-19', '(19)3213-6070', 'roselle.amaral@bol.com.br', 'Bradesco Saúde'),
(8, 654321225, 'Fernando Cerqueira Pinto', '20.874.523-7', '845.949.878-69', 8, 'Campinas', 85, '', 24, '1966-07-02', '(19)3556-8745', 'fernando.cerqueira@ig.com.br', 'Intermédica'),
(9, 172328727, 'Fernando Ferreira', '56.987.625-2', '881.638.166-35', 9, 'Campinas', 201, '', 24, '1955-08-04', '(19)3210-3215', 'fernando.ferreira@ibm.com', 'Unimed'),
(10, 821378219, 'Caio Francisco Rubelo de Mello', '54.987.544-9', '416.886.833-80', 10, 'Campinas', 10, 'Cond.das Pedras - Apto 24', 24, '1989-08-15', '(19)3201-5588', 'caio.rubelo@sottelli.com', 'Intermédica'),
(11, 901092190, 'Henrique Juliano Gonçalves', '54.952.320-X', '571.410.722-50', 11, 'Campinas', 520, '', 24, '1985-04-29', '(19)4215-6521', 'henrique.juliano@email.com.br', 'Bradesco Saúde'),
(12, 823782182, 'Cludio Maciel Pereira Campos', '20.620.720-2', '165.869.757-00', 12, 'Campinas', 1470, 'Apartamento 89 - Terreo', 24, '1994-04-19', '(19)3254-9632', 'maciel.campos@gmail.com', 'Sul América'),
(13, 182378218, 'Kenney Maquese', '85.654.878-9', '477.048.312-08', 13, 'Campinas', 777, '', 24, '1975-08-05', '(19)3215-9521', 'kenney.maquese@cpqd.com.br', 'Medial Saúde'),
(14, 782138721, 'Letícia Fraga Costa', '20.202.145-9', '623.285.851-40', 14, 'Campinas', 5445, 'Complemento teste', 24, '1966-02-10', '(19)3214-8547', 'leticia.fraga@psn.com', 'BioVida'),
(15, 728137821, 'Caio Guilherme de Carvalho', '25.987.654-3', '072.353.157-92', 15, 'Campinas', 58, '', 24, '1978-03-18', '(19)3215-7848', 'caio.carvalho@hotmail.com', 'Sul América'),
(16, 213283822, 'Alexandre Forion Borges', '99.985.625-9', '229.736.147-59', 16, 'Campinas', 999, '', 24, '1995-11-11', '(19)9515-0478', 'alexandre.borges@gamil.com', 'Intermédica'),
(17, 222222222, 'Fabiana Mendes Fagundes', '81.321.520-8', '671.377.469-50', 17, 'Campinas', 1500, 'Apto 55 - 5 andar', 24, '1948-05-12', '(19)3213-2222', 'fabiana.fagundes@bol.com.br', 'Unimed'),
(18, 823721820, 'Fabio Wustemberg Germano', '98.521.855-7', '763.282.841-95', 18, 'Campinas', 2000, 'Apto 8', 24, '1964-08-06', '(19)3254-6659', 'fabio.germano@camprev.gov.br', 'Beneficiência Portug'),
(19, 91283292, 'Vitor Zandonadi', '30.200.784-3', '034.711.131-93', 19, 'Campinas', 10, '', 24, '1992-08-17', '(19)3278-1312', 'vitor.zandonadi@email.com.br', 'BioVida'),
(20, 202002020, 'João Bosco', '78.365.987-0', '134.559.788-60', 20, 'Campinas', 3333, '', 24, '1954-08-09', '(19)3242-1515', 'joao.bosco@gmail.com', 'Medial Saúde');

-- --------------------------------------------------------

--
-- Estrutura da tabela `status_exame`
--

CREATE TABLE IF NOT EXISTS `status_exame` (
  `id_status` int(4) NOT NULL,
  `status_nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `status_exame`
--

INSERT INTO `status_exame` (`id_status`, `status_nome`) VALUES
(1, 'Pronto'),
(2, 'Pendente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_exame`
--

CREATE TABLE IF NOT EXISTS `tabela_exame` (
`id_tabelaExame` int(11) NOT NULL,
  `exame_nome` varchar(100) NOT NULL,
  `procedimento` varchar(500) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=212 ;

--
-- Extraindo dados da tabela `tabela_exame`
--

INSERT INTO `tabela_exame` (`id_tabelaExame`, `exame_nome`, `procedimento`) VALUES
(7, 'ANTICORPOS ANTI-ESCLERODERME; Anti-ScL 70', 'Coleta de sangue com Jejum de 8 horas.'),
(8, 'ACETONA na URINA', 'Exposição aos seguintes Agentes Químicos: Acetona; Isopropanol. Colher uma amostra de urina antes e outra no final da jornada de trabalho,após,no mínimo dois dias de exposição.'),
(9, 'ACIDO ASCÓRBICO Vitamina C', 'Coleta de sangue com Jejum 4 horas.Este exame é colhido somente de 2a a 4a feira.'),
(10, 'ACIDO CÍTRICO Citrato urinário', 'Exame realizado na urina. Vir até o laboratório para adquirir o frasco para a coleta de urina de 24 horas.'),
(11, 'ACIDO DELTA AMINOLEVULINÍCO ALA-U', 'Colher uma amostra de urina. Horário de coleta não é crítico.'),
(12, 'ACIDO FENILGLIOXÍLICO', 'Colher urina no final da jornada de trabalho. Agente Químico: Estireno'),
(13, 'ACIDO FÓLICO Folato', 'Coleta de sangue. JEJUM: 4 HORAS.'),
(14, 'ACIDO GAMA-HIDRÓXI BUTÍRICO', 'Coleta de sangue e Jejum não necessário.'),
(15, 'ACIDO HIPÚRICO', 'Colher uma amostra de urina antes e outra no final da jornada de trabalho, preferencialmente no meio da semana de trabalho.Agente Químico: Tolueno; Toluol; Metil-Benzeno'),
(16, 'ACIDO HOMOVANILICO', 'Para este exame o paciente deverá colher urina de 24 horas, seguindo uma DIETA.Deverá retirar, no laboratório, o(s) frasco(s) para coleta de urina de 24 horas e as instruções de coleta.DIETA – Durante as 24 horas de coleta de urina não deverá ingerir: refrigerantes,café, chá e fumo (não mascar, nem fumar).Durante a coleta manter o(s) frasco(s) em geladeira. Terminando a coleta de urina de 24 horas, trazer o(s) frasco(s) ao laboratório.'),
(17, 'ACIDO LÁTICO Lactato', 'Coleta de sangue com jejum de 8 horas.'),
(18, 'ACIDO MANDÉLICO', 'Colher uma amostra de urina no final da jornada de trabalho. Agente Químico: Estireno'),
(19, 'ACIDO METIL HIPÚRICO', 'Colher uma amostra de urina no final da jornada de trabalho, preferencialmente no meio da semana de trabalho. Agente Químico: Xileno; Xilol'),
(20, 'ACIDO METIL-MALÔNICO (MMA) no sangue', 'Favor entrar em contato com nossa central de atendimento.'),
(21, 'ACIDO METIL-MALÔNICO (MMA) na urina', 'Favor entrar em contato com nossa central de atendimento.'),
(22, 'ACIDO TRICLOROACÉTICO; Triclorocompostos', 'Colher amostra de urina no início da última jornada de trabalho da semana.'),
(23, 'ACIDO ÚRICO NA URINA 24 HORAS Uricosuria', 'Colher urina de 24 horas em frasco cedido pelo laboratório. Desprezar a primeira urina da manhã e anotar o horário. Colher todas as outras micções até o horário em que deu início a coleta. Manter o frasco de coleta em refrigerador.'),
(24, 'ACIDO VALPRÓICO - VALPROATO DE SÓDIO - VALPROATO', 'Coleta de sangue, Jejum 4 horas.O paciente deve se apresentar ao laboratório para colher o sangue antes da próxima tomada do medicamento.Anotar os medicamentos e horário em que toma o medicamento.No caso em que se toma o medicamento 1 vez ao dia, recomenda-se que a coleta do sangue seja feita 12 horas após a última tomada ou segundo orientação do médico assistente.'),
(25, 'ADENOVÍRUS Sorologia para', 'Coleta de sangue com Jejum: 4 horas.'),
(26, 'AFP (Alfa Fetoproteína)', 'Coleta de sangue e Jejum não necessário.'),
(27, 'AGLUTININAS ANTI ABO', 'Coleta de sangue e Jejum não necessário'),
(28, 'ALANINA AMINOTRANSFERASE; TGP; ALT', 'Coleta de sangue,com jejum de 4 horas. Não ingerir bebida alcóolica no dia que antecede a coleta.'),
(29, 'ALASSB Anticorpos anti SSB Anticorpos anti La', 'Coleta de sangue com Jejum: 8 horas.'),
(30, 'ALBUMINA; Albuminemia', 'Coleta de sangue com Jejum de 4 horas'),
(31, 'ALDOLASE', 'Coleta de sangue com Jejum: 4 horas'),
(32, 'ALDOSTERONA PLASMÁTICA', 'Entrar em contato com nossa central de atendimento para verificar qual a unidade mais próxima em que o sangue pode ser colhido, pois, este exame não é colhido em todas as unidades. Coleta de sangue com Jejum 8 horas.'),
(33, 'ALDOSTERONA URINÁRIA', 'Colher urina de 24 horas.Vir ao laboratório para adquirir os frascos de coleta e as instruções para a coleta de urina.'),
(34, 'ALFA 1 GLICOPROTEÍNA ÁCIDA; Mucoproteinas', 'Coleta de sangue com Jejum: 4 horas'),
(35, 'ALFA - 1 ANTI - TRIPSINA', 'Coleta de sangue com Jejum: 8 horas'),
(36, 'ALFA FETOPROTEÍNA; AFP', 'Coleta de sangue com Jejum 4 horas.'),
(37, 'ALFA - INTERFERON', 'Favor entrar em contato com nossa central de atendimento.'),
(38, 'ALUMÍNIO no soro', 'Coleta de sangue, Jejum: 4 horas.'),
(39, 'AMANTADINA (Simetrel)', 'Favor entrar em contato com nossa central de atendimento.'),
(40, 'AMICACINA NO SANGUE', 'Coleta de sangue, Jejum não necessário.'),
(41, 'AMILASE; Amilasemia', 'Coleta de sangue com Jejum de 4 horas'),
(42, 'AMOXAPINA e METABÓLITO', 'Favor entrar em contato com nossa central de atendimento.'),
(43, 'AMP CÍCLICO (Dosagem na urina)', 'Colher urina de 24 horas. Favor retirar o frasco de urina no laboratório, bem como as instruções para coleta da urina.'),
(44, 'ANCA; Anticorpos anti-citoplasma dos neutrófilos', 'Coleta de sangue, Jejum: 8 horas.'),
(45, 'ANDROSTENEDIOL GLUCORONIDEO; 3-alfa-diol-G', 'Coleta de sangue, Jejum de 4 horas'),
(46, 'ANDROSTENEDIONA', 'Coleta de sangue, Jejum 4 horas.'),
(47, 'ANTI 68-KD; Anticorpos Anti-Koclea', 'Coleta de sangue, Jejum 4 horas.'),
(48, 'ANTI CÉLULAS PARIETAIS (anti mucosa gástrica)', 'Coleta de sangue, Jejum de 8 horas.'),
(49, 'ANTI - DESOXIRIBONUCLEICO; Anti DNA', 'Coleta de sangue, Jejum de 8 horas.'),
(50, 'ANTI - ESCLERODERME; Anti Scl70', 'Coleta de sangue, Jejum de 8 horas.'),
(51, 'ANTI FOSFOLÍPIDEOS; Anticorpos Anti-Cardiolipina; Anticorpos Anti-fosfolípides', 'Coleta de Sangue, Jejum: 8 horas.'),
(52, 'ANTI HBc IgM; Anticorpos Anti core IgM', 'Coleta de sangue, Jejum de 4 horas.'),
(53, 'ANTI HBe; HBeAc', 'Coleta de sangue, Jejum de 4 horas.'),
(54, 'ANTI HBs; Anticorpos contra o antigeno de superfície da Hepatite B', 'Coleta de sangue, Jejum de 4 horas.'),
(55, 'ANTICOAGULANTE LÚPICO PAINEL DO ANTICOAGULANTE LÚPICO', 'Favor entrar em contato com nossa central de atendimento para verificar qual a unidade mais próxima onde a coleta pode ser realizada, pois, esta coleta não é realizada em todas as unidades.'),
(56, 'ANTICORE TOTAL; Anti-HBc', 'Coleta de sangue, Jejum de 4 horas.'),
(57, 'ANTICORPOS ANTI-ACETILCOLINA', 'Favor entrar em contato com nossa central de atendimento.'),
(58, 'ANTICORPOS ANTI-ADENOVÍRUS', 'Coleta de sangue, Jejum de 4 horas.'),
(59, 'ANTICORPOS ANTI ADRENAL', 'Consultar nossa central de atendimento.'),
(60, 'ANTICORPOS ANTI ATPO; ANTI PEROXIDASE TIREOIDEANA ; Anti Microssomal', 'Coleta de sangue, Jejum: 4 horas.'),
(61, 'ANTICORPOS ANTI - BABÉSIA', 'Favor entrar em contato com nossa central de atendimento.'),
(62, 'BRUCELOSE', 'Coleta de sangue, Jejum: 4 horas.'),
(63, 'ANTICORPOS ANTI - CARDIOLIPINA', 'Coleta de sangue, Jejum: 8 horas.'),
(64, 'ANTICORPOS ANTI - CITOPLASMA NEUTRÓFILOS ANCA Anti ANCA', 'Coleta de sangue, Jejum 8 horas.'),
(65, 'ANTICORPOS ANTI - CLAMÍDIA (IgG e IgM)', 'Coleta de sangue, Jejum de 8 horas.'),
(66, 'ANTICORPOS ANTI - Coração', 'Favor entrar em contato com nossa central de atendimento.'),
(67, 'ANTICORPOS ANTI CORE IgM', 'Coleta de sangue, Jejum de 4 horas.'),
(68, 'ANTICORPOS ANTI - COXIELLA BURNETTI', 'Coleta de sangue, Jejum 4 horas.'),
(69, 'ANTICORPOS ANTI - DNA dupla hélice anti ds-DNA', 'Coleta de sangue, Jejum 8 horas.'),
(70, 'ANTICORPOS ANTI - DELTA Anti Delta da hepatite', 'Coleta de sangue, Jejum 4 horas.'),
(71, 'ANTICORPOS ANTI - DENGUE IgG / IgM', 'Coleta de sangue, Jejum 8 horas.'),
(72, 'ANTICORPOS ANTI - DESCARBOXILASE DO AC. GLUTAMICO Anti GAD', 'Coleta de sangue, Jejum de 4 horas.'),
(73, 'ANTICORPOS ANTI - ENA (ANTI-RNP/Sm, ALASSB e AROSSA)', 'Coleta de sangue, Jejum 8 horas.'),
(74, 'ANTICORPOS ANTI ENDOMÍSIO (IgA, IgG, IgM)', 'Coleta de sangue, Jejum 8 horas.'),
(75, 'ANTICORPOS ANTI- EPITÉLIO', 'Consultar nossa central de atendimento.'),
(76, 'ANTICORPOS ANTI - GAD', 'Coleta de sangue, Jejum: 4 horas.'),
(77, 'ANTICORPOS ANTI - GLIADINA (IgA, IgG, IgM)', 'Coleta de sangue, Jejum: 4 horas.'),
(78, 'ANTICORPOS ANTI GANGLIOSÍDEO (ANTI-GM1)', 'Coleta de sangue, Jejum de 4 horas.'),
(79, 'ANTICORPOS ANTI GLOMÉRULO', 'Coleta de sangue, Jejum 4 horas.'),
(80, 'ANTICORPOS ANTI - GM1', 'Favor consultar nossa central de atendimento.'),
(81, 'ANTICORPOS ANTI - HBc; Anticorpos anti-core do virus da hepatite B', 'Coleta de sangue, Jejum: 4 HORAS.'),
(82, 'ANTICORPOS ANTI - HBc IGM', 'Coleta de sangue, Jejum: 4 horas.'),
(83, 'ANTICORPOS ANTI - HBc TOTAL', 'Coleta de sangue, Jejum de 4 horas.'),
(84, 'ANTICORPOS ANTI - Hbe', 'Coleta de sangue, Jejum: 4 horas.'),
(85, 'ANTICORPOS ANTI - HBs Anticorpos contra o antigeno de superfície da Hepatite B', 'Coleta de sangue, Jejum: 4 horas.'),
(86, 'ANTICORPOS ANTI - HCV; Anti HCV; Anti HVC', 'Coleta de sangue, Jejum: 4 horas'),
(87, 'ANTICORPOS ANTI - HEPATITE A - IGG; anti HAV; anticorpos anti virus da hepatite A', 'Coleta de sangue, Jejum: 4 horas.'),
(88, 'ANTICORPOS ANTI - HEPATITE A - IGM; anti HAV IgM', 'Coleta de sangue, Jejum: 4 horas.'),
(89, 'ANTICORPOS ANTI - HISTONA', 'Coleta de sangue, Jejum: 4 horas.'),
(90, 'ANTICORPOS ANTI - HISTOPLASMA no soro', 'Coleta de sangue, Jejum de 4 horas.'),
(91, 'ANTICORPOS ANTI - HIV1/2 HIV1/2', 'Coleta de sangue, Jejum: 4 horas.'),
(92, 'ANTICORPOS ANTI HIV2 POR TÉCNICA DE WESTERN BLOT', 'Coleta de sangue, Jejum de 4 horas.'),
(93, 'ANTICORPOS ANTI - HTLV1 NO LÍQUOR', 'A amostra de liquor deve ser colhida pelo médico.'),
(94, 'ANTICORPOS ANTI - HTLV1/2', 'Coleta de Sangue, Jejum: 8 horas.'),
(95, 'ANTICORPOS ANTI - HTLV1/2 POR TÉCNICA DE WESTERN-BLOT', 'Coleta de sangue, Jejum: 8 horas.'),
(96, 'ANTICORPOS ANTI - ILHOTAS PANCREÁTICAS', 'Coleta de sangue, Jejum: 4 horas.'),
(97, 'ANTICORPOS ANTI - INSULINA', 'Coleta de sangue, Jejum de 4 horas.'),
(98, 'ANTICORPOS ANTI - JO - 1', 'Coleta de sangue, Jejum: 8 horas.'),
(99, 'ANTICORPOS ANTI - KOCLEA ; Anti 68-KD; HSP-70; KDA-70', 'Favor entrar em contato com nossa central de atendimento.'),
(100, 'ANTICORPOS ANTI - La SS-B; Anti La; Anti SSB', 'Coleta de sangue, Jejum: 8 horas.'),
(101, 'ANTICORPOS ANTI - LEGIONELLA', 'Coleta de sangue, Jejum: 8 horas.'),
(102, 'ANTICORPOS ANTI - LKM 1 ou LKM (Liver-Kidney Microsome)', 'Coleta de sangue, Jejum: 4 horas.'),
(103, 'ANTICORPOS ANTI - LYME (Pesquisa de Anticorpos IgG e IgM por ELISA, no Sangue )', 'Coleta de sangue, Jejum de 4 horas.'),
(104, 'ANTICORPOS ANTI - MAG', 'Coleta de sangue, Jejum de 4 horas.'),
(105, 'ANTICORPOS ANTI MICROSSOMAL; Anti ATPO', 'Coleta de sangue, Jejum de 4 horas.'),
(106, 'ANTICORPOS ANTI - MITOCÔNDRIA M2', 'Coleta de sangue. Jejum: 8 horas'),
(107, 'ANTICORPOS ANTI MUCOSA GÁSTRICA', 'Coleta de sangue, Jejum: 4 horas.'),
(108, 'ANTICORPOS ANTI - MÚSCULO ESTRIADO', 'Coleta de sangue, Jejum: 4 horas'),
(109, 'ANTICORPOS ANTI MÚSCULO LISO', 'Coleta de sangue, Jejum: 8 horas.'),
(110, 'ANTICORPOS ANTI - MYCOPLASMA (IgG e IgM)', 'Coleta de sangue, Jejum de 8 horas.'),
(111, 'ANTICORPOS ANTI - NUCLEARES; ANA ; FAN; Fator Anti nuclear', 'Coleta de sangue, Jejum de 8 horas.'),
(112, 'ANTICORPOS ANTI RECEPTOR DE TSH Anti Trab', 'Coleta de sangue, Jejum: 4 horas.'),
(113, 'ANTICORPOS ANTI RETICULINA', 'Coleta de sangue, Jejum: 4 horas.'),
(114, 'ANTICORPOS ANTI RNA', 'Coleta de sangue, Jejum: 8 horas.'),
(115, 'ANTICORPOS ANTI RNP', 'Coleta de sangue, Jejum: 8 horas.'),
(116, 'ANTICORPOS ANTI - RO Anti SS-A', 'Coleta de sangue, Jejum: 8 horas.'),
(117, 'ANTICORPOS ANTI SCL-70; Anti Escleroderma', 'Coleta de sangue, Jejum: 8 horas.'),
(118, 'AANTICORPOS ANTI - Sm (Smith)', 'Coleta de sangue, Jejum: 8 horas.'),
(119, 'AANTICORPOS ANTI - TIREOGLOBULINA Anti TG', 'Coleta de sangue, Jejum: 4 horas.'),
(120, 'ANTICORPOS ANTI - VARICELLA ZOSTER IgG e IgM - Anti Herpes Zoster', 'Coleta de sangue, Jejum de 4 horas.'),
(121, 'ANTICORPOS ANTI YO', 'Coleta de sangue, Jejum: 4 horas.'),
(122, 'ANTICORPOS IgM ANTI - PARVOVÍRUS B19', 'Coleta de sangue, Jejum: 4 horas.'),
(123, 'ANTICORPOS NUCLEARES NEURONAL TIPO I', 'Coleta de sangue, Jejum: 4 horas'),
(124, 'ANTICORPOS NUCLEARES NEURONAL TIPO II', 'Coleta de sangue, Jejum de 4 horas.'),
(125, 'ANTICORPOS PEROXIDASE TIROIDIANA', 'Coleta de sangue, Jejum de 4 horas.'),
(126, 'ANTIESTREPTOLISINA O ; ASLO; ASO', 'Coleta de sangue, Jejum: 4 horas.'),
(127, 'ANTÍGENO AUSTRÁLIA; HBSAG', 'Coleta de sangue, Jejum de 4 horas.'),
(128, 'ANTÍGENO CARCINOEMBRIÔNICO; CEA', 'Coleta de sangue, Jejum: 4 horas.'),
(129, 'ANTÍGENO e DA HEPATITE B', 'Coleta de sangue, Jejum de 4 horas.'),
(130, 'ANTÍGENO Hbe; Antigeno e da Hepatite B', 'Coleta de sangue, Jejum: 4 horas.'),
(131, 'ANTÍGENO HIV P24', 'Coleta de sangue, Jejum: 4 horas.'),
(132, 'ANTITROMBINA III', 'Favor entrar em contato com nossa central de atendimento para verificar qual a unidade mais próxima onde pode ser realizado o exame, pois, a coleta deste exame não é realizada em todas as unidades.'),
(133, 'APOLIPOPROTEÍNA A-1 APOA', 'Coleta de sangue, Jejum 12 a 14 horas.'),
(134, 'APOLIPOPROTEÍNA B-100; APOB', 'Coleta de sangue, Jejum 12 a 14 horas.'),
(135, 'ARBOVÍRUS PESQUISA DE ANTICORPOS IgG', 'Coleta de sangue, Jejum de 4 horas.'),
(136, 'ARSÊNIO URINÁRIO', 'Colher uma amostra de urina antes da jornada de trabalho do último dia de trabalho da semana.'),
(137, 'ASLO', 'Coleta de sangue, Jejum de 4 horas.'),
(138, 'ASPERGILUS SOROLOGIA PARA', 'Coleta de sangue, Jejum: 4 horas.'),
(139, 'AVIDEZ PARA CITOMEGALOVÍRUS', 'Coleta de sangue, Jejum: 4 horas.'),
(140, 'AVIDEZ PARA RUBÉOLA', 'Coleta de sangue, Jejum: 4 horas.'),
(141, 'AVIDEZ PARA TOXOPLASMOSE', 'Coleta de sangue, Jejum de 4 horas.'),
(142, 'ACIDO ÚRICO', 'Coleta de sangue com Jejum de 4 horas'),
(143, 'ANTICORPOS ANTI ADRENAL', 'Consultar nossa central de atendimento.'),
(144, 'ANTICORPOS ANTI CORE IgM', 'Coleta de sangue, Jejum de 4 horas.'),
(145, 'ANTICORPOS ANTI ENDOMÍSIO (IgA, IgG, IgM)', 'Coleta de sangue, Jejum 8 horas.'),
(146, 'ANTICORPOS ANTI- EPITÉLIO', 'Consultar nossa central de atendimento.'),
(147, 'ANTICORPOS ANTI GANGLIOSÍDEO (ANTI-GM1)', 'Coleta de sangue, Jejum de 4 horas.'),
(148, 'ANTICORPOS ANTI GLOMÉRULO', 'Coleta de sangue, Jejum 4 horas.'),
(149, 'ANTICORPOS ANTI-RO SS-A', 'Coleta de sangue, Jejum: 8 horas.'),
(150, 'ANTICORPOS ANTI-Sm (Smith)', 'Coleta de sangue, Jejum: 8 horas.'),
(151, 'ANTICORPOS ANTI-TIREOGLOBULINA', 'Coleta de sangue, Jejum: 4 horas.'),
(152, 'ANTICORPOS ANTI-VARICELLA ZOSTER - IgG e IgM', 'Vide Herpes Zoster'),
(153, 'ASPARTATO AMINOTRANSFERASE; TGO; AST', 'Coleta de sangue,com jejum de 4 horas. Não ingerir bebida alcóolica no dia que antecede a coleta.'),
(154, 'ANTICORPOS IGG ANTI RUBEOLA', 'Coleta de sangue, Jejum 4 horas.'),
(155, 'ANTICORPOS ANTI-CENTROMERO', 'Coleta de Sangue. Jejum: 8 horas'),
(156, 'ANTÍGENO DELTA DA HEPATITE', 'Coleta de sangue, Jejum de 4 horas.'),
(157, 'BETA ESTRADIOL / ESTRADIOL / E2', 'Coleta de sangue, Jejum 4 horas.'),
(158, 'BACTERIOSCOPIA DE FEZES', 'Colher as fezes em frasco estéril e encaminhar ao laboratório.'),
(159, 'BACTERIOSCOPIA DE URINA', 'Colher a primeira urina da manhã ou 2 horas após a última micção com rigorosa assepsia. Desprezar o 1º jato e colher restante em frasco esteril. Material pode ser coletado no laboratorio ou em casa. Entregar a amostra em até 2 horas após a coleta. Exame realizado todos os dias. Confirmar horário de entrega do material com unidade de sua preferência (variação de horario conforme unidade de atendimento).'),
(160, 'BACTERIOSCOPIA DE SECREÇÃO URETRAL', 'Cultura de secreção uretral, não é necessário jejum.Entrar em contato com o laboratório se não quiser coletar com enfermeira.Antes da coleta nao pode tomar banho, usar medicação local e não ter urinado.'),
(161, 'BACTERIOSCOPIA DE SECREÇÃO VAGINAL', 'Coleta realizada todos os dias. Pode tomar banho e urinar. Não pode: estar menstruada, ter tido relação sexual nos ultimos 2 dias, usar creme vaginal, ter realizado exame ginecologico de toque/ transvaginal, fazer uso de ducha intima'),
(162, 'BETA CAROTENO; Caroteno', 'Coleta de sangue, JEjum de 8 horas para adulto e 4 horas para Crianças menores que 1 ano.'),
(163, 'BETA 2 MICROGLOBULINA no sangue; b2-microglobulina no sangue', 'Coleta de sangue,Jejum: 4 horas.'),
(164, 'BETA-2 MICROGLOBULINA NA URINA DE 24 HORAS; b2-microglobulina na urina de 24 horas', 'Vir até o laboratório para adquirir os frascos de urina. Orientações para a coleta:- Esvaziar a bexiga e anotar o horário. Colher todas as micções até o mesmo horário do dia seguinte, inclusive a micção daquele horário. Durante a coleta a urina deve ser mantida sob refrigeração. Terminando a coleta da urina, trazer o material ao laboratório o mais rápido possível.'),
(165, 'BETA - HCG QUANTITATIVO - SANGUE; BHCG QUANTITATIVO', 'Coleta de sangue, Jejum não necessário.'),
(166, 'BILIRRUBINAS TOTAIS e FRAÇÕES', 'Coleta de sangue, com Jejum de 4 horas'),
(167, 'BORRELIA BURGDORFERI SOROLOGIA PARA', 'Vide Sorologia para Lyme'),
(168, 'BRCA1 e BRCA2', 'Favor entrar em contato com nossa central de atendimento.'),
(169, 'BLASTOMICOSE, SOROLOGIA PARA; Sorologia para BSA', 'Coleta de sangue, Jejum: 4 horas.'),
(170, 'Bence Jones, proteína de', 'Exame realizado na urina de 24 horas. Vir ao laboratório retirar o frasco de para a coleta da urina e as instruções de coleta.'),
(171, 'Biópsia', 'Higiene no local da biópsia 1/2 hora antes da coleta do material.'),
(172, 'ERITROGRAMA / SERIE VERMELHA / HEMATIMETRIA', 'Coleta de sangue, JEJUM NAO NECESSARIO.'),
(173, 'EPSTEIN BARR VÍRUS (EBV); Sorologia para EBV; Anticorpos Anti-EBV', 'Coleta de sangue, Jejum: 4 horas'),
(174, 'ERITROGRAMA; Serie Vermelha', 'Coleta de sangue, Jejum não necessário.'),
(175, 'ERITROPOIETINA', 'Coleta de sangue, Jejum não necessário. Consulte nossa central de atendimento para verificar qual unidade mais próxima, pois, a coleta não é realizada em todas as unidades.'),
(176, 'ESPERMOCULTURA - CULTURA DE ESPERMA', 'Realizado todos os dias. Não há necessidade de abstinência sexual prévia para realização do exame. O material pode ser coletado em casa, porem, deve retirar no Confiance, o frasco estéril para armazenar o material e receber as instruções necessárias. A amostra precisa ser entregue em até 3 horas após a coleta. Caso o paciente tenha também espermograma este período de entrega passa para apenas 20 minutos após a coleta.Se houver também solicitação de exame de urina , o cliente deve colher a urina '),
(177, 'ESPERMOGRAMA', 'Entrar em contato com nossa central de atendimento para obter as instruções de coleta. Este exame é coletado de segunda à sexta das 8:00 às 15:30 na Unidade Campos Eliseos, sem a necessidade de agendamento prévio.'),
(178, 'EXAME À FRESCO DE FEZES, FEZES À FRESCO', 'Colher a amostra de fezes recente sem conservantes em local limpo e seco (sobre um papel alumínio ou papel toalha) e transferir uma parte da amostra para o frasco fornecido pelo laboratório ou comprado na farmácia e se colher em casa trazer imediatamente ao laboratório. Se o médico solicitar várias amostras, sempre seguir as mesmas orientações.'),
(179, 'ELETROFORESE DE PROTEÍNAS (GAMAGLOBULINA)', 'Coleta de sangue, Jejum não necessário.'),
(180, 'E1; ESTRONA', 'Vide Estrona – E1.'),
(181, 'E2; ESTRADIOL', 'Coleta de sangue, Jejum 4 horas. Estar atento se o médico solicitou a coleta do exame em dia específico no ciclo menstrual.'),
(182, 'E3; ESTRIOL', 'Vide Estriol – E3.'),
(183, 'ECA ; ENZIMA CONVERSORA DE ANGIOTENSINA', 'Coleta de sangue, Jejum não necessário'),
(184, 'EHRLICHIA CHAFFEENSIS Anticorpos Anti- Erlichia chaffeensis', 'Vide Erlichia Chaffeensis, Ehrlichia chaffeensis, Anticorpos anti (IgG & IgM).'),
(185, 'ELETROFORESE DE HEMOGLOBINA; ELEHB; EletroHB', 'Coleta de sangue, Jejum não crítico.'),
(186, 'ELETROFORESE DE PROTEÍNAS COM IMUNOFIXAÇÃO', 'Vide Imunoeletroforese'),
(187, 'EPINEFRINA - NOR-EPINEFRINA - DOPAMINA', 'Vide Catecolaminas Plasmáticas.'),
(188, 'ESTRADIOL; E2', 'Coleta de sangue, Jejum 4 horas. Estar atento se o médico solicitou a coleta do exame em dia específico no ciclo menstrual.'),
(189, 'ESTRIOL; E3', 'Coleta de sangue, Jejum 4 horas.'),
(190, 'ESTRONA; E1', 'Coleta de sangue, Jejum não necessário.'),
(191, 'ESTUDO MOLECULAR DA HEMOCROMATOSE; Hemocromatose', 'Coleta de sangue, Jejum 4 horas.'),
(192, 'Eletroforese das Proteinas Urinárias', 'Exame realizado na urina de 24 horas. Vir ao laboratório retirar o frasco para a coleta da urina e as instruções de coleta.'),
(193, 'GAMA GT ; GAMA GLUTAMIL TRANSPEPTIDASE', 'Coleta de sangue,com jejum de 4 horas. Não ingerir bebida alcóolica no dia que antecede a coleta.'),
(194, 'GAMAGLOBULINA (ELETROFORESE DE PROTEÍNAS)', 'Coleta de sangue, Jejum não necessário.'),
(195, 'GASOMETRIA', 'Favor entrar em contato com nossa central de atendimento.'),
(196, 'GASTRINA', 'Coleta de sangue, Jejum: Mínimo de 10horas obrigatório. Se possível, com o consentimento de seu médico, suspender medicamentos, principalmente inibidores da bomba protoionica (omeprazol e correlatos) e bloqueadores H2 (cimetidina, ranitidina e correlatos) por 07 dias. NÃO SUSPENDER NENHUM MEDICAMENTO SEM AUTORIZAÇÃO MÉDICA.'),
(197, 'GLICOSE JEJUM; GLICEMIA DE JEJUM', 'Jejum 8 a 12 horas, ou segundo orientação médica. Crianças entre uma mamada e outra ou conforme orientação médica'),
(198, 'GLICOSÚRIA DE 24 HORAS', 'Colher urina de 24 horas. Desprezar a primeira urina da manhã e anotar o horário. Colher todas as outras micções até o horário em que deu início a coleta. Manter o frasco de coleta refrigerado. Enviar a urina até o laboratório assim que terminar a coleta. O frasco para coleta é fornecido pelo laboratorio.'),
(199, 'GLOBULINA TRANSPORTADORA DE HORMÔNIOS SEXUAIS; SHBG', 'Coleta de sangue, Jejum: 4 horas.'),
(200, 'GABITRIL', 'Vide Tiagabina'),
(201, 'GAMAGLOBULINA (ELETROFORESE DE PROTEÍNAS)', 'Coleta de sangue, Jejum não necessário.'),
(202, 'GENTAMICINA; Dosagem de Gentamicina no sangue', 'Favor consultar a central de atendimento.'),
(203, 'GLICOSE 6 - FOSFATO DESIDROGENASE; G6PD', 'Coleta de sangue, Jejum não necessário.'),
(204, 'GM1 - Anticorpos', 'Vide Anticorpos Anti-GM1'),
(205, 'GRUPO ABO; Tipo sanguíneo; Tipagem Sanguínea', 'Coleta de sangue, Jejum não necessário.'),
(206, 'GPT', 'Coleta de sangue,com jejum de 4 horas. Não ingerir bebida alcóolica no dia que antecede a coleta.'),
(207, 'GOT', 'Coleta de sangue,com jejum de 4 horas. Não ingerir bebida alcóolica no dia que antecede a coleta.'),
(208, 'GLICOSE PÓS PRANDIAL', 'Coleta de sangue realizada 2 horas após o início do almoço ou dieta prescrita pelo médico assistente. Normalmente este exame deve ser realizado no mesmo dia em que foi coletada a Glicemia de Jejum. ATENÇÃO!!! Este exame não é realizado aos sábados; domingos e feriados.'),
(209, 'GLICOSE PÓS CAFÉ', 'Coleta de sangue realizada 2 horas após o início do café ou dieta prescrita pelo médico assistente. Normalmente este exame deve ser realizado no mesmo dia em que foi coletada a Glicemia de Jejum. ATENÇÃO!!! Este exame não é realizado aos sábados; domingos e feriados.'),
(210, 'GLICOSE PRÉ JANTAR', 'Coleta de sangue realizada 2 horas após o início do café da tarde ou dieta prescrita pelo médico assistente. Normalmente este exame deve ser realizado no mesmo dia em que foi coletada a Glicemia de Jejum. ATENÇÃO!!! Este exame não é realizado aos sábados; domingos e feriados.'),
(211, 'GLICOSÚRIA FRACIONADA', 'Desprezar a primeira micção do dia e anotar o horário. (Preferencialmente começar a coleta as 06 horas da manhã). Realizar a coleta do primeiro período das 06 as 12 horas (identificar o frasco). Segundo período das 12 as 18 horas (identificar o frasco). Terceiro período das 18 as 00 hora (identificar o frasco). Quarto período das 0 as 06 horas (identificar o frasco). Manter os frascos refrigerados e enviar ao Laboratório assim que terminar a coleta. O frasco para coleta é fornecido pelo laborato');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id_usuario` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `perfil_usuario` tinyint(4) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome`, `telefone`, `email`, `password`, `perfil_usuario`) VALUES
(1, 'gestor', '(19)3223-4565', 'gestor@email.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 2),
(2, 'administrador', '(17)9987-7652', 'adm@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1),
(3, 'danilo.missio', '(19)3388-1201', 'danilo.missio@hotmail.com', '99996b911567c83cce17cdf194f314975c57ddf1', 1),
(4, 'pedro.gimenes', '(19)3213-7060', 'pedrov.gimenes@hotmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1),
(5, 'vinicius.romao', '(19)3254-9521', 'viiny.romao@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 2),
(6, 'gabriel.piccolo', '(19)3874-6666', 'gabelocao@gmai.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1),
(11, 'danilo', '33885101', 'danilomissio@hotmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `duvidas`
--
ALTER TABLE `duvidas`
 ADD PRIMARY KEY (`id_duvida`);

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
 ADD PRIMARY KEY (`id_estado`);

--
-- Indexes for table `exame`
--
ALTER TABLE `exame`
 ADD PRIMARY KEY (`id_exame`), ADD KEY `exame_ibfk_1` (`id_paciente`), ADD KEY `id_tabelaExame` (`id_tabelaExame`), ADD KEY `id_status` (`id_status`);

--
-- Indexes for table `logradouro`
--
ALTER TABLE `logradouro`
 ADD PRIMARY KEY (`id_logradouro`);

--
-- Indexes for table `paciente`
--
ALTER TABLE `paciente`
 ADD PRIMARY KEY (`id_paciente`), ADD UNIQUE KEY `cod_verif` (`cod_verif`), ADD KEY `id_logradouro` (`id_logradouro`), ADD KEY `fk_estado` (`id_estado`);

--
-- Indexes for table `status_exame`
--
ALTER TABLE `status_exame`
 ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tabela_exame`
--
ALTER TABLE `tabela_exame`
 ADD PRIMARY KEY (`id_tabelaExame`), ADD KEY `id_tabelaExame` (`id_tabelaExame`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id_usuario`), ADD UNIQUE KEY `email` (`email`), ADD UNIQUE KEY `email_2` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `duvidas`
--
ALTER TABLE `duvidas`
MODIFY `id_duvida` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `estado`
--
ALTER TABLE `estado`
MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `exame`
--
ALTER TABLE `exame`
MODIFY `id_exame` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `logradouro`
--
ALTER TABLE `logradouro`
MODIFY `id_logradouro` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `paciente`
--
ALTER TABLE `paciente`
MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tabela_exame`
--
ALTER TABLE `tabela_exame`
MODIFY `id_tabelaExame` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `exame`
--
ALTER TABLE `exame`
ADD CONSTRAINT `exame_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `exame_ibfk_2` FOREIGN KEY (`id_tabelaExame`) REFERENCES `tabela_exame` (`id_tabelaExame`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `exame_ibfk_3` FOREIGN KEY (`id_status`) REFERENCES `status_exame` (`id_status`);

--
-- Limitadores para a tabela `paciente`
--
ALTER TABLE `paciente`
ADD CONSTRAINT `fk_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
ADD CONSTRAINT `fk_logradouro` FOREIGN KEY (`id_logradouro`) REFERENCES `logradouro` (`id_logradouro`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
