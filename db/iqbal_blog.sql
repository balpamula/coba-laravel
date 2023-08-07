-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: iqbal_blog
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Web Programming','web-programming','2023-08-05 05:51:18','2023-08-05 05:51:18'),(2,'Personal','personal','2023-08-05 05:51:18','2023-08-05 05:51:18'),(3,'Web Design','web-design','2023-08-05 05:51:18','2023-08-05 05:51:18');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_08_03_090821_create_posts_table',1),(6,'2023_08_03_162915_create_categories_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,3,1,'Architecto a modi consequatur rerum.','asperiores-sequi-iusto-dolorem-recusandae-sed-deleniti','Dicta et aliquid fugiat tempora enim. Quia rerum illo nam exercitationem exercitationem incidunt ipsum molestiae. Nihil magni laboriosam itaque dolor.','<p>Iste rerum hic quia et aliquam dolore. Distinctio sed dolorum ex consequatur veritatis voluptatibus cupiditate.</p><p>Et amet debitis nam mollitia. Molestiae vitae vitae et est aut ad. Pariatur voluptatem numquam nobis. Illo occaecati eligendi omnis.</p><p>Molestiae quaerat qui totam animi et. Quam alias dolorum ab nobis. Iure deserunt repellendus similique iste dicta sequi ex.</p><p>Minus itaque qui dolorem inventore corporis id quaerat. Eaque aut molestias assumenda amet sint. Expedita illum aut et dolorem. Dolores ad doloremque vitae earum quo a rerum deleniti. Exercitationem et aut consequatur dolor labore.</p><p>Commodi autem sequi est reprehenderit impedit aspernatur consequuntur qui. Omnis ducimus earum ea qui porro. In assumenda beatae tempora a. Consequatur culpa delectus saepe deleniti culpa velit. Maiores nisi dolore velit sapiente nihil fugiat enim.</p><p>A ipsum et recusandae sed qui. Id et aut sed reprehenderit ea. Ipsa temporibus ut et pariatur enim beatae eum.</p><p>Tempore tempora repudiandae autem et tempore corrupti. Numquam alias labore est. Et at est animi itaque itaque provident illum. Quo voluptatem sed enim illo porro exercitationem eos.</p><p>Est illo at consequatur eaque ea dolores ratione. Rerum quo magni iste qui ut quos ut. Architecto nihil autem odio quos eligendi. Ut illo architecto doloremque sit perferendis voluptas ipsa sed.</p><p>Architecto suscipit quisquam reiciendis tempora. Consequuntur sit voluptatem blanditiis corrupti a sint. Voluptas ullam totam ut perspiciatis veritatis.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(2,2,2,'Deleniti et.','est-minus-perferendis-quis-repellendus-fugit','Deserunt aut eius iste et. Nostrum rerum consequuntur enim esse ullam. Et exercitationem non eligendi magnam corrupti id odit earum.','<p>Fuga natus rerum ea asperiores quod possimus soluta. Et nam et deleniti enim debitis at nihil nisi. Aut omnis quasi saepe laborum repellat qui.</p><p>Vero illo quis eos debitis. Et et culpa occaecati accusantium voluptas. Non enim sunt saepe consequatur. Fuga ea possimus dolor et et aut.</p><p>Dolorem sunt est porro officia voluptatem. Maiores et sequi non reprehenderit. Aut dolor et dicta ipsum assumenda molestiae commodi.</p><p>Qui omnis qui libero quo. Ex fugiat aliquam quo iure. Laboriosam sed dolor sunt et possimus ullam odio.</p><p>Omnis itaque odio ipsam dignissimos et. Omnis a illum cumque. Quia sapiente architecto et veniam amet dolor. Nam ex aut fugit aut voluptatibus.</p><p>Voluptas voluptate nihil perspiciatis sed et delectus sed. Quisquam aliquid temporibus ipsa hic et. Eos tempora labore tempore id. Laboriosam facere accusamus voluptatem sint beatae.</p><p>Aut distinctio inventore suscipit voluptatum dolores assumenda est. Quisquam aliquid facilis odit est. Ipsum consequatur sed maxime tempora deleniti amet sed.</p><p>Cumque sapiente sed alias nulla laborum consectetur dolor. Rerum rerum ut vel dolor ea. Et veritatis reprehenderit pariatur quaerat. Ut ea aliquam aperiam et assumenda et.</p><p>Quis deserunt vero iusto. Assumenda hic ut aut unde similique nihil. Repellendus et accusantium sed omnis. Quos quas sint laborum vel.</p><p>Voluptatibus cupiditate enim optio illum et sint. Quos dolorem suscipit est voluptas laudantium vel numquam fugiat. Ut earum odit consequatur magni corporis repudiandae dolores. In perferendis consequatur accusantium nulla at.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(3,3,2,'Omnis a nobis consequatur voluptatibus est iure.','saepe-quis-sit-et-commodi-qui-libero-et','Et omnis accusamus illo necessitatibus quos est. Deserunt distinctio quisquam qui aut quisquam. Blanditiis quod a qui non exercitationem autem. Consequatur qui nulla autem.','<p>Minus ut doloremque velit. Amet omnis nulla suscipit et odit est totam. Magni vitae dolor quasi exercitationem. Earum eum officiis quo nulla voluptatem.</p><p>Vero non fugiat enim. Quia incidunt est non harum ut. Qui neque sit adipisci dolor dolorem et. Ea officiis at facere nulla.</p><p>Est aliquam nemo possimus dolores. Temporibus omnis molestias nobis nam. Molestiae dicta culpa autem labore qui fugiat ipsum eius. Repellat aut harum odio exercitationem.</p><p>Quis magni nobis laudantium sapiente porro est expedita. Et perspiciatis quidem aut nemo. Suscipit autem rerum molestiae debitis ea quis. Quis corrupti voluptas minima quo.</p><p>Possimus ut aliquam beatae reprehenderit delectus. Molestias molestias iste quibusdam inventore cupiditate.</p><p>Enim voluptates excepturi error ducimus sint modi. Rerum modi ut et et officia voluptas. Aspernatur quia voluptatum corporis vitae eveniet. Rerum voluptatum omnis neque dolorem vero commodi. Sed quae accusamus ea nesciunt aliquid architecto.</p><p>Quas hic atque ex deserunt. Facere sequi corrupti deserunt ullam consequuntur beatae. Mollitia eligendi aut tenetur beatae unde quasi tempore est.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(4,2,1,'Nulla dolorem recusandae voluptatem.','recusandae-et-sint-ut-non-exercitationem-aut-ut','Voluptatem amet dolorem amet molestiae eum placeat. Est voluptates sed corporis ab. Placeat sunt saepe earum cum itaque.','<p>Deleniti id tempore voluptates. Laboriosam totam occaecati sunt culpa laborum cupiditate voluptas aliquam. Sint nostrum illo illo aperiam at ab. Corrupti qui maiores aut incidunt ipsam.</p><p>Vel ipsa corrupti non iste eos autem nobis ipsam. Enim illum voluptas sed consectetur. Soluta et eaque molestias praesentium.</p><p>Et voluptatum similique aut rerum. Id consequatur a omnis sunt est ut. Odio est ut odio ad.</p><p>Eligendi commodi et id qui doloremque vitae rerum. Unde autem recusandae explicabo tempora perspiciatis. Placeat neque qui ut sunt.</p><p>Hic incidunt minus reprehenderit ut harum. Accusantium porro corrupti ea. Accusantium et ipsam suscipit eius. Ad porro voluptate minima dolores eos odit maxime.</p><p>Ipsa laborum temporibus consequatur necessitatibus. Beatae reiciendis explicabo voluptatem officia neque magnam et consequatur. Amet ex aliquid modi et voluptatem. Occaecati magni blanditiis id cum architecto cupiditate quis.</p><p>Aliquam rerum ut aut tempora nesciunt voluptatem eum. Veritatis non omnis voluptatem repellendus et et. Quasi harum tenetur rem eum sunt aut exercitationem.</p><p>Et labore officia minima iusto et. Eveniet maiores deserunt et maxime. Et quia in exercitationem qui. Vero quas itaque sint enim. Quisquam consectetur est fuga molestias.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(5,1,1,'Occaecati alias laborum.','est-eveniet-quam-ab-facilis-laboriosam-quia-hic-itaque','Sed nisi magni odit laudantium ipsa sed. Sequi facilis aut consequatur numquam autem. Assumenda sed alias sapiente natus nihil sequi veniam ut.','<p>Necessitatibus numquam quia et tempora. Repellendus vel iure aut ut consequatur maiores iste.</p><p>Exercitationem excepturi ut qui ullam porro. Sunt voluptatem debitis quo magnam. Quibusdam velit iste reiciendis autem est aut alias.</p><p>Minus atque qui animi enim voluptatem. Odio est ducimus officiis pariatur. Totam magni doloribus excepturi eum et. Sit dolores dolor veniam quae quibusdam repudiandae enim.</p><p>Laborum voluptatum ut accusamus nihil. Quaerat sit dolor animi occaecati aut. Qui nihil perspiciatis est sit fugiat quis ut.</p><p>A iste et dolores odio. Non sed non beatae laboriosam rerum incidunt. Quo rerum similique et aut magni et est.</p><p>Labore voluptatibus velit quisquam in ut fugit. Et ut dolores sed eos. Dolorum quia ut facilis minima inventore.</p><p>Voluptas voluptatum beatae et eligendi enim temporibus. Ea numquam id optio quae illo. Harum odio omnis recusandae laudantium labore labore similique et. Libero fugiat adipisci pariatur non aut eaque.</p><p>Molestiae nihil et numquam quia distinctio eos quae qui. Itaque qui amet quo voluptatem quod quam sit. Quidem alias aut voluptates nobis culpa. Minus ut vero consequatur quis odio.</p><p>Iure et optio sint ducimus. Vitae dolores minima molestiae sint.</p><p>Quia distinctio alias quidem vitae totam. Voluptatem modi enim nisi dolorum voluptates delectus. Beatae accusamus dolorem occaecati aliquam.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(6,2,2,'Autem fugiat nesciunt numquam eos excepturi ducimus cum quidem.','alias-iusto-deserunt-modi-aut','Magni perspiciatis occaecati voluptatem perferendis id eum. Quibusdam sed rerum temporibus molestiae aut et esse et. Enim unde minima culpa officia quod aliquid fuga. Ut beatae debitis quibusdam dolores odio voluptatum optio.','<p>Rerum cum beatae eum et. Qui iure tenetur est alias. Autem qui quibusdam aspernatur dignissimos. Voluptas excepturi est quaerat quo nulla dolor.</p><p>Ratione est qui non vel. Quidem autem accusamus ad enim sint.</p><p>Autem amet dolores vitae officiis commodi qui. Ducimus ut officia ut nihil sunt. Odio optio eos veritatis beatae molestias vero tenetur.</p><p>Sint a earum pariatur sit aut. Magnam ipsam sint omnis aut ratione nulla delectus. Et magnam eveniet provident aliquid.</p><p>Consectetur ex sunt vel. Sit dolore atque sit dolorem. Cumque consequatur minus modi tempora natus repellat. Nisi quidem ab eum qui nulla ratione.</p><p>In quas et vero ut quos. Magni sed error voluptatem repudiandae. Consectetur nam corporis ipsam et et.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(7,1,3,'Quos ut rerum atque.','ut-odit-sint-saepe-nihil-illum-maxime','At at voluptatibus eum veniam sunt. Harum error veniam ex ab. Sint fuga dolores tempora mollitia laboriosam sint maiores. Aut ad libero est ad consectetur. Impedit nobis illo consectetur labore a dolorum repellendus.','<p>Fuga consequatur sunt quis magni sequi. Qui ut occaecati illum eos non incidunt enim. Voluptatem quaerat perspiciatis possimus occaecati. Nesciunt amet quis et itaque qui.</p><p>Dignissimos magnam delectus perspiciatis ut aut quasi nihil. Error rerum dignissimos dolor veritatis sunt. Repellendus officiis sit perspiciatis aut unde enim autem voluptas.</p><p>Amet eum architecto dolor impedit excepturi. Aut quia cupiditate qui odio. Quisquam ut ut quo ratione aut non est. Possimus impedit exercitationem nihil et ut. Aut consectetur reprehenderit consequuntur est possimus.</p><p>Ipsum ipsam dignissimos quia et. Et autem nobis nam quo sint laborum est. Dolore voluptatem dicta tempora.</p><p>Ducimus in officia perferendis est id pariatur et. Quibusdam rerum vel amet dolor et. Sit nostrum veniam dolor dolorem. Earum illum recusandae eaque magnam libero voluptatem. Ut ab nulla eveniet quibusdam autem necessitatibus neque.</p><p>Possimus illum non sit facilis. Labore dicta exercitationem quis sit id possimus nostrum. Rerum placeat nobis amet atque.</p><p>Quis provident eligendi quia neque. Eveniet enim porro et mollitia sapiente. Aut ipsa eligendi reiciendis tenetur. Cumque et nihil tempore ad et dolorem. Aut quo sit quae excepturi.</p><p>Doloribus iusto porro mollitia. Nesciunt eius esse suscipit. Mollitia minima id voluptas perspiciatis et deserunt incidunt. Assumenda nesciunt odit rerum qui aut.</p><p>Quas autem optio quibusdam. Qui qui quidem id quia. Minus eos sit aliquam odit.</p><p>Error eos natus minus cum harum ipsa magnam. Quis nesciunt doloribus sequi eaque voluptatem molestias deserunt. Possimus molestias magni facere repellat.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(8,1,2,'Velit id quo architecto facilis tenetur.','vel-mollitia-animi-sunt-magni-earum-voluptatem-nobis-cum','Sunt optio cupiditate animi dolores repellendus quidem. Vitae vel sequi est tempora occaecati odio distinctio. Dolorem dolorem earum dicta ratione dolor officiis nemo.','<p>Modi et in culpa reprehenderit adipisci rerum. Rerum qui voluptatem rerum odio facere numquam. Vero unde et quo nihil ipsam.</p><p>Sapiente suscipit reiciendis accusamus laudantium quod veniam. Aut adipisci enim autem laboriosam. Ullam a consequatur repudiandae alias ut aliquam sed quos. Quis excepturi in enim vel qui vel eos.</p><p>Incidunt laboriosam voluptatem ipsa eaque ex quaerat. Magni quos officiis omnis nesciunt ex maxime qui. Aut id delectus qui. Repudiandae quisquam sit dolorem sit.</p><p>Omnis nam est a magni repellendus beatae iusto. Voluptatum suscipit aliquid amet sit. Nostrum officia enim molestias aliquam est.</p><p>Nisi molestias quos eligendi earum. Doloremque et architecto et sit enim aut. Ut voluptatibus necessitatibus sit blanditiis quaerat vel debitis.</p><p>Harum omnis harum modi tempora magnam at consectetur sit. Voluptas sint reiciendis ipsum ut. Fuga et beatae numquam veniam voluptatem. Qui ratione dignissimos ipsa provident aut nam.</p><p>Totam ut veritatis reiciendis id. Dignissimos placeat ut quos fuga nihil eos quia voluptas. Ratione accusantium quis et occaecati consequatur. Qui fugiat ab sed rerum.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(9,3,1,'Qui enim illum et officia accusamus.','non-molestias-placeat-sunt-ut','Enim excepturi quod minima quisquam voluptas doloribus. Laboriosam culpa ex inventore corrupti. Incidunt ex quasi beatae facilis. Vitae impedit rem cumque nisi.','<p>Atque ut quibusdam inventore asperiores quia. Sit est voluptate dolore ducimus cupiditate. Omnis assumenda qui sunt quaerat expedita corporis quo. Animi quod sit sunt est libero id.</p><p>Placeat tempore ratione nostrum dicta sequi nisi voluptatem. Voluptatem nostrum assumenda dolorum. Quos impedit atque laudantium rerum ut.</p><p>Voluptatem repudiandae corrupti voluptatem ratione et. Et non delectus tempore et eum. Similique nihil facere repellat consequatur. Velit enim non ut beatae et excepturi.</p><p>Ut laudantium amet libero quia. Accusantium harum sunt deleniti unde qui amet ducimus. Provident doloremque dicta mollitia est ad.</p><p>Repellendus nemo veniam accusantium delectus reiciendis omnis. Voluptas quae culpa laborum magnam sed rem delectus similique. Eos aliquam voluptas error suscipit.</p><p>Blanditiis consequuntur sed sit sint inventore. Fugit ex quidem natus voluptatum deserunt vel architecto delectus. Molestias iusto et minima veritatis.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(10,2,1,'Harum ducimus iusto voluptas sit.','recusandae-perspiciatis-itaque-id-natus-voluptatem','Iure beatae accusamus voluptatem rerum aliquid officia reiciendis. Consequatur quidem fugit labore eum.','<p>Voluptatem quis at quia sit in. Amet rerum reiciendis atque consequuntur quia.</p><p>Inventore numquam illum blanditiis. Veritatis neque tempora quisquam dolorem deleniti cupiditate quos. Et non omnis alias voluptas. Quo omnis non inventore qui ex non. Et maxime hic modi eos molestias.</p><p>Qui iusto inventore beatae maiores consequuntur accusantium. Nam natus et dolore.</p><p>Maiores veniam cupiditate molestiae repudiandae. Totam adipisci tempore aspernatur ratione esse quas velit. Nihil accusamus reiciendis voluptatum at corporis iure architecto.</p><p>Voluptatem voluptas enim sed eius. Tempore rerum voluptatem harum aspernatur veniam aut. Culpa mollitia dolor non itaque ut. Nisi temporibus ut sunt quaerat temporibus qui consequatur ducimus.</p><p>Nemo eaque inventore consequatur sunt consequatur. Aliquam et aut placeat sapiente et veniam consequuntur. Itaque dolore consectetur illo consectetur. Soluta at occaecati ut sapiente aperiam.</p><p>Sit quisquam deleniti repellat ut quibusdam. Qui inventore ut incidunt earum et ducimus. Earum aut doloribus ea sequi dolore. Sapiente ut ex in ut excepturi.</p><p>Eum similique eaque est amet consectetur ad et. Et ipsa voluptate commodi voluptatem. Omnis et voluptatum atque corrupti omnis consectetur eos.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(11,1,2,'Sed eaque corrupti officia.','corrupti-et-ad-molestiae-animi-sit-voluptatem-ea-eius','Natus modi et quam sed ipsam in. Odio a rem aut magni. Enim voluptas vel ut quis eum et vel.','<p>Rerum in et ipsam libero sequi aspernatur et. Qui qui voluptatibus eligendi id ab. Necessitatibus reiciendis occaecati eos autem quia. Possimus magni perspiciatis fugiat natus est vel harum.</p><p>Id quis voluptatem rerum facere architecto. Necessitatibus sint corrupti animi temporibus. Fugit numquam itaque quod sed iste aut voluptatem qui.</p><p>Beatae nisi aut officiis reprehenderit. Possimus doloremque natus possimus unde autem rem.</p><p>Ullam aut et ut eveniet ab eum. Aut officia illum tenetur non. Est facilis exercitationem et deleniti corrupti repudiandae voluptatibus. Deleniti facere libero consequatur ut nemo dolores deserunt sed. Ipsam minus vitae id vitae quia eum.</p><p>Quo accusamus hic ipsum mollitia vero. Architecto voluptatum recusandae eos provident et quas. Et error voluptatem veritatis iste itaque placeat eaque. Non provident vitae distinctio quaerat nemo.</p><p>Laborum consequatur animi est iusto ut. Possimus eum cupiditate sed placeat dignissimos voluptas. Et velit sequi ullam ut eaque.</p><p>Qui maiores ipsum adipisci. Voluptas et est accusantium in numquam est iure. Dolorum aut quo vitae quo.</p><p>Aliquam enim voluptatem iusto sed est et. Ea aut id laborum nihil quia deserunt laboriosam.</p><p>Atque eos hic dolore necessitatibus consequuntur eaque. Repudiandae fugiat nihil veritatis earum tenetur adipisci corrupti. Aut id distinctio id quia fugiat temporibus. Sed possimus nulla iure quia sed est natus.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(12,3,2,'Id autem.','excepturi-rerum-non-eum-sequi-quia-quia-quaerat-omnis','Animi incidunt ut veniam debitis. Autem voluptatem quos voluptas deserunt quibusdam sapiente voluptatum placeat. Sed libero distinctio natus neque. Ipsa fuga earum doloribus et sed.','<p>Rerum debitis blanditiis iure nam distinctio vel. Ullam quam qui nihil et nostrum animi. Aspernatur corrupti perspiciatis dolores ipsa ut.</p><p>Iure omnis quis ea animi aut eaque. Corporis quam quia vel repudiandae. Et consequatur minima quisquam repellendus aut sit vero. Quia accusantium et maiores. Ea nemo quibusdam quo voluptatum.</p><p>Reprehenderit veniam quia rerum optio. Cum voluptatem ipsa ut velit consequatur. Veritatis aliquam velit nulla. Laboriosam repellat nisi nesciunt provident et quibusdam aut. Ut ut voluptatibus praesentium soluta explicabo.</p><p>Molestiae incidunt delectus inventore voluptas rerum. Eum fugiat alias quis sit. Sequi molestiae omnis esse debitis eius.</p><p>Autem magnam accusantium praesentium vero. Cum et neque deleniti quis reiciendis ut eum. Excepturi esse omnis delectus sit reprehenderit nesciunt. Expedita aspernatur consequatur in explicabo.</p><p>Sed non beatae quidem asperiores qui facere ut. Corrupti minima nulla sequi dolorem aut nihil totam commodi. Consequatur sed qui iste quam dolores.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(13,3,3,'Aut delectus culpa sed sunt nostrum.','saepe-accusamus-sed-excepturi-soluta-et','Voluptatum itaque fugit earum sunt. Debitis fugiat sit incidunt earum molestiae aliquid ipsa. Ullam impedit repellendus est. Doloribus vitae sit ratione et debitis. Rerum quaerat dolores est et est et vel.','<p>Dolorem officia aut architecto delectus. Explicabo porro sapiente beatae mollitia labore quae. Commodi molestias ut eius maiores quidem. Nihil eum adipisci eius delectus.</p><p>Non fugit enim suscipit ut. Explicabo explicabo illum quia id eaque repellendus non magni. Deserunt quia voluptatem soluta repellat aut quisquam.</p><p>Provident asperiores possimus vitae qui ut. Occaecati ipsam sit a eligendi dolor facilis. Aut cupiditate tenetur alias tenetur at.</p><p>Omnis et non consequatur id in quis consequuntur totam. Sint dolor tempore aperiam in tempora maiores. Voluptatem et accusantium tempora ut tenetur. Sapiente voluptas aperiam praesentium at.</p><p>Praesentium consequatur expedita aut illum quaerat ratione. Velit hic eum et consectetur voluptatem numquam. In doloribus laborum unde omnis in.</p><p>Recusandae enim sapiente voluptas tempore. Voluptatem doloremque nisi deserunt. Atque quia non cumque quidem dolor.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(14,3,2,'Corporis ea dolores perferendis perspiciatis et praesentium rerum.','officiis-quasi-est-nihil-omnis-corporis-similique-atque','Accusantium nihil qui ut sit quo adipisci. Non pariatur error et dolores eos. Cum rerum beatae vel deserunt.','<p>Perspiciatis fugiat sed eligendi quia eveniet reprehenderit perspiciatis. Quo id nesciunt et maxime dolor aut. Sit quisquam aspernatur eius quos. Aspernatur sit saepe laborum.</p><p>Alias nulla rem dolores ut explicabo et cumque. Sunt perspiciatis nostrum consectetur ad magnam. Qui commodi occaecati amet asperiores omnis similique iusto.</p><p>Laborum iure molestias qui atque sunt vel. Recusandae ut et fugiat blanditiis. Beatae blanditiis quasi dolorem qui quas eaque consequatur.</p><p>Soluta voluptatum officiis beatae voluptatem architecto est repudiandae. Et veniam sapiente molestiae quo eius enim. Praesentium repellendus perspiciatis nemo quaerat eos. Doloremque quo qui praesentium reprehenderit et ut qui. Sit totam veritatis sit aspernatur.</p><p>Velit ab quis et inventore. Quaerat facere harum quisquam.</p><p>Aut voluptate atque expedita fugit voluptates in autem. Molestiae voluptatem repellendus aperiam minima enim maxime. Iste dolorem sed quia autem. Consectetur perspiciatis tenetur porro praesentium ducimus.</p><p>Minima et quos enim deserunt non delectus voluptas. At in repellendus sed corporis incidunt. Non et quae sunt consequatur sed dolor.</p><p>Tempore aliquid molestiae quam ratione sit. Odio quia voluptatem nulla. Voluptatem necessitatibus magni est voluptatum aut deserunt dicta.</p><p>Iusto perferendis ad vitae aut maxime. Quisquam ut fugiat cumque accusamus sed eos provident. Non consequatur est et aperiam. Possimus pariatur esse dolorem assumenda. Occaecati atque sit voluptatem pariatur ducimus dolorem amet quia.</p><p>Officia quis cupiditate labore voluptatem voluptas ex quasi id. Incidunt quas molestias excepturi laborum placeat recusandae nesciunt. Illo explicabo vitae aut iusto voluptate repellat ut. Quas quia ad autem est saepe ex nihil.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(15,3,3,'Qui enim officia.','ut-hic-odio-vel-aliquam-omnis','Quos consequatur repudiandae consequatur quas reprehenderit quod. Voluptas et ut magni quasi commodi et doloribus.','<p>Sint dolorem fugiat dicta quam numquam quas iusto. Suscipit veritatis perspiciatis et accusamus deserunt et maiores atque. Quibusdam quis ducimus error explicabo et. Delectus laudantium autem aut quisquam laborum. Nisi autem facere itaque qui dolorem dolores enim.</p><p>Neque eum aliquam unde ut optio nihil temporibus. Aut et occaecati ut aut dolores sed. Voluptates dolore molestiae omnis asperiores tenetur aut. Et cum est at eum soluta quaerat.</p><p>Assumenda et omnis deserunt vitae quia. Nostrum libero quae explicabo asperiores officia ut nulla voluptas. Iure quod ut a quisquam aut qui tempora.</p><p>Tempore laborum rem numquam aliquid nobis ad facere. In in quas quasi sed quam. Et expedita fuga harum voluptatibus. Qui quae ea quia velit sint sunt neque.</p><p>Facere ipsa earum similique cumque ut. Qui voluptatibus rem error. Rerum voluptates sed consequatur modi qui maiores tempora. Cumque atque molestiae maiores quia animi.</p><p>Explicabo aut et qui. Cupiditate aspernatur quas ut eaque quis id. Qui et deserunt iusto aperiam impedit.</p><p>Optio illo et quia nobis assumenda nemo sunt. Est temporibus ut vitae a praesentium.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(16,1,3,'Omnis dolorem omnis quia consequatur eveniet.','explicabo-eos-corporis-quisquam-asperiores','Consectetur facere sed non ut temporibus nobis. In molestias cupiditate sit a. Est qui est qui similique veniam veritatis. Quia dolore iure necessitatibus similique voluptates. Et hic possimus fugiat consequuntur placeat maiores ducimus veritatis.','<p>Voluptatem quas dolorem enim neque dolores. Ut totam illo sint ut. Maiores et iusto totam quia quam ut qui aut.</p><p>Nemo quia ut veritatis eos quibusdam cupiditate. Qui voluptatem quaerat eaque alias similique eligendi culpa.</p><p>Ex et vero odio eius et. Voluptatibus labore in nihil nihil. Necessitatibus atque ut minus.</p><p>Debitis aut sapiente enim et repellendus numquam incidunt. Quasi maiores voluptatem inventore voluptatem alias ex. Eligendi porro dignissimos sequi repudiandae.</p><p>Et illo qui corporis ad ab in. Aut aliquid quis optio sunt soluta. Repellat voluptatem quidem cupiditate tenetur sed nihil aspernatur.</p><p>Eum optio a distinctio nam illo dolores tenetur. Dignissimos officia id voluptas at. Dolores veritatis aperiam qui illo possimus id. Dolore aut nihil commodi sed possimus et.</p><p>Dolorem aut commodi unde impedit impedit nam quisquam. Odit placeat laboriosam doloremque. Consequatur sequi voluptatem quibusdam explicabo. Rerum aut eum quia voluptas.</p><p>Fuga facere est error voluptas sed. Nihil in ad voluptatem laborum qui quaerat quae. Distinctio unde doloribus voluptate sunt esse ipsam.</p><p>Corrupti sit numquam et nobis nisi. Recusandae deserunt quia sequi molestiae. Eligendi quasi aperiam vitae animi. Occaecati consequatur quidem beatae incidunt.</p><p>Ut quaerat sed voluptatem quo laborum quia magnam. Eos omnis iste et nobis dolor et. Quas cum debitis aut quis soluta a.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(17,2,1,'Labore possimus vel pariatur.','odit-voluptatem-odio-est-placeat','Delectus dicta veritatis similique perferendis. Corporis quo omnis ut est. Non iste eveniet nihil possimus odit possimus. Possimus quod hic omnis itaque illo aliquid aut.','<p>Sit soluta est consectetur debitis. Et facilis possimus qui est. Aut beatae occaecati omnis sunt id voluptates nulla atque. Dolorem et qui voluptatibus dicta.</p><p>Quam quos sapiente necessitatibus id labore. Totam aut nam voluptas suscipit adipisci. Assumenda omnis non dolorem neque autem. Minus ratione aliquam odit exercitationem sed velit perspiciatis doloremque.</p><p>Dolores mollitia fugit nemo et sint. Ab incidunt cum quis aut consectetur aut voluptatem. Et illo qui quis recusandae incidunt similique possimus. Qui officiis nostrum non accusamus. Voluptates magni adipisci eum molestias.</p><p>Non impedit et molestias non placeat debitis. Expedita odit ipsum id id facere. Alias atque explicabo commodi voluptas distinctio voluptatum et. Exercitationem dolores numquam beatae quas eos. Harum et dolore eligendi.</p><p>Fugiat aut laboriosam aut ut in qui quia est. Harum numquam maiores illum porro dolorem velit sequi. Autem perferendis sit dolore quam. Deleniti inventore earum ratione laboriosam tenetur consequatur dolorem.</p><p>Magni odio dolorem recusandae error voluptas id. Quam magnam sit nesciunt sed. Quae et maiores laborum. Soluta quo dolore nesciunt tenetur soluta eveniet.</p><p>Quod distinctio ex rem facilis doloribus. Maiores dolorem nemo neque. Et ea numquam et maiores recusandae neque. Quia quasi et voluptatum.</p><p>Tempora libero quae qui odit. Reiciendis debitis beatae ut ducimus consequatur vel. Ut labore atque officia magni nostrum eos officia. Ea aut facilis est vel.</p><p>Ducimus quos quod magnam fugit sapiente temporibus. Et autem sint ipsum nobis omnis eos eligendi.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(18,2,3,'Consequuntur qui sunt ratione aut ipsa id et.','repellat-maxime-aut-rerum-culpa','Ipsum sequi inventore eum atque voluptas itaque soluta. Blanditiis quam ut ducimus est beatae animi. Impedit tenetur quasi fuga libero ut doloremque repellendus.','<p>Ut labore tempore quasi quos possimus. Quae repellendus voluptas optio unde optio est. Ut odit molestias quidem iste sed alias officiis. Et ut eveniet ullam dolores provident.</p><p>Vitae omnis illum distinctio dolores quis. Nemo laborum dolores ipsam ipsa dolores eum. Officiis officia occaecati numquam nam eveniet in perferendis provident. Illo ut libero voluptate porro blanditiis consectetur laudantium.</p><p>Mollitia necessitatibus quasi quo veritatis quidem qui. Qui nemo in voluptas voluptate omnis molestias. Nemo ab nostrum atque odit.</p><p>Aliquam distinctio repellat possimus. Ut libero nisi animi est animi quibusdam sit ratione. Esse magni ut dicta quia quis magnam neque. Dolorum dicta dolores cupiditate.</p><p>Et corrupti unde provident eos quo. Veritatis ullam ut tenetur unde omnis. Occaecati nulla earum voluptas earum.</p><p>Et quis aut repellendus optio. Ea et fugit vel cumque labore consequatur aliquid. Non voluptas amet necessitatibus voluptatem. Id odio in cumque debitis ut commodi nihil adipisci.</p><p>Provident consequatur nihil consequatur eius aspernatur magni. Dolorem dicta voluptatem quasi ipsa tempora voluptas. Totam animi quis quia ut magni est. In id rerum et et sit et.</p><p>Eum qui aut fugit saepe eligendi laborum. Architecto dolorem ipsum cumque quisquam dolor velit et dolores. Iure est dignissimos vel id. Laborum nihil dolor odit eum ipsa.</p><p>Enim repudiandae in nulla reiciendis in omnis. Sunt est quae nisi molestiae. Impedit necessitatibus voluptatem possimus ab doloremque quae mollitia.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(19,2,2,'Accusamus eveniet magni.','dolorem-hic-odio-rem-quasi','Eaque qui voluptatibus et commodi voluptatem commodi consectetur. Explicabo quasi asperiores facilis non laborum ipsa dolorem sunt. Quis aut quis exercitationem impedit voluptas quisquam ut nostrum.','<p>Eveniet ipsum quo impedit. Odio nulla quis aliquam ut. Aspernatur dolor eos maxime reprehenderit itaque aliquid minus nihil. Autem eos eaque voluptatum assumenda consequuntur ea et aut.</p><p>Aut porro voluptatem inventore officiis. Voluptatum doloribus facere deleniti suscipit. Tempora sed voluptatibus laborum necessitatibus.</p><p>Voluptatem accusantium molestiae non odio officia dignissimos. Nulla commodi ex non praesentium est expedita quisquam. Minus natus numquam optio vel magnam.</p><p>Quod tempore est ut aut. Delectus est dolorem vel vero et quisquam beatae. Provident explicabo voluptatum nesciunt iusto distinctio.</p><p>Delectus et est asperiores autem. Et culpa necessitatibus numquam officiis animi quo eum. Unde at tempore dolore quo dicta illo.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18'),(20,1,3,'Officiis voluptates ullam cupiditate.','ab-voluptatem-sit-quia-dicta-voluptas-quo','Culpa esse illum esse ratione quo in eligendi sapiente. Doloribus animi velit quas quia eaque. Inventore cumque velit dolor ut aliquid. Similique aliquid explicabo magnam eum aut perspiciatis.','<p>Veniam quia asperiores voluptas sed. Quam ipsum totam et nulla et. Qui et rem iste praesentium alias minus facere.</p><p>Aut nam eligendi enim non corporis. Voluptas eaque aperiam voluptas molestiae. Perferendis pariatur eos rerum quia eaque.</p><p>Odio pariatur voluptatem soluta minus velit quisquam. Consectetur enim laboriosam illo temporibus. Amet rem omnis quod quibusdam nemo esse eligendi.</p><p>Corrupti perspiciatis sequi debitis. Eum qui aut in unde. Nisi id similique dolores est et. Possimus doloremque et provident voluptatem aliquid autem. Quis nihil nihil consequatur mollitia et saepe qui.</p><p>Quam aut corporis ab non voluptas molestiae dignissimos enim. Eum neque sunt aut iste. Qui recusandae necessitatibus et.</p><p>Molestiae illum vel minus vitae. Qui esse inventore consequatur laborum. Eum fugit debitis est. Iste quam est voluptate.</p><p>Voluptas fugiat quia et nesciunt. Qui saepe quasi accusantium esse aut. Et ullam repudiandae quia sed sint totam. Voluptates eligendi velit ut voluptatem.</p><p>Delectus vel ipsam inventore voluptates. Pariatur nihil nostrum enim et minima inventore consequatur. Nesciunt non omnis totam ipsa.</p><p>Ea quae a velit dolores consequatur magnam sed. Minima et debitis vero asperiores placeat rerum illum.</p><p>Illo ullam nihil blanditiis quam. Ut dolorem a voluptatem sequi vel odio. Voluptas quos ea repudiandae molestiae pariatur a. Id distinctio et modi sit assumenda.</p>',NULL,'2023-08-05 05:51:18','2023-08-05 05:51:18');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Nova Zulaika','cici.hariyah','fitria45@example.org','2023-08-05 05:51:18','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','iafSus9iJB','2023-08-05 05:51:18','2023-08-05 05:51:18'),(2,'Putri Rahmawati','saefullah.syahrini','mustofa.niyaga@example.net','2023-08-05 05:51:18','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','7phJ46XxZP','2023-08-05 05:51:18','2023-08-05 05:51:18'),(3,'Irfan Purwa Wasita S.Farm','queen.rahayu','puspasari.jessica@example.net','2023-08-05 05:51:18','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WoWlOZBC6d','2023-08-05 05:51:18','2023-08-05 05:51:18'),(9,'Iqbal Pamula','iqbalpamulaa','balpamula@gmail.com',NULL,'$2y$10$f9dbStZYU94n.UxU0jpeXeHbYZ2N8J2mOyBcipIQRqVU3aXUI9qfO',NULL,'2023-08-07 05:15:38','2023-08-07 05:15:38');
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

-- Dump completed on 2023-08-07 22:39:02
