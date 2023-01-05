-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2021 at 06:54 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xPharmapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(5, 'Razvan', 'razvanadmin@gmail.com', '$2y$10$qZ0OoyX8bhAVxDFM/fx8leZSZwlyq15c1C/KTnaqDLSx6eCDJ0VpC', '0'),
(8, 'Razvan Ungureanu', 'razvanungureanu@gmail.com', '$2y$10$YKSDtra7v2wH6ORYfry8Ue9t49pk1AvQvdJGuq4lDvFLEcx.kP6Mq', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Nurofen'),
(2, 'Biofarm'),
(3, 'Cavit'),
(4, 'Dacia Plant'),
(5, 'Nedis'),
(6, 'Protectis'),
(7, 'Sofar'),
(8, 'Vitamax'),
(9, 'Zentiva'),
(10, 'Zdrovit');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 4, '::1', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Raceala si Gripa'),
(3, 'Ficat'),
(4, 'Sistemul nervos'),
(5, 'Probiotice'),
(6, 'Dureri locale'),
(12, 'Plante'),
(13, 'Digestie'),
(14, 'Imunitate'),
(15, 'Alte afectiuni');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 6, 1, 'Nurofen 200 mg emplastru medicamentos, 2 bucati, Reckitt Benckiser', 20, 100, 'Substanta activa este ibuprofen. Ibuprofenul apartine unui grup de medicamente cunoscut sub numele de antiinflamatoare nesteroidiene (AINS), care actioneaza prin schimbarea raspunsului organismului la durere, inflamatie si febra. Emplastrul medicamentos elibereaza ibuprofen la nivel local, in mod continuu, la locul durerii, timp de peste 24 de ore de la aplicare. Nurofen se utilizeazala adulti si adolescenti cu varsta de 16 ani si peste, pentru tratamentul simptomatic de scurta durata al durerii locale acute aparute in intinderi musculare sau luxatii in caz de traumatisme usoare localizate in apropierea articulatiilor membrelor superioare sau inferioare', 'Nurofen 200 mg emplastru medicamentos.jpg', 'nurofen, antinflamator, dureri locale'),
(2, 2, 1, 'Nurofen Raceala si Gripa, 12 comprimate, Reckitt Benckiser', 15, 3, 'Datorita formei farmaceutice ce combina actiunea a doua ingrediente active, ibuprofen si pseudoefedrina, Nurofen Raceala si Gripa actioneaza rapid si eficient in ameliorarea simptomelor neplacute asociate gripei si racelii precum: congestie nazala si sinusala, cefalee, febra, dureri in gat, dureri musculare si articulare.', 'Nurofen Raceala si Gripa, 12 comprimate.jpg', 'nurofen, raceala si gripa, raceala'),
(3, 2, 1, 'Nurofen Raceala si Gripa, 24 comprimate, Reckitt Benckiser', 29, 20, 'Datorita formei farmaceutice ce combina actiunea a doua ingrediente active, ibuprofen si pseudoefedrina, Nurofen Raceala si Gripa actioneaza rapid si eficient in ameliorarea simptomelor neplacute asociate gripei si racelii precum: congestie nazala si sinusala, cefalee, febra, dureri in gat, dureri musculare si articulare.', 'Nurofen Raceala si Gripa, 24 comprimate.jpg', 'nurofen, raceala si gripa, raceala'),
(4, 13, 2, 'Triferment Forte, 30 comprimate, Biofarm', 21, 190, 'Triferment Forte contine un amestec de enzime numit „pancreatina”. Pancreatina va ajuta sa digerati alimentele. Triferment Forte este utilizat la copiii si adultii cu "insuficienta pancreatica exocrina". Aceasta apare atunci cand pancreasul nu secreta suficiente enzime pentru a digera mancarea.', 'Triferment Forte.jpg', 'triferment, pancreas, digestie'),
(5, 2, 2, 'Bioflu, 16 comprimate, Biofarm', 44, 10, 'Bioflu este un tratament simptomatic, in raceala si gripa, al congestiei nazale, tusei neproductive si febrei asociate bolilor tractului respirator (de exemplu, sinuzite, rinite, faringite, bronsite). Acest medicament este recomandat numai pentru adulti si adolescenti.', 'Bioflu Raceala si Gripa.jpg', 'bioflu, raceala si gripa, febra'),
(6, 3, 2, 'Hepatoprotect Forte, 50 comprimate, Biofarm', 20, 210, 'Hepatoprotect Forte este un supliment alimentar pe baza de silimarina care asigura buna functionare a celulelor hepatice. Ca si alte flavonoide, silimarina este un antioxidant natural, care sustine recuperarea celulor hepatice.', 'Hepatoprotect Forte, 50 comp.jpg', 'hapatoprotect, celule hepatice, ficat'),
(7, 4, 2, 'Nervocalmin Relaxare, 20 capsule, Biofarm', 18, 319, 'Nervocalmin Relaxare este un supliment alimentar care contribuie la pastrarea bunei dispozitii, a unui nivel de optimism si a unei perceptii reale asupra vietii, datorita actiunii sinergice a celor patru extracte uscate de valeriana, roinita, menta si floarea pasiunii.', 'Nervocalmin Relaxare, 20 comp.jpg', 'nervocalmin, somn, antistres'),
(8, 15, 2, 'Devaricid, 30 comprimate, Biofarm', 19, 212, 'Este indicat la adulti* pentru tratamentul pe termen scurt al simptomelor de IVC.', 'Devaricid, 50 comp.jpg', 'devaricid, tonus venos, varice'),
(9, 14, 3, 'Cavit multivitamine cu vanilie, 20 tablete, Biofarm', 16, 500, 'Recomandat in toate starile care necesita un aport sporit de vitamine, in perioadele de efort fizic si/sau intelectual intens, convalescenta, in caz de oboseala excesiva, senzatia de lipsa de energie, lipsa apetitului alimentar. ', 'Cavit multivitamine cu vanilie, 20 tablete.jpg', 'cavit, vitamine, imunitate'),
(10, 14, 3, 'Cavit multivitamine cu aroma de caise, 20 tablete, Biofarm', 16, 200, 'Cavit Adulti® este o sursa de vitamine esentiale pentru adolescenti si adulti care ajuta la mentinerea sanatatii. Este un supliment vitaminic ce contribuie la reducerea oboselii si extenuarii (prin aportul de vitamine B2, B3, B5, B6 si C) si la functionarea normala a sistemului imunitar (prin aportul de vitamine A, B6, C, D).', 'Cavit multivitamine cu aroma de caise, 20 tablete.jpg', 'cavit, vitamine, imunitate'),
(11, 14, 4, 'Sirop imunostimulent Ingerasul, 200 ml, Dacia Plant', 15, 49, 'Datorita retetei sale unice, pe baza de plante, are rolul de a intari sistemul imunitar la copii, astfel incat acestia sa devina sanatosi si puternici intr-un mod 100 % natural!', 'Sirop imunostimulent Ingerasul, 200 ml, Dacia Plant.jpg', 'dacia plant, reteta plante, sistem imunitar'),
(12, 14, 4, 'Spray extract de propolis cu echinacea, 20 ml, Dacia Plant', 15, 67, 'aPropolis cu Echinacea fara alcool spray este un produs natural destinat mentinerii sanatatii cailor respiratorii, a cavitatii bucale si a pielii. ', 'Spray extract de propolis cu echinacea, 20 ml, Dacia Plant.jpg', 'dacia plant, reteta propolis, sistem imunitar'),
(13, 13, 4, 'Ceai de coada soricelului, 50g, Dacia Plant', 3, 49, 'Ceaiul de coada soricelului este recomandat pentru sustinerea functiei digestive, hepatice si pentru reducerea riscului de sangerare. ', 'Ceai de coada soricelului.jpg', 'dacia plant, reteta plante, sistem digestiv'),
(14, 13, 5, 'Nedis 20mg, 14 comprimate', 14, 410, 'Nedis contine ca substanta activa pantoprazol, care blocheaza „pompa” care produce acid la nivelul stomacului. Astfel, acesta reduce cantitatea de acid din stomac. Nedis este utilizat pentru tratamentul de scurta durata al simptomelor de reflux (de exemplu arsuri in capul pieptului-pirozis, regurgitare de acid) la adulti.', 'Nedis 20mg, 14 comprimate.jpg', 'nedis, arsuri gastrice, stomac'),
(15, 5, 6, 'Picaturi pentru copii Protectis cu Vitamina D3, 5ml, BioGaia', 48, 12, 'BioGaia Protectis cu vitamina D3 picaturi pentru copii 5ml sunt picaturi probiotice care ajuta la restabilirea echilibrului benefic si natural al florei intestinale, fiind recomandate pentru copii.', 'Picaturi pentru copii Protectis cu Vitamina D3, 5ml, BioGaia.jpg', 'protectis, flora intestinala, probiotice'),
(16, 5, 6, 'Protectis Junior cu aroma de capsuni, 20 comprimate, BioGaia', 34, 2, 'Tabletele masticabile sunt un mod simplu, sigur si eficient de a restabili si mentine echilibrul florei intestinale, asigurand sanatatea tractului digestiv. Echilibreaza flora intestinala prin suplimentarea cu bacterii benefice, probiotice.', 'Protectis Junior cu aroma de capsuni, 20 comp.jpg', 'protectis, flora intestinala, probiotice');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Ioan', 'Racena', 'ioanracenaa@gmail.com', '25f9e794323b453885f5181f1b624d0b', '0769279301', 'Str Principala, Sibiu', 'Jud Sibiu, Romania'),
(2, 'Maria', 'Panta', 'maryapanta@gmail.com', '25f9e794323b453885f5181f1b624d0b', '0732759078', 'Str Sforii, Brasov', 'Jud. Brasov, Romania');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
