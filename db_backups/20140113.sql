-- MySQL dump 10.13  Distrib 5.6.15, for osx10.7 (x86_64)
--
-- Host: localhost    Database: magical_narwhal_development
-- ------------------------------------------------------
-- Server version	5.6.15

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `posted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_posts_on_user_id` (`user_id`),
  KEY `index_posts_on_title` (`title`),
  KEY `index_posts_on_active` (`active`),
  KEY `index_posts_on_created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'Cyto-States','Every now and then I like to imagine that instead of unified organisms humans are actually alliances of cells that joined together to protect themselves against marauding viruses, bacteria, and other organisms. Some die so that others may live, and while each cell starts with the same DNA selective transcription and intense specialization makes the system more caste than democratic with an elite cadre of neurons guiding the rest. There are even power struggles among the neurons since every decision comes from a conflicting mass of tangled signals that ultimately produces a binary yes or no. Every time you choose to go for a run instead of having that third cupcake it\'s the triumph of a benevolent aristocracy over greedy individual cells, corruption, and chaos. Sometimes it\'s nice to know that somewhere in the world people and cells can put aside their individual interests and good can triumph over evil and that it happens in your body an a daily basis. And sometimes you eat the extra cupcake because cupcakes are delicious',1,'2014-01-05 10:19:40','2014-01-03 03:53:26'),(2,1,'Suprisingly Useful Superpowers: Charger','There are a lot of super powers that would be useless for fighting crime but would be amazing for everyday life. I\'ve never needed to shoot a bolt of lightning or turn into a lizard, but being able to generate just enough electricity to charge a phone, laptop, or electric car any time and any place would be amazing. No need to carry around power cables, your gadgets would work in the woods, and you\'d have unlimited range in a Tesla, Volt, or Leaf. As an added bonus you\'d be your own portable bug zapper. With barely mediocre power comes barely mediocre responsibility',1,'2014-01-05 10:35:59','2014-01-04 03:53:26'),(3,1,'Suprisingly Useful Superpowers: Hair','Another surprisingly useful superpower would be the ability to grow or retract your hair at will.  Baldness would never be a problem and you would never be stuck with a bad haircut since you could just grow out your hair and try again.  With the ability to both grow and retract you would never even need to shave since you could just adjust your hair until it looked the way you wanted it to, and you could produce beards on demand for warmth and disguise.  It would actually be a pretty sweet power',1,'2014-01-06 03:29:08','2014-01-05 03:53:26'),(4,1,'Dinosaur Chicken Nuggets','When I was little I loved eating chicken nuggets, and the best ones were shaped like dinosaurs. At roughly 12 meters long and 7 metric tons, the Tyrannosaurus Rex is one of the most charismatic and iconic dinosaurs in the world. Famed for its size and impressive dentistry as much as its stubby little arms, in recent years scientists have discovered that it and other dinosaurs may actually have had feathers, some in infancy and others in adulthood, and are mostly agreed that the T Rex\'s closest living relative is Gallus Gallus or the chicken. That means it\'s pretty likely that if you\'d managed to take a bite out of a T Rex it would have tasted like chicken, and that means that dinosaur chicken nuggets might actually taste like real dinosaur.  Science!',1,'2014-01-06 03:59:27','2014-01-06 03:53:26'),(5,1,'Ducks','When I think about ducks I usually image mallards because they have such striking iridescent green feathers.  Unlike humans, male birds are usually the more beautiful because bright colors are an indicator of health and vitality that females can use to help choose a partner.  Peacocks take this to the extreme since any males that manage not to get killed with ridiculous feathery \"eat me\" signs on their rears are bound to be in pretty good shape.  This is true in mallards, where the males have bright green heads but the females are an inconspicuous brown by comparison.  Yet all mallards have large and beautiful purple feathers that are only really visible when they\'re in flight called speculum feathers.\r\n\r\nThere\'s no particular reason why female mallards need these purple feathers, and since they\'re hidden so much of the time most people don\'t even associate them with ducks.  Females aren\'t even subject to the same selective pressures as males since losing females does more damage to a population so they\'re less able to afford being garish in their decoration.  There are certain patterns that evolution produces time and time again because they\'re best suited for a particular environment.  The shape of a tuna is incredibly hydrodynamic and might emerge a thousand times in a thousand different ways, but a million different universes would produce a million ducks without purple feathers.  That makes our own purple ducks even more wonderful',1,'2014-01-06 04:38:09','2014-01-07 03:53:26'),(6,1,'Functional Telepathy','One of the most practical uses of telepathy is being able to communicate silently with other people over a great distance.  The ubiquity of mobile devices along with well developed cellular and wireless infrastructures means that text messages are as close to being able to do this as we\'ve ever come.  I take it for granted that I can message someone almost anywhere in the world and can usually get a response back within seconds, which is pretty incredible.  The last missing piece is being able to type and view messages without an obvious input device or screen.  Devices already exist which can differentiate between images that a person is imagining because the brain generates so much electricity in the form of action potentials that it produces a measurable difference on your scalp.  I\'m not sure how long it will take for a clever researcher somewhere to develop a method and device that is able to differentiate with enough granularity to parse out words if ever, but if that were possible one of the core technical challenges would likely be differentiating between the things that a person was actually trying to say versus random nonverbal thoughts as well as content that was not intended for transmission.  Some thoughts are not even words, and feel more like a choir in which a million distinct voices drown each other out and occasionally produce distinct notes.  Even as I write this I can hear myself rereading the same sentences over and over in my head and any device that could read those thoughts would probably produce gibberish.  Instead of \"Hello there\" you\'d get \"Hello - hot tea is warm in my tummy [thirsty/hungry] oh I have a belly button ahaha I\'m thinking about how [image of an elephant] funny (ferny?  furry?) it is (wait it is really funny?) that it\'s so hard only to imagine two words (ya funny is the best word) - there\".  You\'d probably need a system where imagining a series of images or patterns would be required to both initiate and end messages, and they\'d probably need to be complicated to prevent telepathic pocket dials.  So whenever a telepath in a movie scrunches up their face with concentration I like to think they\'re imagining a turtle with antlers dressed as Margaret Thatcher',1,'2014-01-07 04:31:22','2014-01-08 03:53:26'),(7,1,'Rabbi-T','',1,'2014-01-07 04:34:42','2014-01-09 03:53:26'),(8,1,'Arete','The ancient Greeks had a concept called arete in which the most virtuous life is led by achieving your maximum potential.  The moment you are born there are infinite paths open to you, and every decision you make narrows that decision space.  Sleeping 18 hours a day is amazing, but if you do it every day it\'s almost impossible that you won\'t be missing out on other experiences so in some sense choices can be judged based on what possibilities they open up.  The best decisions are the ones that allow you access to the most desirable opportunities in the future.  There is value in close friendships that you won\'t experience if you do not maintain them, there are places you can\'t visit and activities you can\'t participate in if you aren\'t strong or fast enough, and even intelligence is a honed skill so there are concepts that you will never understand if you don\'t make the effort.  Becoming a travel writer may mean you\'ll be able to experience more of the world but that may come at the expense of interpersonal relationships from being on the road all the time, and it\'s only clear if it\'s the right decision for you if you understand your priorities.  Not using your talents is the same as not having them, and having freedom involves making difficult choices.  This idea has always appealed to be because if you imagine a multiverse in which every choice and action produces a parallel timeline, it would be nice if I was living in one of the good ones',1,'2014-01-07 04:37:07','2014-01-10 03:53:26'),(9,1,'S\'mores!','Turns out it only takes about 3 seconds to make a s\'more in the microwave!  You can use the oven to make hundreds of toasted s\'mores at a time!',1,'2014-01-07 04:38:24','2014-01-11 03:53:26'),(10,1,'Tea Cup Jars','I just realized that a glass jar makes a great teacup!  If you\'re drinking tea in bed you can put the lid back on so it won\'t spill and transform it into a hand warmer.  Then once the tea bag is done seeping you can take it out and put it on the lid like a saucer!',1,'2014-01-07 04:39:57','2014-01-12 03:53:26'),(11,1,'Panda VS Orca','Pandas and orcas are almost exact opposites. One is white with black spots, the other is black with white spots. One is furry, the other is smooth. One lives in the mountains, the other lives in the ocean. One has ears, the other doesn\'t. It\'s unlikely that an orca has ever encountered a panda in the wild and with so many differences they might be enemies.  Good thing they\'re both mammals with tails or we might have a serious problem',1,'2014-01-07 04:40:27','2014-01-13 03:53:26'),(12,1,'The Doctor (Seuss)','The timey-wimiest Who in all of Whoville',1,'2014-01-09 05:28:01','2014-01-14 03:53:26');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20131221021735'),('20131221032037'),('20131221033403'),('20131221044057'),('20131221071209'),('20131231205040'),('20131231215753'),('20140102163234'),('20140102171228'),('20140102172932'),('20140104211455'),('20140104211456'),('20140105032957'),('20140113191502'),('20140114020138');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggings_idx` (`tag_id`,`taggable_id`,`taggable_type`,`context`,`tagger_id`,`tagger_type`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (1,1,102,'Post',NULL,NULL,'tags','2014-01-04 21:24:23'),(2,2,102,'Post',NULL,NULL,'tags','2014-01-04 21:26:19'),(3,3,102,'Post',NULL,NULL,'tags','2014-01-04 21:26:19'),(5,4,104,'Post',NULL,NULL,'tags','2014-01-05 10:15:48'),(6,5,104,'Post',NULL,NULL,'tags','2014-01-05 10:15:48'),(12,8,2,'Post',NULL,NULL,'tags','2014-01-06 01:37:42'),(15,8,3,'Post',NULL,NULL,'tags','2014-01-06 03:29:08'),(17,11,4,'Post',NULL,NULL,'tags','2014-01-06 04:00:04'),(19,12,4,'Post',NULL,NULL,'tags','2014-01-06 04:00:04'),(20,13,5,'Post',NULL,NULL,'tags','2014-01-06 04:39:02'),(22,14,5,'Post',NULL,NULL,'tags','2014-01-06 04:39:40'),(23,13,4,'Post',NULL,NULL,'tags','2014-01-06 04:39:56'),(26,13,11,'Post',NULL,NULL,'tags','2014-01-07 04:43:14'),(29,16,10,'Post',NULL,NULL,'tags','2014-01-13 22:02:13'),(30,16,9,'Post',NULL,NULL,'tags','2014-01-13 22:02:19'),(31,17,12,'Post',NULL,NULL,'tags','2014-01-13 22:02:33'),(32,17,7,'Post',NULL,NULL,'tags','2014-01-13 22:02:40'),(33,18,8,'Post',NULL,NULL,'tags','2014-01-13 22:02:46'),(34,18,1,'Post',NULL,NULL,'tags','2014-01-13 22:02:56'),(35,13,7,'Post',NULL,NULL,'tags','2014-01-13 22:03:57'),(36,19,7,'Post',NULL,NULL,'tags','2014-01-13 22:03:57'),(37,20,11,'Post',NULL,NULL,'tags','2014-01-13 22:04:06'),(38,21,11,'Post',NULL,NULL,'tags','2014-01-13 22:04:06');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tags_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (13,'animals'),(11,'dinosaurs'),(14,'ducks'),(16,'eureka'),(12,'food'),(18,'life'),(17,'mashup'),(21,'orcas'),(2,'owl'),(20,'pandas'),(19,'rabbits'),(4,'random'),(3,'running'),(5,'speculation'),(8,'superpowers'),(1,'test');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile` text COLLATE utf8_unicode_ci,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_name` (`name`),
  UNIQUE KEY `index_users_on_nickname` (`nickname`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Michael','huaitzer@gmail.com','Terragnome','2013-12-21 03:30:57',NULL,'avatars/mlin_avatar.jpg','Terragnome','Michael is an engineer from the California bay area who loves art, food, napping, nature, programming, running, and science in alphabetical order.  He has many other interests as well but the list was getting long and boring so he stopped adding things to it.  He is mostly made of water and contains large quantities of oxygen, carbon, and hydrogen as well as traces of iron, salt, and other chemicals for flavor.  Sometimes he lies, but never to you.  You can trust him','$2a$10$VInRWJG5QeScowMVKkDXTuG12y23rlKNEOf4MDYs6Ienss.UtGKOG',NULL,NULL,NULL,5,'2014-01-14 02:47:00','2014-01-14 02:45:00','127.0.0.1','127.0.0.1'),(2,'Sophia','lin.sophi@gmail.com','sophi','2013-12-21 07:22:55',NULL,'avatars/mlin_avatar.jpg','','Sophi is amazing!','',NULL,NULL,NULL,0,NULL,NULL,'','');
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

-- Dump completed on 2014-01-13 21:05:26
