-- MySQL dump 10.13  Distrib 5.1.58, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: christmaslists
-- ------------------------------------------------------
-- Server version	5.1.58-1ubuntu1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `christmaslists`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `christmaslists` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `christmaslists`;

--
-- Table structure for table `lists`
--

DROP TABLE IF EXISTS `lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lists` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `item` varchar(500) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lists`
--

LOCK TABLES `lists` WRITE;
/*!40000 ALTER TABLE `lists` DISABLE KEYS */;
INSERT INTO `lists` VALUES (4,'jmkofink','Vacuum Cleaner','',0),(5,'jmkofink','The Edible Front Yard','http://www.amazon.com/Edible-Front-Yard-Grow-More-Beautiful/dp/1604691999/ref=sr_1_1?ie=UTF8&qid=1319939122&sr=8-1',1),(8,'Ckofink','Boots size 9 wide black','http://www.payless.com/store/product/detail.jsp?catId=cat10088&subCatId=cat10045&skuId=091582050&productId=69798&lotId=091582&category=&catdisplayName=Womens',1),(9,'jckofink','X 79 Ink Pens','http://www.xfountainpens.com/X79-Quinate-p/bux79q.htm',1),(10,'jckofink','X 30 Triad Pens','http://www.xfountainpens.com/X30-Affilato-Triad-p/jh50.htm',0),(12,'jckofink','Ink Green','http://www.xfountainpens.com/Emerald-25ml-Bottle-p/cf402025.htm',1),(13,'jckofink','Ink Orange','http://www.xfountainpens.com/Fire-Opal-25ml-Bottle-p/cf403225.htm',1),(14,'jckofink','DVR/DVD','http://www.walmart.com/ip/Magnavox-MDR-513H-F7-320GB-DVR-and-DVD-Recorder/14291489#ShortReviewTitleBar',0),(15,'Ckofink','Karen Kingsbury books','http://www.karenkingsbury.com/books/series/bailey-flanigan-series/longing',0),(16,'Ckofink','Slippers size 9 dk brown','http://www.famousfootwear.com/Shopping/ProductDetails.aspx?p=12782&pg=1021655',0),(17,'Ckofink','Raincoat size Reg. Large  Navy','http://www.llbean.com/llb/shop/70410?feat=610-GN1',0),(18,'akofink','Small Hanes Boxers','http://www.hanes.com/clothing/men/underwear/boxers/hanes-mens-plaid-woven-boxers-with-waistband-3-pack',0),(19,'akofink','Small Hanes V-Neck Undershirts','http://www.hanes.com/clothing/v-neck/hanes-mens-tagless-reg%3B-v-neck-t-shirt-5-pack',0),(20,'akofink','Hanes Short Socks','http://www.hanes.com/clothing/men/socks/low-cut---no-show-socks/hanes-mens-ecosmart--153%3B-cushion-no-show-socks',0),(21,'akofink','Warm Socks','',0),(23,'akofink','Warm Tops (Sweaters, Hoodies, etc.) All of mine have holes in the elbows. =[ Doesn’t have to be from Hollister. This is an example URL.','http://www.hollisterco.com/webapp/wcs/stores/servlet/CategoryDisplay?catalogId=10201&storeId=10251&langId=-1&topCategoryId=12551&categoryId=12737&parentCategoryId=12634',0),(25,'akofink','120mm Fans','http://www.tigerdirect.com/applications/SearchTools/item-details.asp?EdpNo=5472212&CatId=802',0);
/*!40000 ALTER TABLE `lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `userlevel` int(1) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('akofink','Andrew','Kofink','403029f8ef4151611b5061d0d0b38ccbd9bd5237',NULL),('jmkofink','Jamie','Kofink','31ccc9f1fc8707313c5b668636608b0353169226',NULL),('chardesty','Chris','Hardesty','7b2b048d1d64c2a808c632c98ad342593ccc1ffc',NULL),('Ckofink','Cheri','Kofink','8c9dd0a60eca8d4de07ae3fc3af656022280a204',NULL),('jckofink','Jim','Kofink','52841c6cd5623061ead583cc46f1c36fa9ed7104',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-11-10  8:01:01
