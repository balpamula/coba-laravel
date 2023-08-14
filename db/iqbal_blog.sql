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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Web Programming','web-programming','2023-08-14 07:32:42','2023-08-14 07:32:42'),(2,'Personal','personal','2023-08-14 07:32:42','2023-08-14 07:32:42'),(3,'Web Design','web-design','2023-08-14 07:32:42','2023-08-14 07:32:42');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_08_03_090821_create_posts_table',1),(6,'2023_08_03_162915_create_categories_table',1),(7,'2023_08_10_174305_add_is_admin_to_users_table',1);
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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,2,4,'Beatae aut omnis esse dolor.','voluptas-dignissimos-officiis-iure-aut-a-repellendus',NULL,'Dolore est omnis et repudiandae consequatur autem. Est illum voluptas accusantium consequatur dolores. Qui et sint necessitatibus occaecati aut.','<p>Odio id voluptas id. Magnam ut modi quibusdam cupiditate dolore aut. Et repudiandae porro vel voluptatem ipsam. Ut quisquam sapiente optio qui iusto.</p><p>Eum dolores qui esse nihil asperiores laudantium. Odit fuga dolorum accusamus tempore. Voluptates suscipit vitae quo sit libero.</p><p>Et est impedit aliquid facilis dolorum sed eaque. Dolorem itaque vero omnis aliquid. Ut voluptas laudantium eum voluptatibus voluptatem perferendis blanditiis.</p><p>Et voluptas qui laudantium dolor molestiae qui. Et rem sit sit maiores sint. Ut velit ipsa sequi impedit distinctio soluta nulla. Sit aspernatur velit quos perspiciatis aperiam ea.</p><p>Odit consequuntur unde at laborum cum iste assumenda. Et dolorem qui velit velit. Sint consectetur recusandae impedit adipisci ea tempora qui.</p><p>Magnam voluptates error et quis. Nemo quia architecto sed animi aliquam dolorum. Ea necessitatibus quia velit ipsum.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(2,3,3,'Consequatur culpa et eligendi tenetur.','sit-vel-et-aut-eum',NULL,'Aliquid non ex eaque similique molestiae autem esse. Dignissimos ut atque vel mollitia minima aut doloribus. Aut magni aut vel sed est quia impedit. Minus maiores libero esse hic culpa nulla.','<p>Quia et alias architecto. Veritatis saepe ut rerum harum. Eum in nesciunt exercitationem nam dolor. Est voluptatem non nemo dignissimos et eius architecto.</p><p>Voluptas aut voluptatem eius molestiae inventore. Dicta est eveniet quasi sed sit alias perferendis. Unde fugiat eum cupiditate.</p><p>Iure repellat nihil ea est nam. Non iste esse rerum sed quam. Hic et non amet alias. Perferendis qui quae cum id accusamus quaerat quibusdam facere.</p><p>Sint doloremque qui corrupti deserunt enim eveniet molestiae. Consequuntur sit aut nam itaque blanditiis.</p><p>Soluta et accusantium cupiditate praesentium. Omnis et aperiam id sed. Eum quae ad mollitia excepturi excepturi. Sed repudiandae doloribus assumenda dignissimos. Non omnis quos ea sunt nam in sed.</p><p>Tempore voluptatem rerum ab vitae quisquam. Molestias saepe praesentium dolorem veritatis. Omnis optio voluptas ipsum soluta nostrum.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(3,1,2,'Veniam consequuntur vel perferendis veritatis dolorem qui sint ut.','sapiente-ab-voluptas-aperiam-tenetur-sapiente',NULL,'Et odio provident esse rerum occaecati. Exercitationem quibusdam hic assumenda ullam voluptas. Deserunt eligendi voluptas quia accusamus.','<p>Aut repellat et impedit ipsam autem. Iste odit et sunt illum suscipit. Laborum quo quis totam ut.</p><p>Repudiandae accusamus est nostrum voluptatem cumque perspiciatis. Ducimus omnis temporibus consequuntur tempora facere.</p><p>Nesciunt eligendi consequatur aut laudantium soluta eligendi. Expedita omnis maiores impedit et labore dignissimos quas provident. Voluptatum aperiam tempora rem ut ut occaecati doloribus. Enim similique laudantium maxime aut.</p><p>Molestiae iste vel repellendus ipsa et repellendus explicabo. Quasi eum illum dolorum error odio quas. Aliquam nobis sed consequatur. Rerum et fugit temporibus soluta.</p><p>Autem saepe atque delectus aut quia. Voluptas alias labore quo sed dolorem perferendis nostrum. Veniam incidunt et provident. Sed laudantium quaerat veritatis quae est.</p><p>Pariatur ea voluptatem voluptas corporis. Unde voluptate omnis alias quod dicta modi. Quidem dolores voluptatibus et consequatur dolorem et.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(4,2,1,'Autem repudiandae aut nulla fuga minima.','recusandae-autem-sint-dolor-error-rerum-dolore-blanditiis',NULL,'Numquam omnis ut debitis deleniti eaque et non. Odit sed doloremque sequi. Ullam quae sint repudiandae soluta aliquam.','<p>Assumenda provident explicabo id odit et voluptas. Voluptates eos impedit suscipit qui alias molestias aliquam reprehenderit. Voluptas eum alias velit eligendi aut aperiam.</p><p>Esse aspernatur dolor hic sit rerum omnis natus laboriosam. Ut qui est dolores occaecati. Explicabo excepturi placeat et expedita iure ratione cumque.</p><p>Qui adipisci ut voluptas ex. Rerum inventore corporis pariatur. Harum molestiae similique nulla reiciendis et expedita. Et nesciunt reprehenderit quod.</p><p>Iusto delectus excepturi eos accusamus quisquam sint. Voluptatem asperiores inventore et quam maiores facilis quidem. Debitis aut velit qui dolorum at.</p><p>Sint laboriosam voluptate magni hic hic. Repellat optio ea enim occaecati error. Consectetur esse qui delectus omnis ducimus sit est debitis.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(5,1,1,'Earum itaque quo ut in cum explicabo et corrupti.','voluptates-perferendis-eos-quo-sapiente-voluptatem-necessitatibus',NULL,'Aspernatur quisquam vitae quidem sapiente reiciendis. Dolor voluptates rerum sunt sit et. Ut ratione fugit atque ut nihil.','<p>Cupiditate quod sint exercitationem quis minus. Quis minima error voluptas ipsum. Unde dicta et nemo ipsa qui. Sed ut consequuntur velit esse quia. Vel dicta consequatur odit sit fuga.</p><p>A iure tempore nostrum ex corporis optio ea. Sint qui fuga a suscipit ut praesentium recusandae quia.</p><p>Adipisci reprehenderit eius quo ullam illo et. Necessitatibus animi tempore accusantium aut quis quo. Dolor enim consequatur distinctio debitis quaerat labore dolores. Tenetur optio et et sunt mollitia quam.</p><p>Natus deserunt numquam et dolor. Corrupti qui voluptas recusandae quisquam unde quia saepe.</p><p>Dicta voluptate debitis voluptate porro. Nesciunt adipisci praesentium ad rerum quaerat pariatur est. Sit sint tempora vitae officia. Maxime enim similique quis.</p><p>Quisquam voluptatem officiis et odio iusto atque dolores. Ex illum quasi accusantium illo.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(6,2,1,'Qui facilis debitis necessitatibus.','eum-reprehenderit-molestiae-dolorem-ullam-consectetur-rerum-nobis',NULL,'Ea perspiciatis enim maiores. Mollitia tempore id earum est sint sapiente rerum. Ab ipsum deserunt repellendus maiores.','<p>Esse similique et illo molestiae. Magni vel nulla at fugit provident repellendus fugit incidunt. Quas quibusdam ut suscipit aliquam voluptatem.</p><p>Omnis magnam et nostrum earum et necessitatibus debitis. Maxime qui reprehenderit ea accusantium placeat qui. Sequi voluptate rerum ipsa in quam. Quae sunt ullam ut voluptatum dicta ipsam.</p><p>Voluptatem adipisci ad cum aliquam quas. Dolores dignissimos accusantium omnis expedita vitae eaque numquam. Nesciunt dolorum optio enim perferendis ut laudantium. Magni perspiciatis qui esse debitis cum.</p><p>Temporibus optio explicabo quam neque. Iusto molestiae mollitia provident. Ullam deleniti quam neque autem ea. Temporibus est consequatur ullam id consequatur sunt enim.</p><p>Officiis esse aut doloribus magnam eos eius repellat. Aut aut et ex asperiores id.</p><p>Ut adipisci rem libero magni odit. Maiores sit corporis quam magnam dolores velit ut. Aut ipsa inventore non eum autem consequuntur enim repudiandae. Similique doloremque placeat rerum voluptatibus natus omnis.</p><p>Ipsum est quia et rem sint sed. Et eveniet deleniti natus aut nostrum expedita. Quis laboriosam blanditiis natus tempora voluptate.</p><p>Rem enim repellat quis corrupti pariatur perferendis natus sed. Placeat molestias quia voluptas placeat unde recusandae iste. Dicta quia numquam repudiandae quia aperiam. Expedita iste aut repudiandae blanditiis illo.</p><p>Sit voluptas fugiat earum modi ipsam et. Facere ut saepe nostrum ipsum culpa quia delectus. Possimus minus consequatur nesciunt vero sed esse. Velit fugiat doloremque itaque.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(7,1,3,'Velit sapiente aut.','voluptatem-repellat-adipisci-enim-voluptatem-et-et-voluptatum',NULL,'Maxime nulla dicta repudiandae eligendi consequatur fugit et. Sunt qui quaerat rerum blanditiis quasi aspernatur tempore. Quo possimus similique voluptate iure. Dolor sit consequatur blanditiis atque aut quia.','<p>Dolore voluptatem eveniet rem molestias ut ut. Ullam porro sed culpa dolores quam saepe ut consequatur. Quos omnis voluptatum eum aut magnam eaque. At sed ex sit molestiae. Esse dolores perferendis et velit animi fugiat aut.</p><p>Omnis labore nesciunt facilis voluptates facilis laudantium. Molestiae ratione nostrum nemo qui. Quo ut a natus ex. At et quia velit quia ut error. Aut recusandae temporibus voluptas architecto.</p><p>Harum explicabo corporis qui cum. Architecto officia magni id aspernatur sed enim doloribus. Excepturi omnis sunt perspiciatis qui consequatur molestiae. Dolorem aut sit dolorum et.</p><p>Occaecati blanditiis qui voluptatem odit nihil. Porro error sapiente nihil voluptatibus qui.</p><p>Dolorem quasi est voluptatum commodi expedita. Et magnam non quia. Hic rem velit minus delectus quae. Eum animi vitae natus ipsum.</p><p>Aut animi error ullam aut voluptatem porro quo. Corrupti voluptate labore cum. Voluptas qui saepe pariatur reiciendis possimus rerum.</p><p>Voluptas soluta blanditiis quia voluptas cumque et repellendus ea. Amet nulla aut delectus exercitationem. Perspiciatis quis cupiditate ipsam delectus.</p><p>Necessitatibus dicta ut iusto. Ut sit porro velit nihil quia sint. Distinctio eum sint deleniti libero cum autem animi. Dolores consequatur voluptate aut facere quod.</p><p>In mollitia dicta id molestias repudiandae occaecati aperiam. Eveniet perferendis aliquam voluptate iure aut at sapiente.</p><p>Perferendis natus voluptatibus ad odit et. Debitis magnam rerum quaerat velit. Nam eum architecto veniam sint quasi aut doloremque.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(8,2,2,'Voluptatem quasi in qui illo sit.','sed-magni-occaecati-a-aut-ad-qui',NULL,'Sit maxime ipsam deleniti id velit aut numquam. Et quis quia neque omnis iure incidunt rerum. Alias consequatur ex reiciendis ut.','<p>Dolores eaque odit est ut. Quos saepe dolor sed commodi et occaecati.</p><p>Corporis illum ea inventore tempora modi magni. Voluptatem consequatur vel non et quae non possimus. Placeat labore dolor incidunt exercitationem quaerat veritatis vitae. Sunt sint dolores aliquid et minus delectus. Excepturi voluptatem doloremque amet.</p><p>Repudiandae molestias consequuntur eum odio sed quia aspernatur. Magni sed eius quo aut perferendis ex. Occaecati sunt aut nulla quaerat accusantium. Nesciunt tempora et dolores voluptatum maiores quaerat.</p><p>Voluptas nemo eligendi architecto repellat id assumenda. Eum dolorem provident veniam et voluptates dolore blanditiis. Temporibus aperiam alias perferendis laboriosam ut consequatur est. Quia autem adipisci quia ut ullam.</p><p>Commodi ea quod consectetur placeat. Delectus laborum distinctio molestias veritatis impedit eius. Accusamus assumenda quisquam expedita voluptatibus.</p><p>Temporibus impedit sint sunt. Delectus nisi quam voluptatem consequatur necessitatibus consequatur voluptas. Repudiandae nobis voluptas soluta voluptas accusantium vel. Nihil placeat possimus nulla doloribus quam impedit.</p><p>Blanditiis nisi vitae ab assumenda harum. Nam natus iste alias enim rerum pariatur. Id tenetur maiores voluptates sit ad. Fuga et fuga quia et nostrum labore sed dolores.</p><p>Possimus totam praesentium quasi cumque corrupti ea suscipit. Est numquam quis velit. Excepturi in numquam aliquid nobis quia culpa.</p><p>Minus aliquam velit omnis voluptate tenetur sint. Est voluptatibus aut quo est animi in ab. Vel quia voluptate autem labore expedita unde. Possimus voluptatem eveniet dolor in.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(9,3,1,'Provident aut commodi et quia cumque consequatur omnis.','voluptate-voluptas-omnis-amet',NULL,'Et impedit quia voluptatum vero enim repellendus. Iure omnis fugiat autem nobis. Necessitatibus at molestiae fugiat rem aut.','<p>Consequuntur qui est voluptatem architecto doloremque et voluptate molestiae. Non id quia aliquid et hic eligendi nulla. Non sint rerum illum qui eos. Accusantium unde labore dolores quos rem. Quo quis natus unde similique.</p><p>Quisquam pariatur asperiores deserunt et excepturi. Magni eum labore quisquam molestiae enim sapiente. Et facilis consectetur quo est ut laboriosam. Distinctio enim molestiae harum ipsam nesciunt placeat.</p><p>Accusamus distinctio amet eius. Doloribus tempora vel vero et sint voluptate quas. Impedit pariatur ipsum eum laborum et quia. Neque in temporibus velit corporis.</p><p>Sint quos harum quae omnis. Et veniam et in doloribus odio.</p><p>Et molestiae quidem reiciendis delectus. Ut cum quos odit consequuntur ut. Porro ipsum optio dignissimos sunt qui. Labore excepturi totam sit architecto.</p><p>Dolore consequuntur reiciendis unde reprehenderit nesciunt. Dolor nihil animi fugiat sint sint dolores impedit. Dolore ut possimus totam culpa itaque mollitia rerum.</p><p>Dolor error fugiat velit dignissimos quam temporibus. Totam aut qui et dolorem aliquid veritatis numquam. Maxime error minima id esse cumque corrupti. Quis et incidunt nisi amet et facere incidunt.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(10,3,2,'Iure qui voluptatem eos reprehenderit.','numquam-enim-qui-et-unde-nihil-enim',NULL,'Libero voluptas voluptatum voluptatum sit. Sunt illo libero praesentium. Magni doloribus beatae dicta eius iure dolor facere. Voluptatibus ut eveniet numquam velit dolore autem. Tenetur aspernatur dignissimos sit recusandae temporibus et.','<p>Non vero dolore eaque et blanditiis similique corporis repellat. Minima sed non autem voluptatem earum nihil veritatis.</p><p>Corporis iusto beatae nesciunt et perferendis. Quidem hic vitae et vel ut doloremque. Enim ea officia est quae voluptas et debitis. Adipisci odio beatae laboriosam quisquam tenetur.</p><p>In reiciendis quisquam temporibus earum fugit. Et consequatur provident culpa pariatur maiores sapiente. Quisquam natus cupiditate quisquam ab recusandae laudantium dolores.</p><p>Similique praesentium sunt magnam fuga incidunt enim omnis. Blanditiis ipsa ex sed non velit dolorum. Quidem nobis labore id perferendis. Ut aperiam consequuntur enim non ipsa commodi. Amet possimus et assumenda minima doloribus maiores.</p><p>Aut omnis ut iure quo quia totam ducimus. Et facilis nulla et eveniet. Fuga est ex reprehenderit praesentium.</p><p>Blanditiis numquam non et voluptatem explicabo praesentium et. Tempora minima distinctio magnam dolor voluptas placeat. Et et beatae voluptatem necessitatibus non est.</p><p>Nisi vel alias aut ipsum mollitia. Unde fugit aut quia soluta hic itaque eos. Aut repudiandae nemo sit earum.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(11,1,3,'Et architecto deserunt fugit hic.','voluptas-blanditiis-dignissimos-nesciunt-maxime-exercitationem-vero-perspiciatis',NULL,'Excepturi iste repellendus maiores possimus laboriosam. Numquam eveniet ut sed consequatur et sequi voluptas. Et cumque nam est commodi esse.','<p>Nulla fugit dolores ut rerum consequatur ipsa delectus. Cumque ut sunt hic totam. Esse aspernatur illo aut quam sit impedit maxime.</p><p>Omnis provident omnis molestiae nulla. Tenetur non ut expedita dicta reprehenderit quia velit. Provident doloribus velit ex harum quas dolore quibusdam.</p><p>Sunt veniam voluptatibus dolor voluptas nesciunt deserunt in. Eos at aut eius sit qui rem veniam. Consequatur quibusdam sunt numquam quidem saepe rerum. Autem excepturi sit rerum asperiores sequi quae.</p><p>Molestiae sint tenetur nobis dolorem consequatur sit culpa nemo. Porro ipsam possimus quas fuga. Eligendi quidem excepturi odit. Quia sit autem quidem ut illo. Similique fuga esse qui non consequatur hic.</p><p>Est expedita minima ea dolor et. Sit autem praesentium commodi consectetur qui voluptas est nemo. Repudiandae voluptates architecto animi laudantium vero. Illum ut cupiditate praesentium eaque ut.</p><p>Est optio ducimus deserunt animi. Natus aut autem laudantium molestias minus. Voluptates sed dolorem quis dicta ipsam. Delectus rem autem asperiores at voluptas eius.</p><p>Facere in non suscipit. Reprehenderit aut repellendus est asperiores voluptas. Numquam minus blanditiis repellendus adipisci.</p><p>Ipsam dicta aliquam cupiditate. Dolorum omnis dolore dolorem est et earum ut debitis. Voluptatibus eius et porro qui culpa ex modi.</p><p>Quos temporibus nihil quibusdam quia voluptatibus. Neque laborum ullam voluptate nostrum dignissimos perferendis ullam sunt. Delectus sint ipsa consequatur. Nobis voluptas vel sapiente quae optio nisi.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(12,3,4,'Rerum provident dolores incidunt possimus.','sunt-est-distinctio-saepe-nam-qui',NULL,'Ab quidem dolores soluta quae eum. Earum magnam quas quo doloribus recusandae. Rerum corporis architecto optio atque inventore optio. Doloremque molestiae laborum nihil in.','<p>Excepturi expedita consequuntur ut similique neque. Voluptas ea corporis non praesentium. Architecto beatae inventore perspiciatis at et totam.</p><p>Ut impedit dolores temporibus iure et. Pariatur quos voluptatem unde blanditiis nulla quia quaerat id. Molestiae impedit delectus reiciendis at sequi. Porro modi quia placeat modi consequatur.</p><p>Non ducimus accusamus cupiditate et in minima ducimus. Et laudantium rerum voluptas tempore ea ut non. Id neque et enim ex omnis.</p><p>Est quaerat laboriosam provident sunt rem laborum iure dolorem. Est quia quibusdam non quia voluptatum aliquid quisquam. Voluptates assumenda consequatur quia et hic qui aut. Facilis est est consequatur molestias.</p><p>Cum qui qui praesentium sunt iusto veritatis odit. Provident quis odit nostrum vitae. Quaerat omnis nostrum voluptate impedit pariatur. Repellendus saepe nemo quo non doloribus.</p><p>Enim earum deserunt sint. Illum qui veritatis sapiente ut. Molestiae harum quas sit. Explicabo quo consequatur alias.</p><p>Eum dolores nulla iste expedita est et. Molestias consequatur in ducimus in vero possimus. Sed quos et hic atque quas. Id et sint laudantium dignissimos accusamus nobis.</p><p>Quo eos incidunt aut. Impedit enim rerum deserunt iure. Qui possimus consectetur veniam ex expedita quia molestias. Quia non id maiores temporibus omnis eveniet vero.</p><p>Non fuga est provident adipisci quod iure sint. Sint at numquam doloribus qui. Quod temporibus id quidem eius non nam. Aut doloremque atque eos aliquam et.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(13,1,3,'Magni sint veritatis nemo est natus ut voluptate quisquam.','architecto-qui-minus-ex-sed-sint',NULL,'Libero itaque quibusdam qui provident ducimus. Temporibus voluptate iste vero. Aut assumenda ducimus id assumenda quas culpa quod reprehenderit.','<p>Mollitia omnis fugit perspiciatis. Animi quae veritatis fugiat dolorem natus. Omnis tempora numquam iste sit. Dolorem fuga autem id doloremque facere libero.</p><p>Voluptatem aut officiis inventore molestiae facere autem. Ut voluptatem sed a excepturi ut optio. Iste animi in quam deserunt repudiandae quidem qui.</p><p>Similique ut sit omnis rem dolores. Magni placeat neque aut nostrum sunt. Voluptatem sit soluta ipsum fuga libero tempore sint.</p><p>Voluptate non dolore est expedita architecto dolorum veniam. Dignissimos ipsam aut aut voluptas a nihil officia. Libero illo illo voluptatem ipsum quia autem est. Incidunt maiores atque maxime provident.</p><p>Est aperiam explicabo deleniti perspiciatis asperiores. Amet non dicta aut molestiae rerum a sit. Non dolorem aliquam et amet odit. Atque cum et qui.</p><p>Illo optio necessitatibus eum dolor. Cumque impedit velit pariatur exercitationem rem ab animi. Id omnis earum voluptas sequi quisquam reprehenderit consequatur. Vel et et delectus commodi ex. Minus possimus sit voluptatem inventore et.</p><p>Dolore aut et voluptas laborum. Sunt voluptatem est fugiat. Et officia quisquam ullam sint. Quisquam dolorem dolore quaerat excepturi accusantium.</p><p>Assumenda aut maiores tenetur et laboriosam. Quis est laboriosam voluptates possimus dolores sit est. Error dolorem cum tempore natus. Minus adipisci et minima eius.</p><p>Laboriosam animi cumque ut totam. Harum ipsum non est consequatur. Sit enim et sapiente ullam perferendis. Dolorem et ullam laudantium quo qui qui odit.</p><p>Dicta commodi nihil hic sunt. Commodi fuga sed rem autem. Fuga est alias natus molestias cupiditate exercitationem id.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(14,1,3,'Soluta explicabo ea ab odit reiciendis rerum.','quia-id-nam-et-voluptatem-et-quasi',NULL,'Nobis quos non facilis qui. Ratione iusto excepturi non et consequatur voluptatem facilis. Voluptatem mollitia suscipit fugiat.','<p>Animi in non modi non. Et delectus sequi hic autem vitae ipsa aperiam minima. Laudantium animi adipisci voluptatem explicabo.</p><p>Officiis optio suscipit doloribus molestiae dolor dolorem ut. Blanditiis animi iusto voluptas. Cupiditate earum odit ad sit non ratione.</p><p>Aliquid voluptas voluptatem minus minima temporibus et. Quam sunt cumque ut fugit ea.</p><p>Asperiores nisi reprehenderit et sed vel accusamus aut. Placeat iste veniam consequatur hic et est molestiae quia.</p><p>Et quae quia totam enim qui laboriosam debitis. Vel reprehenderit praesentium recusandae quidem. Enim corporis odio aut provident.</p><p>Consequatur pariatur ratione sed maxime laborum modi. Et animi ex reprehenderit dicta distinctio. Perferendis quidem mollitia ut ullam non occaecati et minima.</p><p>Ex dignissimos ullam id consequatur vitae eos. Aspernatur ut impedit expedita dolorem aliquam. Ipsam tenetur libero fuga voluptatem. Consectetur at quas voluptatem.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(15,2,2,'Et quia dolore ullam.','fuga-voluptas-officiis-architecto',NULL,'Omnis quo fugiat adipisci soluta. Aut cum magnam qui praesentium est enim. Dolor quis sed labore dolores.','<p>Corrupti consequatur quia nostrum et. Velit suscipit exercitationem dolore. Fugiat cupiditate accusamus nisi molestias laborum odio.</p><p>Quos enim rerum sapiente ut iure. Autem quia eligendi in suscipit qui. Aut non qui totam adipisci soluta aliquam officia.</p><p>Assumenda necessitatibus sit quia eum aliquid. Rerum dolor sint optio quasi aperiam voluptas dolorem dolor. Adipisci beatae est voluptatibus velit molestiae et quasi. Voluptas laborum non fuga eum rerum.</p><p>Veniam repellendus dolorem occaecati enim molestias laborum. Cumque et maiores et. Temporibus quis occaecati est.</p><p>Ex numquam architecto doloremque et neque. Aut illo quo sed numquam et totam. Voluptas aliquid excepturi aperiam quas neque et sapiente voluptatum. Doloribus facilis dolorem qui officia.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(16,1,1,'Omnis quae odit.','rerum-excepturi-ex-exercitationem-quibusdam-voluptatibus',NULL,'Rerum non sit dignissimos qui iure. Eos et aut et laudantium tempora ea aut. Sed delectus cumque aut assumenda.','<p>Ea quia eos doloremque sed ipsum. Quis officiis blanditiis vel est enim dolorem ut deleniti.</p><p>Quia recusandae illum velit. Minima suscipit officia laborum ipsam aut quia qui maxime. Id quia sapiente voluptatem doloremque animi laborum atque.</p><p>Aut error delectus a. Deserunt expedita perspiciatis occaecati. Maiores aperiam voluptas voluptatem quis aut tempora excepturi corrupti.</p><p>Rerum odio praesentium at numquam. Culpa sint voluptatibus nesciunt iste ipsam nihil. Deserunt sed corrupti corporis consequatur id fugiat. Voluptate pariatur aliquid dolore consectetur cumque perferendis.</p><p>Assumenda incidunt deserunt ut dignissimos magnam voluptas tenetur labore. Perspiciatis possimus laudantium magni est sed repellat. Voluptates et ea explicabo corporis id adipisci. Eos illum reprehenderit recusandae hic saepe architecto.</p><p>Voluptas aliquam earum dignissimos. Debitis qui nihil deleniti repellendus illum esse laudantium. Aut dolores eos provident dolorem. Aut pariatur molestiae aliquid voluptatum est atque.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(17,2,2,'Molestias amet minus quibusdam.','rem-ut-et-et-harum-quia',NULL,'Delectus molestiae inventore ab deserunt sed est sed. Voluptatem officia quaerat nam corporis est dolores non. Sapiente voluptatibus provident iure qui ut.','<p>Amet dolore mollitia rem harum. Nihil aut quisquam ratione qui dolorem itaque sit architecto. Ullam ut molestiae amet non incidunt. Ut autem nulla in error est sit eius.</p><p>Laudantium et corporis ratione. Suscipit et alias autem ex. Quidem officiis molestiae sit officiis. Assumenda accusantium laboriosam molestiae consectetur.</p><p>Porro eius iure rerum est alias molestiae neque laborum. Nemo iusto vitae iure nihil ea inventore. Ab omnis in numquam non.</p><p>Voluptatem velit blanditiis aut aut minus rerum. Eos aliquid aliquid praesentium beatae id et cum. Saepe modi ex nobis error.</p><p>Molestiae fuga enim omnis. Fugiat perferendis voluptatem aut ea quis animi cumque.</p><p>Et ut qui sed quo in illo totam. Nobis doloremque corrupti ratione laudantium non neque sit. Minima quod mollitia quas.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(18,1,4,'Recusandae aut delectus temporibus sed accusamus.','eos-voluptatum-quidem-in-omnis-aut-eos-aut-quia',NULL,'Doloribus facere et fugit rerum sit in. Distinctio doloremque sit et dolores magnam autem. Explicabo inventore nihil tenetur autem.','<p>Impedit omnis qui pariatur amet ut. Ut sapiente itaque ut exercitationem. Distinctio et modi ducimus placeat enim earum voluptatem. Aut iusto ut est ut.</p><p>Eaque eos consectetur molestiae officia quos. Consectetur sit labore eos quia. Consectetur dolores aperiam vitae magni et.</p><p>Facere animi error aut qui non alias nulla labore. Doloremque quo quae cupiditate voluptatibus quos quia. Neque enim iure itaque inventore ipsam voluptates.</p><p>Dolores non enim ut rerum quisquam optio. Occaecati iure molestiae id et et est. Recusandae iusto ut qui. Quia cum aliquam vitae quisquam et.</p><p>Et quia aut qui neque quam laudantium autem. Dolorum quis occaecati perferendis quae. Laboriosam non quis ut at quibusdam aut. Harum autem consequatur voluptatibus esse id.</p><p>Est est veniam inventore qui voluptates sed. Rerum sunt quo eius iure. Porro non aut nisi iste. Quibusdam dolores qui sint totam laboriosam praesentium.</p><p>Laborum voluptas iusto quod eum sapiente ut saepe. Iste delectus eius aspernatur veniam. Harum officiis nam cumque. Molestiae harum consequatur dolores iusto autem.</p><p>Rerum est temporibus quasi quo perferendis corporis. Rerum rerum dicta et ad adipisci harum. Qui aut voluptatum officiis architecto magni voluptatem. Laboriosam necessitatibus consequatur id ipsam quo ut animi.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(19,3,2,'Ut aut modi.','qui-assumenda-aliquam-nobis-quisquam-magnam-aut-cum-amet',NULL,'Incidunt consequuntur distinctio et voluptatibus ipsum cum. Voluptates suscipit ut molestias ut fugiat. Mollitia eius dolor vero porro. Odit rerum quo et itaque voluptate maiores facilis.','<p>Praesentium neque quisquam culpa qui odit ipsum accusamus. Deleniti aut eum eveniet hic et eum adipisci. Quod facilis tempore rerum commodi beatae ut sunt delectus. Et assumenda culpa esse ut.</p><p>Aut dolor quia quae temporibus nisi ut. Adipisci et asperiores nesciunt eum. Facilis cumque possimus nemo. Et ex sint labore accusantium et aspernatur.</p><p>Ad quaerat possimus saepe rerum ratione distinctio. Corporis et ea aspernatur. Ut aut atque pariatur possimus et. Iusto animi perspiciatis ea ullam iste.</p><p>Recusandae iste aut voluptatibus repudiandae. Id temporibus quisquam laborum consequatur ut cumque. Sint voluptas facere adipisci qui libero at. Accusamus et veniam sint enim cupiditate et sint.</p><p>Adipisci culpa quia dolorem nisi eum non explicabo dolorem. Excepturi eos pariatur provident libero. Beatae inventore sed facilis eius assumenda ipsam.</p><p>Enim recusandae libero tempore sequi error voluptatem. Ad fugit quam quod possimus temporibus. Ipsam inventore nihil recusandae omnis autem.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(20,2,3,'Omnis cupiditate sed aut sint.','repudiandae-sed-deserunt-molestias-tenetur-corporis',NULL,'Aperiam rerum architecto aut dolor qui facilis perspiciatis. Sit praesentium voluptates et assumenda fugiat est aut tenetur.','<p>Deleniti accusamus sequi distinctio quo iure voluptates. Rem voluptas illo doloremque. Sint quidem quam fugiat ea odit aut.</p><p>Quidem sed iure explicabo totam. Aut mollitia et libero consequatur aut. Neque ut nam explicabo expedita harum. Voluptas eligendi accusamus qui et. Iusto ut quis vel laboriosam quo mollitia.</p><p>Enim deserunt libero consequuntur tenetur in qui perspiciatis. Ratione qui iste expedita sapiente et. Qui excepturi eveniet doloremque omnis id.</p><p>Eius quod quisquam qui ut. Accusantium nam in iste ea autem ea pariatur. Quam qui sapiente molestiae distinctio. Voluptatibus ut ut ullam animi illum aut.</p><p>Tempora non voluptas in facere maiores vel fugiat aut. Aut est odio et quo reiciendis. Necessitatibus ut temporibus molestiae at aut perspiciatis hic atque.</p><p>Distinctio saepe architecto aut explicabo rerum ipsum. Vero accusamus sed voluptatem saepe. Similique et expedita eum temporibus perspiciatis molestiae possimus. Corrupti et dolore tempore.</p><p>Est amet nihil tempora. Aut atque nulla corrupti consequatur ducimus exercitationem neque voluptas. Veniam ipsa in labore sequi cumque ipsa voluptatem.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(21,3,1,'Vero quasi delectus voluptates dignissimos quia quidem aut qui aut.','est-reiciendis-quis-quam-atque-vitae',NULL,'Modi omnis et dolorem maxime aut eos. Et et expedita non velit voluptatum velit. Molestiae voluptatem est et. Sint quidem laborum ut.','<p>Earum sed amet iusto atque nihil omnis rerum. Illo harum commodi ex vel sunt. Officia ipsum et optio. Deleniti optio totam cum quas laudantium dolores.</p><p>Omnis rerum aliquam saepe cum quisquam. Recusandae aperiam et aut ex est. Error ut voluptates maxime facere quia.</p><p>Aut veniam magnam officia pariatur et adipisci. Harum maxime a dolores ipsam et distinctio nihil. Quas facere aliquam nam quisquam asperiores. Qui vel autem magni veritatis ut.</p><p>Et aspernatur sint voluptate voluptatem. Eum quo ut eligendi error dolor. Recusandae officia voluptatem consectetur unde labore non et. Sapiente animi et cum.</p><p>Impedit quos ea dolor. Nobis veniam omnis expedita quas. Minus eaque voluptatem neque non eveniet neque accusantium esse.</p><p>Consectetur voluptas cumque aspernatur nam minus in ea quos. Explicabo vitae aut aut praesentium molestias. Quasi sed in dolore harum.</p><p>Est ut molestiae repellendus nesciunt omnis est maiores id. Est temporibus qui et sit adipisci non. Vitae asperiores ut ipsa distinctio iure. Dignissimos amet doloremque rerum rem reprehenderit quis. Quam recusandae optio dolorem.</p><p>Saepe culpa voluptatem id ab cum possimus repellendus. Ut ab minus eum quis sequi. Animi quo veniam blanditiis commodi consequatur.</p><p>Velit cupiditate doloribus ut deleniti. Aperiam voluptatibus aut ut ut eos. Ipsam maiores quia hic veniam consequatur ipsa. Ullam sint repellendus ratione veritatis minus aperiam nihil.</p><p>Necessitatibus explicabo facilis ut aspernatur corporis. Ut quis ut quis et dolorum harum deleniti. Ut aut et officiis sit.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(22,1,4,'Quam consequatur voluptas.','illum-in-saepe-sint',NULL,'Ducimus laboriosam porro omnis est impedit cumque. Alias est provident aspernatur et rerum alias. Consequatur molestias odit officiis fugiat.','<p>Sit repudiandae modi deleniti inventore neque. Voluptate ut totam optio cupiditate repellendus dolorem pariatur veritatis. Iure molestias quibusdam illo numquam odit dolor adipisci.</p><p>Labore quas harum velit sit. Ipsa saepe rerum aliquid alias nam voluptatem dolores iure. Illum fugit eius deleniti exercitationem eius illo.</p><p>Veniam quis optio in voluptatum. Consequatur beatae suscipit in quis exercitationem. Aliquid sit consequatur ratione alias iste quia dicta. Omnis minima ratione rerum sed voluptatem unde impedit.</p><p>Eligendi provident praesentium voluptatem in earum. Ut ratione ex aut vero cumque delectus. Eos veniam sapiente dolorum. Et nemo accusantium et cumque quidem.</p><p>Temporibus enim quo in est hic blanditiis tempore. Sed laboriosam aut excepturi dolores eos temporibus iure. Error aut aperiam similique. Autem hic quas eaque sequi.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(23,3,4,'Voluptatum pariatur ut officiis neque minus voluptas.','beatae-ducimus-voluptates-eos-officia-reiciendis-quibusdam',NULL,'Numquam et vel similique voluptate aperiam optio. Esse rerum earum mollitia id modi impedit quo.','<p>Unde saepe necessitatibus ab natus consequuntur magni omnis eos. Quas commodi unde officia cum. At necessitatibus perspiciatis molestiae quas. Eveniet quam voluptas id et.</p><p>Ut quis fugit autem cupiditate repellat quasi voluptatem. Odio sit laborum placeat impedit a est quidem. Deleniti quae vero necessitatibus et. Ut aut quia sunt itaque reprehenderit qui.</p><p>Autem sint sed incidunt. Nostrum non corrupti aut non.</p><p>Molestiae mollitia mollitia enim ipsum. Incidunt dolorem reprehenderit dolore eum ullam. Qui tempora ipsum iure repellendus ullam ipsa dolores. Molestiae et qui quasi qui quod libero sed error.</p><p>Eaque a eaque optio mollitia dolorum nobis tenetur. Et maxime officiis harum iste non aliquid. Ut voluptatem qui sed a. Non ut repellendus itaque quidem aspernatur.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(24,3,1,'Illum atque nam incidunt.','molestiae-sunt-repellat-adipisci-voluptatibus-quidem',NULL,'Rem libero neque dolorem ut repellat. Dolores sapiente quia doloribus et. Repudiandae blanditiis recusandae quo quia eius sunt.','<p>Fugiat nihil eaque expedita eaque. Itaque modi magni officiis sed exercitationem est. Non id nemo eos occaecati qui consectetur. Dolor esse assumenda veritatis consequatur vero ea nulla.</p><p>Rerum ad natus id. Fuga atque voluptatibus reprehenderit assumenda.</p><p>Aperiam in esse dolorem possimus occaecati. Consequuntur sapiente autem autem.</p><p>Commodi iste eveniet rerum et provident voluptatem molestiae. Modi voluptate sed modi ut iure rerum provident. Beatae alias sapiente repellendus perspiciatis.</p><p>Itaque veritatis harum neque id nobis unde. Repellat nemo deleniti possimus et ipsum id aut. Non nulla dignissimos vitae explicabo. In velit qui molestiae.</p><p>Et ut fugiat nulla qui non ut rerum. Quia vel nemo vel quidem non id nisi recusandae. Sed repudiandae sed aut repudiandae facilis enim. Minima eos placeat dolor adipisci numquam dolores non.</p><p>Esse enim blanditiis facere animi consequatur ullam. Nemo voluptatem consectetur quos rerum laboriosam aliquam animi laborum. Illum similique harum exercitationem et libero iure enim non. Minus ut esse esse omnis facere. Commodi nobis quisquam maiores voluptate esse laboriosam dolorem perspiciatis.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42'),(25,3,3,'Ut consequatur enim aperiam perferendis ducimus eaque labore earum saepe.','cumque-veritatis-est-sit-et-sunt-aut',NULL,'Minima voluptatem optio nihil vel cum. Est unde repudiandae ipsa quod. Repellat architecto harum incidunt officia.','<p>Maxime qui modi labore nesciunt nesciunt accusantium optio. Maxime dolorum ut nobis omnis a dolorum impedit eius. Illo non laboriosam enim expedita delectus ut. Distinctio consectetur consequatur consequuntur ratione et.</p><p>Voluptas consequatur temporibus sed reprehenderit voluptatem velit possimus. Et sed et illum consequatur. Et quis voluptate perferendis assumenda eveniet. Blanditiis officia aspernatur deleniti et.</p><p>Facilis repellat reiciendis laboriosam. Ut nostrum distinctio qui praesentium fugiat tempora. Et earum ipsum consectetur illum perspiciatis.</p><p>Quam et nemo temporibus vel incidunt. Et sunt dolorem voluptas nobis nisi. Perferendis repudiandae dolorem architecto soluta facilis.</p><p>Nesciunt impedit expedita voluptas quo et rerum. Est modi quia ab quam voluptatem a. Minima ut est libero aperiam omnis maiores.</p>',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42');
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
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Iqbal Pamula','iqbalpamula','iqbal@gmail.com',NULL,'$2y$10$06Ru3GC5PARKLDeewyhRYeWLkqGNgdbiiisySW4xLRSRN6yR5UNou',NULL,'2023-08-14 07:32:42','2023-08-14 07:32:42',1),(2,'Widya Lestari','fitriani08','vadriansyah@example.net','2023-08-14 07:32:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','LcBvEspiZg','2023-08-14 07:32:42','2023-08-14 07:32:42',0),(3,'Karen Astuti','marsudi13','nababan.viman@example.com','2023-08-14 07:32:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','wuBDzu24Ug','2023-08-14 07:32:42','2023-08-14 07:32:42',1),(4,'Yuliana Farida','nugraha.palastri','aryani.mutia@example.org','2023-08-14 07:32:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','QZxtH0qwtw','2023-08-14 07:32:42','2023-08-14 07:32:42',0);
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

-- Dump completed on 2023-08-14 21:57:13
