-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 30 Septembre 2015 à 09:27
-- Version du serveur :  5.6.25
-- Version de PHP :  5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `agro`
--
CREATE DATABASE IF NOT EXISTS `agro` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `agro`;

-- --------------------------------------------------------

--
-- Structure de la table `geo-agro`
--

CREATE TABLE IF NOT EXISTS `geo-agro` (
  `id` int(11) NOT NULL,
  `Nom` varchar(57) DEFAULT NULL,
  `Activite` varchar(255) DEFAULT NULL,
  `Contact` varchar(34) DEFAULT NULL,
  `Telephone` varchar(14) DEFAULT NULL,
  `Employes` varchar(4) DEFAULT NULL,
  `Lng` decimal(25,7) DEFAULT NULL,
  `Lat` decimal(24,7) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `geo-agro`
--

INSERT INTO `geo-agro` (`id`, `Nom`, `Activite`, `Contact`, `Telephone`, `Employes`, `Lng`, `Lat`) VALUES
(1, 'PERRIOL PRODUCTION', 'Activités de soutien aux cultures', '', '', '1', '4.8378370', '45.2643760'),
(2, 'HYPHARM', 'Élevage d''autres animaux', 'grimaudfreres@grimaudfreres.com', '04 75 31 41 17', 'n.d.', '4.8583419', '45.2432328'),
(3, 'SARL DAUTHEVILLE TRAITEUR', 'Charcuterie', '', '04 75 40 66 26', 'n.d.', '4.7309979', '44.9474590'),
(4, 'SARL HORTICOLE DES CHARMES', 'Reproduction de plantes', '', '04 75 31 61 44', 'n.d.', '4.8867370', '45.2698970'),
(5, 'SARL AUX DELICES D''ARLANDES', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 31 43 75', '3', '4.8878990', '45.2696195'),
(6, 'KERRY INGREDIENTS FRANCE', 'Fabrication de cacao et chocolat et de produits de confiserie', '', '04 74 84 08 53', 'n.d.', '4.8988143', '45.2983808'),
(7, 'CARAMANFRUIT RHONE-ALPES', 'Transformation et conservation de fruits', 'contact@caramanfruit.fr', '04 75 31 65 70', 'n.d.', '4.8680615', '45.2687066'),
(8, 'CAP''FRUIT', 'Transformation et conservation de fruits', 'info@capfruit.com', '04 75 31 40 22', 'n.d.', '4.8619498', '45.2677337'),
(9, 'DEROUX FRERES', 'Élevage de volailles', 'oeufdescollines@wanadoo.fr', '04 75 45 66 75', '15', '5.0670258', '45.1429772'),
(10, 'SCEA LA THONINIERE', 'Culture de fruits à pépins et à noyau', '', '', 'n.d.', '4.9859808', '45.0151380'),
(11, 'SARL MAX MELLOR', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 59 50 32', '12', '4.9413126', '44.8687528'),
(12, 'FERME DES VOLONTEUX', 'Culture de légumes', '', '04 75 25 71 56', 'n.d.', '4.9467240', '44.8522720'),
(13, 'SCA CAVE DES CLAIRMONTS', 'Vinification', 'contact@cavedeclairmont.com', '04 75 84 61 91', '7', '4.9142519', '45.0273309'),
(14, 'DAVID REYNAUD', 'Vinification', '', '', 'n.d.', '4.9284866', '45.0272609'),
(15, 'AUX DELICES DU PALAIS', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 84 83 81', 'n.d.', '4.9280906', '45.0179274'),
(16, 'JARDIN DE BRUYERE', 'Autres cultures non permanentes', '', '', '1', '4.8374760', '45.2159440'),
(17, 'LA DUCALE CHIPS ARTISANALES', 'Transformation et conservation de pommes de terre', '', '04 75 80 49 50', 'n.d.', '4.6384827', '44.9186016'),
(18, 'AOSTE SNC OU A SNC', 'Préparation industrielle de produits à base de viande', 'recrutement@campofriofg.com', '', 'n.d.', '4.7015549', '44.9199132'),
(19, 'SARL LIONNETON', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 70 48 54', '5', '5.0671388', '45.0291262'),
(20, 'SAINT JEAN', 'Fabrication de pâtes alimentaires', 'saint-jean@raviole.com', '04 75 72 31 31', 'n.d.', '5.0509480', '45.0404190'),
(21, 'PODIS PODIS', 'Fabrication industrielle de pain et de pâtisserie fraîche', '', '', 'n.d.', '5.0400840', '45.0195290'),
(22, 'LES DELICES DAUPHINOIS', 'Fabrication industrielle de pain et de pâtisserie fraîche', '', '04 75 71 23 01', 'n.d.', '5.0313458', '45.0155254'),
(23, 'LA BANETIERE', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 02 57 96', 'n.d.', '5.0405911', '45.0232872'),
(24, 'DROME SALAISONS', 'Préparation industrielle de produits à base de viande', '', '04 75 72 14 80', '12', '5.0359740', '45.0174920'),
(25, 'BOULANG PATISSERIE JEAN CHARLES PASCALIS', 'Boulangerie et boulangerie-pâtisserie', 'info@pascalis.com', '04 75 02 08 46', 'n.d.', '5.0472582', '45.0386119'),
(26, 'LE FOURNIL DE VINCENT LE FORNIL DE VINCENT', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 43 19 18', 'n.d.', '4.8978869', '44.9478298'),
(27, 'LE FOURNIL DE VINCENT', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 83 96 85', 'n.d.', '4.9069462', '44.9587865'),
(28, 'CREASUCRE', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 43 58 21', 'n.d.', '4.9115800', '44.9542038'),
(29, 'CREACHOC', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 78 00 93', '3', '4.8976355', '44.9480206'),
(30, 'BERGAMA', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 43 26 98', '1', '4.8942325', '44.9418046'),
(31, 'BEC BOURG', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 60 51 34', 'n.d.', '4.8870939', '44.9647260'),
(32, 'SAS CHRYSTEL PRIMEURS', 'Transformation et conservation de fruits', '', '04 75 45 17 58', '11', '4.9365800', '45.1469949'),
(33, 'SARL SILOS DE LA BOURNE', 'Fabrication d''aliments pour animaux de ferme', '', '04 75 59 03 39', 'n.d.', '4.9884430', '44.9036630'),
(34, 'LESICKI TRAITEUR', 'Charcuterie', '', '04 75 59 04 18', '1', '5.0203120', '44.8993400'),
(35, 'LE BANETIER DE LA FUSEE', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 55 95 22', '7', '5.0203120', '44.8993400'),
(36, 'LA DRAGEE DE VALENCE', 'Fabrication de cacao et chocolat et de produits de confiserie', 'info@drageepraline.com', '04 75 43 02 57', '9', '5.0065582', '44.8994074'),
(37, 'JAJECO', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 59 03 51', '8', '5.0195159', '44.8996522'),
(38, 'GERENTES', 'Fabrication de fromage', 'laiterie@gerentes-sa.fr', '', 'n.d.', '4.9585340', '44.9407990'),
(39, 'EMILE BEC BOULANGERIE EMILE BEC', 'Boulangerie et boulangerie-pâtisserie', '', '', 'n.d.', '5.0092999', '44.9023894'),
(40, 'DAME BLANCHE', 'Activités de soutien aux cultures', '', '04 75 59 08 77', '6', '4.9875850', '44.8967900'),
(41, 'COMPTOIR DROMOIS DES VIANDES', 'Préparation industrielle de produits à base de viande', '', '04 75 59 09 79', 'n.d.', '5.0099569', '44.9018567'),
(42, 'SARL MIELLERIE DE CHANTECLAIR', 'Élevage d''autres animaux', '', '04 75 58 02 76', '1', '4.2151500', '44.4561459'),
(43, 'ALICS', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 07 33 54', '13', '4.9263094', '45.0545033'),
(44, 'ANTARTIC II', 'Autres activités du travail des grains', 'ingredients@antartic2.fr', '04 75 60 82 50', '157', '4.8334960', '44.8676480'),
(45, 'CHARCUTERIE DES LIMOUCHES', 'Préparation industrielle de produits à base de viande', 'chomaratgilles@yahoo.fr', '04 75 59 80 77', 'n.d.', '5.0712040', '44.9221050'),
(46, 'LES VOLAILLERS DU DAUPHINE CAPAG', 'Transformation et conservation de la viande de volaille', 'capagbureau@orange.fr', '04 75 68 62 73', '47', '4.9614025', '45.2277450'),
(47, 'DOCHER FRERES', 'Activités de soutien aux cultures', '', '04 75 68 61 19', '4', '4.9756320', '45.2406350'),
(48, 'DROME CAPTURE EFFAROUCHEMENT', 'Élevage d''autres animaux', '', '', 'n.d.', '4.9834944', '45.0268447'),
(49, 'SARL DOMAINE AVICOLE DU GOUBET', 'Élevage de volailles', '', '09 67 35 97 32', '2', '5.0906800', '45.0061810'),
(50, 'LE FOURNIL DU GOUBET', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 47 23 04', 'n.d.', '5.0913027', '45.0049860'),
(51, 'DROM''ALIMENTS', 'Fabrication d''aliments pour animaux de ferme', 'benoit.dromoeufs@orange.fr', '04 75 72 46 43', '1', '5.0906800', '45.0061810'),
(52, 'BERNARD ROYAL DAUPHINE SA', 'Transformation et conservation de la viande de boucherie', 'contact-brd@gastronome.fr', '04 75 70 35 33', 'n.d.', '5.0906800', '45.0061810'),
(53, '5 J', 'Activités de soutien aux cultures', '', '', '1', '5.0906800', '45.0061810'),
(54, 'GB PLANTS', 'Autres cultures non permanentes', '', '', 'n.d.', '4.9066549', '45.1075573'),
(55, 'GB PLANTS', 'Autres cultures non permanentes', '', '04 75 05 20 14', 'n.d.', '4.9173853', '45.1048466'),
(56, 'AUX DELICES DU PALAIS', 'Boulangerie et boulangerie-pâtisserie', '', '', 'n.d.', '4.9593960', '45.0784100'),
(57, 'SERRES DES LACS', 'Reproduction de plantes', '', '04 75 40 34 52', 'n.d.', '4.8516665', '44.9569097'),
(58, 'E.A.R.L. LEMENICIER', 'Culture de la vigne', '', '04 75 81 00 57', 'n.d.', '4.5088830', '44.6659110'),
(59, 'DROME LAPINS', 'Transformation et conservation de la viande de boucherie', 'dromelapin@loeul-et-piriot.com', '04 75 45 63 21', 'n.d.', '5.0710740', '45.1739630'),
(60, 'FROMAGERIE DU VIVARAIS', 'Fabrication de fromage', '', '04 75 06 62 71', 'n.d.', '4.4979264', '45.0047345'),
(61, 'TEIRE ET FILS', 'Activités de soutien aux cultures', '', '04 75 60 63 01', '2', '4.8427204', '44.8209193'),
(62, 'SARL LES JARDINS DU VERCORS', 'Autres cultures non permanentes', '', '04 75 57 31 71', '2', '4.8688991', '44.8557819'),
(63, 'SARL CLEYSSAC FRERES', 'Activités de soutien aux cultures', '', '04 75 57 12 07', '4', '4.8939090', '44.8369290'),
(64, 'PATISSERIE PASQUIER ETOILE', 'Fabrication industrielle de pain et de pâtisserie fraîche', 'pasquier@pasquier.fr', '04 75 57 89 00', '161', '4.8939090', '44.8369290'),
(65, 'OLAGRI SEMENCES', 'Activités de soutien aux cultures', '', '04 75 83 77 70', 'n.d.', '4.8882970', '44.8187190'),
(66, 'EARL DE NAZARETH', 'Culture de céréales (à l''exception du riz) et de légumineuses et de graines oléagineuses', '', '04 75 60 63 01', 'n.d.', '4.8427204', '44.8209193'),
(67, 'BRIOCHE PASQUIER ETOILE', 'Fabrication industrielle de pain et de pâtisserie fraîche', 'accueilbps@pasquier.fr', '04 75 57 65 00', '229', '4.8658674', '44.8789924'),
(68, 'JP VOUILLON', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 05 08 60', '8', '5.0873020', '45.0824910'),
(69, 'PARET LOUZE', 'Culture de fruits à pépins et à noyau', 'paret-louze@terre-net.fr', '04 75 71 56 45', 'n.d.', '4.9534440', '45.0516020'),
(70, 'PAGC', 'Pâtisserie', '', '04 75 43 64 92', '2', '4.8775028', '44.9313459'),
(71, 'LE FOURNIL DE LAETI', 'Boulangerie et boulangerie-pâtisserie', 'lefournildelaeti1@gmail.com', '04 75 81 23 19', 'n.d.', '4.8672311', '44.9393727'),
(72, 'LA MEULE DE PIERRE', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 55 47 88', '14', '4.8660814', '44.9238403'),
(73, 'KGRO', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 44 26 41', '8', '4.8774209', '44.9345378'),
(74, 'PERUCCA', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 68 98 05', '6', '5.0289070', '45.2573430'),
(75, 'ENTREPRISE TRAVAUX AGRICOLES PEYRARD MICKAEL', 'Activités de soutien aux cultures', '', '04 75 59 38 41', 'n.d.', '5.0200390', '44.8243440'),
(76, 'AUX SAVEURS DE LA GALAURE', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 03 16 50', '1', '4.9010320', '45.2002219'),
(77, 'SARL CEPTENTRION''AL CEPTENTRION''AL', 'Activités de soutien aux cultures', '', '', 'n.d.', '4.8454070', '45.0134649'),
(78, 'SARL CEPTENTRION''AL', 'Activités de soutien aux cultures', '', '06 13 16 46 36', '17', '4.8454070', '45.0134649'),
(79, 'DOMAINES JABOULET', 'Culture de la vigne', 'info@jaboulet.com', '04 75 09 79 37', 'n.d.', '4.8425335', '44.9970764'),
(80, 'REGAL', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 56 26 32', 'n.d.', '4.7807464', '44.7997073'),
(81, 'LE MOULIN DE LA CHAUME', 'Fabrication industrielle de pain et de pâtisserie fraîche', '', '04 75 62 46 30', '82', '4.7807130', '44.7996000'),
(82, 'AURELIEN FOURNIER', 'Pâtisserie', '', '04 75 62 41 58', '2', '4.7812633', '44.8006647'),
(83, 'LE PETIT MOULIN', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 06 40 93', '6', '4.5800541', '44.9860317'),
(84, 'LE BOUTE HORS', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 06 43 95', '2', '4.5769872', '44.9839907'),
(85, 'BOULANGERIE LE PAIN D''ANTAN', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 06 42 46', '8', '4.5792998', '44.9857698'),
(86, 'BOULANGERIE PATISSERIE LES DEUX RIVES', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 23 50 11', 'n.d.', '4.8194590', '45.2099930'),
(87, 'LA PETRIE DU MICK', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 29 48 92', '4', '4.4228282', '44.9062745'),
(88, 'SOLE MIO', 'Fabrication de plats préparés', 'f.magno@solemio.fr', '04 75 85 47 74', 'n.d.', '4.9520264', '44.9163095'),
(89, 'PEPINIERES DU VAL D''OR', 'Culture de fruits à pépins et à noyau', '', '04 75 31 91 94', 'n.d.', '4.9400490', '45.3039486'),
(90, 'SARL GRIMAUD', 'Préparation industrielle de produits à base de viande', '', '04 75 47 33 09', '8', '5.1068441', '44.9858143'),
(91, 'REFRESCO LE QUESNOY', 'Préparation de jus de fruits et légumes', '', '04 75 45 44 44', 'n.d.', '5.0132905', '45.1180425'),
(92, 'ETS JEAN FERLAY', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 45 70 80', '6', '5.0360070', '45.1470700'),
(93, 'SARL LE PRIEURE', 'Reproduction de plantes', 'info@vegetalid.com', '', 'n.d.', '4.8910230', '45.0766550'),
(94, 'M CHAPOUTIER S A', 'Vinification', 'chapoutier@chapoutier.com', '04 75 08 28 65', '162', '4.8395243', '45.0708468'),
(95, 'M CHAPOUTIER S A', 'Vinification', 'chapoutier@chapoutier.com', '', 'n.d.', '4.8910230', '45.0766550'),
(96, 'M CHAPOUTIER S A', 'Vinification', 'chapoutier@chapoutier.com', '', 'n.d.', '4.8910230', '45.0766550'),
(97, 'LA TERRINE', 'Culture de céréales (à l''exception du riz) et de légumineuses et de graines oléagineuses', '', '04 75 07 46 65', '7', '4.8816548', '45.0906784'),
(98, 'ELEVAGE MANUTENT AVICOLE BAT INDUSTRIELS', 'Élevage de volailles', '', '04 75 71 70 82', 'n.d.', '5.1126620', '45.2035539'),
(99, 'UCAB', 'Fabrication d''aliments pour animaux de ferme', '', '04 75 25 05 57', 'n.d.', '5.0263170', '44.9314860'),
(100, 'AGC', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 57 26 14', '9', '5.0307545', '44.9338939'),
(101, 'VIGNARD PERE ET FILS', 'Activités de soutien aux cultures', '', '', 'n.d.', '4.9986600', '44.8494110'),
(102, 'SARL PETIT BONHEUR', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 83 71 03', '1', '4.9760005', '44.8331575'),
(103, 'SARL MAX MELLOR', 'Boulangerie et boulangerie-pâtisserie', '', '', 'n.d.', '4.9798370', '44.8350129'),
(104, 'NUTRI BOURGOGNE', 'Fabrication d''aliments pour animaux de ferme', 'contact@duc.fr', '', 'n.d.', '4.9922730', '44.8308279'),
(105, 'DUC', 'Transformation et conservation de la viande de volaille', 'contact.duc@duc.fr', '04 75 59 44 20', 'n.d.', '4.9801780', '44.8343800'),
(106, 'PEPINIERES ROUX', 'Reproduction de plantes', 'pepinieres.roux@wanadoo.fr', '04 75 59 06 03', '14', '4.9795220', '44.8792010'),
(107, 'DISTILLERIE OGIER', 'Production de boissons alcooliques distillées', 'distillerie.ogier.m@wanadoo.fr', '04 75 23 69 15', '6', '4.9934649', '45.2902310'),
(108, 'VINCENT', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 02 37 10', '11', '5.0513772', '45.0699927'),
(109, 'SGS AGRAL', 'Fabrication de pâtes alimentaires', 'contact@raviolesmeremaury.com', '04 75 02 09 00', '17', '5.0522040', '45.0703410'),
(110, 'SAS ARTHAUD LES SERRES DES ROSETTES', 'Autres cultures non permanentes', '', '04 75 70 52 31', '16', '5.0522040', '45.0703410'),
(111, 'ROMANS SALAISONS', 'Préparation industrielle de produits à base de viande', 'romans-salaisons@wanadoo.fr', '04 75 72 67 95', 'n.d.', '5.0522040', '45.0703410'),
(112, 'LOJATI', 'Cuisson de produits de boulangerie', '', '04 69 28 12 06', '2', '5.0529223', '45.0615966'),
(113, 'SARL MORIN JEAN-CLAUDE ET FILS', 'Activités de soutien aux cultures', '', '04 75 02 14 26', '6', '5.0576338', '45.1138764'),
(114, 'MAGNAT TRAVAUX AGRICOLES', 'Activités de soutien aux cultures', '', '04 75 59 89 21', '1', '5.0875480', '44.9192980'),
(115, 'TOUFRAIS', 'Fabrication de fromage', 'toufrais@libertysurf.fr', '04 75 84 61 02', '8', '4.8700606', '45.0135350'),
(116, 'SYL GEL', 'Autre transformation et conservation de légumes', '', '04 75 84 64 88', '7', '4.8827766', '45.0104107'),
(117, 'MCD', 'Autre transformation et conservation de légumes', '', '', 'n.d.', '4.8768270', '45.0100663'),
(118, 'EURL REY MICHEL', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 84 52 01', '6', '4.8718751', '45.0034628'),
(119, 'BRIDOR PATISSERIE', 'Fabrication industrielle de pain et de pâtisserie fraîche', 'beavoisin@le-duff.com', '', 'n.d.', '4.8636441', '45.0164261'),
(120, 'BONTOUT SA', 'Autre transformation et conservation de légumes', 'bontout.sa@bontout.fr', '04 75 84 64 88', '20', '4.8785543', '45.0091566'),
(121, 'AU PAIN DES ANGES', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 59 14 53', '8', '4.8722545', '45.0027280'),
(122, 'ALAIN GRAILLOT', 'Culture de la vigne', 'graillot.alain@wanadoo.fr', '04 75 84 67 52', 'n.d.', '4.8819497', '45.0314732'),
(123, 'UNILEVER FRANCE', 'Fabrication d''huiles et graisses raffinées', 'contact@unilever.com', '', 'n.d.', '4.8857178', '44.8872802'),
(124, 'MARGERIE', 'Transformation et conservation de fruits', 'fermemargerie@aol.com', '04 75 57 49 98', '2', '4.8910532', '44.8820790'),
(125, 'LE FOURNIL', 'Boulangerie et boulangerie-pâtisserie', '', '', '3', '4.8848140', '44.8752150'),
(126, 'LA BOULANGERIE BF', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 82 91 55', 'n.d.', '4.8795745', '44.8875185'),
(127, 'CHARLES & ALICE EURO DAUFRUIT', 'Transformation et conservation de fruits', 'contact@charlesetalice.fr', '04 75 57 05 64', 'n.d.', '4.8768152', '44.8746181'),
(128, 'ALTERPANIS', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 25 11 16', 'n.d.', '4.8784476', '44.8817301'),
(129, 'VINCENT TEOULLE', 'Pâtisserie', '', '04 75 64 09 58', '3', '4.5975895', '44.7354923'),
(130, 'SARL LA GERBE D''OR', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 64 67 50', '2', '4.5970751', '44.7352281'),
(131, 'SABRINA ET CYRILLE', 'Boulangerie et boulangerie-pâtisserie', '', '', '1', '4.5973393', '44.7354775'),
(132, 'LE MOULIN DU LAC', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 30 72 89', '5', '4.6125645', '44.7164495'),
(133, 'JOEL PATOUILLARD', 'Fabrication de cacao et chocolat et de produits de confiserie', '', '04 75 64 77 38', '4', '4.6087561', '44.7198786'),
(134, 'AURELIEN PONSONNET', 'Pâtisserie', '', '', 'n.d.', '4.5968157', '44.7355712'),
(135, 'ANCIENS ETABLISSEMENTS CHOLVY-ARTIGE', 'Fabrication de cacao et chocolat et de produits de confiserie', 'cholvyartige@yahoo.fr', '04 75 64 10 31', '2', '4.6035287', '44.7360248'),
(136, 'SOCIETE NOUVELLE DES DOUCEURS DE JACQUEMART', 'Fabrication de biscuits et biscottes et pâtisseries de conservation', 'qualite@douceurs-de-jacquemart.com', '04 75 72 20 13', 'n.d.', '5.0851927', '45.0460885'),
(137, 'SGS AGRAL', 'Fabrication de pâtes alimentaires', 'contact@raviolesmeremaury.com', '04 75 70 03 59', 'n.d.', '5.0504245', '45.0482498'),
(138, 'SCEA LES BALMANS', 'Culture de céréales (à l''exception du riz) et de légumineuses et de graines oléagineuses', '', '04 75 70 58 44', '2', '5.0185360', '45.0656890'),
(139, 'SARL EUGENE', 'Boulangerie et boulangerie-pâtisserie', '', '', 'n.d.', '5.0687304', '45.0466073'),
(140, 'SARL COUTELIER', 'Boulangerie et boulangerie-pâtisserie', '', '', '2', '5.0528914', '45.0595559'),
(141, 'SAINT JEAN', 'Fabrication de pâtes alimentaires', 'saint-jean@raviole.com', '04 75 05 83 80', '304', '5.0928021', '45.0555645'),
(142, 'MOURIER', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 02 32 29', 'n.d.', '5.0483758', '45.0469778'),
(143, 'MOURIER', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 02 79 91', 'n.d.', '5.0511166', '45.0459115'),
(144, 'LOJATI Ô FAIM GOURMET', 'Cuisson de produits de boulangerie', '', '', 'n.d.', '5.0526360', '45.0460661'),
(145, 'LE FOURNIL DE BRUNO LE PETRIN DAUPHINOIS', 'Boulangerie et boulangerie-pâtisserie', '', '', 'n.d.', '5.0553401', '45.0541083'),
(146, 'LE FOURNIL DE BRUNO', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 71 94 12', '7', '5.0480865', '45.0533024'),
(147, 'LE COEUR DU PAIN', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 02 35 92', '2', '5.0333208', '45.0438573'),
(148, 'LA SOLEIADE', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 05 12 89', 'n.d.', '5.0508541', '45.0459022'),
(149, 'FROMAGERIE ALPINE', 'Fabrication de fromage', 'alpine.fromagerie@wanadoo.fr', '04 75 70 01 01', '30', '5.0922272', '45.0556153'),
(150, 'EURL VINCENT', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 05 57 98', 'n.d.', '5.0473592', '45.0456179'),
(151, 'ETABLISSEMENTS CLEMENT', 'Activités de soutien à la production animale', 'clementolivier1@free.fr', '04 75 70 00 80', 'n.d.', '5.0785309', '45.0503741'),
(152, 'DELIFRANCE S A', 'Fabrication industrielle de pain et de pâtisserie fraîche', 'info@delifrance.com', '', 'n.d.', '5.0843920', '45.0544828'),
(153, 'CTRE ABATT ROMANS BOUCH ELEV CHEVILLARDS', 'Transformation et conservation de la viande de boucherie', '', '04 75 72 36 09', '17', '5.0410462', '45.0327943'),
(154, 'CREASUCRE', 'Boulangerie et boulangerie-pâtisserie', '', '', '2', '5.0378155', '45.0350459'),
(155, 'COULEUR CHOCOLAT', 'Pâtisserie', 'info@guillet.com', '04 75 02 26 80', 'n.d.', '5.0502883', '45.0459477'),
(156, 'CHARCUTERIE JACQUIN', 'Charcuterie', '', '04 75 02 04 97', '6', '5.0534979', '45.0464484'),
(157, 'BOULANG PATISSERIE JEAN CHARLES PASCALIS LE FOUR A POGNES', 'Boulangerie et boulangerie-pâtisserie', 'info@pascalis.com', '04 75 02 10 73', 'n.d.', '5.0538210', '45.0466828'),
(158, 'BESSON', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 61 08 33', 'n.d.', '4.8507494', '44.8920356'),
(159, 'SARL SAU SER MA', 'Charcuterie', '', '04 75 45 24 08', '2', '4.9835891', '45.1223522'),
(160, 'SARL L EPI DORE L''EPI DORE', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 45 25 94', 'n.d.', '4.9846460', '45.1248890'),
(161, 'SARL L EPI DORE', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 45 25 94', 'n.d.', '4.9846460', '45.1248890'),
(162, 'MARTINS ET FILS', 'Activités de soutien aux cultures', '', '04 75 45 24 12', 'n.d.', '4.9842632', '45.1192807'),
(163, 'BOULANGERIE RONJAT', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 45 11 67', '7', '4.9814928', '45.1225457'),
(164, 'SARL HELIX EYRIEUX', 'Transformation et conservation de poisson et de crustacés et de mollusques', '', '04 75 65 21 80', 'n.d.', '4.7161635', '44.8200925'),
(165, 'SARL VALREGAL DOMAINE DU TURZON', 'Pâtisserie', '', '04 75 60 98 22', 'n.d.', '4.8089540', '44.8597940'),
(166, 'AUX DELICES DE FABRICE', 'Boulangerie et boulangerie-pâtisserie', '', '', '6', '4.8267639', '44.8603484'),
(167, 'SAINT JEAN', 'Fabrication de pâtes alimentaires', 'saint-jean@raviole.com', '04 75 47 52 99', 'n.d.', '5.2973818', '45.0254442'),
(168, 'UNIVERS FOURNIL', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 83 51 37', '5', '4.9421455', '44.9639561'),
(169, 'PRODUITS ALIMENTAIRES MARKAL SA', 'Meunerie', 'markal@markal.fr', '04 75 58 72 20', '53', '4.9299277', '44.9772882'),
(170, 'MVP', 'Autres activités du travail des grains', '', '04 75 58 94 43', 'n.d.', '4.9524055', '44.9667219'),
(171, 'MICHEL ET DAMIEN BUISSON', 'Charcuterie', '', '04 75 85 71 38', 'n.d.', '4.9403928', '44.9646838'),
(172, 'LA FAVORITE', 'Boulangerie et boulangerie-pâtisserie', '', '', '1', '4.9504517', '44.9688415'),
(173, 'ALDO BOULANGERIE ALEXANDRE ET DOLORES', 'Boulangerie et boulangerie-pâtisserie', '', '', 'n.d.', '4.9479877', '44.9685570'),
(174, 'BOULANGERIE PATISSERIE NEBOIT', 'Boulangerie et boulangerie-pâtisserie', '', '', '3', '4.3651180', '44.9368621'),
(175, 'SAINT PAULET VIGNOBLES', 'Vinification', '', '', 'n.d.', '5.1317360', '45.0656560'),
(176, 'LE MOULIN DES BLES', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 48 93 10', 'n.d.', '5.1322312', '45.0702719'),
(177, 'PEPINIERES JACQUET', 'Reproduction de plantes', 'pepjacquet@wanadoo.fr', '04 75 81 80 70', 'n.d.', '4.8651230', '44.9482095'),
(178, 'LA BOULANGERIE BF', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 79 17 28', '5', '4.8538656', '44.9454369'),
(179, 'LA BAGUETTERIE', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 41 70 44', '3', '4.8627482', '44.9409100'),
(180, 'ELMOUTAWAKKIL', 'Activités de soutien aux cultures', '', '', 'n.d.', '4.8422377', '44.9493801'),
(181, 'SARL BOBICHON', 'Boulangerie et boulangerie-pâtisserie', '', '', 'n.d.', '4.8244592', '45.2809693'),
(182, 'SARL ROUSSET', 'Activités de soutien aux cultures', '', '', '1', '4.7865730', '44.9839110'),
(183, 'SARL TERRE ADELICE', 'Fabrication de glaces et sorbets', 'glaces@terre-adelice.eu', '04 75 65 43 00', '17', '4.5969603', '44.8171092'),
(184, 'LE FOURNIL DE GABIN', 'Boulangerie et boulangerie-pâtisserie', '', '', 'n.d.', '4.5802800', '44.8215940'),
(185, 'LA CHATAIGNERAIE', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 65 42 75', '4', '4.5863132', '44.8213175'),
(186, 'SERVE ET FILS', 'Activités de soutien aux cultures', '', '04 75 31 75 15', 'n.d.', '4.9648815', '45.2740397'),
(187, 'JACO''PAIN', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 47 59 82', '6', '5.2954900', '45.0468610'),
(188, 'SARL MINOTERIE CHABERT', 'Meunerie', '', '04 75 03 21 17', 'n.d.', '4.8581772', '45.1797066'),
(189, 'SERRE-PALAYSI', 'Charcuterie', '', '04 75 23 07 28', '3', '4.8137932', '45.1787402'),
(190, 'SOCIETE D EXPLOITATION DES JAMBONS DE L HERMITAGE', 'Préparation industrielle de produits à base de viande', '', '04 75 08 29 02', 'n.d.', '4.8423374', '45.0708083'),
(191, 'SAVIEL FRANCE', 'Transformation et conservation de la viande de boucherie', 'compta.janze@sva-jeanroze.fr', '', 'n.d.', '4.8621289', '45.0657605'),
(192, 'SARL FRANCK BROYER', 'Pâtisserie', '', '', 'n.d.', '4.8377236', '45.0699038'),
(193, 'SARL ALLENO & CHAPOUTIER', 'Culture de la vigne', '', '', 'n.d.', '4.8395243', '45.0708468'),
(194, 'PROGALIM (PRODUITS GASTRONOMIQUES DE LIMAGNE)', 'Transformation et conservation de la viande de volaille', 'commercial@domaine-de-limagne.com', '', 'n.d.', '4.8393573', '45.0717272'),
(195, 'PITOT SARL', 'Fabrication de biscuits et biscottes et pâtisseries de conservation', '', '04 75 08 60 69', '5', '4.8557730', '45.0604990'),
(196, 'MAISON DU TALMELIER', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 07 62 97', '9', '4.8298987', '45.0756261'),
(197, 'M CHAPOUTIER S A', 'Vinification', 'chapoutier@chapoutier.com', '', 'n.d.', '4.8557730', '45.0604990'),
(198, 'FOITY', 'Boulangerie et boulangerie-pâtisserie', '', '', '2', '4.8362129', '45.0709176'),
(199, 'FERRATON PERE ET FILS', 'Vinification', '', '04 75 08 59 51', '7', '4.8401700', '45.0689157'),
(200, 'CAVE TAIN L''HERMITAGE UNION DES PROPRIE', 'Vinification', 'commercial.france@cavedetain.com', '04 75 08 20 87', 'n.d.', '4.8457270', '45.0729180'),
(201, 'C5 ALTENBERG', 'Culture de la vigne', '', '04 75 08 28 65', '3', '4.8395243', '45.0708468'),
(202, 'BSO', 'Transformation et conservation de la viande de boucherie', 'standard@despi.fr', '04 75 08 50 35', 'n.d.', '4.8557730', '45.0604990'),
(203, 'AC FRUIT - ASSOCIATION CREATION FRUITIERE', 'Culture de fruits à pépins et à noyau', '', '', 'n.d.', '4.8644180', '45.0721561'),
(204, 'VALGOURMET', 'Fabrication de biscuits et biscottes et pâtisseries de conservation', 'valgourmet@netcourrier.com', '04 75 81 14 05', 'n.d.', '4.8923600', '44.9333930'),
(205, 'VALENCE CROUSTILLANT', 'Pâtisserie', '', '04 75 44 27 29', 'n.d.', '4.8992584', '44.9197924'),
(206, 'UCC COFFEE FRANCE', 'Transformation du thé et du café', 'contact@ucc-coffee.fr', '04 75 44 02 02', '62', '4.8876996', '44.8938889'),
(207, 'SOCIETE ALGO', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 44 51 72', '2', '4.9142898', '44.9306788'),
(208, 'SARL BOSQUET', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 43 38 22', 'n.d.', '4.9060354', '44.9227298'),
(209, 'SARL AU FOURNIL DE L''EUROPE', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 42 28 64', '9', '4.8973180', '44.9331890'),
(210, 'POGNES NIVON', 'Boulangerie et boulangerie-pâtisserie', 'info@nivon.com', '04 75 44 03 37', 'n.d.', '4.8918734', '44.9285095'),
(211, 'PATRIANE', 'Cuisson de produits de boulangerie', '', '04 75 60 30 11', 'n.d.', '4.8914646', '44.9301406'),
(212, 'PATISSERIE ALAIN VIOLLET', 'Pâtisserie', '', '04 75 43 07 73', '5', '4.8841309', '44.9014497'),
(213, 'PARIS FRIAND F COLOMB', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 44 06 76', 'n.d.', '4.8911445', '44.9286641'),
(214, 'PARIS FRIAND F COLOMB', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 42 37 82', 'n.d.', '4.8956061', '44.9297895'),
(215, 'OBRINGER SAS', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 44 23 08', 'n.d.', '4.8850360', '44.9125004'),
(216, 'LE PAIN DE SUCRE', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 55 71 96', '5', '4.8963399', '44.9329371'),
(217, 'LE FOURNIL DE CHATEAUVERT', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 44 38 85', '1', '4.8995970', '44.9191384'),
(218, 'LE BRUNCH', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 83 49 14', '15', '4.8878805', '44.8995953'),
(219, 'LA PANICHAUDE', 'Cuisson de produits de boulangerie', '', '04 75 42 15 40', '2', '4.8916068', '44.9318971'),
(220, 'LA PAILLOUNETTE', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 41 56 33', 'n.d.', '4.8864742', '44.9219615'),
(221, 'LA COMPAGNIE DES GOURMANDS', 'Boulangerie et boulangerie-pâtisserie', '', '', 'n.d.', '4.8918268', '44.9282017'),
(222, 'HM CLAUSE', 'Culture de légumes', 'contact@hmclause.com', '', 'n.d.', '4.8081970', '46.6672410'),
(223, 'EUROPAGRO', 'Transformation et conservation de la viande de boucherie', 'ribes.europagro@orange.fr', '04 75 41 05 33', 'n.d.', '4.8896928', '44.8931417'),
(224, 'EUROGOURMET', 'Fabrication industrielle de pain et de pâtisserie fraîche', '', '04 75 44 48 33', 'n.d.', '4.8923600', '44.9333930'),
(225, 'CHOCOLATERIE PATISSERIE PIERRE DEBROAS', 'Pâtisserie', '', '', 'n.d.', '4.8917386', '44.9316861'),
(226, 'BOULANGERIE BOURGUIGNON', 'Fabrication industrielle de pain et de pâtisserie fraîche', '', '04 75 43 44 16', '9', '4.8910872', '44.9337162'),
(227, 'BOULANGERIE BOURGUIGNON', 'Fabrication industrielle de pain et de pâtisserie fraîche', 'info@boulangeriebourguignon.fr', '04 75 56 60 12', 'n.d.', '4.9254179', '44.9182881'),
(228, 'B M J D', 'Fabrication industrielle de pain et de pâtisserie fraîche', '', '04 75 40 00 00', 'n.d.', '4.9324040', '44.9548622'),
(229, 'ALTERPANIS HONORIN', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 84 73 94', 'n.d.', '4.8897962', '44.9286824'),
(230, 'ALAIN MILLIAT SAS ALAIN MILLIAT', 'Préparation de jus de fruits et légumes', '', '04 75 80 96 73', '2', '4.8923600', '44.9333930'),
(231, 'AGRANA FRUIT FRANCE', 'Transformation et conservation de fruits', 'j.dallosso@alain-milliat.com', '', 'n.d.', '4.8843611', '44.9105491'),
(232, 'AGRANA FRUIT FRANCE', 'Transformation et conservation de fruits', 'info.fr@agrana.com', '04 75 81 31 81', 'n.d.', '4.9093383', '44.9137247'),
(233, 'AGRANA FRUIT', 'Transformation et conservation de fruits', '', '', 'n.d.', '4.8843611', '44.9105491'),
(234, 'SEBASTIEN COURTIAL', 'Boulangerie et boulangerie-pâtisserie', '', '04 75 58 10 87', '5', '4.6437439', '44.8947704'),
(235, 'LES DELICES ARDECHOIS', 'Boulangerie et boulangerie-pâtisserie', '', '', '4', '4.6450892', '44.8948757'),
(236, 'GUEZE ETS', 'Préparation industrielle de produits à base de viande', 'gueze@wanadoo.fr', '04 75 58 10 54', '62', '4.6505650', '44.9020810'),
(237, 'AOSTE SNC', 'Préparation industrielle de produits à base de viande', 'recrutement@campofriofg.com', '', 'n.d.', '4.6454845', '44.8963228');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `geo-agro`
--
ALTER TABLE `geo-agro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `geo-agro`
--
ALTER TABLE `geo-agro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=238;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
