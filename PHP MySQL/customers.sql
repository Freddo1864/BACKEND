-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 09 sep. 2022 à 06:39
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `exos w3schools`
--

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(55) DEFAULT NULL,
  `ContactName` varchar(55) DEFAULT NULL,
  `Adress` varchar(55) DEFAULT NULL,
  `City` varchar(55) DEFAULT NULL,
  `PostalCode` varchar(55) DEFAULT NULL,
  `Country` varchar(55) DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `ContactName`, `Adress`, `City`, `PostalCode`, `Country`, `lastUpdated`) VALUES
(1, 'Zaafane Halim', 'Halima', '7 rue des lilas', 'Maubeuge', '59600', 'France', '2022-09-08 12:17:34'),
(2, 'Broadway Financial Corporation', 'Kali', '2 Paget Pass', 'Qal‘at al Andalus', NULL, 'Tunisia', '2022-09-08 12:14:19'),
(3, 'Teradata Corporation', 'Honey', '99 American Circle', 'Amieirinha', '2430-024', 'Portugal', '2022-09-08 12:14:19'),
(4, 'M&T Bank Corporation', 'Shantee', '043 Village Parkway', 'Pridonskoy', '394091', 'Russia', '2022-09-08 12:14:19'),
(5, 'Cavco Industries, Inc.', 'Antonetta', '22694 Stephen Court', 'Cuispes', NULL, 'Peru', '2022-09-08 12:14:19'),
(6, 'New York Community Bancorp, Inc.', 'Farlie', '86 Bluejay Avenue', 'Oberá', '3361', 'Argentina', '2022-09-08 12:14:19'),
(7, 'Central Europe, Russia and Turkey Fund, Inc. (The)', 'Rheta', '5064 Shelley Lane', 'Longqiao', NULL, 'China', '2022-09-08 12:14:19'),
(8, 'Socket Mobile, Inc.', 'Christel', '207 Kensington Trail', 'Wlingi', NULL, 'Indonesia', '2022-09-08 12:14:19'),
(9, 'PowerShares DWA Consumer Cyclicals Momentum Portfolio', 'Mikkel', '989 Tony Lane', 'Xianan', NULL, 'China', '2022-09-08 12:14:19'),
(10, 'O2Micro International Limited', 'Rem', '56 Brentwood Center', 'Nankun', NULL, 'China', '2022-09-08 12:14:19'),
(11, 'Hawaiian Electric Industries, Inc.', 'Ives', '1910 Acker Lane', 'Kinna', '511 58', 'Sweden', '2022-09-08 12:14:19'),
(12, 'Golar LNG Partners LP', 'Elspeth', '041 Laurel Parkway', 'Chixi', NULL, 'China', '2022-09-08 12:14:19'),
(13, 'Himax Technologies, Inc.', 'Fayette', '73424 Ridgeway Pass', 'Manukau City', '2246', 'New Zealand', '2022-09-08 12:14:19'),
(14, 'LGI Homes, Inc.', 'Honey', '30727 Schurz Point', 'Mulong', NULL, 'China', '2022-09-08 12:14:19'),
(15, 'Vantage Energy Acquisition Corp.', 'Neel', '1 Memorial Hill', 'Libacao', '5602', 'Philippines', '2022-09-08 12:14:19'),
(16, 'American National Insurance Company', 'Louie', '4 Victoria Way', 'Orenburg', '460999', 'Russia', '2022-09-08 12:14:19'),
(17, 'Otter Tail Corporation', 'Bryn', '4803 Roth Hill', 'Sancha', NULL, 'China', '2022-09-08 12:14:19'),
(18, 'Blackrock MuniYield Pennsylvania Quality Fund', 'Arnold', '21 Ludington Hill', 'Benito Juarez', '31540', 'Mexico', '2022-09-08 12:14:19'),
(19, 'General Cable Corporation', 'Clo', '0975 Sheridan Park', 'Gryazovets', '162002', 'Russia', '2022-09-08 12:14:19'),
(20, 'New Germany Fund, Inc. (The)', 'Isabeau', '7340 Scofield Road', 'Lethbridge', 'T1K', 'Canada', '2022-09-08 12:14:19'),
(21, 'NeoGenomics, Inc.', 'Shawnee', '08 Bonner Circle', 'Põltsamaa', NULL, 'Estonia', '2022-09-08 12:14:19'),
(22, 'RADA Electronic Industries Ltd.', 'Carmencita', '14 Lakewood Alley', 'Nueve de Julio', '3606', 'Argentina', '2022-09-08 12:14:19'),
(23, 'Discovery Communications, Inc.', 'Hynda', '1613 Jana Terrace', 'Tosno', '187003', 'Russia', '2022-09-08 12:14:19'),
(24, 'Forum Merger Corporation', 'Tomlin', '53 Laurel Alley', 'Cirangrang', NULL, 'Indonesia', '2022-09-08 12:14:19'),
(25, 'Apollo Commercial Real Estate Finance', 'Jaime', '361 Artisan Junction', 'Tajike’abati', NULL, 'China', '2022-09-08 12:14:19'),
(26, 'YPF Sociedad Anonima', 'Wheeler', '4 Debs Terrace', 'Dajing', NULL, 'China', '2022-09-08 12:14:19'),
(27, 'Cerecor Inc.', 'Ingram', '64435 Dwight Place', 'Sidayu', NULL, 'Indonesia', '2022-09-08 12:14:19'),
(28, 'Lincoln Electric Holdings, Inc.', 'Olin', '0399 Stang Avenue', 'Dulian', '3110', 'Philippines', '2022-09-08 12:14:19'),
(29, 'Qiagen N.V.', 'Jeremie', '1061 Katie Alley', 'Gaspar', '89110-000', 'Brazil', '2022-09-08 12:14:19'),
(30, 'Perficient, Inc.', 'Pippa', '242 American Ash Terrace', 'Cao Thượng', NULL, 'Vietnam', '2022-09-08 12:14:19'),
(31, 'Infinity Pharmaceuticals, Inc.', 'Laurianne', '6 Beilfuss Junction', 'Orlando', '32825', 'United States', '2022-09-08 12:14:19'),
(32, 'BioCryst Pharmaceuticals, Inc.', 'Erv', '5 Warner Drive', 'Temblador', NULL, 'Venezuela', '2022-09-08 12:14:19'),
(33, 'Asia Pacific Fund, Inc. (The)', 'Jehu', '20 Fairfield Center', 'Leleque', '9213', 'Argentina', '2022-09-08 12:14:19'),
(34, 'Enviva Partners, LP', 'Thedric', '30283 Holmberg Park', 'Pavlivka', NULL, 'Ukraine', '2022-09-08 12:14:19'),
(35, 'TC PipeLines, LP', 'Shell', '28 Monument Alley', 'Urazovo', '309975', 'Russia', '2022-09-08 12:14:19'),
(36, 'Howard Hughes Corporation (The)', 'Hunt', '887 Nevada Avenue', 'Tuscaloosa', '35487', 'United States', '2022-09-08 12:14:19'),
(37, 'Diebold Nixdorf Incorporated', 'Meade', '8193 Hallows Parkway', 'Kota Bharu', '15540', 'Malaysia', '2022-09-08 12:14:19'),
(38, 'Elbit Imaging Ltd.', 'Mufinella', '4926 Kinsman Plaza', 'Kapan', NULL, 'Armenia', '2022-09-08 12:14:19'),
(39, 'GAIN Capital Holdings, Inc.', 'Fancie', '05 Elmside Place', 'Mapiripán', '943057', 'Colombia', '2022-09-08 12:14:19'),
(40, 'AppFolio, Inc.', 'Jarret', '339 Hermina Circle', 'Banyumas', NULL, 'Indonesia', '2022-09-08 12:14:19'),
(41, 'Companhia Brasileira de Distribuicao', 'Godfrey', '1962 Swallow Junction', 'Kallífytos', NULL, 'Greece', '2022-09-08 12:14:19'),
(42, 'Kosmos Energy Ltd.', 'Ardath', '1845 Derek Center', 'Yanfolila', NULL, 'Mali', '2022-09-08 12:14:19'),
(43, 'Matson, Inc.', 'Leshia', '69 Morrow Center', 'Skulsk', '62-560', 'Poland', '2022-09-08 12:14:19'),
(44, 'Texas Capital Bancshares, Inc.', 'Talbert', '8 Cody Court', 'Sao Hai', '18160', 'Thailand', '2022-09-08 12:14:19'),
(45, 'MYOS RENS Technology Inc.', 'Charmine', '34 Swallow Lane', 'Banjarejo', NULL, 'Indonesia', '2022-09-08 12:14:19'),
(46, 'Genworth Financial Inc', 'Deloris', '99 Annamark Court', 'Boco', '2425-405', 'Portugal', '2022-09-08 12:14:19'),
(47, 'Allegiant Travel Company', 'Norris', '6223 Michigan Drive', 'Kissidougou', NULL, 'Guinea', '2022-09-08 12:14:19'),
(48, 'Andina Acquisition Corp. II', 'Doralynne', '00 Brown Terrace', 'Buenavista', '8601', 'Philippines', '2022-09-08 12:14:19'),
(49, 'Medovex Corp.', 'Evin', '22 Stoughton Court', 'Caiyuan', NULL, 'China', '2022-09-08 12:14:19'),
(50, 'Marcus & Millichap, Inc.', 'Osmund', '40540 Tony Junction', 'Dadianzi', NULL, 'China', '2022-09-08 12:14:19'),
(51, 'Nuveen Georgia Quality Municipal Income Fund ', 'Blair', '8 Norway Maple Terrace', 'Xingcheng', NULL, 'China', '2022-09-08 12:14:19'),
(52, 'Gabelli Multi-Media Trust Inc. (The)', 'Nata', '5331 Monument Alley', 'Gastoúni', NULL, 'Greece', '2022-09-08 12:14:19'),
(53, 'iShares Fallen Angels USD Bond ETF', 'Grenville', '4938 Hazelcrest Plaza', 'Pāvilosta', NULL, 'Latvia', '2022-09-08 12:14:19'),
(54, 'ICC Holdings, Inc.', 'Weber', '893 3rd Place', 'Sochi', '354084', 'Russia', '2022-09-08 12:14:19'),
(55, 'Guaranty Bancorp', 'Carolyne', '24 Glendale Lane', 'Del Pilar', '8720', 'Philippines', '2022-09-08 12:14:19'),
(56, 'Nuveen Build America Bond Opportunity Fund', 'Scot', '43 Golf View Avenue', 'Luoshui', NULL, 'China', '2022-09-08 12:14:19'),
(57, 'Watsco, Inc.', 'Jecho', '03653 Arkansas Center', 'Yangxi', NULL, 'China', '2022-09-08 12:14:19'),
(58, 'MacroGenics, Inc.', 'Bette-ann', '2 Browning Alley', 'Xiqi', NULL, 'China', '2022-09-08 12:14:19'),
(59, 'Hemisphere Media Group, Inc.', 'Golda', '270 Springview Court', 'Oakland', '94627', 'United States', '2022-09-08 12:14:19'),
(60, 'Determine, Inc. ', 'Sue', '2 Linden Park', 'Indramayu', NULL, 'Indonesia', '2022-09-08 12:14:19'),
(61, 'Morgan Stanley Asia-Pacific Fund, Inc.', 'Joellyn', '48514 Boyd Junction', 'Xichangmen', NULL, 'China', '2022-09-08 12:14:19'),
(62, 'Western Asset Mortgage Defined Opportunity Fund Inc', 'Roanna', '80 Sutteridge Alley', 'Buenavista', '8601', 'Philippines', '2022-09-08 12:14:19'),
(63, 'ONE Gas, Inc.', 'Nissie', '02 Spaight Parkway', 'Padre Las Casas', '10702', 'Dominican Republic', '2022-09-08 12:14:19'),
(64, 'Aercap Holdings N.V.', 'Winnifred', '11 Cherokee Circle', 'Fengjiang', NULL, 'China', '2022-09-08 12:14:19'),
(65, 'M/I Homes, Inc.', 'Marlie', '7 Sloan Plaza', 'Penteado', '2860-424', 'Portugal', '2022-09-08 12:14:19'),
(66, 'Targa Resources Partners LP', 'Frasier', '7818 Comanche Terrace', 'Ourinhos', '19900-000', 'Brazil', '2022-09-08 12:14:19'),
(67, 'KBS Fashion Group Limited', 'Husein', '902 Eagle Crest Hill', 'Mungui', NULL, 'Peru', '2022-09-08 12:14:19'),
(68, 'ServiceSource International, Inc.', 'Annemarie', '1 Chive Place', 'Dīvāndarreh', NULL, 'Iran', '2022-09-08 12:14:19'),
(69, 'Zions Bancorporation', 'Conant', '50 Hanson Crossing', 'Spirovo', '422338', 'Russia', '2022-09-08 12:14:19'),
(70, 'MidWestOne Financial Group, Inc.', 'Harmonia', '6251 Ridge Oak Junction', 'Émponas', NULL, 'Greece', '2022-09-08 12:14:19'),
(71, 'TCF Financial Corporation', 'Paulie', '2 5th Point', 'Calape', '6328', 'Philippines', '2022-09-08 12:14:19'),
(72, 'Luxoft Holding, Inc.', 'Peter', '075 Oak Valley Circle', 'Madison', '53716', 'United States', '2022-09-08 12:14:19'),
(73, 'America First Multifamily Investors, L.P.', 'Winifred', '9309 Summit Plaza', 'Spitak', NULL, 'Armenia', '2022-09-08 12:14:19'),
(74, 'O2Micro International Limited', 'Frazier', '769 Fordem Way', 'Yanguan', NULL, 'China', '2022-09-08 12:14:19'),
(75, 'Alliance Holdings GP, L.P.', 'Kitti', '77457 Banding Park', 'Embi', NULL, 'Kazakhstan', '2022-09-08 12:14:19'),
(76, 'Zions Bancorporation', 'Dianemarie', '8 Service Pass', 'Sodankylä', '99601', 'Finland', '2022-09-08 12:14:19'),
(77, 'FS Bancorp, Inc.', 'Kelley', '1 Utah Avenue', 'Lingdangge', NULL, 'China', '2022-09-08 12:14:19'),
(78, 'Southcross Energy Partners, L.P.', 'Karlens', '82 Corben Avenue', 'Serra da Boa Viagem', '3080-352', 'Portugal', '2022-09-08 12:14:19'),
(79, 'Syndax Pharmaceuticals, Inc.', 'Malynda', '457 Clove Lane', 'Sarlat-la-Canéda', '24212 CEDEX', 'France', '2022-09-08 12:14:19'),
(80, 'Vanda Pharmaceuticals Inc.', 'Jordon', '60338 Waubesa Alley', 'Bang Klam', '90110', 'Thailand', '2022-09-08 12:14:19'),
(81, 'Laboratory Corporation of America Holdings', 'Evaleen', '85292 Kingsford Lane', 'Lingdi', NULL, 'China', '2022-09-08 12:14:19'),
(82, 'Travelzoo', 'Robyn', '371 Tony Center', 'Passal', '4960-130', 'Portugal', '2022-09-08 12:14:19'),
(83, 'Vanguard Global ex-U.S. Real Estate ETF', 'Donnamarie', '53984 Memorial Terrace', 'Pisão', '3220-331', 'Portugal', '2022-09-08 12:14:19'),
(84, 'Stantec Inc', 'Selestina', '2 Macpherson Avenue', 'Semey', NULL, 'Kazakhstan', '2022-09-08 12:14:19'),
(85, 'Noble Energy Inc.', 'Eben', '9 Gerald Circle', 'Maurole', NULL, 'Indonesia', '2022-09-08 12:14:19'),
(86, 'Entergy Louisiana, Inc.', 'Rochella', '62231 Melvin Circle', 'Habo', '566 24', 'Sweden', '2022-09-08 12:14:19'),
(87, 'Columbus McKinnon Corporation', 'Budd', '4 Upham Place', 'Shigongqiao', NULL, 'China', '2022-09-08 12:14:19'),
(88, 'Gabelli Dividend', 'Ginny', '1891 Moose Circle', 'Koufália', NULL, 'Greece', '2022-09-08 12:14:19'),
(89, 'Yext, Inc.', 'Martelle', '76082 Autumn Leaf Point', 'Shuinanxu', NULL, 'China', '2022-09-08 12:14:19'),
(90, 'Pampa Energia S.A.', 'Meridel', '02290 Basil Drive', 'Belverde', '2845-487', 'Portugal', '2022-09-08 12:14:19'),
(91, 'Viavi Solutions Inc.', 'Jess', '8678 Anzinger Center', 'Shaffa', NULL, 'Nigeria', '2022-09-08 12:14:19'),
(92, 'Quertaimont Frederic', 'Freddo', '313 rue victor hugo', 'Jeumont', '59460', 'France', '2022-09-08 12:14:19'),
(93, 'Bail Benoit', 'Ben', '7 rue des lilas', 'Maubeuge', '59600', 'France', '2022-09-08 13:15:56'),
(94, 'Lourdez Theo', 'Toto', '47 rue des templiers', 'Assevent', '59600', 'France', '2022-09-08 13:24:36');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
