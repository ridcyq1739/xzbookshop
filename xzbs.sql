-- MySQL dump 10.13  Distrib 5.7.22, for Win64 (x86_64)
--
-- Host: localhost    Database: xzbookshop
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can add group',3,'add_group'),(9,'Can change group',3,'change_group'),(10,'Can delete group',3,'delete_group'),(11,'Can view group',3,'view_group'),(12,'Can view permission',2,'view_permission'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add Bookmark',6,'add_bookmark'),(22,'Can change Bookmark',6,'change_bookmark'),(23,'Can delete Bookmark',6,'delete_bookmark'),(24,'Can add User Setting',7,'add_usersettings'),(25,'Can change User Setting',7,'change_usersettings'),(26,'Can delete User Setting',7,'delete_usersettings'),(27,'Can add User Widget',8,'add_userwidget'),(28,'Can change User Widget',8,'change_userwidget'),(29,'Can delete User Widget',8,'delete_userwidget'),(30,'Can add log entry',9,'add_log'),(31,'Can change log entry',9,'change_log'),(32,'Can delete log entry',9,'delete_log'),(33,'Can view Bookmark',6,'view_bookmark'),(34,'Can view log entry',9,'view_log'),(35,'Can view User Setting',7,'view_usersettings'),(36,'Can view User Widget',8,'view_userwidget'),(37,'Can add revision',10,'add_revision'),(38,'Can change revision',10,'change_revision'),(39,'Can delete revision',10,'delete_revision'),(40,'Can add version',11,'add_version'),(41,'Can change version',11,'change_version'),(42,'Can delete version',11,'delete_version'),(43,'Can view revision',10,'view_revision'),(44,'Can view version',11,'view_version'),(45,'Can add 类型',12,'add_category'),(46,'Can change 类型',12,'change_category'),(47,'Can delete 类型',12,'delete_category'),(48,'Can add 商品',13,'add_goods'),(49,'Can change 商品',13,'change_goods'),(50,'Can delete 商品',13,'delete_goods'),(51,'Can view 类型',12,'view_category'),(52,'Can view 商品',13,'view_goods'),(53,'Can add 用户',14,'add_userprofile'),(54,'Can change 用户',14,'change_userprofile'),(55,'Can delete 用户',14,'delete_userprofile'),(56,'Can add 轮播图',15,'add_banner'),(57,'Can change 轮播图',15,'change_banner'),(58,'Can delete 轮播图',15,'delete_banner'),(59,'Can view 商品',13,'view_books'),(60,'Can view 轮播图',15,'view_banner'),(61,'Can view 用户',14,'view_userprofile'),(62,'Can add 商品',13,'add_books'),(63,'Can change 商品',13,'change_books'),(64,'Can delete 商品',13,'delete_books'),(65,'Can add 书评',16,'add_review'),(66,'Can change 书评',16,'change_review'),(67,'Can delete 书评',16,'delete_review'),(68,'Can view 书评',16,'view_review'),(69,'Can add 评论',17,'add_comment'),(70,'Can change 评论',17,'change_comment'),(71,'Can delete 评论',17,'delete_comment'),(72,'Can view 评论',17,'view_comment'),(73,'Can add 购物车',18,'add_cart'),(74,'Can change 购物车',18,'change_cart'),(75,'Can delete 购物车',18,'delete_cart'),(76,'Can view 购物车',18,'view_cart'),(77,'Can add 订单',19,'add_order'),(78,'Can change 订单',19,'change_order'),(79,'Can delete 订单',19,'delete_order'),(80,'Can view 订单',19,'view_order');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_books`
--

DROP TABLE IF EXISTS `books_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `price` decimal(5,2) NOT NULL,
  `click` int(11) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `storage` varchar(6) NOT NULL,
  `content` longtext NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  `author` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `books_goods_category_id_c356557b_fk_books_category_id` (`category_id`),
  CONSTRAINT `books_goods_category_id_c356557b_fk_books_category_id` FOREIGN KEY (`category_id`) REFERENCES `books_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_books`
--

LOCK TABLES `books_books` WRITE;
/*!40000 ALTER TABLE `books_books` DISABLE KEYS */;
INSERT INTO `books_books` VALUES (1,'活着','goods/2018/08/活着.jpg',14.00,10,'《活着》是一部充满血泪的小说。余华通过一位中国农民的苦难生活讲述了人如何去承受巨大的苦难；讲述了眼泪的丰富和宽广；讲述了绝望的不存在：讲述了人是为了活着本身而活着……','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">《活着》是一篇读起来让人感到沉重的小说。那种只有阖上书本才会感到的隐隐不快，并不是由作品提供的故事的残酷造成的。毕竟，作品中的亡家，丧妻，失女以及白发人送黑发人这样的故事并不具备轰动性。同时，余华也不是一个具有很强煽动能力的作家，实际上，渲染这样的表达方式是余华一直所不屑的。余华所崇尚的只是叙述，用一种近乎冰冷的笔调娓娓叙说一些其实并不正常的故事。而所有的情绪就是在这种娓娓叙说的过程中中悄悄侵入读者的阅读。这样说来，《活着》以一种渗透的表现手法完成了一次对生命意义的哲学追问。</span></p>','2018-08-30 13:46:00.000000',1,'余华'),(2,'解忧杂货店','goods/2018/08/解忧杂货店.jpg',28.80,50,'僻静的街道旁有一家杂货店，只要写下烦恼投进店前门卷帘门的投信口，第二天就会在店后的牛奶箱里得到回答：因男友身患绝症，年轻女孩静子在爱情与梦想间徘徊；克郎为了音乐梦想离家漂泊，却在现实中寸步难行；少年浩','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">《解忧杂货店》堪称东野圭吾在《白夜行》后很受欢迎的作品，不但荣获中央公论文艺奖，更登上纪伊国屋、诚品、博客来、金石堂等各大排行榜。东野圭吾这次选择的，是生活中平凡的片段：在事业和爱情间艰难抉择的运动员、离家打拼却屡遭挫折的音乐人、想要挣钱报答亲人的女招待……他们真诚又忐忑地写下信件，想要为自己的未来找到新的可能。互不相识的人因一家可以咨询烦恼的杂货店而走到一起，虽未谋面，心与心却真诚相对，这正是东野圭吾想要展现的力量：现代人内心流失的东西，这家杂货店能帮你找回。《解忧杂货店》充分展现了东野圭吾的创作才华。通过书信这种已渐渐淡出人们生活的交谈方式，人物依次登场，精巧的结构让温情、惊喜与感动悄然渗入读者心中，回味无穷。</span></p>','2018-08-30 13:47:00.000000',1,'东野圭吾'),(3,'追风筝的人','goods/2018/08/追风筝的人.jpg',18.90,8,'“许多年过去了，人们说陈年旧事可以被埋葬，然而我终于明白这是错的，因为往事会自行爬上来。回首前尘，我意识到在过去二十六年里，自己始终在窥视着那荒芜的小径。”','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">这本小说太令人震撼，很长一段时日，让我所读的一切都相形失色。文学与生活中的所有重要主题，都交织在这部惊世之作里：爱、恐惧、愧疚、赎罪……&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/> <span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　——伊莎贝拉·阿连德&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/> <br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/> <span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">★一个阿富汗作家的处女作。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/> <span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">★一部以史诗般的历史景观和荡气回肠的人性故事，深深地打动全世界各地亿万读者心的文学经典。</span></p><p><br/> </p><p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">12岁的阿富汗富家少爷阿米尔与仆人哈桑情同手足。然而，在一场风筝比赛后，发生了一件悲惨不堪的事，阿米尔为自己的懦弱感到自责和痛苦，逼走了哈桑，不久，自己也跟随父亲逃往美国。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/> <span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">成年后的阿米尔始终无法原谅自己当年对哈桑的背叛。为了赎罪，阿米尔再度踏上暌违二十多年的故乡，希望能为不幸的好友尽zui后一点心力，却发现一个惊天谎言，儿时的噩梦再度重演，阿米尔该如何抉择？&nbsp;</span></p>','2018-08-30 13:49:00.000000',1,'卡勒德·胡赛尼'),(4,'落木无边','goods/2018/08/落木无边.jpg',12.30,6,'《落木无边》是王跃文时隔多年后重返官场的一部新作品。小说通过乌柚县一名县委办公室主任的视角，以紧凑的节奏、辛辣的笔调讲述了在小小县委大院里发生的那一幕幕滑稽的闹剧：差配干部…','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">我似乎总怕那花瓶碎落一地,忍不住想伸手去扶。可是,扶正了花瓶,画框歪了;扶正了画框,花瓶又歪了。</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">关于新书《落木无边》</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">问:王先生您好!据悉您的长篇新著即将推出,您认为此部新著中zui值得读者期待的是什么?有哪些内容或写法突破了您以往的作品?一脉相承的又是什么?</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">答:新的长篇小说也是写官场的。很多读者在我的博客里留言。希望看到我新的官场小说,但愿这部小说不会让读者失望。《国画》出版至今。已是整整十年。十年间,发生了很多事情,自己也思考了很多问题。我不可能在一部长篇小说里把自己十年间关于社会和人的思考全部融入其间,但新小说呈现出来的面貌肯定非十年前可比。这部新长篇自己觉得更加从容和冷静,可能同自己的年龄有关。然而,从容和冷静并不意味着退让和圆滑。这部新长篇里,写作的依然是触目所见的现实常态,但看生活的眼光也许发生了变化。我任何时候写作都没有想过要告诉读者什么,觉得这是对读者的不尊重。读者有自己的眼光,他们也是作家和作品的审判官。</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">——2009年6月9日王跃文答《华商报》记者问节选</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">问:很多人曾惊叹您的创作力之旺盛、作品之丰盛,但后来看过您的简介之后,才知道很多作品其实都是盗版与盗名之作,面对这类烦恼,您有什么“高招”吗?在此方面维权,瓶颈何在?另外。一个作家要如何对待盛名之后的种种遭际?</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">答:我也许是目前被盗版、盗名zui多的作家之一,对此我毫无办法。曾经打过一场官司,让侵权者给予了经济赔偿。但这种事情,我不想再姑息下去。我zui近雇请了专门律师,全权委托他处理对我的侵权行为。目前中国作家被侵杈的情况很严重。中国地方太大,很多报刊杂志用了人家的作品不付钱,或者在没有约定的情况下给予极低的稿费。我会让律师给自己讨个公道。</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">——2009年6月9日王跃文答《华商报》记者问节选</span></p>','2018-08-30 13:59:00.000000',1,'王跃文'),(5,'肖申克的救赎','goods/2018/08/肖申克的救赎.jpg',14.70,2,'这本书绝对不容错过，我保证你会一头栽进去而无法自拔……他创造的人物栩栩如生得让你几乎可以感觉到他们的存在。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">本书是斯蒂芬·金zui为人津津乐道的杰出代表作，收入了他的四部中篇小说。其英文版一经推出，即登上《纽约时报》畅销书排行榜的冠军之位，当年在美国狂销二十八万册。目前，这本书已经被翻译成三十一种语言，同时创下了收录的四篇小说中有三篇被改编成轰动一时的电影的记录。其中zui负盛名的便是曾获奥斯卡奖七项提名、被称为电影史上zui完美影片的《肖申克的救赎》（又译《刺激一九九五》）。这部小说展现了斯蒂芬·金于擅长的惊悚题材之外的过人功力。书中的另两篇小说《纳粹高徒》与《尸体》拍成电影后也赢得了极佳的口碑。其中《尸体》还被视为斯蒂芬·金zui具自传色彩的作品。一部不容错过、让人手不释卷的杰作，带你体验如同四季变化般的人性绝望与希望之旅。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">《肖申克的救赎》去年曾由台湾远流出版公司出版繁体字版，书名为《四季奇谭》。本次人民文学出版社推出的简体中文版与台湾版使用的是同一个译本，由于电影《肖申克的救赎》在国内读者中的广泛影响，而把它用作书名。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">全书共收录了斯蒂芬·金的四篇中篇小说，首篇即为“春天的希望”《肖申克的救赎》。此外，还有“夏日沉沦”《纳粹高徒》、“不在纯真的秋天”《尸体》，“暮冬重生”《呼－吸－呼－吸》，故事分别是关于一个很特别的越狱犯、一个老人和一个男孩被困在一种相互寄生的关系中、四个乡下小孩的发现之旅，以及年轻女人决定不管发生什么事都要生下小孩的恐怖故事。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">目前，这本书已经被翻译成31种语言，收录的四篇小说中已有三篇被改编成轰动一时的电影。其中zui为人津津乐道的便是曾获奥斯卡奖七项提名的《肖申克的救赎》。这部小说展现了斯蒂芬·金所擅长的惊悚题材之外的写作功力。书中的另两篇小说《纳粹高徒》与《尸体》拍成电影后也赢得了极佳的口碑。其中《尸体》还被视为斯蒂芬·金zui具自传色彩的作品。</span></p>','2018-08-30 14:05:00.000000',1,'（美）斯蒂芬·金'),(6,'我叫刘跃进','goods/2018/08/我叫刘跃进.jpg',11.00,1,'世界上所有的狼，都披着羊皮，和蔼可亲；而世界上所有的羊又在装大尾巴狼，装腔作势。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">刘跃进是北京某建筑工地的民工，上街时他的包被人抢了，里面装着他全部财产。找包的过程中，他又捡到一个包，这个包里藏着天大的秘密，牵涉到上流社会的几条人命。于是几拨找这个包的人马，又开始找刘跃进……&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">刘跃进像一只无辜的羊，意外地闯入了狼群，他自认倒霉却不悲观。问题在于，世界上所有的狼，都披着羊皮，和蔼可亲；而世界上所有的羊又在装大尾巴狼，装腔作势。</span></p>','2018-08-30 14:08:00.000000',1,'刘震云'),(7,'隋唐五代文学思想史','goods/2018/08/隋唐.jpg',18.20,8,'《隋唐五代文学思想史(研究生教学用书)》是一部隋唐五代文学思想为主要研究对象的断代文学思想史专著。','9999','<p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; text-indent: 26px; background-color: rgb(255, 255, 255);\">《隋唐五代文学思想史(研究生教学用书)》是一部隋唐五代文学思想为主要研究对象的断代文学思想史专著。在编写体例上改变了历来文学批评史著作以人为纲的框架，采用以时间段落为纲的体制。作者按照隋唐五代文学思想发展过程中自然形成的时间段落，把起自公元581年，止于公元959年的近三百八十年间的文学思想发展，划分为九个时间段， 详细地分析了各个时间段文学思想的特征和意义，并梳理出各个阶段文学思想的因承转接线索。全书共十一章，三十六节，自始至终都力求宏观的视野去观察和阐明文学思想的产生、发展，变化的真实过程。《隋唐五代文学思想史(研究生教学用书)》条理性强，内容丰富，批评中步，语言简洁，文字平实流畅。</span></p>','2018-08-30 14:09:00.000000',2,'罗宗强'),(8,'百味红楼《红楼梦》分回品赏','goods/2018/08/百味红楼.jpg',13.70,4,'本书由一百二十篇文章组成，三十万言，洋洋洒洒，从《红楼梦》的每一回中的某些或某一个内容，作出品评，欣赏其“味”，很像从深海中捞出来的珍品，颇值得一“赏”。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">本书由一百二十篇文章组成，三十万言，洋洋洒洒，从《红楼梦》的每一回中的某些或某一个内容，作出品评，欣赏其“味”，很像从深海中捞出来的珍品，颇值得一“赏”。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">本书是作者自己在阅读《红楼梦》时，从自身经验的联想中所产生的感受。既是感受，便极富个性，极有新意。既是感受，在写法上便多直抒胸臆，常常侃侃而谈，极富感情，娓娓动听，对读者很有吸引力。书本对《红楼梦》这一巨著作了分回品赏，又有评语，这些因素构成了此书自有《红楼梦》以来独特的新颖性，对红学，特别是对《红楼梦》这一名著的普及，具有相当的价值。</span></p>','2018-08-30 14:13:00.000000',2,'祝秉权'),(9,'食事-汪曾祺精选集','goods/2018/08/食事.jpg',18.00,1,'汪曾祺不仅是一位作家，还是一位道地的美食家。无论是家常小食、还是地方风味，甚至于生活里zui平淡无奇的一碗热汤，在汪曾祺的笔下都添了一分文化意蕴，多了一笔闲情雅致。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">黄油饼是甜的，混着的眼泪是咸的&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　就像人生，往往交织着复杂而美好的味道&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　1.本书选取了汪曾祺很多散文名篇，收录全面而具有典型性。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　2.汪曾祺被誉为中国zui后一位士大夫，唯一一位衔接现代文学与当代文学的散文大师。在散文和短篇小说方面具有突出的成就。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　3.本书精装版，设计精美，适合阅读收藏。</span></p>','2018-08-30 14:14:00.000000',2,'汪曾祺'),(10,'所有人问所有人','goods/2018/08/所有人问所有人.jpg',8.00,3,'本书内容包括: 你在我的毕业纪念册上写了什么? 你疯了么? 韩寒遇到过什么尴尬事? 范冰冰和李冰冰的区别是什么? 他们到底在唱什么? 死后尸体怎么办? 你爱未出生的宝宝么? 听说静修很流行? 男人被强','9999','<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 15px 25px 0px 22px; border: 0px; line-height: 24px; color: rgb(102, 102, 102); font-size: 14px;\">●《所有人问所有人》：一份关于社会、民生、八卦、性、音乐、电影、生活、潜规则等所有问题的非标准答案。　　&nbsp;<br/>●无论你是谁，来自哪儿，做着什么，你都可以向任何人提问，提问任何问题。《所有人问所有人》，就是这样一部收录了zui不可思议的问题和不可思议的答案的你闻所未闻的奇书，这些问题，你或想到，却从未有人回答，你或想探索，却一直无处着手。　　&nbsp;<br/>●一网打尽你从出生到现在一直藏在内心深处的疑问和问题。&nbsp;<br/>●韩寒、李承鹏、王中磊、苏紫紫、贾樟柯、铁凝、周云蓬、蒋方舟、朴树、叫兽易小星、高晓松、石康、那多、李银河、熊培云、琦殿、连岳、张嘉佳、silver是水果味儿的、外交部总机、台湾80后、107岁老人……为你回答。</p><h2 class=\"tit\" style=\"margin: 0px; padding: 0px; border: 0px; overflow: hidden;\"></h2><p><br/> </p>','2018-08-30 14:16:00.000000',2,'一个工作室主编'),(11,'梁启超传记菁华','goods/2018/08/梁启超传记菁华.jpg',19.50,4,'被公认为是清朝最优秀的学者，中国历史上一位百科全书式人物。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">梁起超被公认为是清朝zui优秀的学者，中国历史上一位百科全书式人物，而且是一位能在退出政治舞台后仍在学术研究上取得巨大成就的少有人物。梁启超散文的影响极大，“每一文出，则全国之身目为之一耸”。 梁氏之散文形成一种新文体，介乎于古文与白话文之间，议论纵横，气势磅礴，笔端常带感情，极富鼓动性。 袁崇焕斩杀毛文龙，是是非非谁能说得清?李鸿章签订《马关条约》，你可知他曾与伊藤博文据理力争? 中国殖民八大伟人，原来早在明朝，中国人就已经征服异域做国王。祖先的丰功伟绩，中国人的开拓进取，历史的本来面目，在梁氏笔下一一展现…… 大家小传系列： 《胡适传记菁华》 《梁启超传记菁华》 《范曾传记菁华》</span></p>','2018-08-30 14:34:00.000000',3,'梁启超'),(12,'帝王心理传记','goods/2018/08/帝王心理传记.jpg',37.70,1,'本书是一部历史人物心理传记著作，它继承了人本主义心理学和精神分析心理学的个案研究传统。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">本书是一部历史人物心理传记著作，它继承了人本主义心理学和精神分析心理学的个案研究传统。本书每一章以相关朝代的皇帝作为章名，以皇帝及该时代名人作为研究对象，详细分析了十多个著名人物的心理因素对其命运变化的影响。在本书中，作者重点从观念因素、思维因素、性格因素及家庭人际因素等，深度挖掘人物的心理世界，阐述其成败之道。以心理学的视角，认识历史人物的命运变化之奥秘，一定会给读者在理解人性、认识他人和自我、改变命运上带来启发，从而更好地开发潜能，实现人生比较大的价值。</span></p>','2018-08-30 14:36:00.000000',3,'李抗'),(13,'闵桂荣院士传记','goods/2018/08/闵桂荣院士传记.jpg',44.20,3,'本书生动翔实地记述中国科学院院士、中国工程院院士、国际宇航科学院院士，空间技术专家，我国航天器热控制技术科学创建人之一闵桂荣献身祖国航天事业的光辉历程。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">该书作者杨照德、熊延岭先后在中国科学院、中国空间技术研究院工作，在闵桂荣直接或间接领导下工作多年，与闵桂荣院士保持近距离接触、交流长达几十年，为了编写好本书，他们查阅、研究了大量的相关史料，进行了多方面的采访，保住了在取材和叙述上的真实性和客观性。该书作者还参与了“钱学森与中国航天”课题组，对中国卫星发展史做了较深入的研究，从本书中可以清晰地看到中国空间技术研究院的创建、中国卫星事业发展规划的制定以及各种关键技术的储备。</span></p>','2018-08-30 14:38:00.000000',3,'杨照德'),(14,'总统誓言-孙逸仙传记-唯一一本孙中山本人','goods/2018/08/总统誓言-孙逸仙传记-唯一一本孙中山本人认可的传记.jpg',17.40,0,'孙中山传记。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">中华民族，世界之至大者也，亦世界之至优者也。中华土地，世界之至广者也，亦世界之至富者也。然而以此至大至优之民族，据此至广至富之土地，会此世运进化之时、人文发达之际，犹未能先我东邻而改造一富强之国家者，其故何也？人心涣散，民力不凝结也。 　　中国四万万之众等于-盘散沙，此岂天生而然耶？实异族之专制有以致之也。在满清之世，集会有禁，文字成狱，偶语弃市，是人民之集会自由、出版自由、思想自由皆已削夺净尽，至二百六十余年之久…… 　　革命党之誓约日：“恢复中华，创立民国”，盖欲以此世界之至大至优之民族，而造一世界至进步、至庄严、至富强、至安乐之国家，而为民所有、为民所治、为民所享者也。</span></p>','2018-08-30 14:39:00.000000',3,'林百克'),(15,'忽必烈和他的世界帝国','goods/2018/08/忽必烈和他的世界帝国.jpg',18.20,0,'作为成吉思汗的嫡孙，世界有史以来疆域zui辽阔帝国的缔造者，忽必烈不但继承了成吉思汗的雄才大略，更完成了祖父号令天下的目标。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">他半生戎马，率领蒙古军骑长驱直入，踏破了南宋江山，征服了中国的剩余地区，还扬威海外，两次侵入日本。</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　与成吉思汗以武功震撼世界不同，忽必烈更以文治著称于天下。为统治多民族、多宗教并存的帝国，他和幕僚们一起，建立了一个以汉法为基础又不为传统中国理念所束缚的政府，为元朝的百年江山奠定了基础。作为天下共主，他以一种空前的开阔胸怀，聚拢各族精英，广泛吸收各种文化中的先进部分。他既是儒家思想体系的拥护者，也是热心的佛教徒，还许诺他的许多臣民将皈依基督教，更是穆斯林的保护者。他试图在多种文化之间维持微妙的平衡，并取得了令人敬佩的成功。</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　在执政初期，忽必烈大量豁免、减免税赋，鼓励农业生产；给予商人相当高的地位，促使国内、对外贸易异常繁荣；允许艺术家自由创作，给予帝国工匠充分发挥想象力的空间，并激励科学家更大胆的创新。他所统治的帝国，代表着当时世界范围内zui先进、zui富庶的东方文化。这种文化通过畅通的丝绸之路，无保留地被传播到南洋、印度洋，直至欧洲腹地，使西方人对东方文明产生向往和倾慕，并刺激了哥伦布远航寻找新大陆。远征的惨败、无度的财政需索、个人健康的衰退，使得忽必烈建立世界帝国的梦想zui终未能实现，但这无损于他的荣光。他的先辈们不曾有过他那种统一并统治整个已知世界的梦想，后继者中再也没有人有过这样的眼光。</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　本书是西方diyi部全面叙述忽必烈生平的传记，再现了忽必烈从藩王到蒙古大汗、直至元帝国君主的波澜壮阔的一生。作者力图剔除各种史料中的偏见，“颠覆”人们对忽必烈和蒙古人的传统看法。该书资料翔实，观点新颖，影响相当大，被许多欧美大学列为亚洲史课程必读参考书。</span></p>','2018-08-30 14:40:00.000000',4,'（美）罗沙比　著，赵清治　译'),(16,'辛亥风云－100个人在1911','goods/2018/08/辛亥风云100个人在1911.jpg',29.40,0,'本书是新京报社“辛亥风云：100个人在1911”专栏的文章结集。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">1911，新旧交替的拐点上，有浓烈、壮烈、激烈的争天下的种种革命斗争，也有风和日丽、花前月下、小桥流水的日常生活。漫长的帝制终结了，前清遗老、皇帝、太监、科举制、辫子等正在逐步消失，宪法、国会、新式学堂、新闻舆论等正逐步出现并成为民众的共识。100年，100个人，我们选择100个在中国现代化历程上深深镌刻下自己名字的人物，从居庙堂的帝王权贵到流亡海外的革命领袖，从开辟风气的思想领袖到各地学堂的热血青年，从翻云覆雨的商界精英到潜心创造的科技人才，立宪派、军阀、政客、遗老、新贵、总统……从政治、经济、文化、科学等不同的领域，回到他们的时代，重温他们的梦想，再现他们的1911。</span></p>','2018-08-30 14:43:00.000000',4,'新京报社　编'),(17,'现代中国的历程','goods/2018/08/现代中国的历程.jpg',22.40,1,'黄仁宇先生的文字一如既往地保持了纵横中外、从容讲解的风格，以全球史眼光看中国现代化之路，给人带来重要的历史启迪。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">1.本书是著名历史学家、畅销经典《万历十五年》作者黄仁宇先生文字zui新结集，全部文字均为diyi次与大陆读者见面。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">2.以全球史眼光看中国现代化之路，纵横中外，畅谈古今，全书浸透着黄仁宇独特的大历史观精神，给人带来重要的历史启迪。</span></p>','2018-08-30 14:44:00.000000',4,'黄仁宇'),(18,'国旗飘飘-话说中华人民共和国-(上下册)','goods/2018/08/国旗飘飘-话说中华人民共和国-上下册.jpg',48.00,0,'洞悉世事沧桑，揭示成败之道，点评风云人物，体味人情冷暖。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">本书前17回追溯中国共产党领导中国人民创建新中国的艰难历程，后94回讲述新中国成立后38年间的辉煌成就和挫折徘徊。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">作者以史诗般的笔法，重点记述了新中国社会主义革命和建设取得的重大成就，历次政治运动的来龙去脉，重大事件的前因后果，政治领袖们的坎坷命运，风云人物的升降沉浮等。</span></p>','2018-08-30 14:45:00.000000',4,'张涛之'),(19,'宝葫芦的秘密','goods/2018/08/宝葫芦的秘密.jpg',12.90,0,'小学生王葆，好吃零食，又爱幻想，希望自己也能得到一个像宝葫芦一样的宝贝，可以不费事不操心地获得一切。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">文学是人学，儿童文学是人之初的文学。人之初，性本善。儿童文学人生zui早接受的文学。那些曾经深深感动过少年儿童的作品，将使人终身难忘，终生受惠。在今天这个传媒多元的时代，我们特别需要向广大少年儿童提倡文学阅读。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">《百年经典》既是有史以来中国原创儿童文学作品的集大成出版工程，也是具有重要现实意义和历史价值的文化积累与传承工程，又是将现代中国儿童文学精品重塑新生的推广工程。我们坚信，继往开来、与时俱进的新世纪中国儿童文学，必将在不断实现艺术创新与高贵品质的进程中，对培育中华民族未来一代健全的精神性格、文化心理、国民素质产生更加积极、深广的潜移默化的作用和影响。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">本书系将精选精编20世纪初至今100年间100位中国儿童文学作家的100部优秀儿童文学原创作品。入围尺度界定在以下几个方面：一是看其作品的社会效果，受小读者欢迎的程度和对小读者影响的广度；二是看其对中国儿童文学发展的贡献；三是看其创作生命力，是否出于高度的使命感长期关心未成年人的成长，长期从事儿童文学创作。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">全面：该书系是zui齐全的现当代中国优秀儿童文学作品结集。一是囊括了自上个世纪五四新文化运动前后以来中国5代儿童文学作家中的精英人物；二是入围的100位作家体现出中华民族的多民族特色，同时又有海峡两岸三地的全景式呈现；三是百部作品涉及到现代性儿童文学的所有文体，是文体类型zui齐全的中国儿童文学原创总汇。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">权威：本书系由当今国内zui权威的儿童文学专家（以年岁为序）严文井、束沛德、金波、樊发稼、张之路、王泉根、高洪波、曹文轩组成高端选编委员会。他们都是当代zui熟悉中国儿童文学创作历史和现状、了解儿童阅读心理的权威儿童文学专家教授和著名作家。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">可读：只有进入广大小读者视野的优秀儿童文学作品，才是有生命力的真正的经典。我们将通过精心策划和编辑，以符合少年儿童审美习惯的整体设计和到位的包装营销，让新世纪的小读者，接受并喜爱这些曾经滋养过一代又一代少年儿童美好心灵的中国原创儿童文学经典。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">开放：组合就是品牌，经典与经典的组合更有可能成为特大品牌。我们将“百年百部”作为一个开放式的品牌工程来建设，力图在今后收入更多新人的优秀作品，将本书系打造成新世纪中国优秀原创儿童文学作品的摇篮。</span></p>','2018-08-30 14:47:00.000000',5,'张天翼'),(20,'木偶的森林-王一梅温馨童话','goods/2018/08/木偶的森林.jpg',4.79,1,'《木偶的森林》是一本值得向孩子推荐的好书，我想告诉他们：一切生命需要爱的呵护才更有温度。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">茂密的大森林中，一棵会魔法的橡树被木匠砍下来做成了木偶，他拥有一颗寒冷的心。木偶人罗里要报复人类肆意砍伐的行为，希望zui终将人类赶出城市……朋友们用热情和爱温暖了罗里，使他那颗复仇的心得以平静，回到了他魂牵梦萦的故乡——大森林。&nbsp;</span></p>','2018-08-30 14:48:00.000000',5,'王一梅'),(21,'蓝鲸的眼睛','goods/2018/08/蓝鲸的眼睛.jpg',6.80,0,'蓝鲸是大海中不容冒犯的神灵，它只吃海面上闪闪的星星，它zui珍爱自己的眼睛。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">蓝鲸是大海中不容冒犯的神灵，它只吃海面上闪闪的星星，它zui珍爱自己的眼睛。一个勇敢但冒失的少年，却向蓝鲸发起了挑战，摘下了它的一只眼睛。失去眼睛的蓝鲸开始疯狂地报复渔民。渔村的盲女孩得到了那只眼睛，她的眼睛一下子亮了。当女孩知道那是蓝鲸宝贵的眼睛时，她选择了放弃好不容易得到的光明。把眼睛还给蓝鲸……</span></p>','2018-08-30 14:49:00.000000',5,'冰波'),(22,'中华成语故事','goods/2018/08/中华成语故事.jpg',14.30,0,'中国文字中的成语，集深厚的历史底蕴与强烈的文学色彩于—体，内涵深刻，妙趣无穷，真实地再现了一段段传奇往事和历史遗痕。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp;成语是一种形式简洁，意义精辟的定型的词组或短语，历来为人们所重视。中国文字中的成语，都有历中事迹片断的缩影；是中华民族文化宝库的结晶。语有历史事迹片民的缩影；是中华民族文化宝库的结晶；是前人生活经验的积累；闪耀着我们祖先丰富智慧的光芒。每一个成语背后的人物和故事娓娓道来。阅读它zui原始的故事，了解它的来龙去脉，不仅可以培养、提高自己阅读的能力，也有助于加深对历史知识的理解。 你手上的这本《中华成语故事》取材广泛，体例新颖，编排合理，并注重知识性、准确性和趣味性的高度统一。 希望《中华成语故事》能成为广大青少年理想的语言工具书，并能成为青少年学习中华文化的良师益友，为促进汉语的发展，起到应有的作用。 本书由全国中小学校本课程与教材研究中心组织编写。</span></p>','2018-08-30 14:50:00.000000',5,'全国中小学校本课程与教材研究中心'),(23,'美国年度最佳科幻小说集.2003','goods/2018/08/美国年度最佳科幻小说集.2003.jpg',17.50,4,'科幻小说集。','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">在2002年，阅读杂志的感觉很好，不论是专业杂志还是半专业杂志。这一年中篇小说十分强劲，而值得考虑的短篇小说也超过百篇。因此，对于这套系列书的新读者，我们想重复通常不该说的话：这一科幻故事选本代表了2002年出版的zui佳中、短篇科幻小说。但要包括所有zui佳的短篇小说，恐怕还需要二或三个这样规模的选本——即使那样也不可能包括所有的zui佳中篇小说。我们相信，虽然实际上不可能以一本规模宏大的书包括所有的东西，但逐年提供有代表性的zui佳作品，也包含着提供实质上是多样性的优秀作品，因此为了在有限的篇幅里包含某些作品，我们只好放弃一些有价值的作品。 我们总的遴选原则是：这本书全是科幻小说——书里的每一个故事都是科幻故事而不是另外的东西。我们非常尊重恐怖小说、奇幻小说、思辨小说、偏流小说和后现代文学作品。作为本书的姐妹篇，我们(凯瑟琳·克拉默和戴维·G·哈特韦尔)编辑了简装本的《年度zui佳奇幻小说》，如果你也喜欢奇幻短篇小说，可以去看看那本书。但是在这本书里，我们只选科幻小说。</span></p>','2018-08-30 14:52:00.000000',6,'哈特韦尔'),(24,'三体-典藏版','goods/2018/08/三体.jpg',19.80,0,'三体文明。','0000','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">本书讲述了，“文化大革命”如火如荼进行的同时，军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但无人料到，地球文明向宇宙发出的diyi声啼鸣，彻底改变了人类的命运。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">四光年外，为了生存挣扎的“三体文明”接收到了地球发来的信息。在运用超技术锁死地球人的基础科学之后，三体人庞大的宇宙舰队开始向地球进发……</span></p>','2018-08-30 14:54:00.000000',6,'刘慈欣'),(25,'海伯利安','goods/2018/08/海伯利安.jpg',38.20,1,'《海伯利安》于1989年首次出版，横扫全球所有重量级奖项：雨果奖、轨迹奖、西班牙科幻小说首奖......','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">★ 与《银河帝国》并称为科幻文学史上不可逾越的两座丰碑！ ★ 《海伯利安四部曲》囊括全球所有科幻重要奖项的奇迹之作：雨果奖、轨迹奖、日本星云奖、法国宇宙奖、西班牙科幻小说首奖、英伦科幻奖…… ★ 与《银河帝国》并称为科幻文学史上不可逾越的两座丰碑！ ★ 《海伯利安四部曲》囊括全球所有科幻重要奖项的奇迹之作：雨果奖、轨迹奖、日本星云奖、法国宇宙奖、西班牙科幻小说首奖、英伦科幻奖…… ★ 每个“一生必读”的科幻书单上都有《海伯利安》。 ★ “丹·西蒙斯的书，毋庸置疑将会影响一个文学类型。”——《圣彼得堡时报》 ★ 丹•西蒙斯将科幻小说中的所有关键元素：太空歌剧、时间旅行、赛博朋克、军事科幻、生物病毒、奇点、人工智能……都完美地结合在这本书里，令人叹为观止。 ★ 《海伯利安》是一部经典的太空歌剧，也是一部浩瀚壮美的星际史诗，它的经典不仅在于学识上的渊博，还在于它在美学上的高度，有人说“没有比《海伯利安》更美的科幻小说”。 ★ 《终结者》中杀手机器人，《阿凡达》中的阿凡达星人，都源于《海伯利安》。 ★ 封面采用雨果奖提名插图，由美国知名插画师Gary Ruddell特别授权。 ★ 全系列四本首度完整引进！ 推荐您购买读客其他畅销书：</span></p>','2018-08-30 14:57:00.000000',6,'丹.西蒙斯'),(26,'2001:太空漫游','goods/2018/08/太空漫游.jpg',25.60,0,'世界科幻殿堂不可超越的巅峰之作，一笔写透人类终极归宿','9999','<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　《2001：太空漫游》是小编无论什么时候拿起来，无论从哪里开始读，每次都能津津有味地一直读下去的一本书。一直觉得克拉克大神对于人类起源的描写是真的，因为这个说法简直完美解释了目前的神学和科学都还不能解释的问题。而且，小编也因为这本书而坚定地相信，人类的未来家园在星海之中，人类一定可以跨出地球，就像当初驶向大海去发现新大陆一样。看过这本书你会发现自己的眼界和心界都一下子开阔了好多。只有唯一一点不好的是，看过《2001：太空漫游》以后，其他再优秀的科幻小说都会被归为“一般好看”的类别里去。 相关推荐： ※《“太空漫游”四部曲》（典藏版）（不可超越的科幻经典！全新修订，精装典藏礼盒！独家赠送《2001：太空漫游》稀有电影海报集锦！） ※《霍比特人》（托尔金原画经典书衣本，首次引进中国！《魔戒》作者成名巨著，全球持续畅销75年！世界瞩目奇幻电影原版小说！） ※《霍比特人:精装插图本》（中国大陆首次引进！全球大电影《霍比特人》艺术概念蓝本，中洲世界视觉幻想之源！《魔戒》序曲，史诗巨著！）</span></p>','2018-08-30 14:58:00.000000',6,'克拉克');
/*!40000 ALTER TABLE `books_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_category`
--

DROP TABLE IF EXISTS `books_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(20) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `tag` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_category`
--

LOCK TABLES `books_category` WRITE;
/*!40000 ALTER TABLE `books_category` DISABLE KEYS */;
INSERT INTO `books_category` VALUES (1,'小说','2018-08-30 13:38:00.000000','小说'),(2,'文学','2018-08-30 13:39:00.000000','文学'),(3,'传记','2018-08-30 13:39:00.000000','传记'),(4,'历史','2018-08-30 13:39:00.000000','历史'),(5,'少儿','2018-08-30 13:39:00.000000','少儿'),(6,'科幻','2018-08-30 13:39:00.000000','科幻');
/*!40000 ALTER TABLE `books_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_comment`
--

DROP TABLE IF EXISTS `books_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `books_comment_book_id_ac8af439_fk_books_books_id` (`book_id`),
  KEY `books_comment_user_id_72935702_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `books_comment_book_id_ac8af439_fk_books_books_id` FOREIGN KEY (`book_id`) REFERENCES `books_books` (`id`),
  CONSTRAINT `books_comment_user_id_72935702_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_comment`
--

LOCK TABLES `books_comment` WRITE;
/*!40000 ALTER TABLE `books_comment` DISABLE KEYS */;
INSERT INTO `books_comment` VALUES (1,'很不错！','2018-09-06 19:51:37.068387',1,1),(2,'','2018-09-06 19:56:36.312362',1,1),(3,'','2018-09-06 19:57:51.120501',1,1),(4,'','2018-09-06 19:58:11.266958',1,1),(5,'','2018-09-06 19:58:35.773917',1,1),(6,'666','2018-09-06 20:02:55.057358',2,1),(7,'666','2018-09-06 20:04:42.252449',2,1);
/*!40000 ALTER TABLE `books_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_review`
--

DROP TABLE IF EXISTS `books_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `author` varchar(20) NOT NULL,
  `content` longtext NOT NULL,
  `click_num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_review`
--

LOCK TABLES `books_review` WRITE;
/*!40000 ALTER TABLE `books_review` DISABLE KEYS */;
INSERT INTO `books_review` VALUES (1,'有些流行小说，一直流行到它们成了经典','慕容复','<p>《简爱》-- 书评<br/></p><p><br/></p><p><br/></p><p>在前一段时间，我看到好多友邻都在探讨国内外名著的“三观”问题，当我看到这一话题时，第一个反应就是《简·爱》这部小说肯定会中枪，点开相关的帖子和话题一看，《简·爱》的“三观”讨论果然名列前茅。</p><p><br/></p><p>比如“绿茶女主套路渣男一般的高帅富男主”、“原配家属大闹小三和渣男婚礼”、“女主祸害备胎多年后又回到渣男怀抱”……</p><p><br/></p><p>其实说起来我本人看《简·爱》的时间还是蛮早的，因为高中时与一个文青范儿的女同学一直关系暧昧，为了和她保持共同的话题，所以读了大量女性向的文学作品，而我当时读的第一本就是《简·爱》，也算是开启了一个新世界的大门。</p><p><br/></p><p>因为在此之前，我眼中的世界名著都是《战争与和平》、《巴黎圣母院》那种由大文豪倾尽多年心血，写出来就是为了流芳百世的。然而事实上，许多名著的作者在最初写下它时，心态与今天的公众号作者并没啥不同，只是单纯的写一部销量高的流行小说，只不过让他们稍微意想不到的是，这些作品一流行就是几百年，于是也成了人们口中的“名著”，而《简·爱》则是其中的佼佼者。</p><p><br/></p><p>作为一本近两百年前的流行小说，《简·爱》的许多情节今天看来依然很抓眼球，但无数人称其为一部伟大的作品，绝不仅仅是因为它讲述了一个灰姑娘与霸道总裁的虐恋爱情。书中除了偶尔出现今天看来略狗血的剧情外，我们看到是十八世纪那个以“优雅”著称的贵族社会中，一个底层女性面对强权压迫、性别歧视时所展现的坚强与独立，为了这份独立性，哪怕是面对自己的真爱以及财产都绝不妥协，这一点上老实说直到今天都值得很多人去学习了。</p><p><br/></p><p>就在我这几天查看本书的相关资料时，正巧知道我的朋友在做《简·爱》的两百周年典藏版，当我看到它的封面后，就立即决定施展自己厚脸皮的精神，从朋友那里要来一本——这么多年过去，终于有一版的《简·爱》不再使用那种寡淡的风格做封面，而是选择一位风格明显契合女主的大红裙子女性作为封面。</p><p><br/></p><p>我拆下塑封翻开书的扉页后，一张明信片一样的东西掉了下来，当我翻到背面后，原来是书中简写给罗切斯特诀别信</p><p><img src=\"https://img3.doubanio.com/view/thing_review/l/public/p1809991.jpg\"/><br/></p><p>明信片本身是用英文写的，把它翻译过来就是：</p><p><br/></p><p>你以为我贫穷、相貌平平就没有感情吗？我向你起誓：如果上帝赐予我财富和美貌，我会让你难于离开我，就像我现在难于离开你一样。上帝没有这样安排。但我们的精神是平等的。就如同你我走过坟墓，平等的站在上帝面前。</p><p><br/></p><p>很多标榜自己“三观”正的人，对男女平等的认识，可能还没150年前简的水平。</p><p><br/></p>',2,'2018-09-06 15:06:00.000000'),(2,'爱是天时地利的迷信','蜂蜜柚子不加茶','<p>《原来你是这样的宋医生》-- 书评<br/></p><p><br/></p><p><br/></p><p>喜欢乍见之欢，是在阳光的午后穿的那件白衬衫，是操场上那个飞驰而过奔跑的身影，或者是窗帘掀起一角时那低头的温柔。相见之欢，一见钟情。是“这个妹妹我曾见过”，也是“襄阳城里生日的烟花”。</p><p><br/></p><p>爱是久处不厌，是深夜回家时那盏昏黄的灯，是生病时那个忙碌的身影，也是午夜梦回时身旁的依靠。情知所起，一往情深。是“我看漫野山花 ，漫山遍野都是他 ；我行过万里河山 ，万里河山都是他”；也是“醒来甚是爱你”。</p><p><br/></p><p>我们的生命中总会出现这样一个人，彼此欣赏和尊重，相互扶持和陪伴，一起度过漫长的人生和琐碎的生活。</p><p><br/></p><p>晏长晴，亦如她的名字那般，情深且长。家境优渥，善良单纯，有疼爱自己的父亲和姐姐，也有志同道合的朋友，还有一个藏在心里面喜欢的人。她第一眼见到傅愈她就想嫁给他，在她人生的二十多年里，她只有这一个目标。他们是青梅竹马，他照顾她陪伴她，是朝夕相处也是日久生情。说起来喜欢一个人本是藏不住的，两人的心思彼此也了解，说起来也是一段水到渠成的美好姻缘。可是命运就是这样，在赐予你一些东西的同时也会收回一些。长晴的父亲和傅愈的母亲暗生情绪，傅愈也因此出走国外，两人错过，长晴误以为傅愈不喜欢她，再次相见他的身边是自己的好朋友，这段感情也只能止步在这里了。</p><p><br/></p><p>宋楚颐，在医院他是医术精湛的天才医生，在晏父眼里他是给女儿幸福的不二人选，在前女友管樱心里是温柔体贴，只有在晏长晴面前，他是生动的，是完完全全撕下伪装的宋楚颐。会说难听的话逗她惹她生气，有时也会冷嘲热讽让她难堪，在她弄丢狗狗后情绪失控；也会亲自下厨准备她喜欢吃的菜，她只是随口提起拍戏现场有蚊子他就贮备好驱蚊的药，在她闯祸后默默替她收拾残局。在这场起于一纸婚约的爱情里，从初时约定各取所需，互不打扰，到婚后互生爱慕，敞开心扉，究竟是谁先动了心呢？</p><p><br/></p><p>傅愈，他一向是最擅长伪装的，但他对晏长晴的喜欢程度之深我从未有过怀疑，他看着她长大，她的一切他都参与其中，他陪着笨笨的她成长为一个漂亮可爱的姑娘，像哥哥也似恋人。他最大的错误不是离开，而是对自己太有自信，他始终认为那个真挚的女孩会一直在原地等他，不会喜欢别人。只要他多花点心思，她会回到自己的身边。他不曾想过在离开的那么多年里，他有无数次机会可以回来找她，但是他没有。多年之后再重逢，傅愈看到晏长晴难受也只是假装不自知，也不会解释，在他身边也常有不同的女孩停留，那份心底的喜欢也不过是得不到的执念罢了。</p><p><br/></p><p>爱情的发生的契机是时机缘分多一点，还是水到渠成的安排多一点。如果傅愈没有出国而是留在晏长晴身边，他们的结局会不会改变呢？答案是否定的。一如晏长晴的父亲说的那样，傅愈身处的圈子诱惑太多，比晏长晴漂亮的，身材好的，会撒娇的太多太多，海誓山盟的约定也有土崩瓦解的一天。作为一个父亲，他只想让女儿过上稳定幸福的生活。宋楚颐在恰当的时机出现，两个人最开始吵吵闹闹，最终心意相通。于千万人之中遇见你所要遇见的人，于千万年之中，时间的无涯的荒野里，没有早一步，也没有晚一步，刚巧赶上了，结为夫妻，从此是非、善恶、生死、爱恨，都不会分开。</p><p><br/></p><p>我偶尔也会想起那个“塞上牛羊空许许”的约定，想起萧峰和阿朱的那些故事，如果萧峰先遇见的是阿紫，两人最多打个照面就各自走上背道而驰的人生，阿紫爱上的始终是那个小桥边的雷雨之夜因为错杀她姐姐而痛彻心扉的男子。在对的时间遇见对的人，原来你也在这里。&nbsp;</p><p><br/></p><p>“阿朱，你以后跟着我骑马打猎，牧牛放羊，是永不后悔的了？”</p><p><br/></p><p>“便跟着你杀人放火，打家劫舍，也永不后悔。跟着你吃尽千般苦楚，万种煎熬，也是欢欢喜喜！”</p><p><br/></p><p>“从今而后，萧某不再是孤孤单单给人轻蔑鄙视的胡虏贱种，这世上至少有一个人......有一个人......”</p><p><br/></p><p>“有一个人敬重你、钦佩你、感激你，愿意永永远远、生生世世、陪在你身边，和你一起抵受患难屈辱，艰险困苦。”</p><p><br/></p>',4,'2018-09-06 15:12:00.000000'),(3,'谁说不是这样的呢？！','星空','<p>《日子疯长》-- 书评</p><p><img src=\"https://img3.doubanio.com/view/thing_review/l/public/p1811000.jpg\"/></p><p><br/></p><p><br/></p><p>&nbsp; &nbsp; &nbsp; 小时候记忆不深的时候觉得时间过得慢，会很期待地想，今年是一年级，明年就是二年级，后年就是三年级了……有时会恨时间过得太慢了，过得这么慢，新年可就还得等上很长时间了！但这样的抱怨却在不经意间变成了前尘往事。如今已经越来越觉得时间过得太快了，真的是太快了，还没有做什么呢，明明还记得刚刚过了周一，没想到却已经到了周三了！其实心里也非常清楚，无论期待的内容到底是什么，时间都是以不变的速率在前进，不因期待它快就会两步并作三步，也不因期待它慢就会进两步退一步，所有的一切不过都是自己的一厢情愿罢了。毕竟，子在川上曰：“逝者如斯夫，不舍昼夜！”</p><p><br/></p><p>&nbsp; &nbsp; &nbsp; 因为觉得时间过得慢或者快这样一种想法，其实本来早就过去了。但在看到龚曙光的《日子疯长》这部所谓“慢忆时光”散文集的时候，所有的思绪仿佛一下子重新被勾了回来——说得真是太对了，谁说不是这样的呢？！珍惜也罢，抱怨也罢，时光都自会沿着自己的轨道和速率向前，就像黄河水一样奔流到海不复回——但这其实也不过只是表面现象，还真不必引以为恨。从另一个层面上来说，时间的主动权其实是掌握在自己手里的。分秒必争，也就无所遗恨。所以，如果能够理解了这一层意思，对于为什么是“日子疯长”，“日子疯长”之后怎么办，自己的应对之策也就顺理成章了——把时间的痕迹记录下来，就如同龚曙光的这部《日子疯长》一样，悠悠然回忆起了曾经的人和事，于是时光就因此而慢了下来。</p><p><br/></p><p>&nbsp; &nbsp; &nbsp; 《日子疯长》中都是普通人、普通事，记录的都是岁月斑驳错落中普通的时光与记忆。但这些的总和，却分明在字里行间满满都是龚曙光对故乡、对亲人的那一份深深眷恋。龚曙光在《日子疯长》这本书的封面上写了一句话：“当我们将世界几乎走遍，才发现这一辈子的奔走，仍没能走出那个童年和少年的小镇。”仔细想一想每个人已经走过了的路，会不由地发现，虽然说一辈子似乎还有点儿遥远，但另一个事实却是无法否认的——果真是“仍没能走出那个童年和少年的小镇”！生活本就是五味杂陈，说不清、道不明的地方会更多，但混沌中却自有一种清晰，那清晰是留在自己内心深处的，需要挖掘才得以发现。</p><p><br/></p><p>&nbsp; &nbsp; &nbsp; 虽然只是写回忆，却更像是一种纪录片般的长篇思绪。既然是“日子疯长”，可不就是顿时思绪万千呢？龚曙光为自己的这些回忆配了很多插画，也非常值得欣赏。事实上，《日子疯长》本身就是一部画面感非常强的散文集。假如有机会，是可以拍成非常美的配乐纪录片的。而且每个人其实也都有这样的机会：珍惜生活，即使它可能并不怎么美好；但记忆会把一切都串起来，并且值得久久回味。</p><p><br/></p><p>&nbsp; &nbsp; &nbsp; 读《日子疯长》，更重要的体会，是共情。前面的“推荐”可以直接忽略，等到读过了所有的正文内容，再返过来品味那些“推荐”也不算迟，而且会对那些“推荐”更有着自己的一番新的理解，知之而后知之，则知之更深。</p><p><br/></p>',0,'2018-09-06 16:41:00.000000'),(4,'依然无可言说','夏安','<p>《不可言说》-- 书评</p><p><br/></p><p><br/></p><p>很久很久以前，当我还在做科研的时候，曾经碰到过一个关于社会身份（social identities）的模型，非常有意思。这个模型说，当一种社会身份能够同时满足个人在群体里“出色”和“融入”的需求的时候，这种社会身份能够获得做大程度的认同（Brewer 1991）。说起来有点绕，借用视觉效果就好理解了：想象咱们头脑里面有两个小人在拔河，绳子的一头是“出色”，另一头是“融入”，每时每刻，我们都在这两极之间寻求着平衡。不做科研久矣，却常常在学术论文之外见到这个模型，特别是电影和小说里，犹如他乡遇故知，分外亲切。作为社科理论模型，它简明直观，却捕捉了人性内部在维持两种相互冲突的欲望之间恒久微妙的挣扎。可是在测量上，这个理论的量化存在着难以克服的困难，所以虽然它这么美，在学术界却一直没能成为“爆款”。但是在文艺作品里，当聚光灯打在个体上，可以放大一切细微的心理活动，它简直就是增加作品深度和上升人性化高度的金手指。</p><p><br/></p><p>“《不可言说》Everything I never told you”是近几年美国流行文坛的当红炸子鸡，马上就要改成电影了，无疑是“烈火烹油”，热度达到新高。我从图书馆借来看的时候，发现后面排了十多个人等着。知道不能续借，挑灯夜读把书看完。再一次说明“书非借不能读”是不败的真理。这本书被誉为“当代美国家庭的画像”，我却觉得更像上文提到的社科模型的案例分析。在这个故事里，拔河的绳子被截成两段，分为两个极端，分别赋予两个角色，女主角的妈妈麦琳和女主角的爸爸詹姆斯。而女主莉迪亚呢，书的一开始就说了，“Lydia is dead”。毫无悬念，她的命运是针锋相对不可调和的两极冲突下的悲剧产物。作者把存在于每个个体身份认知里的两种力量具体化、极端化，赋予一对男女，让他们结婚生子，以此为一切的开端，解构一个在现实生活中普遍存在却很难以刻画的心理模型。作为案例我觉得是很成功的，但是作为文学作品，这样的解构不可避免地牺牲了人性当中的微妙和复杂，丧失了很大一部分感染力。</p><p><br/></p><p>看过这本小说的朋友说，把这书当育儿文看，还是可以学到不少教训的。把书里面的情节抽出来，归纳归纳，立刻可以攒成一篇刷爆微信的育儿宝典。其中满是血红大字加粗的警告：“陪孩子做作业却毁了她一生！”“推孩子社交的能力有重大隐患”“孩子过生日，还在买书给她做生日礼物吗！？”“孩子讲电话，不可不偷听！”我也不能免俗，看完这本小说，不由得毛骨悚然，立即让我家娃停止练琴，母慈子孝地打了半个小时游戏。</p><p><br/></p><p>纽约客把则把这本小说归类为“文艺悬疑”。我觉得，首先主要还是悬疑。吸引我一页一页看下去的，除了后面排了十多个人等着借书的压力以外，更重要的是那些半吐半露的真相。一个好姑娘，在一个好家庭里出生长大，住在一个中产阶级社区，却突然死掉了。任谁都要问一句：“怎么会这样”吧。作者的叙事能力得到了很多赞誉，我也承认她简洁的语言和流畅的故事线功不可没，可是，这本书最大的可读性还是因为它的悬疑部分。作者技巧化地把最终极的谜底留到了书的结尾，在彻底揭开谜底，她像剥洋葱一样，通过一系列的家庭关键事件，耐心地让真相一点点浮出水面，最后才给我们看洋葱的内核。</p><p><br/></p><p>和很多悬疑小说一样，《不可言说》里的大事件都充满了剧烈的戏剧性，就好像高速上出乎意料地大转弯，效果生猛，不容得读者打瞌睡。情节紧凑，没有任何浪费掉的细节。就像一本阿加莎的侦探小说，所有人所有道具的出现都是别具匠心的，都经过反复仔细的审视调查，因为她们当中任何一个，或者她们全体，都可能是这桩不可理喻的悲剧事件的元凶。父母、兄长、朋友、项链、祖母留下来的烹饪书 ......所有这一切，一双双无形的手，把女主推向死亡。整个故事，就是一份完美的答卷，精准的案例分析，毫无瑕疵的逻辑推理。</p><p><br/></p><p>可是作为文艺作品还是感觉缺点啥，也许是卓越的文字作品里应该有的美和力度。文学常常被形容成一个“展示说明”的游戏，高明的写作者会在两者之间寻找一个恰当的平衡。我觉得在“说明”方面，《不可言说》算是相当的敬业；可是在“展示”上，却只能勉强及格。解释得太满，太精确，没有给读者留下足够得诠释空间。作为旅居美国多年得亚裔，当我读到六七十年前，美国白人和亚裔通婚仍然是违法的这个段落，我还是感到了些许震惊。可是更多的，这个段落更像维基词条，从网上截下来，放在故事里，作为一个没有温度的摆设当作布景摆在那里。我可以理解麦琳和詹姆斯的困境，可是无法感同身受。</p><p><br/></p><p>这个弱点在描写两个幼儿 -- 童年时期的莉迪亚和汉娜 -- 的时候特别明显。尤其是莉迪亚，在麦琳离家出走的时候，她的心理活动是清晰顺畅的，几乎纤毫毕现。这样的描述当然可以为故事的发展提供一个明晰的线索，可是却低估了现实中五岁孩子的懵懂。汉娜的故事则更像一个传奇，一个在家庭里长期被忽略的幼儿的幻想：最弱小的家庭成员拯救了全家，聚光灯终于打到她纤弱的身影上；她用爱弥补了家庭的创伤，生活得以继续。在电影里，只要音乐搭配得当，加上温馨的镜头回放，很容易把观众打动的热泪盈眶。可是作为文艺作品，作者的叙事不够深刻有力。现实被浓缩成一串串大事件，人物被精简成一根根僵硬扁平的线条。读完以后问题解释得清清楚楚，可是读者却没有办法“掩卷长叹”。</p><p><br/></p><p>看完小说，不可言说的似乎都可言说了。是谁杀了莉迪亚呢？是社交障碍，是学业不如人意，是对兄长的依恋无所寄托。父母以为自己了解的，全都不是真的。可是拼图中还缺了重要的一块：到底是什么让这些事情如此无可言说呢？为什么一个核心家庭里的成员疏离至此？为什么会有那么多误会？为什么每个人都孤独？为什么彼此相爱却无法相知？</p><p><br/></p><p>无法言说的依然无可言说。</p><p><br/></p>',0,'2018-09-06 16:42:00.000000'),(5,'《动物博物馆》丨用这本书为孩子建立一个立体纵深的动物知识科学体系','火残翼','<p>《动物博物馆》-- 书评</p><p><br/></p><p><br/></p><p>《动物博物馆》是一本动物手绘科普大百科全书，这本书结构清晰严谨，涉及到的科学知识专业、丰富；收录的超过1500幅的动物手绘图鉴，逼真、生动而有灵气；最具特色的版块——“生存现状”，来自《国际自然及自然资源保护联盟（IUCN）红色物种名录》中的权威数据；书中的内容不仅对动物学方面的知识进行了详细的科普，包括动物的形态结构、生理、分类、行为、进化和生态学等知识，还涉及到了统计学、地理学和环境学等学科。</p><p><br/></p><p>《动物博物馆》这本书是由资深科普作家凯伦·麦格希与世界著名动物学家乔治·麦凯联手打造的。</p><p><img src=\"https://img1.doubanio.com/view/thing_review/l/public/p1810527.jpg\"/></p><p><br/></p><p>下面我们就来详细地解读一下这本书的3个亮点。</p><p><br/></p><p>亮点1：有详细的阅读指南</p><p>《动物博物馆》这本书在一开篇，就向我们详细地介绍了该如何使用这本书，因为这本书的信息量非常的大，只有了解了具体的结构，才不会遗漏作者为我们精心布排的这些知识，也能更好地了解关于动物的全方位的知识。</p><p><br/></p><p><br/></p><p>介绍完了本书的阅读指南，就进入了章节部分，共分为7个章节，第一章动物世界，对动物界、动物的行为和栖息地和濒危动物进行了概述。</p><p><br/></p><p>这里作者使用了非常专业、清晰的图表来说明动物的分类和分布数据，能够帮助孩子建立科学的思维方法。</p><p><br/></p><p><br/></p><p><br/></p><p>随后的六个章节，作者介绍了以下几个主要的动物类群：哺乳动物、鸟类、爬行动物、两栖动物、鱼类和无脊椎动物，不同类群的动物用颜色进行了区分，一目了然，方便查阅。</p><p><br/></p><p><br/></p><p>亮点2： 具有图鉴的时效性和专业性</p><p>《动物博物馆》这本书的副标题是：手绘动物大图鉴。</p><p><br/></p><p>我们先来看下图鉴的定义：图鉴是以全面、系统、准确地用图文形式记述上年度事物运动、发展状况为主要内容的资料性工具书。</p><p><br/></p><p>图鉴所收集的材料主要来源于当年的政府公报、国家重要报刊的报道和统计部门的数据，资料权威，更新及时。因此，图鉴具有较大的统计意义和系统的连续参考作用。</p><p><br/></p><p>了解了“图鉴”的定义和特点，那么，我们就从图和文两个方面来分析一下《动物博物馆》这本书为什么定义为“手绘图鉴”。先说图，书中的图是以手绘图和真实的动物野外生存照片组成。在每个章节中介绍这类动物的概况时，展示的是动物的野外生存照片，随后在介绍类群及小类群的页面，展示的是手绘图。&nbsp;</p><p><br/></p><p>毕加索说过：每个孩子都是个艺术家，问题在于如何确保他长大后依然是。</p><p><br/></p><p>被誉为“日本图画书之父”的松居直先生在《幸福的种子》中也强调过图画书插图的重要性。如果插画的水准较高，不仅孩子翻阅起来是一种美的享受，在他们脑海中形成的影像想必也非常优美，培养的想象力也是优美而有水准的。由此可见，给孩子读的书的插画品质到底有多重要。</p><p><br/></p><p>而《动物博物馆》收录的全彩手绘超过1500幅，形象生动，色彩逼真，属于高品质的插图，让孩子在吸收知识的同时，也能接受艺术的熏陶。 当然，孩子在童年时期通过阅读所获得的给养，对于以后成长的作用，并不是立刻显现的，它是不可量化的。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>说完了图，我们再来说说文字。每幅手绘图都配以这种动物的中文名和学名（拉丁名），学名方便我们了解动物的“属”和“种”。</p><p><br/></p><p>亮点3：动物生存现状的统计数据</p><p>此外，书中最具特色的一个版块——“生存现状”，以254中佛法僧目鸟类、鼠鸟、咬鹃等的生存现状为例，书中给出了被列入了《国际自然及自然资源保护联盟（IUCN）红色物种名录》的种数为66种，其中，灭绝1种，极危2种，濒危4种，易危21种，其他38种。此外还特别介绍了“长尾地三宝鸟”，处于易危状态的部分原因是由于其生境中的树木被大量砍伐。</p><p><br/></p><p><br/></p><p>介绍完这本书的3个主要亮点，结合我们家四岁女儿的阅读情况，再来说说如何以这本书为基础，为孩子建立一个立体纵深的知识体系。</p><p><br/></p><p>现在的家长都非常重视孩子早期阅读习惯的培养，而图画书就是非常好的启蒙书籍。正如松居直先生在《幸福的种子》一书中反复强调的，孩子在阅读图画书时，最重要的是感受到阅读的快乐。这一点，在我们家进行亲子共读图画书的过程中，贯彻的比较彻底。</p><p><br/></p><p>在给女儿引入科普类图书之后，我发现，将新知识和孩子已有的认知建立联系，对于有效吸收新知识，拓展孩子的认知边界非常有效。</p><p><br/></p><p>孩子已有的认知其实范围很广，就动物来说，他们的认知来源包括图画书、动画片、动物园、博物馆、宠物等等。家长要做的就是有意识的去帮助孩子建立联系，编织一个立体的知识网络，并逐渐向纵深发展，让孩子能以小小科学家的视角，去发现、去探究，甚至是从小养成一种专业、严谨的科研态度。</p><p><br/></p><p>首先以《中国儿童动物百科》、《动物在哪里？》和《骨头之书》建立一个基础认知。</p><p><br/></p><p>女儿对于动物的基础认知主要来自于《中国儿童动物百科》。这本书是按照史前动物、无脊椎动物、鱼类、两栖动物、爬行动物、鸟类和哺乳动物进行分别介绍的，配有大量的真实动物照片，这样便于孩子识别各种动物的主要特征。有了这本书作为基础，看到图画书中各种拟人化的小动物形象，女儿都能轻松就能辨认出来。</p><p><br/></p><p>随后，我引入了《动物在哪里？》这本书，收录了240种不同种类动物的水彩肖像图，最大的特点是按照居住区域和生存环境进行了分类，以世界地图和地球仪作为辅助工具，可以让孩子更好地了解地域及分类的概念。</p><p><br/></p><p>接着又引入了《骨头之书》，这是一本有关动物骨骼的科普绘本，介绍了10种创世界纪录的动物骨骼，可以帮助孩子搭建起骨骼学与自然科学之间的桥梁。</p><p><br/></p><p>现在，到了引入《动物博物馆》的阶段了。这本书专业丰富的知识量可以让我有很多发挥联系的空间。下面就举几个例子。</p><p><br/></p><p>联系1：《动物博物馆》+动画片</p><p><br/></p><p>当看到《动物博物馆》中的极地动物和鱼类时，我就会和动画片《海底小纵队》联系起来，比如北极熊巴克队长，企鹅皮医生、座头鲸、虎鲸、魔鬼鱼等等。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>当看到《动物博物馆》中介绍兔子和老鼠这个部分时，我就会和电影《比得兔》联系起来，托马斯把兔子归为鼠类啮齿动物，引起小兔彼得的不满，实际上穴兔、野兔和属兔看上去像大型啮齿动物，但它们属于兔形目。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>联系2：《动物博物馆》+图画书</p><p><br/></p><p>当看到《动物博物馆》中的海洋生物时，除了上述提到的动画片，还可以和《神奇校车—海底探险》联系起来。</p><p><br/></p><p>当看到《动物博物馆》中介绍尺蠖时，我就会和《14只老鼠》、《神奇的水彩》联系起来。</p><p><br/></p><p><br/></p><p>当看到《动物博物馆》中介绍蜜蜂时，我就会和《神奇校车—奇妙的蜂巢》、《如果你喜爱蜂蜜》这两本书联系起来。</p><p><br/></p><p><br/></p><p>当你将《动物博物馆》与《如果你喜爱蜂蜜》建立联系，随之《如果你喜爱蜂蜜》又可以和其他的书籍建立联系。</p><p><br/></p><p><br/></p><p>通过不断地把新知识与孩子已有的认知联系起来，就可以编制一个独特的知识体系，这个体系中的知识点不是孤立的，不需要死记硬背，而是一个容易理解与掌握的整体。</p><p><br/></p><p>当看到《动物博物馆》中介绍北极熊时，还可以和《神奇校车—气候大挑战》联系起来。说到这里，不得不再次提到《动物博物馆》中关于动物的“生存现状”版块。《动物博物馆》这本书，在为我们科普了大量的关于动物的知识的同时，也向我们传递了一个重要的信号：很多动物的生存环境变得岌岌可危，濒临灭绝生物的比例正在以惊人的速度增长，很大程度上与人类的破坏所导致栖息地的丧失等因素有关。保护动物也不应只是一句口号，给动物们一个良好的生境可以从孩子做起，保护环境，珍惜资源，应该是我们给孩子从小培养起来的一种理念。</p><p><br/></p>',0,'2018-09-06 16:43:00.000000'),(6,'“穷人”的五步创业经，手把手教你实现财务自由','时雨甜菓子','<p>《会赚钱的妈妈》-- 书评<br/></p><p><br/></p><p><br/></p><p>焦虑，似乎已经成为了当下社会的一种普遍情绪，像浓雾一样在不同阶层弥漫开来。事业有成的60后、70后们，开始担心日后的养老问题；刚刚步入社会的90后们，正在为“月月光”的荷包发愁；最惨的是人到中年的80后，多数都开启了“上有老下有小”、“不敢病、不敢穷、不敢死”的生存模式。</p><p><br/></p><p>因为没有足够的财富来应对将来可能的风险，人们变得越来越焦虑，没有安全感。可以说，对普通工薪族来说，最基本的焦虑就是“穷”。正所谓“99%的人都想要过1%的生活”，每个人都想变得富有，可真正达到财务自由的人却少之又少。</p><p><br/></p><p>实现财富自由的一个基本标准，就是我们的被动收入刚好可以覆盖日常生活的支出费用。也就是说投入精力去做一个能够产生持续收益的项目，比如图书版税、房屋租金、公司分红等等，这样不用继续辛苦劳动，也能带来收入，俗称“躺着赚钱”。</p><p><br/></p><p><br/></p><p>但是像我们这样的普通人，一没启动资金，二没人脉资源，怎样才能实现财富升级呢？</p><p><br/></p><p>在克丽丝特尔·潘恩的新书《会赚钱的妈妈》中，我找到了梦寐以求的答案。书中给出了普通人赚钱的实用方法、充满创意的商业点子，还包含了大量的实际案例和练习。这本书不只针对女性有用，无论你是学生、白领还是创业者，想要开启自己的事业，或者让财富更上一层楼，这都是一本不可多得的致富指南。</p><p><br/></p><p>克丽丝特尔·潘恩是一名演说家，纽约时报畅销书《告别生存模式》的作者，也是美国人气最旺的理财博主之一。她于2007年创立了MoneySavingMom.com博客来教妈妈们省钱赚钱，博客的每月访问量超过400万人次。</p><p><br/></p><p>我们很难想象得到，像潘恩这样成功的事业女性，也曾在贫困的边缘苦苦挣扎。她跟丈夫住在地下室、节衣缩食、疯狂搜集优惠券，为了应付家庭账单而绞尽脑汁。潘恩探索了各种赚钱的方法，并最终从一无所有到财务自由，实现了一个穷人的伟大逆袭。</p><p><br/></p><p><br/></p><p>克丽丝特尔·潘恩一家</p><p>潘恩把她所有成功和失败的经验都写进了《会赚钱的妈妈》这本书里，虽说因为地域和文化的差异，小部分方法在我国并不适用，但整体来说，潘恩为我们提供了许多切实可行的赚钱技巧，里面的经验弥足珍贵，适合所有想要成就一番事业的普通人。</p><p><br/></p><p>（1）知己知彼，方能旗开得胜</p><p>所谓“知己”，就是要充分认识自己，了解自己的优势和特长。准备赚钱的第一步，需要我们跳出固定的思维框架，深入发掘自己的天赋和技能。在开始创业之前，我们不妨好好思考以下几个问题：</p><p><br/></p><p>你从小就擅长的事情是什么？</p><p>什么东西能让你感到兴奋和精力充沛？</p><p>你的朋友和家人经常让你帮什么忙？</p><p>你接受过哪些领域的特殊训练吗？是否能操作某种设备或工具？</p><p>或者你有哪些独特的经验，能够为他人提供咨询和帮助？</p><p>千万不要过于低估自己，也不要小看任何一项技能，这些都可能成为你将来打开财富宝藏的钥匙。</p><p><br/></p><p><br/></p><p>潘恩认为，最理想的事业需要四个方面的结合——技能、天赋、激情和知识。盘点一下这四个方面有哪些交叉点，把自己的爱好和能力结合起来，并在其中发掘可以为自己增加收入的途径。</p><p><br/></p><p>在完全了解自身之后，还要学会“知彼”，就是要了解市场，找出有潜在发展优势的领域。一般来说，你的收入往往由你能够提供给市场的价值决定，比如你怎样营销你的知识？你能提供什么服务？如何将你的创意变成金钱？你能提供哪些产品？</p><p><br/></p><p>潘恩提醒我们，有些技能可能并不一定能变现，适合别人的商业构想也不一定适合你。我们必须扬长避短，专注于自己精通且喜欢的领域，同时关注市场需求，针对合适的人群提供产品或服务。</p><p><br/></p><p>只有市场需求与你的天赋能力相契合，才能实现利益最大化。</p><p><br/></p><p>（2）头脑风暴，发掘一切变现可能</p><p>在充分了解自己和调研市场的基础上，我们就可以进一步考虑如何在自己擅长的领域赚钱了。头脑风暴可以帮助我们，你的兴趣、特长、知识、技能和经验，都能够提供变现的可能性。</p><p><br/></p><p><br/></p><p>假如你擅长写作，就可以在各大内容平台上写文，比如知乎、简书、豆瓣、个人公众号、今日头条等等，通过写文章、连载小说、或者开设专栏来获取吸引粉丝和获取收益；也可以给相关媒体杂志投稿获取稿费，帮人代笔或者出版书籍等等。</p><p><br/></p><p>如果你的博客或者个人网站经营得好，通过发布优质的原创文章、视频、音频，进行网络直播等吸引粉丝，依靠页面广告和粉丝打赏就可以有可观的收入，潘恩也是利用自己的理财博客淘到了“第一桶金”。</p><p><br/></p><p>另外，技能和经验也是一笔难得的财富。你可以针对自己熟知的领域，比如音乐、绘画、摄影或者烹饪，写作一本书籍、为别人提供咨询服务或者开设一门在线课程。秋叶大叔PPT、年糕妈妈的育儿、菜菜美食日记等，都是专注擅长领域的最好例子。</p><p><br/></p><p>你还可以尝试开发市场上没有的新产品，比如开发一款新的手机APP应用，或者进行一些产品的发明改造等。突如其来的灵感可能带来意想不到的收获，我们所熟知的梅森吸管杯，就是一位住在佛罗里达州的妈妈为自己的女儿设计的。</p><p><br/></p><p><br/></p><p>吸管杯</p><p>当然，潘恩在书里列举了太多生动有趣的案例了，里面的创意点子也数不胜数。无论你是想要增加收入的全职妈妈，还是想大干一场的创业者，相信你总会有所收获和感悟的。</p><p><br/></p><p>我们既要考虑多种变现可能，还要尽量建立多种收入来源，实现收入的多样化。这样万一其中某种收入中断，有其他的收入来源支撑，我们依然能够从容而幸福地生活下去。</p><p><br/></p><p>（3）行动起来，并持续为之努力</p><p>遗憾的是，我们很多人都是“思想的巨人，行动的矮子”，只是空有发财致富的梦想，却迟迟不肯行动。哪怕再详实的创业计划、再高明的创意点子，如果不落到实处，这一切将毫无意义。</p><p><br/></p><p>在采取具体行动之前，我们需要明确自己的事业目标，潘恩称之为“使命陈述”，即你的事业会满足什么样的市场需求，为人们解决什么样的问题。例如，宜家的愿景是“为大众创造更加美好的日常生活”。</p><p><br/></p><p>使命陈述，可以帮助我们定义事业的内容，给我们方向、责任和动力，让我们更专注于奋斗目标的实现。</p><p><br/></p><p><br/></p><p>制定好事业目标，我们还需要把大目标拆解，细化为每月或每周能完成的小目标。确定好每个目标实现的时间，并回溯到现在，来进一步规划之后的行动步骤。</p><p><br/></p><p>成功并不是一蹴而就的，要想避免筋疲力尽和卡壳，最好的方法是一次只做一件事，脚踏实地，逐步为自己的事业添砖加瓦。</p><p><br/></p><p>当然，我们在初始创业的时候，难免会进入一些误区。潘恩强烈建议，最好不要负债创业，而且要准备3-6个月的备用储蓄金，以便于缓冲可能到来的财务风险。她还为我们提供了许多实用的小建议，比如为公司取什么样的名字、怎样抢注商标、如何低成本进行宣传营销、如何打造个性品牌以及与合作伙伴沟通等等。</p><p><br/></p><p>（4）不断尝试，走出舒适区</p><p>即使在成功之后，我们也不应该满足于现状，而应该走出舒适区，去挑战更大的梦想，去面对那些未知的领域。</p><p><br/></p><p>我们常说“活到老，学到老”，只有坚持进步，我们才能不被这个飞速发展的时代抛弃。通过持续的阅读和学习，实现个人成长的同时，也会带给你前所未有的机会。</p><p><br/></p><p>迈克尔•海厄特说，“真正重要的事都发生在你的舒适区域之外。”</p><p><br/></p><p>当你每一次踏出舒适区，迎接未知挑战的时候，新的机遇也迎面而来。我们需要在不断尝试中找到爱好和激情所在，也同样在不断试错中寻找真正赚钱的机会。</p><p><br/></p><p><br/></p><p><br/></p><p>创业中我们难免会遭受失败、阻碍和困境，这些都是值得学习和成长的部分。失败并不可怕，可怕的是因为害怕失败而停滞不前。</p><p><br/></p><p>亚伯拉罕·林肯总统竞选议员多次失败，51岁才成功当上美国总统；企业家马云几经挫折，两次创业失败之后才创建了现在的阿里巴巴。可见，成功总会垂青勇敢而坚持的人，挑战自己所得到的回报，完全值得你去面对恐惧。</p><p><br/></p><p>潘恩还提醒我们，要学会在个人生活和事业成长之间找到平衡，不要因过于自满而停止成长，也不要因拼命工作而无法喘息。劳逸结合，管理好你的时间、生活和工作。重要的是，珍惜对你而言最重要的东西，比如亲情和爱。</p><p><br/></p><p>（5）慷慨生活，帮助和回馈他人</p><p>当你的事业走上正轨，财富也开始慢慢积累，不妨停下来认真想一想，你当初开创事业的初心是什么？追求财务自由的目的是什么？</p><p><br/></p><p>德国著名理财专家博多·舍费尔在他的《财务自由之路》一书中指出，“我们追求财务自由不是因为崇拜金钱，而是因为不愿做金钱的奴隶；不是为了享受奢华，而是为了让自己和家人获得舒适而有尊严的生活。”</p><p><br/></p><p>在《会赚钱的妈妈》中，潘恩给出了一个更有深度的答案，“财务自由的核心是养成慷慨生活的习惯。我们并不是为了赚钱而赚钱，而是让生活更美好，而帮助他人，能让我们增加心灵的满足感。”</p><p><br/></p><p>潘恩除了在博客上帮助妈妈们省钱，还拿出一部分博客收入，参与救助儿童的国际项目，并且带领自己的孩子去南非，与当地儿童进行交流和互动。她表示“和这些人在一起，给了我们全新的视角，让我们更深刻的理解如何去爱别人。”</p><p><br/></p><p><br/></p><p>左二 为克丽丝特尔·潘恩</p><p><br/></p><p>“穷则独善其身，达则兼济天下。”慷慨助人赋予财富更伟大的意义，付出往往比得到带来更多的快乐。你的天赋、激情、技能和知识，既可以助你获取财富，也可以用来回馈他人。所以，我们更要努力成为时间、金钱和机会的明智管理者，以便能够帮助更多的人，为这个世界作出一点改变。</p><p><br/></p><p>《会赚钱的妈妈》并不是一本“放之四海皆准”的法则书，而是一本启迪思维的钥匙书。从制定目标到具体实行，从传统职业到新式创业，潘恩所有的赚钱秘籍都包含在里面了。只要掌握了正确的方法，普通人的财务自由也不再是遥远的梦想。</p><p><br/></p><p>没有谁的成功是一蹴而就的，也没有哪本书可以在一夜之间改变人生。掌握了赚钱的方法，最重要的是付诸行动和不断坚持。哪怕你现在一无所有，只要善于利用自己的知识和技能，在擅长的领域不断耕耘，专注赚钱、智慧理财、慷慨生活，你离财务自由之路还会远吗？</p><p><br/></p>',0,'2018-09-06 16:44:00.000000'),(7,'读这本书提升深度思考能力','慕蓉九儿','<p>《麻省理工深度思考法》-- 书评</p><p><br/></p><p><br/></p><p>近一段时间，思考类书籍特别受读者欢迎，究其根本是大家发现在这个时代只有人类的思考是机器无法替代的。惠普原先一个部门30多人，现在由于人工智能的出现，这个部门缩减至2人。抖音和今日头条招聘的员工也都要求是硕士以上学历，有些岗位甚至要求博士生学历。这些现象说明了现在的工作是需要深度思考能力，不会思考就会被社会淘汰，谁思考的有深度、有高度，谁就能成为一个组织的佼佼者，而且组织其他成员也愿意追随他。</p><p><br/></p><p>估计很多人都会说自己很会思考，每一件事都是经过反复思考才得出结论。</p><p><br/></p><p>But</p><p><br/></p><p>在《麻省理工深度思考法》这本书的第一章第一节就列出了一个题目：为什么经过思考还是得出逻辑不通的答案。在学习和工作中，估计大家都会遇到那种表面上花了很多时间，也感觉很努力在思考的人，但是这跟深度思考并没有丝毫的关系。让我们回想一下，是不是现在再也不会有人说不读书、不学习是可以的。因为不读书、不学习就没有基本的知识储备，就不知道怎么搜索资料和信息，更无法建立思考模型，也不要想使用工具进行横向和纵向思考，没有深度和广度的思考还怎么迎接这个时代的挑战。</p><p><br/></p><p>估计每个组织的leader最害怕的下属是说：我真的尽力了，但是我不会。这个世界最可怕的是，baidu和google搜索出来的上亿条资讯摆在你的面前，但是你永远不知道如何深度思考。只能一脸懵的面对这个世界。</p><p><br/></p><p>而《麻省理工深度思考法》这本书基于“系统动力学”理论，提出了真正解决问题的深度思考法，深入浅出的介绍了深度思考法的两大关键——现象背后的模型及动力机制。我在这本书中印象比较深刻的有三部分，让我来谈谈这三点：</p><p><br/></p><p>第一，避免思维定式，使用思考框架，但绝不要依赖框架。</p><p><br/></p><p>我们在工作中经常使用思考框架，比如SWOT、PEST等等。比如做战略分析的时候，我们一定会使用SWOT，但是很多时候我们使用了这个框架，仅仅进行信息整理后就到此为止，停止了进一步思考。</p><p><br/></p><p>在书中作者提到“框架”终究只是辅助思考的工具，而不是可以导出答案的自动机器。</p><p><img src=\"https://img3.doubanio.com/view/thing_review/l/public/p1794674.jpg\"/></p><p><br/></p><p>我们来看看书中所作图表“SWOT的本质意义”，自己在平时做这个分析的时候，只是通过资料搜集，直接得出一些结论，但从来没有像书中那样去做。书中提到要想理解并活用SWOT，至少需要将自身的特点——即优势及劣势（SW）、与外部环境的机会和威胁（OT）相结合，推导出4种策略。</p><p><br/></p><p>在书中作者也很强调时间轴，以前只有画四象限图的时候，有时会把一个坐标轴列为时间，但是没有做到每个模型都包含时间概念。当把时间这个关键指标始终存在于图表中，那就会格外关注过去、现在和未来，就如上面的SWOT分析，这样的一种思考其实也就摆脱了思考框架，也会去理解动力机制。</p><p><br/></p><p>特别赞成作者所说的“思考框架并非不好，通过使用框架整理信息，可以快速整理好相应的资料构成。依赖框架这一思维定式的危险之处在于，通过信息整理本身所获得的成就感，仅仅来自信息整理而非思考。”</p><p><br/></p><p>第二，通过“模型”及“动力机制”捕捉本质。</p><p><br/></p><p>在接触任何新事物，或者与别人沟通的时候，我现在首先要做的就是澄清基本概念。记得前两天与别人交流电商系统的时候，尽管电商这个词可能每个人都知道它是什么，但是这个词对于一个做平台运营的人和一个做电商系统的人来说竟然包含的范围不同，所以我们在交流到一半的时候，彼此澄清了电商这个概念，这一动作对于后面的问题解决起到了关键作用。所以在团队解决任何问题时，第一步一定是澄清问题，要团队成员对这个问题的内涵及外延达成一致。</p><p><br/></p><p>那么让我们来谈谈深度思考中涉及的几个概念。</p><p><br/></p><p>《麻省理工深度思考法》作者使用系统动力学来解释本质的概念。</p><p><br/></p><p>本质=模型×动力机制</p><p><br/></p><p>模型是指产生某种现象的结构，包括构成要素及其相互关系。</p><p><br/></p><p>动力机制，是以长远目光观察模型产生的现象，以及今后将会产生怎样的结果及动向，即会出现怎样的模式。</p><p><br/></p><p>在现象的背后，一定存在着引发现象的模型和动力机制。理解本质，也就是要去反复思考隐藏于现象背后的模型及动力机制，这就是进行深度思考。</p><p><br/></p><p><br/></p><p>举个我们平时工作中都能遇到的简单例子。对于新入司员工，按照已颁布的流程和制度来进行培训，他们学会了以后就按照这些流程来工作，一段时间后，某个环节出现了新的问题，经常会出现的情况是这个新员工不知道如何处理新出现的问题。其实我们想要的员工是处处能够了解每项工作的本质，也就是理解为什么会这样设置，从过去到现在、再到未来这样设置会解决什么样的问题。因此，优秀的员工一定是能够深度思考，多问为什么，能够依据每项工作的本质，在出现新问题的时候提出几种解决方案，并从中选出最优方案，而不是在出现新情况的时候，他们的回答都是“我来的时候就是这么教的”。</p><p><br/></p><p>工作说简单也简单，可以简单学，简单做，但是要做好真的不易，是需要搜集大量资料，多角度分析，最终选择最优方案，并且不断修正的过程。</p><p><br/></p><p>工作不易，且行且珍惜。</p><p><br/></p><p>第三，建模的5个构成要素——输入源、输出点、竞争关系、合作关系、影响者。</p><p><br/></p><p>建立模型对于深度思考是非常重要的。有5个应该思考的要素——输入源、输出点、竞争关系、合作关系、影响者。</p><p><br/></p><p>正好看了一篇文章《天才球员董方卓的残酷答案》，结合如何成为一个成功的球员来说说建模的5个构成要素。</p><p><br/></p><p>一百年以来，中国人中只有董方卓这个大连球员加入过曼联。他能够入选曼联，并且在比利时乙级联赛曾经位居射手榜榜首，正说明了他确实有足球天赋。但是他在年轻时到达一定高度后，幸运并没有教会他维持不往下掉的模型。如果能够重新来一遍，借用建模的5个要素来说说如何成为一个成功的球员。</p><p><br/></p><p>输入源是指投入模型中的要素，董方卓的身体素质、足球天赋、对足球付出的训练所积累的努力等都可以当做投入的要素。</p><p><br/></p><p>输出点是指模型产生的成果，董方卓在足球场上所取得的成绩。</p><p><br/></p><p>竞争关系是指在输入及输出等方面互相竞争的对象，那么董方卓当时的竞争关系有很多，曼联队内的球员，甚至全球同龄的球员，其中也包含当时曾一起训练过的C罗。</p><p><br/></p><p>合作关系是指在一起可以互补或协作的对象，董方卓的合作关系包括推荐他到曼联的经纪人高琪和他的教练黄教练。</p><p><br/></p><p>影响者是指间接对模型整体产生重大影响的要素，影响董方卓能够成为成功球员的人有很多，比如当时的中国队教练朱广沪、广告商、周围的朋友等。</p><p><br/></p><p>如果董方卓会从这五个要素来考虑，就知道自己在输入源方面应该保持良好的身体素质及刻苦的练习，当受伤的时候就不能一挺再挺，更不能在一个不知名的中医那做手术。当他在曼联体会到欧洲强队球员的强大时，就应该知道这样的竞争关系会让自己在球队中处于什么位置，也不会坚决要留在欧洲踢球，错过自己的黄金年龄。再来看看他的合作关系，在合作关系上是他处理的最不好的，他不知道合作其实是一种互补和协作，高估了自己的价值，同时也低估了别人对自己的影响，造成了他与合作方没有一个是双赢的。这四个要素的分析，就会导出第5个要素，他不会在球场上有出色的表现。</p><p><br/></p><p>而成为一名成功的球员就要充分考虑这5个要素，不断积累自己身体、足球方面的努力（输入源），创造上场的机会，用成绩来说明自己的能力（输出点），同时让自己处于与自己同一水平或者稍高于自己能力的竞争关系中（竞争关系），与自己的教练、经纪人保持良好的合作关系（合作关系），与国家队教练、广告商等（影响者）建立深度联系，关键时刻可以帮助自己。</p><p><br/></p><p>无论做简单的事情或者解决比较难的问题我们都可以借助这5个要素来帮助自己进行深度思考。</p><p><br/></p><p>深度思考确实是一个不断修炼的过程，根据《麻省理工深度思考法》中的步骤可以进行深度思考，但是并不代表你就掌握了深度思考，而是需要刻意练习，眼到（多观察）、手到（多视觉呈现）、脑到（多思考）。</p><p><br/></p>',0,'2018-09-06 16:46:00.000000'),(8,'“评论是一种缺席在场的写作”','Blavatsky','<p>——《缮写室》后记&nbsp;&nbsp;<br/></p><p><br/></p><p><br/></p><p><br/></p><p>1.</p><p><br/></p><p>缮写室（scriptorium）是欧洲中世纪制作书籍的地方，但《缮写室》不是一本关于中古手抄本或者它们的缮写员的书。简言之，这本书写的是那些在我生命的“软蜡期”刻下过特殊形状的作家们。软蜡，因为他们大多是我少年时代就已遭遇和喜爱的作家，是个人阅读史上较为接近起点的那些路标。而我写下关于他们的文字时也处于自己（作为一名写作者）的软蜡期——书中超过一半的文章写于25岁之前，最早的一篇（《身为艺术家的批评家》）写于20岁。</p><p><br/></p><p>莎士比亚、刘易斯.卡罗尔、王尔德、“珍珠”诗人……我曾经想要藏起自己对他们的钟情，藏起写下过的所有关于他们的片段，因为再也没有什么比检视起点更可怕的事了。然而，同样可怕而正确的一件事是：“关于你自己，再没有什么比年少时热爱的作家能告诉你更多”。</p><p><br/></p><p>我已经过了年轻到拒绝了解自己的年纪。</p><p><br/></p><p>2.</p><p><br/></p><p>本书中被评论的那些作家，用布罗茨基的话说，是我想要取悦的影子。他们是多年来活跃于我心灵的缮写室中的隐形人。“隐形”，一如中世纪作者对“原创性”的理解——他们往往把本人的独立贡献藏起，宣称自己的作品不过是对前人的汇编。</p><p><br/></p><p>比如莱亚门（Layamon）就在长诗《布鲁特》（Brut）的序言中说：“莱亚门把这些书摊开在面前，并且翻动书页……摘录下他认为可靠的那些段落，并把这三个文本压缩成一部完整的书”——今日作家对抄袭嫌疑避之不及，莱亚门却公开说自己是个抄书员。乔叟在《善良女子殉情记》引子中自称拾穗者：“于是我步其后尘，俯首拾穗/如能捡到他们遗留的任何好词句/我的心里就会充满了喜悦”；又在《特洛伊罗斯与克丽希达》第二卷序言中言之凿凿：“我所写情感并非个人杜撰/而只是把拉丁语译成本国的语言……如有的词语不妥，并非我的过错/因为我只是复述了原作者的话。”</p><p><br/></p><p>此类看似过分谨慎的自我保护，其实深深植根于中世纪的手抄本文化——每一本书都以珍贵的手绘插图或独一无二的首字母装饰令人目眩神迷，每一本书都耗费巨大人力且不可能完美复制。在这个今天业已消失的文化基础上，写作者首先是一名书籍制作者。恰如波纳文图拉在十三世纪所言：“有时一个人兼写别人和自己的字，但以别人的字为主……他就不能被称为作家，而只是评论者。又或一个人兼写自己和别人的字，而用别人的字来作为证据，他就应该被称为作者。” 若要把波纳文图拉的标准搬到今天，那么所有“兼写别人和自己的字，但以别人的字为主”者——大部分书评和文艺评论作者——都将被逐出“作者”的行列，只能被归入“评论者”。</p><p><br/></p><p>在这一意义上，《缮写室》没有一个可被指认的作者。与其说它是我的个人“作品”，不如把它看成一块“织物”。</p><p><br/></p><p>古英语中，“女人”（wif）一词来自名词“织物”（webbe），并且可以进一步追溯到动词“编织”（webbian）。在伊萨卡，佩内洛普白天编织，晚上拆毁织物，在这样的循环往复中度过了等待丈夫从特洛伊归家的二十年，捱过了两部荷马史诗的长度，推迟了一百零八名求婚者的进攻——翻飞于佩内洛普指间的岂是奥德修斯父亲的殓衣，却是光阴本身，是被“编织”这个动作锁入台风眼而悬停的时间。在编织中成为女人，在编织中成为主人。假如佩内洛普未能以编织拖延那一百零八个求婚者，她失去的将不仅是对自己身体的主权，还有对伊萨卡的主权，她还将失去并未如人们所料而在战争中死去的奥德修斯；荷马将失去他的《奥德赛》。</p><p><br/></p><p>“评论者”的工作恰是“编织”。作者和作品的影子是他的布料，深陷阅读中的目光是线；在阅读中触摸文法的经纬，在编织中抵达存在。评论是一种缺席在场的写作。</p><p><br/></p><p>3.</p><p><br/></p><p>缮写室文化——或曰手抄本文化——使得博尔赫斯笔下的通天塔图书馆不再是一种比喻，而是一张实实在在的、由书籍及其互文性叠织而成的巨网。艾柯《玫瑰的名字》中迷宫的原型就是这种手抄本文化。作品作为书，其内涵和外延往往边界模糊。由于以现代标准衡量的文献可靠性、翻译准确性和文学原创性在一部典型的中世纪作品中几乎都无法找到，我们常常难以断定哪儿是一本书的终结，哪儿是另一本的开始。在这一意义上，可以说，所有的中世纪作品都是匿名的。</p><p><br/></p><p>类似地，我们也可以说，所有的评论在本体论意义上都是匿名的。</p><p><br/></p><p>不过本书的织架上并不纯然是影子，还有编织者自己的生命。虽然成年之后的光阴大多献给了写论文和专著，或者写诗和故事，我并未忘记，自己最初想成为的写作者，是那种为世上某个角落里的陌生人完成一次“点亮”的写作者。</p><p><br/></p><p>点亮是一种邀请，推门的动作却必须由陌生人亲自完成，为了此刻他或她内心深处的灵犀一现，为了让更多陌生人悄然加入这传递火光的亘古队列。</p><p><br/></p><p>我亦曾这样被点亮，并循这微小的火光来到此地。手捧这本小书的陌生人，愿你们能走得更远，直到地图之外的地方。</p><p><br/></p><p>（包慧怡）</p><p><br/></p>',0,'2018-09-06 16:48:00.000000'),(9,'从《小时代》到《甄嬛传》的成长蜕变','陈九如','<p>《纯真告别》-- 书评</p><p><br/></p><p><br/></p><p>位于美国西海岸加利福尼亚州洛杉矶郊外的好莱坞，是一个众人向往的名利场，这里是时尚与影视业的集结地，也是整个北美电影市场的代名词。好莱坞决定着电影艺术的优胜劣汰、演员事业的兴衰成败，它云集了世界各地有名的导演、演员、制片人。它是人们实现自我价值的宝地，它是众多人追求理想的圣地。三位花样年华的女孩，带着各自的梦想与目的不约而同的来到了这座圣地，她们相遇、相识、相知，共同为了生存、理想、婚姻而努力坚持着，命运之神虽然给她们带去了美好的爱情、事业、婚姻，但同时也给她们带来了失败、背叛、颓废与伤害，而这三位女孩的故事就来自于美国传奇女作家杰奎琳·苏珊的《纯真告别》。</p><p><br/></p><p>杰奎琳·苏珊，做过演员、也做过模特，在少女时期就曾在选美中获得了“费城最美小姐”的称号，年仅18岁的她就只身闯荡美国纽约，演艺圈的经历带给她很大的写作灵感，《纯真告别》里三位女孩仕途、爱情、婚姻、健康问题的跌宕起伏，都有作者杰奎琳·苏珊生活中的缩影。《纯真告别》是杰奎琳·苏珊的处女作，于1966年出版发行，曾用书名《迷魂谷》，还被多次改编搬上荧幕，先后被翻译成30种语言。与癌症斗争了12年的杰奎琳·苏珊于1974年9月21日去世，享年65岁。她是第一位连续三部作品荣登《纽约时报》畅销书排行榜首位的作者。</p><p><br/></p><p><br/></p><p>《纯真告别》是一部讲述女性成长、蜕变、梦想、友谊以女性为主题的成长故事，三个女孩离开家乡远赴欧洲开启属于她们自己的人生之路，她们真实而又任性的活着、拼着、努力着，历经了婚姻的抉择与失败、事业的兴盛与衰败、友谊之间的《小时代》与《甄嬛传》。三位女孩，三个不同的安妮、妮丽、詹尼弗的职场、婚姻、人际关系的处理，向读者展示了那个时期世界著名名利场好莱坞的颓靡与潜规则。</p><p><br/></p><p><br/></p><p>安妮·威尔斯，来自体面的劳伦斯维尔，端庄典雅善良的她却拥有着一颗坚定执着的心，她为了摆脱循规蹈矩的生活解除了富家公子的婚约支身来到了纽约这个大都市，追求理想的爱情与生活，爱上了花心的莱昂·伯克，经历了好友詹妮弗的自杀与尼丽的背叛与反目。</p><p><br/></p><p>詹妮弗：虽然拥有令人艳羡的美貌与婚姻，但她却是内心善良清纯之人，她一心只想嫁个自己所爱之人过着幸福的婚姻生活，就算为此放弃她的事业也在所不辞，只可惜遇人不淑的她经历了两次失败的婚姻，经历种种之后的她将整颗身心都投身在演艺圈中，但最终染上药瘾、身患乳腺癌的她选择自杀来结束自己的一生。</p><p><br/></p><p>尼丽，是书中提笔最少却是反差最大、破坏力最强的一个角色，她经历了麻雀变凤凰的高潮，也经历了啃药肥胖发疯的低谷，她为了自己想要的可以不择手段背叛好友，她从一名活泼开朗的小女孩演变成了贪婪自私的疯女人。</p><p><br/></p><p><br/></p><p>“女生之间的情感可以分为家人、情敌、闺蜜、认识、朋友这几种。家人代表着亲情，轻易不会分隔； 情敌可以是最安全的，也可以是最不省心的；而单纯朋友关系的女生感情，却常常隐藏着危险；闺蜜间的秘密分享有时候可以超越夫妻，但往往伤你最深的也会是闺蜜。”&nbsp;</p><p><br/></p><p>安妮对尼丽可谓是姐姐照顾小妹妹的那种，为了尼丽可以登上“直上云霄”的舞台，她可以放下自己的姿态，开口去拜托海伦。尼丽事业的上升也因此次演出而大发异彩。</p><p><br/></p><p>尼丽，无法选择自己的出生，也无法改变自己被收养的事实，从小跟着马戏团东奔西走，但这并不妨碍她拥有一颗乐观积极向上的心，她有个成名的梦想，可以登上“直上云霄”的舞台。机缘巧合，安妮的结识，给尼丽带来了希望。飞上枝头的她，已不再满足于现状，原先非他不嫁的丈夫梅尔也狠心抛弃不理，原先情如姐妹的安妮，也因她夺走了心爱之人而反目成仇。尼丽的人生可以说是大起大落，虽然笔墨不多，看点也是最足的。</p><p><br/></p><p>女性读者在阅读以女性为主题的作品时，仿佛都能在其中找到自己的影子，追求真爱羞涩的安妮、为了成名努力减肥的尼丽、为了婚姻而耍小心机时的詹妮弗。《纯真告别》故事是虚构的、人物是编撰的，但作者却用此种形式叙述了自己经历的一切，看着虚构的故事，体验着真实的经历。</p><p><br/></p>',0,'2018-09-06 16:49:00.000000'),(10,'牺牲换来的只能是地狱','迷蝶梦','<p>《情感勒索》-- 书评</p><p><br/></p><p><br/></p><p>同学小丁跳楼自杀了，据说是因为他所负责的业务部门被裁撤了。</p><p><br/></p><p>我听到这个消息时，心中五味杂陈。</p><p><br/></p><p>小丁的生活其实令许多人羡慕，他毕业于名校，是某世界百强外企的高管。一家人住在高档小区，房子面积有200平。老婆很漂亮，也很时尚，跟模特似的。他有两个孩子，一儿一女，都在国际学校读小学。小丁对父母很孝顺，把父母从乡下接了过去，住在一起。小丁是村里的成功典型。</p><p><br/></p><p>他自杀前一个月找过我一次，我们自从高中毕业后就没见过面。我见到他时，非常吃惊。三十多岁本应是意气风发的年龄，看上去却像六十岁的老头。小丁的头发都白了，人很瘦，重重的黑眼圈，眼睛里布满血丝。</p><p><br/></p><p>“压力太大了，房贷、车贷，赡养父母，抚养孩子，还要给老婆买奢侈品。”小丁一开口就抱怨。</p><p><br/></p><p>“你可以换个小点的房子，车也可以换辆便宜的，孩子可以去公立学校读书，父母住在乡下也挺好啊，奢侈品非得买吗？”</p><p><br/></p><p>“你说的我也想过，去年我曾经跟家人说过，换一个小点的房子。他们虽然嘴里没说什么，但是眼神充满了失望。你知道我从小就是学霸，如果这样做，他们会很失望的，我不能让家人失望，我只能牺牲我自己。”</p><p><br/></p><p>我们没聊几句，小丁就因为有急事离开了。没想到一个月之后，他就跳楼自杀了。他的家人陷入了深深的自责，恐怕会成为一辈子的心理阴影。</p><p><br/></p><p>对于小丁一家人，我们无法评判谁对谁错，在情感层面，他们都是输家。如果用《情感勒索》这本书的观点来分析，小丁的牺牲自己，其实是被关系绑架了，他和家人的关系是“以爱为名的操控游戏”。作者苏珊·福沃德将这种关系中的控制定义为情感勒索，小丁就是情感勒索的受害者。</p><p><br/></p><p>萨特的代表作《禁闭》里有一句著名台词，“他人即地狱！”。张德芬也有说过，“个体与个体之间，常常是彼此吞噬的关系。”意思是：人总是处在各种关系之中，在关系中，你如果依赖他人的评价生活，你就无法为自己的存在而存在。你就像生活在地狱中一样，失去了自由，无法改变自己的思想和行为。你会按照他人的评价伪装自己，被别人控制，同时也想用这种方式来控制别人。</p><p><br/></p><p>小丁的家人为了自己的欲望，使用情感勒索的方式，控制小丁，牺牲小丁的自由，将小丁推向了地狱。小丁自己却用自杀的方式，让家人陷入深深的自责和内疚，这又何尝不是情感勒索呢？</p><p><br/></p><p>苏珊·福沃德拥有二十多年的心理治疗经验，在多家心理机构和医学诊所担任心理医师和指导顾问，解除了无数人心灵方面的困扰。《在情感勒索》这本书中，苏珊·福沃德结合众多案例，向我们展示了情感勒索形成的地狱是什么样子，我们需要怎么做才能摆脱情感勒索，冲破地狱。</p><p><br/></p><p>一、地狱是什么样？</p><p>地狱一向被认为是灵魂受苦的地方，人死后，灵魂在地狱中遭受着各种生不如死的痛苦。现实中，很多人的人际交往有着固定的模式，他们很容易遭遇情感勒索，成为关系中的受害者，其所遭受的痛苦正如地狱一般。</p><p><br/></p><p>按照苏珊·福沃德的定义，情感勒索是关系中一方对另一方的控制和单方面的索取，可以分为六个阶段，从勒索者提出要求开始，到受害者最终屈服，然后再提出新的要求。如此循环反复，形成了双方的相处模式。情感勒索的六个阶段如下：</p><p><br/></p><p>1、要求</p><p><br/></p><p>情感勒索从勒索者提出要求开始，这个要求一开始就侵犯到了受害者的边界，损害了受害者的自由。这些要求甚至在很多时候被认为是合理的。比如说网上流传的一些话，“男朋友如果不给你买包包，就是不爱你”之类，有一些女孩子会把这些话当做真理，然后对自己男朋友提出相似的要求。</p><p><br/></p><p>2、抵抗</p><p><br/></p><p>一般来说，女孩要求买的包包，往往价格不菲。如果男朋友认为两人关系还没到那一步，或者确实经济上有困难，他们内心其实是不愿意买的。</p><p><br/></p><p>3、施压</p><p><br/></p><p>如果男朋友表现出犹豫或者甚至拒绝，女孩就会施加压力，说出“你真的爱我吗？难道我比不上一只包包吗？”之类的话，来瓦解男朋友的抵抗意志。</p><p><br/></p><p>4、威胁</p><p><br/></p><p>施压之后，男朋友如果还没有痛快的答应，女孩会接着说“连包都不愿意买，说明你根本不爱我。”“没想到你是这样的男人，我真是看走了眼。”这些话一说出口，男朋友内心会很恐慌，他们会担心女孩离开。</p><p><br/></p><p>5、屈服</p><p><br/></p><p>男朋友当然不希望女孩不开心，更不希望女孩离开自己，甚至会认同满足女孩的要求，有助于提升两人关系，于是咬咬牙就买了。</p><p><br/></p><p>6、重启</p><p><br/></p><p>女孩得逞了，得到了自己想要的东西。男朋友虽然心疼钱，但是赢得了女孩的爱。对女孩来说，向男友施压，让他产生内疚感，成了她控制双方关系，达成自己目标的主要手段。男朋友如果想尽快摆脱女孩的威胁，只能不断退让。</p><p><br/></p><p>两人的相处模式就这样形成了，对受害者来说，地狱也就产生了。传说灵魂在地狱中会遭受火烤、水淹、刀砍等等痛苦，情感勒索形成的地狱也会有不同的形态。苏珊·福沃德总结了四种形态，分别为施暴、自虐、悲情和引诱。</p><p><br/></p><p>1、施暴</p><p><br/></p><p>关系中处于强势的一方对弱势的一方采取的勒索方式，他们会直接提出要求，并且经常用“如果你不这么做，我就会让你好看”之类的语气来威胁，或者用冷暴力的方式来压迫对方投降。现实生活中，下属面对上司，孩子面对父母，常常会遇到施暴的情感勒索。比如在职场中，上司可能对下属潜规则，他们往往会威胁“如果不接受潜规则，就让你失业”。父母对孩子的教育中，施暴的方式就非常多了。很多父母动不动就会说，“要是没考好，就不带你去旅游了”之类的。甚至可能出现“要是再不好好学习，就打断你的腿”之类暴力倾向。</p><p><br/></p><p>2、自虐</p><p><br/></p><p>关系中弱势一方对强势一方的勒索方式，一般采用自我攻击的方式，把自己扮成受害者，来迫使对方就范。比如“你敢离开我，我就自杀”，“不给我买那个玩具，我就不吃饭”之类的。</p><p><br/></p><p>3、悲情</p><p><br/></p><p>摆出一副祥林嫂式的悲情，来迫使别人就范。潜台词就是“我好惨哪，你还不赶紧满足我的要求。”比如很多综艺节目里的“比惨”，就是用这种方式勒索观众。另外还有媒体上经常报道出来的“我弱我就有理”的混蛋逻辑。</p><p><br/></p><p>4、引诱</p><p><br/></p><p>勒索者就像一个高明的猎人，精心布局，使用廉价的诱饵，这些诱饵大多数时候只是空洞的承诺，一步步引诱对方上钩。比如说一些男人在追女孩时，会不时的送一些礼物，然后一步步提出要求，最后迫使女孩就范。</p><p><br/></p><p>灵魂在地狱中会同时承受几种痛苦，现实生活中的情感勒索也不会以单一的形态加在受害者身上，往往是几种形态混在一起。</p><p><br/></p><p>二、创造地狱的人是我们自己</p><p>地狱是我们自己创造的。在面对情感勒索时，受害者会被恐惧感、责任感和罪恶感三大情绪控制，陷入情绪之中，无法自拔，看不清真相。</p><p><br/></p><p>恐惧感一般来自婴幼儿时期的创伤，深埋在无意识层面。我们被无意识操控着，遇到类似情景，就会陷入恐惧。我们往往害怕面对恐惧，会选择用妥协的方式来回避恐惧。比如小时候经历过父母离婚的人，一般会非常害怕被别人抛弃。对方一旦威胁要抛弃她，她就会立即妥协，毫无原则。</p><p><br/></p><p>责任感和罪恶感来自社会伦理道德，是社会对个体的要求。受害者往往缺乏边界，导致圣母心泛滥。典型的就是《欢乐颂》里的樊胜美，现在被戏称为“扶弟魔”。武志红曾经大力批判过的“愚孝”行为，也属于这种。小丁家人的高期待也是一种情感勒索，小丁在面对情感勒索时，产生了过度的责任感和罪恶感，最终引发了悲剧。</p><p><br/></p><p>三大情绪让受害者对自己产生了一种评价，“我不行，我不好，所以我应该听你的”。这种评价会让受害者丧失自我，损害身心健康，最终会破坏关系。</p><p><br/></p><p>1、自我价值丧失</p><p><br/></p><p>受害者明知自己是不愿意的，但是却选择了屈服，事后会陷入自责，认为自己软弱、无能，甚至是欺骗自己。比如说很多女性本想在事业上有所成就，但是结婚后有了孩子，被迫放弃事业，做起了家庭主妇。面对丈夫的要求，她也许会责怪自己无能，但同时也会欺骗自己，说自己这样做是为了孩子。</p><p><br/></p><p>2、损害身心健康</p><p><br/></p><p>受害者无法宣泄情绪，只能压抑这些不快的感受，导致抑郁、焦虑、暴饮暴食等生理和情绪表现，严重损害身心健康。当下的中国这个问题比较突出，媒体上经常会爆出一些加班猝死的白领。比如小丁，他那么辛苦，压力那么大，但他的家人却希望他坚持下去，甚至稍微降低一些生活层次都不愿意。</p><p><br/></p><p>3、破坏关系</p><p><br/></p><p>在关系中，勒索者只是在索取，忽视了受害者的感受，有效的沟通已经失效。由于无法真实表达感受，受害者也就不会再付出感情，关系也就变得淡薄。这种现象比较普遍，中国人向来不太擅长表达感受，关系中很容易出现情感勒索。小丁虽然很累，但是他没有向家人表达过自己无法承受的压力，而是直接要求家人降低生活层次，家人自然无法理解，也就无法接受。</p><p><br/></p><p>苏珊·福沃德提出了“情绪键”的概念，“情绪键就像电池一样，隐藏着我们丰富的情绪，例如愤怒、罪恶感、不安感和脆弱等。他们是我们的软肋，是由我们基本的性格气质和幼年时的经历共同形成。情绪键左右着我们的情绪，许多人的生活都绕着它打转。”</p><p><br/></p><p>情感勒索之所以得逞就是因为我们的情绪键被触发了，我们被藏在里面的情绪和记忆左右，幼年时期的痛苦再次重现，只是我们已经忘记了痛苦形成的原因，只能在自己创造的地狱中挣扎。</p><p><br/></p><p>三、如何冲破地狱</p><p>我们自己创造了地狱，那么我们也就能冲破地狱，争取自由。我们了解了情感勒索的原因和方式，明白了地狱是如何创造被我们出来的，接下来就需要采取行动，去争取自由，虽然要做到并不容易。</p><p><br/></p><p>苏珊·福沃德为我们提供了SOS策略，即停下来（stop）、冷静观察（observe）和制定策略（strategize）。</p><p><br/></p><p>1、停下来</p><p><br/></p><p>面对勒索者提出的要求，我们先不要急着做出回应，可以拖延一段时间，不答应也不拒绝。这时候着急的是勒索者，但由于情绪键被触发，我们自己会很难受。这时候需要体验自己的感受，可以将这个不适具象化，发挥自己的联想，把它想象成一个东西，然后跟它对话，试着跟它待在一起。</p><p><br/></p><p>比如一对恋人，女孩要求男孩买名牌包包，男孩如果犹豫，但是看到女孩失望或者生气的表情，他心里也很难过。这时候可以先说“我考虑一下，明天再回答你”之类的，然后试着跟自己的难受待在一起。</p><p><br/></p><p>2、冷静观察</p><p><br/></p><p>当我们能够跟自己的情绪待在一起时，我们就可以透过迷雾看清真相。我们可以冷静的思考对方到底想要什么？对方为什么会提出这种要求？对方提出要求时，自己的感受是什么？为什么会产生这种感受？我们自己想要获得什么？在感受的时候顺便关注一下自己的身体，看看有哪些地方感到紧张或者不适。</p><p><br/></p><p>还是以要买名牌包的女孩为例，男孩可以思考：女孩要求买包的动机是什么？她是不是真的想要那个包？还是说她只是想让我买包这种行为来证明我是爱她的？在面对女孩的要求时，我会有什么感受呢？有没有愤怒？女孩失望时，我又会产生什么感受？是不是恐惧？还是自责，认为自己无能，继而产生罪恶感？</p><p><br/></p><p>3、制定策略</p><p><br/></p><p>在冷静观察之后，我们可以从客观的角度审视对方的要求，继而可以制定相应的回应策略。有时候对方的要求其实并不过分，也许是提要求的方式和态度激起了我们的情绪键，我们冷静思考之后，可以适当的让步，或者是有条件的答应。如果要求已经破坏自我价值，那就需要拒绝，不过拒绝的时候需要做好准备，比如遇到上司威胁的时候，我们有必要做好换工作的准备。而那些暴力倾向的人，我们最好是先悄悄的远离。</p><p><br/></p><p>多数时候，勒索者也许会生气，发怒，但是事情也许不会像想象的那么糟糕。我们自身表达决定时的方式通常也需要负很大的责任。由于情绪键被触发，我们陷在情绪里无法自拔，我们的行为往往是不理性的，也无法真实的表达自己的想法，对方自然也不能理解我们，关系也因此恶化了。苏珊·福沃德特别强调了表达技巧的重要性，我们需要告诉对方“我就是这样的，这就是我想要的”，我们需要展示真实的自我，要求对方选择是否接受我们的决定，承认彼此的差异。真实的自我表达可以有效帮助我们终结情感勒索。</p><p><br/></p><p>sos策略只是帮助我们暂时摆脱情感勒索，此时我们所处的地狱只是打开了一扇门，能不能走出地狱，取决于我们能否摆脱情绪键的控制，尤其是恐惧感、责任感和罪恶感的影响。要消除恐惧感、责任感和罪恶感的影响，我们需要“经历一场恶战”。苏珊·福沃德介绍了几个典型案例，案例中包含了大量的练习、角色扮演和可视化想象。我们要做的就是亲自完成这些练习，才有机会摆脱情绪键的控制。</p><p><br/></p><p>改变的过程也许很漫长，中途还会面临失败，就像爬山一样，没有人能够瞬间登顶。但是攀爬的过程中，我们才能学到新的体验。苏珊·福沃德在《情感勒索》中强调，“只有自己改变了，你的世界才会看起来不同。当你能冲破迷雾，拒绝情感勒索，生活的美好感觉就会回来了。你学习技巧抵御威胁，其实是在重塑你存在的核心”。地狱和天堂只有一层之隔，就看你如何选择。</p><p><br/></p>',0,'2018-09-06 16:51:00.000000'),(11,'古斯都：命运抓住他的手，他选择不放开','谷立立','<p>《奥古斯都》-- 书评</p><p><br/></p><p><br/></p><p>约翰·威廉斯的一生贯穿着同一个关键词：拒绝。终其一生，他拒绝被定义、被归类，拒绝成为公众瞩目的文化明星，拒绝循规蹈矩地做传道授业的文学教授，只愿我行我素、我手写我心地诠释一位真正作家的本色。这倒不是说他一生庸庸碌碌、无所作为。事实上，他在文学上的成就不容质疑。1973年，51岁的威廉斯迎来了迟到的成功。这是《奥古斯都》。这部以古罗马为背景的历史小说，与约翰·巴斯的《喀麦拉》共同分享了当年的美国国家图书奖。然而，成功并没有给他带来应有的好运，他依然故我，依旧默默无闻，甘愿做“作家中的作家”，而不是大众的文学偶像。很快，就连《奥古斯都》也成了被遗忘的经典，就像同样被遗忘的《斯通纳》。</p><p><br/></p><p>书如其名，古罗马皇帝奥古斯都是小说当仁不让的主角。都知道时间是最好的雕塑家。两千年的光阴可以轻易地抹去一个人曾经有过的痕迹，也可以由着性子重塑他的形象，哪怕他是居功至伟的帝王。长期以来，奥古斯都留在文学作品里的面容，总是过于单一、过于雷同。或者残忍，或者阴狠，或者高冷，或者无情，都不过是一国之君该有的样子。就像留存至今的雕像，看不到情绪的起伏，也未见衰老的模样。这个永远年轻的神祗面无表情地注视着这个世界，哪怕两千年后再也没有那个被称为“罗马共和国”的国度。</p><p><br/></p><p>然而，《奥古斯都》并非翻案之作。吸引威廉斯放弃他对美国往事的热情，打开尘封已久的史书，为古罗马皇帝代言的不是“历史之真”，而是“小说之真”。书中，他借奥古斯都的友人、老年梅塞纳斯之口重新定义了历史学家。是的，历史学家很自由，“可以重述人物与军队的活动，追叙国家斗争的复杂过程，结算胜利与失败，谈说出生与死亡——却依然自由”。不过，自由并不属于威廉斯。他是一位诗人。自一降生起，就被某种“沉重可怕的知识”束缚了手脚，犹如戴着镣铐的舞蹈，“没有能力直接抵达任何东西”，包括遥远时代那些似是而非的史料记载。</p><p><br/></p><p>同样，自由也不属于威廉斯的人物。彼时，流行的后现代主义写作有着庞大的命题，小说就是胃口奇大的巨兽，急着把整个世界、整个宇宙吞入腹中。作家的任务不是“告诉我们某人对某物的感觉，而是告诉我们这世界如何运行”。威廉斯倒是不同的。世界的运行与他无关，因为他的世界小之又小，小到只能容纳一个人、一段生命：他的出生、他的成长、他的婚姻、他的衰老，抑或死亡。回到《奥古斯都》，有关皇帝的一切（军队和国家、政治与阴谋、胜利或失败）被刻意淡化，只留下若有若无的影子。相反，剥去了神圣外衣的奥古斯都成了故事的焦点，被放置在特写镜头下多所揣摩、反复描摹。</p><p><br/></p><p>好比一个封闭的房间，我们拉开门走进去，听他的喃喃自语，看他的欢喜忧伤，看到的永远是一个孤独的灵魂，面对空无一物的墙壁，做着虚无的演讲。不妨说，威廉斯才是最好的雕塑家。诗性的浪漫总是逼迫他放下政治符号，绕过晃眼的光环，关注“伟大”背后的品性。在他看来，古罗马大帝奥古斯都与他的众多后继者：图拉真、哈德良、马克·奥勒留一样，没有本质上的区别。功业再显赫，也不过是帝王的本分。与其歌之颂之，倒不如放在诗性的墨水里浸上一浸。毕竟，功绩并不重要，重要的是他是怎样一个人，又如何走过了漫长的一生。</p><p><br/></p><p>套用罗伯特·格雷夫斯的《我，克劳狄乌斯》的标题，威廉斯的《奥古斯都》完全可以改为《我，奥古斯都》。如果说前一个“我”指的是大写的罗马皇帝，那么，威廉斯的“我”指的就是他自己。虽然奥古斯都从一开始就注定要远离这片新兴的大陆，可在精神上，他和安德鲁斯（《屠夫十字镇》主角）、斯通纳一样，都是威廉斯的文学化身。没错，他不是见识不凡的军事家，不是城市建筑的设计师，不是人民福祉的提供者，而是地地道道的诗人。在还来不及看清世界之前，他想象着他诗意的未来。功成名就后，他赋予诗人自己不曾有过的自由，将他的时代塑造为古罗马文学的黄金时代，让他的罗马变成堪与古希腊相媲美的“诗歌之城”。甚至，他不惜在维吉尔去世后，违背好友的愿望，制造出古罗马版本的“被背叛的遗嘱”。</p><p><br/></p><p>这既是诗，也是人生。威廉斯说，诗作的诞生就像少年的成长。不拘手段，不问来路，需要虚构的尽管虚构，需要拿来的不妨拿来。当然，诗也是不可控的，好比成长。没有谁知道自己的未来将要走向何方，即便尊贵如奥古斯都。从《屠夫十字镇》、《斯通纳》到《奥古斯都》，不管小说有多少种形式，威廉斯的主题永远只有一个：怀揣诗性理想的少年如何在并不完美、并不友好的世界求得生存。答案不外乎命运，是命运抓住了他的手，他选择了不躲开。奥古斯都的故事源于恺撒的遇刺。起初，这个单纯的少年只为复仇，并不曾想过要涉足政治。殊不知一旦被命运牢牢抓住，他就不能轻易挣脱，只能跟随命运一路走下去，停留在他“一心奔赴的终点之外”。</p><p><br/></p><p>这意味着消灭强敌、征服世界，将自己塑造为“国家之父”。可是，征服了世界又能怎样？别忘了恺撒的话，“我征服了世界，却没有一处安全；……，虽然我领导着一个承继天命的国家，却不知我们正向何处去”。这当然不是丧气，而是睿智的洞见。似乎是要与他的养父形成呼应，晚年的奥古斯都站在生命的末端回顾一生，也有了相似的顿悟。他终于明白一生所为都是画地为牢，明白自己不过是匍匐在命运脚边的弄臣，终日摆弄着那副“总在演戏的贫乏可怜的皮囊”，戮力去扮演某个“我不是他、他不是我”的陌生人。</p><p><br/></p><p>然后，他看着这个对世界一无所知的少年一步一步走上前来，在各方势力之间左右周旋，最终成为坐拥天下的皇帝。可他终究还是陌生人吧。因为需要扮演太多角色：纤弱的少年、差劲的父亲、强势的君主，从而彻底失去了自我。直到临终前才知道，他已经“不再有本人可言”。或许，这就是“小说之真”。它勾连起站在时间两岸的两个人，让当代美国小说家威廉斯近距离接触古罗马的英雄，正面观察奥古斯都的一言一行、一举一动，见证他人生路上的成功与失败，就像对待一位相伴多年的老友。</p><p><br/></p>',0,'2018-09-06 16:52:00.000000');
/*!40000 ALTER TABLE `books_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cart`
--

DROP TABLE IF EXISTS `cart_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` varchar(1000) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_cart_book_id_202701de_fk_books_books_id` (`book_id`),
  KEY `cart_cart_user_id_9b4220b9_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `cart_cart_book_id_202701de_fk_books_books_id` FOREIGN KEY (`book_id`) REFERENCES `books_books` (`id`),
  CONSTRAINT `cart_cart_user_id_9b4220b9_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cart`
--

LOCK TABLES `cart_cart` WRITE;
/*!40000 ALTER TABLE `cart_cart` DISABLE KEYS */;
INSERT INTO `cart_cart` VALUES (8,'1','2018-09-10 15:35:46.327480',12,1),(9,'1','2018-09-10 15:54:09.696059',25,1),(10,'2','2018-09-10 15:56:10.282923',23,1);
/*!40000 ALTER TABLE `cart_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(13,'books','books'),(12,'books','category'),(17,'books','comment'),(16,'books','review'),(18,'cart','cart'),(4,'contenttypes','contenttype'),(19,'order','order'),(10,'reversion','revision'),(11,'reversion','version'),(5,'sessions','session'),(15,'users','banner'),(14,'users','userprofile'),(6,'xadmin','bookmark'),(9,'xadmin','log'),(7,'xadmin','usersettings'),(8,'xadmin','userwidget');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-08-28 17:00:20.769798'),(2,'contenttypes','0002_remove_content_type_name','2018-08-28 17:00:21.934169'),(3,'auth','0001_initial','2018-08-28 17:00:26.708076'),(4,'auth','0002_alter_permission_name_max_length','2018-08-28 17:00:27.725005'),(5,'auth','0003_alter_user_email_max_length','2018-08-28 17:00:27.768993'),(6,'auth','0004_alter_user_username_opts','2018-08-28 17:00:27.812952'),(7,'auth','0005_alter_user_last_login_null','2018-08-28 17:00:27.860926'),(8,'auth','0006_require_contenttypes_0002','2018-08-28 17:00:27.895908'),(9,'auth','0007_alter_validators_add_error_messages','2018-08-28 17:00:27.937881'),(10,'auth','0008_alter_user_username_max_length','2018-08-28 17:00:28.134770'),(11,'auth','0009_alter_user_last_name_max_length','2018-08-28 17:00:28.319664'),(12,'users','0001_initial','2018-08-28 17:00:35.440173'),(13,'admin','0001_initial','2018-08-28 17:00:37.089803'),(14,'admin','0002_logentry_remove_auto_add','2018-08-28 17:00:37.173755'),(15,'books','0001_initial','2018-08-28 17:00:39.330766'),(16,'reversion','0001_squashed_0004_auto_20160611_1202','2018-08-28 17:00:43.964259'),(17,'sessions','0001_initial','2018-08-28 17:00:44.657543'),(18,'xadmin','0001_initial','2018-08-28 17:00:49.500740'),(19,'xadmin','0002_log','2018-08-28 17:00:51.941419'),(20,'xadmin','0003_auto_20160715_0100','2018-08-28 17:00:54.637056'),(21,'books','0002_auto_20180828_1720','2018-08-28 17:20:48.387608'),(22,'books','0003_auto_20180828_1803','2018-08-28 18:03:19.871756'),(23,'books','0004_auto_20180830_1353','2018-08-30 13:53:44.976434'),(24,'books','0005_category_tag','2018-08-30 15:40:55.537146'),(25,'users','0002_auto_20180830_2124','2018-08-30 21:24:33.012278'),(26,'books','0006_review','2018-09-06 14:07:16.695202'),(27,'books','0007_comment','2018-09-06 19:33:59.092535'),(28,'cart','0001_initial','2018-09-07 13:04:27.825865'),(29,'order','0001_initial','2018-09-07 18:20:31.251375'),(30,'order','0002_order_is_pay','2018-09-07 20:02:03.608670'),(31,'order','0003_auto_20180907_2008','2018-09-07 20:08:34.117855'),(32,'order','0004_auto_20180908_1227','2018-09-08 12:28:03.576766');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('o1yia1ic1uxoabd5x64pdfd2e3r44rf8','MjU4M2RhNmZmZjk5MzU4Yzk2ZjM1OTg1OGE0NWYwZmVkNWM3MGJmMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY4YWExOTgwZDMxNTYzZGY1MDMzZmJmMTYwZThlMjg3MmJjNGUzYjIifQ==','2018-09-23 18:21:01.790171'),('oowa7p5z3i4u0iegcy05ufi4jbi4462s','YWRhNDU4NWM4ZWQzYmUwNzI2ZjI1NzMyNWVhZTcxZmNhYWRlZjNhZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OGFhMTk4MGQzMTU2M2RmNTAzM2ZiZjE2MGU4ZTI4NzJiYzRlM2IyIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJiYW5uZXIiXSwiIl19','2018-09-11 22:41:11.772232'),('rn9i2k6cm8zail500hn2gqkncikxxbmv','N2FmM2MzODk4NmU2MGJkZmIxMWU1ZDA4ODczNDI3MzUxMjcwNGFiZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OGFhMTk4MGQzMTU2M2RmNTAzM2ZiZjE2MGU4ZTI4NzJiYzRlM2IyIn0=','2018-09-21 14:12:07.741693');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_order`
--

DROP TABLE IF EXISTS `order_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` varchar(1000) NOT NULL,
  `fare` decimal(5,2) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_pay` tinyint(1) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_order_book_id_fff7fa76_fk_books_books_id` (`book_id`),
  KEY `order_order_user_id_7cf9bc2b_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `order_order_book_id_fff7fa76_fk_books_books_id` FOREIGN KEY (`book_id`) REFERENCES `books_books` (`id`),
  CONSTRAINT `order_order_user_id_7cf9bc2b_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_order`
--

LOCK TABLES `order_order` WRITE;
/*!40000 ALTER TABLE `order_order` DISABLE KEYS */;
INSERT INTO `order_order` VALUES (1,'1',10.00,'2018-09-07 20:06:00.000000',1,1,1,''),(2,'3',10.00,'2018-09-07 20:30:31.794991',2,1,1,''),(8,'1',10.00,'2018-09-08 13:03:00.816324',3,1,1,''),(9,'1',10.00,'2018-09-10 14:15:14.280751',2,1,0,''),(10,'1',10.00,'2018-09-10 15:31:17.419554',9,1,0,''),(11,'1',10.00,'2018-09-10 15:31:41.287892',10,1,0,'');
/*!40000 ALTER TABLE `order_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reversion_revision`
--

DROP TABLE IF EXISTS `reversion_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reversion_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `comment` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reversion_revision_user_id_17095f45_fk_users_userprofile_id` (`user_id`),
  KEY `reversion_revision_date_created_96f7c20c` (`date_created`),
  CONSTRAINT `reversion_revision_user_id_17095f45_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reversion_revision`
--

LOCK TABLES `reversion_revision` WRITE;
/*!40000 ALTER TABLE `reversion_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `reversion_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reversion_version`
--

DROP TABLE IF EXISTS `reversion_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reversion_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) NOT NULL,
  `format` varchar(255) NOT NULL,
  `serialized_data` longtext NOT NULL,
  `object_repr` longtext NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL,
  `db` varchar(191) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reversion_version_db_content_type_id_objec_b2c54f65_uniq` (`db`,`content_type_id`,`object_id`,`revision_id`),
  KEY `reversion_version_content_type_id_7d0ff25c_fk_django_co` (`content_type_id`),
  KEY `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` (`revision_id`),
  CONSTRAINT `reversion_version_content_type_id_7d0ff25c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reversion_version`
--

LOCK TABLES `reversion_version` WRITE;
/*!40000 ALTER TABLE `reversion_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `reversion_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_banner`
--

DROP TABLE IF EXISTS `users_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_banner`
--

LOCK TABLES `users_banner` WRITE;
/*!40000 ALTER TABLE `users_banner` DISABLE KEYS */;
INSERT INTO `users_banner` VALUES (1,'轮播1','banner/silde1.jpg','2018-08-28 22:40:00.000000'),(2,'轮播2','banner/slide2.jpg','2018-08-28 22:40:00.000000'),(3,'轮播3','banner/slide3.jpg','2018-08-28 22:40:00.000000'),(4,'轮播4','banner/slide4.jpg','2018-08-28 22:41:00.000000');
/*!40000 ALTER TABLE `users_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(200) NOT NULL,
  `s_name` varchar(40) NOT NULL,
  `postcode` varchar(6) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `s_address` varchar(200) NOT NULL,
  `s_phone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES (1,'2018-09-09 18:21:01.724207',1,'admin','','',1,1,'2018-08-28 17:22:09.648811','kreg','pbkdf2_sha256$100000$bkcl5nXLwY6s$//gc5sSb0BpHuEiofXLLbhMp/9rjJIhe+Pn2dQv/oRI=','kreg1739@163.com','','kreg','100000','admin','2018-08-28 17:22:09.648811','地球村 中国 河北','18731209999'),(3,'2018-08-30 21:44:32.483152',0,'18731209881','','',0,1,'2018-08-28 21:26:07.999379','kreg321','pbkdf2_sha256$100000$8tr7hnQnDPa5$KAAz5C+ASMhyrZjhE3Zl2fhTpxQOvKla6VCqbjr88F0=','742361585@qq.com','ridcyq','kreg','325600','18731209881','2018-08-28 21:26:07.999379','北京市','18731209881'),(4,'2018-09-06 13:15:44.905179',0,'18731209882','','',0,1,'2018-09-06 13:15:25.996130','测试1','pbkdf2_sha256$100000$GJ9QOyOKCMz5$FZSny3rud1O7uXUY0ERWHIxIZLYscUZU3qb8NOH4qIY=','ridcyq@qq.com','上海市','','','18731209882','2018-09-06 13:15:25.996130','','');
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_groups`
--

DROP TABLE IF EXISTS `users_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_groups`
--

LOCK TABLES `users_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `users_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_user_permissions`
--

LOCK TABLES `users_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2018-08-28 22:40:42.907288','127.0.0.1','1','轮播1','create','已添加。',15,1),(2,'2018-08-28 22:40:53.302458','127.0.0.1','2','轮播2','create','已添加。',15,1),(3,'2018-08-28 22:41:03.051906','127.0.0.1','3','轮播3','create','已添加。',15,1),(4,'2018-08-28 22:41:11.533355','127.0.0.1','4','轮播4','create','已添加。',15,1),(5,'2018-08-30 13:38:58.074942','127.0.0.1','1','小说','create','已添加。',12,1),(6,'2018-08-30 13:39:09.469758','127.0.0.1','2','文学','create','已添加。',12,1),(7,'2018-08-30 13:39:19.434757','127.0.0.1','3','传记','create','已添加。',12,1),(8,'2018-08-30 13:39:33.325909','127.0.0.1','4','历史','create','已添加。',12,1),(9,'2018-08-30 13:39:39.043736','127.0.0.1','5','少儿','create','已添加。',12,1),(10,'2018-08-30 13:39:43.912093','127.0.0.1','6','科幻','create','已添加。',12,1),(11,'2018-08-30 13:47:42.690846','127.0.0.1','1','活着','create','已添加。',13,1),(12,'2018-08-30 13:49:17.976225','127.0.0.1','2','解忧杂货店','create','已添加。',13,1),(13,'2018-08-30 13:52:03.305689','127.0.0.1','3','追风筝的人','create','已添加。',13,1),(14,'2018-08-30 13:56:37.639990','127.0.0.1','1','活着','change','修改 author',13,1),(15,'2018-08-30 13:56:44.944162','127.0.0.1','1','活着','change','没有字段被修改。',13,1),(16,'2018-08-30 13:56:59.520698','127.0.0.1','2','解忧杂货店','change','修改 author',13,1),(17,'2018-08-30 13:59:42.172079','127.0.0.1','3','追风筝的人','change','修改 author 和 content',13,1),(18,'2018-08-30 14:01:17.516488','127.0.0.1','4','落木无边','create','已添加。',13,1),(19,'2018-08-30 14:07:55.641132','127.0.0.1','5','肖申克的救赎','create','已添加。',13,1),(20,'2018-08-30 14:09:28.857812','127.0.0.1','6','我叫刘跃进','create','已添加。',13,1),(21,'2018-08-30 14:13:04.280301','127.0.0.1','7','隋唐五代文学思想史','create','已添加。',13,1),(22,'2018-08-30 14:14:30.029714','127.0.0.1','8','百味红楼《红楼梦》分回品赏','create','已添加。',13,1),(23,'2018-08-30 14:16:11.596911','127.0.0.1','9','食事-汪曾祺精选集','create','已添加。',13,1),(24,'2018-08-30 14:17:40.773068','127.0.0.1','10','所有人问所有人','create','已添加。',13,1),(25,'2018-08-30 14:36:49.938859','127.0.0.1','11','梁启超传记菁华','create','已添加。',13,1),(26,'2018-08-30 14:38:01.660012','127.0.0.1','12','帝王心理传记','create','已添加。',13,1),(27,'2018-08-30 14:39:05.591799','127.0.0.1','13','闵桂荣院士传记','create','已添加。',13,1),(28,'2018-08-30 14:40:45.647263','127.0.0.1','14','总统誓言-孙逸仙传记-唯一一本孙中山本人','create','已添加。',13,1),(29,'2018-08-30 14:43:04.526284','127.0.0.1','15','忽必烈和他的世界帝国','create','已添加。',13,1),(30,'2018-08-30 14:44:28.693422','127.0.0.1','16','辛亥风云－100个人在1911','create','已添加。',13,1),(31,'2018-08-30 14:45:49.388601','127.0.0.1','17','现代中国的历程','create','已添加。',13,1),(32,'2018-08-30 14:47:00.587360','127.0.0.1','18','国旗飘飘-话说中华人民共和国-(上下册)','create','已添加。',13,1),(33,'2018-08-30 14:48:35.519055','127.0.0.1','19','宝葫芦的秘密','create','已添加。',13,1),(34,'2018-08-30 14:49:52.336566','127.0.0.1','20','木偶的森林-王一梅温馨童话','create','已添加。',13,1),(35,'2018-08-30 14:50:41.876916','127.0.0.1','21','蓝鲸的眼睛','create','已添加。',13,1),(36,'2018-08-30 14:52:03.409781','127.0.0.1','22','中华成语故事','create','已添加。',13,1),(37,'2018-08-30 14:54:53.472288','127.0.0.1','23','美国年度最佳科幻小说集.2003','create','已添加。',13,1),(38,'2018-08-30 14:57:05.862701','127.0.0.1','24','三体-典藏版','create','已添加。',13,1),(39,'2018-08-30 14:58:23.839705','127.0.0.1','25','海伯利安','create','已添加。',13,1),(40,'2018-08-30 14:59:40.871425','127.0.0.1','26','2001:太空漫游','create','已添加。',13,1),(41,'2018-08-30 15:08:41.387684','127.0.0.1','10','所有人问所有人','change','修改 image 和 content',13,1),(42,'2018-08-30 15:41:15.271770','127.0.0.1','1','小说','change','修改 tag',12,1),(43,'2018-08-30 15:41:23.673147','127.0.0.1','2','文学','change','修改 tag',12,1),(44,'2018-08-30 15:41:29.368476','127.0.0.1','3','传记','change','修改 tag',12,1),(45,'2018-08-30 15:41:35.230830','127.0.0.1','4','历史','change','修改 tag',12,1),(46,'2018-08-30 15:41:40.691398','127.0.0.1','5','少儿','change','修改 tag',12,1),(47,'2018-08-30 15:41:46.059253','127.0.0.1','6','科幻','change','修改 tag',12,1),(48,'2018-08-30 16:23:51.178545','127.0.0.1','11','梁启超传记菁华','change','修改 desc 和 content',13,1),(49,'2018-09-06 15:07:48.300376','127.0.0.1','1','有些流行小说，一直流行到它们成了经典','create','已添加。',16,1),(50,'2018-09-06 15:12:07.749835','127.0.0.1','1','有些流行小说，一直流行到它们成了经典','change','修改 content',16,1),(51,'2018-09-06 15:13:20.792435','127.0.0.1','2','爱是天时地利的迷信','create','已添加。',16,1),(52,'2018-09-06 16:42:19.154562','127.0.0.1','3','谁说不是这样的呢？！','create','已添加。',16,1),(53,'2018-09-06 16:43:27.248341','127.0.0.1','4','依然无可言说','create','已添加。',16,1),(54,'2018-09-06 16:44:42.019879','127.0.0.1','5','《动物博物馆》丨用这本书为孩子建立一个立体纵深的动物知识科学体系','create','已添加。',16,1),(55,'2018-09-06 16:46:05.876262','127.0.0.1','6','“穷人”的五步创业经，手把手教你实现财务自由','create','已添加。',16,1),(56,'2018-09-06 16:48:10.774507','127.0.0.1','7','读这本书提升深度思考能力','create','已添加。',16,1),(57,'2018-09-06 16:49:55.125651','127.0.0.1','8','“评论是一种缺席在场的写作”','create','已添加。',16,1),(58,'2018-09-06 16:51:05.079776','127.0.0.1','9','从《小时代》到《甄嬛传》的成长蜕变','create','已添加。',16,1),(59,'2018-09-06 16:52:20.959699','127.0.0.1','10','牺牲换来的只能是地狱','create','已添加。',16,1),(60,'2018-09-06 16:53:22.204803','127.0.0.1','11','古斯都：命运抓住他的手，他选择不放开','create','已添加。',16,1),(61,'2018-09-07 20:06:40.513606','127.0.0.1','1','kreg','create','已添加。',19,1);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',1),(2,'site-theme','https://bootswatch.com/3/lumen/bootstrap.min.css',1);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-10 19:55:22
