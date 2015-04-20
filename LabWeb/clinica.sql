-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 17-Abr-2015 às 06:20
-- Versão do servidor: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `duvidas`
--

CREATE TABLE IF NOT EXISTS `duvidas` (
`id_duvida` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mensagem` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `duvidas`
--

INSERT INTO `duvidas` (`id_duvida`, `nome`, `email`, `mensagem`, `status`) VALUES
(9, 'asdfsadfsadf', 'as', 'sad', 'Pendente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
`id_estado` int(11) NOT NULL,
  `sigla_estado` char(2) NOT NULL,
  `nome_estado` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

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
  `descricao` varchar(200) NOT NULL,
  `id_status` int(4) NOT NULL,
  `Data_exame` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `exame`
--

INSERT INTO `exame` (`id_exame`, `id_tabelaExame`, `id_paciente`, `descricao`, `id_status`, `Data_exame`) VALUES
(1, 7, 11, 'Cu largo', 1, '2015-04-01'),
(2, 91, 11, 'Oi', 1, '2015-04-03'),
(3, 10, 11, 'asdasdas', 2, '2015-04-05'),
(4, 10, 11, 'asdasdas', 1, '2015-04-05'),
(5, 13, 11, 'asdasdas', 1, '2015-04-05'),
(6, 14, 11, 'asdasdas', 1, '2015-04-05'),
(7, 9, 11, 'asdasd', 1, '2015-04-06'),
(8, 15, 11, 'asdasd', 1, '2015-04-06'),
(9, 7, 11, 'asdasd', 1, '2015-04-06'),
(10, 14, 11, 'asdasd', 1, '2015-04-06'),
(11, 13, 11, 'asdasd', 1, '2015-04-06'),
(12, 7, 11, 'asdasd', 1, '2015-04-06'),
(13, 10, 11, 'asdasd', 1, '2015-04-06'),
(14, 9, 11, 'asdasd', 1, '2015-04-06'),
(15, 8, 11, 'asdasd', 1, '2015-04-06'),
(16, 7, 11, 'asdasd', 1, '2015-04-06'),
(17, 7, 11, 'asdasd', 1, '2015-04-06'),
(18, 9, 11, 'asdasd', 1, '2015-04-06'),
(19, 9, 11, 'asdasd', 1, '2015-04-06'),
(20, 7, 11, 'asdasd', 1, '2015-04-06'),
(21, 9, 11, 'asdasd', 1, '2015-04-06'),
(22, 12, 11, 'asdasd', 1, '2015-04-06'),
(23, 15, 11, 'asdasd', 1, '2015-04-06'),
(24, 12, 11, 'asdasd', 1, '2015-04-06'),
(25, 9, 11, 'asdasd', 1, '2015-04-06'),
(26, 9, 11, 'asdasd', 1, '2015-04-06'),
(27, 10, 11, 'asdasd', 1, '2015-04-06'),
(28, 10, 11, 'asdasd', 1, '2015-04-06'),
(29, 9, 11, 'asdasd', 1, '2015-04-06'),
(30, 10, 11, 'asdasd', 1, '2015-04-06'),
(31, 10, 11, 'asdasd', 1, '2015-04-06'),
(32, 9, 11, 'asdasd', 1, '2015-04-06'),
(33, 12, 11, 'asdasd', 1, '2015-04-06'),
(34, 7, 11, 'asdasd', 1, '2015-04-06'),
(35, 13, 11, 'asdasd', 1, '2015-04-06'),
(36, 12, 11, 'asdasd', 1, '2015-04-06'),
(37, 8, 11, 'asdasd', 1, '2015-04-06'),
(38, 8, 11, 'asdasd', 1, '2015-04-06'),
(39, 10, 11, 'asdasd', 1, '2015-04-06'),
(40, 13, 11, 'asdasd', 1, '2015-04-06'),
(41, 9, 11, 'asdasd', 1, '2015-04-06'),
(42, 15, 11, 'asdasd', 1, '2015-04-06'),
(43, 7, 11, 'asdasd', 2, '2015-04-06'),
(44, 8, 11, 'asdasd', 1, '2015-04-06'),
(45, 10, 11, 'asdasd', 1, '2015-04-06'),
(46, 8, 11, 'asdasd', 1, '2015-04-06'),
(47, 7, 11, 'asdasd', 1, '2015-04-06'),
(48, 14, 11, 'asdasd', 1, '2015-04-06'),
(49, 13, 11, 'asdasd', 1, '2015-04-06'),
(50, 8, 11, 'asdasd', 2, '2015-04-06'),
(51, 9, 11, 'asdasd', 1, '2015-04-06'),
(52, 8, 11, 'asdasd', 1, '2015-04-06'),
(53, 10, 11, 'asdasd', 1, '2015-04-06'),
(54, 9, 11, 'asdasd', 1, '2015-04-06'),
(55, 8, 11, 'asdasd', 1, '2015-04-06'),
(56, 14, 11, 'asdasd', 1, '2015-04-06'),
(57, 14, 11, 'asdasd', 1, '2015-04-06'),
(58, 10, 11, 'asdasd', 1, '2015-04-06'),
(59, 13, 11, 'asdasd', 1, '2015-04-06'),
(60, 10, 11, 'asdasd', 1, '2015-04-06'),
(61, 11, 11, 'asdasd', 1, '2015-04-06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `logradouro`
--

CREATE TABLE IF NOT EXISTS `logradouro` (
`id_logradouro` int(11) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `bairro` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `logradouro`
--

INSERT INTO `logradouro` (`id_logradouro`, `cep`, `endereco`, `bairro`) VALUES
(1, '13033615', 'Rua Antonio Rodrigues de Carvalho', 'Vila Proost Souza'),
(2, '13033720', 'vila cu de rola', 'meu pau');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

CREATE TABLE IF NOT EXISTS `paciente` (
`id_paciente` int(11) NOT NULL,
  `cod_verif` int(20) NOT NULL,
  `nome_paciente` varchar(200) NOT NULL,
  `rg_paciente` varchar(20) NOT NULL,
  `cpf_paciente` varchar(20) NOT NULL,
  `id_logradouro` int(11) NOT NULL,
  `cidade_endereco` varchar(30) NOT NULL,
  `numero_endereco` int(8) NOT NULL,
  `complemento_endereco` varchar(200) DEFAULT NULL,
  `id_estado` int(11) NOT NULL,
  `datanasc_paciente` varchar(10) NOT NULL,
  `telefone_paciente` varchar(20) DEFAULT NULL,
  `email_paciente` varchar(100) DEFAULT NULL,
  `convenio_paciente` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`id_paciente`, `cod_verif`, `nome_paciente`, `rg_paciente`, `cpf_paciente`, `id_logradouro`, `cidade_endereco`, `numero_endereco`, `complemento_endereco`, `id_estado`, `datanasc_paciente`, `telefone_paciente`, `email_paciente`, `convenio_paciente`) VALUES
(11, 702900142, 'Pedro Gimenes', '414988978', '39998934869', 1, 'Campinas', 1470, 'nulo', 25, '16/04/1994', '23136546467', 'pedrov.gimenes@hotma', 'Unimed');

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
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome`, `telefone`, `email`, `password`, `perfil_usuario`) VALUES
(1, 'gestor', '32234565', 'pic@rage.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 2),
(2, 'administrador', '998767652', 'adm@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1),
(3, 'danilo', '33885101', 'danilo.missio@hotmail.com', 'a95413d225237417f132200c9772bd22583ab838', 2);

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
 ADD PRIMARY KEY (`id_paciente`), ADD KEY `id_logradouro` (`id_logradouro`), ADD KEY `fk_estado` (`id_estado`);

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
 ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `duvidas`
--
ALTER TABLE `duvidas`
MODIFY `id_duvida` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `estado`
--
ALTER TABLE `estado`
MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `exame`
--
ALTER TABLE `exame`
MODIFY `id_exame` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `logradouro`
--
ALTER TABLE `logradouro`
MODIFY `id_logradouro` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `paciente`
--
ALTER TABLE `paciente`
MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tabela_exame`
--
ALTER TABLE `tabela_exame`
MODIFY `id_tabelaExame` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
