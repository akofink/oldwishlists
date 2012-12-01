-- MySQL dump 10.13  Distrib 5.5.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: christmaslists
-- ------------------------------------------------------
-- Server version	5.5.28-0ubuntu0.12.04.2

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
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lists`
--

LOCK TABLES `lists` WRITE;
/*!40000 ALTER TABLE `lists` DISABLE KEYS */;
INSERT INTO `lists` VALUES (108,'chardesty','Apple Wireless Keyboard (can be bought used for cheaper)','http://www.amazon.com/Apple-Wireless-Keyboard-MC184LL-VERSION/dp/B005DLDO4U/ref=sr_1_1?ie=UTF8&qid=1353983367&sr=8-1&keywords=apple+wireless+keyboard',0),(48,'akofink','KitchenAid Artisan 5-Quart Stand Mixer','http://www.amazon.com/KitchenAid-KSM150PSER-Artisan-Series-5-Quart/dp/B00005UP2P/ref=sr_1_1?s=home-garden&ie=UTF8&qid=1347363398&sr=1-1&keywords=kitchenaid+mixer',0),(49,'akofink','Car stereo with aux input and speakers','',0),(50,'akofink','My Amazon Wish List','http://amzn.com/w/3SQT598FB2D0Z',0),(99,'IBro12','Super smash bros brawl','http://www.amazon.com/gp/aw/d/B000FQ9R4E/ref=mp_s_a_1?qid=1353875626&sr=8-1&pi=SL75',0),(53,'kellylynn52','Boots','http://m.belk.com/AST/Main/Belk_Primary/PRD~2902647BAXTER/Rampage+Baxter+Boot.jsp?off=0&rCode=0400657625012&ZZ%3C%3EtP=4294923540&ZZ%3C%3Et=Boots&ZZ_ST=Boots&fO=AND%28Category_Path%29&ZZ_OPT=Y&FOLDER%3C%3Efolder_id=1408474395191292&bmUID=1353593800691',1),(54,'LHall','Glee season 3','http://www.amazon.com/Glee-The-Complete-Third-Season/dp/B0053O8A5K/ref=sr_1_2?ie=UTF8&qid=1353595349&sr=8-2&keywords=glee+season+3',0),(55,'LHall','L necklace ','http://www.amazon.com/Initial-Pendant-Necklace-Children-Fashion/dp/B007Z3TL8W/ref=sr_1_13?s=jewelry&ie=UTF8&qid=1353595441&sr=1-13&keywords=l+necklace',1),(56,'LHall','Raise your voice (movie)','http://www.amazon.com/Raise-Your-Voice/dp/B003GQRFT4/ref=sr_1_1?s=movies-tv&ie=UTF8&qid=1353595553&sr=1-1&keywords=raise+your+voice',0),(57,'brihall','Trumpet Case','http://www.samash.com/p/Gator_GL%20Series%20Rigid%20Foam%20Lightweight%20Trumpet%20Case_1782806?cm_mmc=GoogleShopping-_-Band%20&%20Orchestra-_-Channeladvisor-_-Gator+GL+Series+Rigid+Foam+Lightweight+Trumpet+Case&utm_source=GSH&utm_medium=CSE&utm_campaign=Channeladvisor&CAWELAID=1594750197&cagpspn=pla&gclid=CL7468jq4rMCFQvznAodq2EAqg',0),(58,'brihall','Ipod Case','http://www.amazon.com/Otterbox-Reflex-Glacier-Plastic-Silicone/dp/B004UTVRSQ/ref=sr_1_3?s=electronics&ie=UTF8&qid=1353596483&sr=1-3&keywords=ipod+cases+blue',0),(59,'LHall','Ipod case Military duty','http://www.amazon.com/Survivor-Extreme-Duty-Case-touch/dp/B004JPG4PW/ref=sr_1_6?s=electronics&ie=UTF8&qid=1353596713&sr=1-6&keywords=ipod+touch+4th+generation+military+case',0),(60,'LHall','The Christmas Hope ','http://www.amazon.com/Christmas-Hope-Madeleine-Stowe/dp/B003H8F5SO/ref=sr_1_cc_1?s=aps&ie=UTF8&qid=1353597084&sr=1-1-catcorr&keywords=the+christmas+hope',0),(61,'LHall','Kindle ','http://www.amazon.com/Kindle-Paperwhite-Touch-light/dp/B007OZNZG0/ref=sr_tr_sr_1?ie=UTF8&qid=1353597296&sr=8-1&keywords=kindle',0),(62,'LHall','Dress size M','http://www.rue21.com/en/for%20Girls/Bottoms/Dresses/RIB%20COWL%20LS%20CABLE%20MIDDLE.aspx?color=GREY',0),(63,'LHall','Breaking Dawn Part 2 shirt size L','http://www.rue21.com/en/for%20Girls/Tops/Graphic%20Tees/BD%20JACOB%20ONE%20SHEET.aspx?color=BLACK',0),(65,'Bmhall','iPod case (black)','http://www.amazon.com/gp/aw/d/B004UBNQJC?in=2&is=300&qid=1353623309&sr=8-7',0),(66,'Bmhall','Electric guitar ','http://www.amazon.com/gp/aw/d/B002RZCZ90/ref=mp_s_a_1?qid=1353623438&sr=8-5&pi=SL75',0),(102,'MBrooks','red ripstik','http://www.amazon.com/RipStik-15055060-Ripstik-Caster-Board/dp/B000I44PAO/ref=sr_1_2?ie=UTF8&qid=1353876705&sr=8-2&keywords=ripstik',0),(80,'MBrooks','black boots size 7','http://www.amazon.com/Bamboo-Journee-Slouchy-Microsuede-Boots/dp/B001PR49R2/ref=sr_1_19?s=shoes&ie=UTF8&qid=1353697247&sr=1-19&keywords=boots',1),(70,'alysha5678','Olay Cleansing System','http://www.amazon.com/gp/product/B0043OYFKU/ref=amb_link_234449842_3?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-2&pf_rd_r=1RNS5VF7YWDR3NYEHAR5&pf_rd_t=101&pf_rd_p=1411116762&pf_rd_i=11062741',0),(71,'alysha5678','Jacket For School (Must Be Navy (M))','http://wetseal.com/catalog/product.jsp?categoryId=451&productId=59183&color=NAVY#OpenPopup',0),(92,'brihall','Necklace*','http://www.walmart.com/ip/Oravo-Heart-of-Music-Stainless-Steel-Musical-Note-Heart-Pendant-with-Black-Rope-Necklace/20911220',0),(103,'MBrooks','red headphones','http://www.amazon.com/Skullcandy-S5URDZ-212-Uprock-Athletic-Purple/dp/B007136A3A/ref=sr_1_25?s=sporting-goods&ie=UTF8&qid=1353877125&sr=1-25&keywords=headphones',0),(90,'brihall','Sanuks*','http://www.amazon.com/Sanuk-Womens-Game-Slip-On-Zebra/dp/B005GBV2LO/ref=sr_1_5?ie=UTF8&qid=1353638071&sr=8-5&keywords=sanuk+womens',0),(76,'brihall','shoes (7.5)','http://www.journeys.com/product.aspx?id=220597&c=1116,970&sb=r&pp=all',0),(77,'Bmhall','flip video camera','http://www.amazon.com/Flip-Ultra-Video-Camera-Generation/dp/B0023B14UE/ref=sr_1_11?s=electronics&ie=UTF8&qid=1353696164&sr=1-11&keywords=flip+video+camera',0),(78,'MBrooks','easy bake oven mix','http://www.amazon.com/Hasbro-Easy-Bake-Oven-Chocolate/dp/B0038MA3QI/ref=sr_1_3?ie=UTF8&qid=1353696581&sr=8-3&keywords=easy+bake+oven+mixes',0),(79,'Bmhall','sanuks','http://www.amazon.com/dp/B00409EC3S/ref=asc_df_B00409EC3S2276479?smid=ATVPDKIKX0DER&tag=pg-333-100-20&linkCode=asn&creative=395097&creativeASIN=B00409EC3S',0),(97,'Ckofink','Duke mug','http://www.footballfanatics.com/COLLEGE_Duke_Blue_Devils_Cups_Mugs_And_Shots/Duke_Blue_Devils_11oz._Game_Day_Mug',1),(100,'IBro12','Rc helicopter w/ camara','http://www.amazon.com/gp/aw/d/B0081VOEZM/ref=mp_s_a_1?qid=1353876193&sr=8-1&pi=SL75',0),(101,'MBrooks','silver earrings','http://www.amazon.com/se-ro-czc-7m-Sterling-Silver-Zirconia-Earrings/dp/B0007LNEHS/ref=sr_1_108?s=jewelry&ie=UTF8&qid=1353876191&sr=1-108&keywords=earrings',0),(105,'IBro12','Headphones','http://www.amazon.com/gp/aw/d/B004P1HW6A/ref=mp_s_a_1?qid=1353877674&sr=8-4&pi=SL75',0),(88,'MBrooks','fur boots size 7 nutmeg color','http://www.amazon.com/BEARPAW-Womens-Shearling-Boot-Nutmeg/dp/B0016OBI3C/ref=sr_1_75?s=shoes&ie=UTF8&qid=1353702979&sr=1-75&keywords=boots+on+sale',0),(89,'MBrooks','gold flats size 7','http://www.amazon.com/Ollio-Womens-Oxfords-Glitters-Loafers/dp/B00724ZHOG/ref=sr_1_10?s=shoes&ie=UTF8&qid=1353703416&sr=1-10&keywords=girls+gold+flats',0),(94,'brihall','Glee Season 3*','http://www.walmart.com/ip/Glee-The-Complete-Third-Season-Widescreen/21008122',0),(98,'Ckofink','Boots','http://www.belk.com/AST/Main/Belk_Primary/PRD~2900015SONJA2980F5/BareTraps+Sonja+Boot.jsp?off=4&rCode=dsku100024189&ZZ%3C%3EtP=4294923540&ZZ%3C%3Et=Baretrap+boots&ZZ_ST=Baretrap+boots&fO=AND%28Category_Path%29&ZZ_OPT=Y&PRODUCT%3C%3Eprd_id=845524442126270&FOLDER%3C%3Efolder_id=1408474395191292&bmUID=1353875552984',0),(96,'LHall','Sanuks size  7','http://www.amazon.com/Sanuk-Im-Game-Slip-On-Toddler/dp/B005GBVBKG/ref=sr_1_1?s=shoes&ie=UTF8&qid=1353720728&sr=1-1&keywords=sanuks+for+girls',0),(104,'MBrooks','cupcake maker','http://www.amazon.com/Sunbeam-FPSBCMM901-Mini-Cupcake-Maker-Pink/dp/B00519AOM4/ref=sr_1_1?ie=UTF8&qid=1353877330&sr=8-1&keywords=cupcake+maker',0),(107,'LHall','Olay cleansing system ','http://www.amazon.com/gp/aw/d/B0043OYFKU/ref=mp_s_a_1?qid=1353894806&sr=8-1&pi=SL75',0),(109,'chardesty','Band Teaching Book','http://www.amazon.com/Band-Teaching-Notes-From-Eddie-Green/dp/1423498844/ref=sr_1_cc_1?s=aps&ie=UTF8&qid=1353983605&sr=1-1-catcorr&keywords=on+teaching+band',0),(110,'chardesty','Carrera Streetcars Shoes - Pecan/10.5','http://www.amazon.com/STREETCARS-Mens-Carrera-Pecan-13-0/dp/B004DCV06O/ref=sr_1_cc_1?s=aps&ie=UTF8&qid=1353983670&sr=1-1-catcorr&keywords=carrera+streetcars+shoes',0),(111,'jmkofink','Iron (for clothes)','',0),(112,'Ckofink','Mock turtlenecks white, Lt. Blue, Teal','http://www.amazon.com/UltraSofts-by-National-Mock-Turtleneck/dp/B000JGLKWW',0),(113,'Ckofink','Straight leg jeans','http://www.walmart.com/catalog/product.do?product_id=17350933&findingMethod=rr',0);
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
INSERT INTO `users` VALUES ('akofink','Andrew','Kofink','403029f8ef4151611b5061d0d0b38ccbd9bd5237',NULL),('jmkofink','Jamie','Hardesty','31ccc9f1fc8707313c5b668636608b0353169226',NULL),('chardesty','Chris','Hardesty','7b2b048d1d64c2a808c632c98ad342593ccc1ffc',NULL),('Ckofink','Cheri','Kofink','8c9dd0a60eca8d4de07ae3fc3af656022280a204',NULL),('jckofink','Jim','Kofink','52841c6cd5623061ead583cc46f1c36fa9ed7104',NULL),('kellylynn52','Kelly','Brooks','65cc4628080d63e8993b6b78359ee8f4bddb4122',NULL),('Bmhall','Brandon','Hall','ef971ee38bba25d9ac8a840d235457a038448b09',NULL),('alysha5678','Alysha','Brooks','bb98097b6c1058e6d5e06c0ed1a5774dab7bb2e1',NULL),('LHall','Lyndsey','Hall','7b2958db98a2179cc65d94188ba85aec97e8143f',NULL),('MBrooks','Mckenzy ','Brooks','4f58e566b518c721d2128fef47f3c066e1ac5e30',NULL),('brihall','Brianna','Hall','c204a3ce4d1be516baacbd22543e66c27ed2525a',NULL),('IBro12','Isaiah ','Brooks','184aae53021b6e3024659931ae89fa74c1d5cdd5',NULL),('KenjiB','Kenji','Brooks','4a3487e57d90e2084654b6d23937e75af5c8ee55',NULL);
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

-- Dump completed on 2012-12-01  6:00:01
