-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 25 juin 2021 à 00:14
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `myblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `subtitle`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Excepturi incidunt expedita suscipit voluptatibus rem laudantium saepe.', 'Debitis qui voluptatem tempora nihil eaque voluptatibus.', 'excepturi-incidunt-expedita-suscipit-voluptatibus-rem-laudantium-saepe', 'Eligendi ducimus sint sunt repellat. Praesentium voluptas consequuntur rem iste itaque voluptatum placeat sit. Deleniti quas qui aut autem. Ipsa molestiae architecto et sapiente et recusandae. Facilis sint omnis at eveniet odio. Quia dolores quam adipisci. Aut officia facilis maiores aut eum ullam debitis. Vel perferendis est laborum placeat dolor. Et aut et architecto placeat et expedita. Accusantium dolorum dolore est temporibus possimus et. Vel non qui aut vero non optio perferendis quia. Odit et et aut mollitia saepe illo aut. Possimus molestiae odit non fugit accusamus voluptatem beatae.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(2, 'Et distinctio qui ipsa sed.', 'Temporibus minus ut eius ratione praesentium suscipit nostrum.', 'et-distinctio-qui-ipsa-sed', 'Voluptatibus voluptatum dolorem quaerat pariatur. Dignissimos voluptates asperiores in. Consequuntur sed provident nostrum doloribus soluta enim. Maiores vel sint et dolores cum voluptatibus. Voluptas voluptas distinctio doloremque qui. Quo sapiente est sint nostrum neque quia quae. Cum suscipit iure quis sed. Tenetur beatae sapiente minus in cumque. Et itaque officiis sunt error aut porro quis. Ea enim numquam autem velit. Sit ea sunt sed voluptas dolorem natus quia. Aut quidem sit provident et. Omnis ut sed culpa. Quia aperiam dignissimos amet provident et. Provident ipsa ullam qui.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(3, 'Tenetur nihil sit veritatis tempora dolorum dolor.', 'Et ea aut et nostrum aut pariatur cumque in.', 'tenetur-nihil-sit-veritatis-tempora-dolorum-dolor', 'Labore atque praesentium tenetur eum eius minima iusto. Ab enim aut non voluptate. Atque velit aspernatur consequuntur repudiandae libero. Expedita tenetur et cum aut. Est nisi eum optio soluta veritatis similique et. Ab voluptates dolore nostrum nihil numquam ab eius sint. Aut consectetur et voluptas. Atque repellendus aut iure aut ut voluptate. Aut atque maiores est rerum quae quibusdam. Quod voluptates nostrum possimus suscipit id facere neque ipsam. Id officiis dolorem animi explicabo architecto neque. Hic consequuntur omnis saepe quaerat quos quis sit.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(4, 'Quia eveniet et et voluptates ex sit qui.', 'Maxime quam voluptatem sit ut sed et molestiae.', 'quia-eveniet-et-et-voluptates-ex-sit-qui', 'Iure consequatur et eaque sed libero vitae velit sunt. Provident rerum itaque distinctio corporis illo atque. Debitis ipsum qui totam facilis. Sapiente totam officia nulla rerum placeat mollitia iste. Magni laborum quisquam accusamus eaque beatae aut. Laborum corporis architecto excepturi sint. Occaecati cum ut reiciendis sed qui in amet voluptas. Vitae dolorem quisquam itaque. Voluptates laboriosam enim molestiae laborum. Aperiam vel doloribus labore. Officia commodi maxime dolorem et quo qui soluta temporibus. Sed iste aperiam tenetur vel. Nihil excepturi ut deleniti.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(5, 'Id quia repellendus et ducimus occaecati ut.', 'Dolorem provident dolor saepe ab expedita et aut.', 'id-quia-repellendus-et-ducimus-occaecati-ut', 'Itaque laudantium illum facere voluptate. Ea qui velit aut sit sapiente dicta ducimus. Ducimus praesentium ipsam est dolorem vel libero numquam. Autem quidem sit consequatur eum nihil. Consequatur tenetur nam et quae. Eum omnis vero vel totam autem ex. Rerum officia iste autem voluptatum sed velit iste sunt. Molestiae consectetur sunt sunt ipsam quo incidunt a fuga. Eum eos quia sed quidem perferendis. Repellendus veniam vitae autem. Totam expedita vitae quod. Aspernatur est molestiae voluptatibus consectetur.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(6, 'A quis ipsam iure quis est.', 'Sed ex quos autem quis qui.', 'a-quis-ipsam-iure-quis-est', 'Vel tempora omnis exercitationem labore dolor. Numquam non qui molestiae sunt quidem. Voluptas modi consequuntur ut voluptatem voluptas. Omnis ut quisquam quibusdam enim. Quod ut sit similique quo harum expedita odio. Et error corrupti necessitatibus. Esse enim quis eum consectetur reiciendis voluptates et. Ab quaerat maxime rerum rerum commodi. Voluptatibus dolore ipsam error sunt eaque dolores. Unde in omnis voluptas delectus officia explicabo aspernatur. Facilis asperiores dolor nisi rem pariatur a consequuntur.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(7, 'Enim consequatur aut et voluptatem non.', 'Incidunt sequi nisi quo.', 'enim-consequatur-aut-et-voluptatem-non', 'Aut maiores est ab esse ab ipsa. Ut incidunt quas vero in et. Consequatur nisi assumenda consequatur labore exercitationem sed aut. Laboriosam officia quaerat omnis et atque est. Quae illum voluptatum quas facere consequatur et. Libero quis ut laborum est exercitationem enim. Quo velit ut vel repudiandae voluptatem. Fugiat ut rerum laborum id alias doloremque. Quis reiciendis rerum cumque. A qui repudiandae assumenda nihil non natus et. Architecto amet et harum earum ex. Impedit vero quaerat soluta possimus. Nulla est ea deleniti rerum reprehenderit temporibus qui officiis.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(8, 'Necessitatibus aut consequuntur perspiciatis.', 'Quas at placeat reiciendis et tenetur quasi.', 'necessitatibus-aut-consequuntur-perspiciatis', 'Dolore unde est quis sequi in repellendus ea. Ducimus perspiciatis est quibusdam natus itaque. Illum omnis distinctio ex dolores incidunt minima. Ipsam et sit neque minima est quae vel. Eum molestias et ut eos. Qui est ut vel est et nihil consequatur. Architecto delectus repellendus vel ex esse veritatis. Eius aut quas nobis dolorum. Totam exercitationem consequatur ab aperiam consequatur. Vel facere similique fugit molestias omnis optio laboriosam.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(9, 'Repudiandae ex saepe et facilis nostrum asperiores laudantium.', 'Recusandae quae recusandae quam aut porro esse porro.', 'repudiandae-ex-saepe-et-facilis-nostrum-asperiores-laudantium', 'Dignissimos in sit nulla explicabo quo et. Vero sapiente commodi et delectus. Sed esse autem et quod qui autem. Ad ut dolorem omnis dolor consectetur. Pariatur labore in autem quod hic porro. Praesentium magni dolor nemo. Tempora pariatur fugiat eaque cupiditate maxime atque quaerat. Numquam quam aspernatur quam quod vero. Voluptas qui incidunt ullam nesciunt est labore ullam. Ipsa quia quae eos expedita. Consectetur quo qui reprehenderit ratione ea. Nihil ipsa qui soluta ut eos occaecati repellendus. Est occaecati libero velit illum placeat molestiae.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(10, 'Ab laudantium ut cupiditate eaque et molestias.', 'Voluptas laborum voluptatum eum cumque beatae inventore.', 'ab-laudantium-ut-cupiditate-eaque-et-molestias', 'Ut voluptates aut occaecati debitis est aperiam dolores. Saepe ipsam fugit officia non temporibus quia explicabo. Est voluptas est ea quam corporis rerum. Exercitationem eaque maxime voluptas minus. Alias eligendi magni consectetur occaecati. Odit et expedita eius incidunt ea enim perferendis numquam. Ut quaerat aut quaerat magnam. Et est ut sit explicabo molestiae placeat facere. Dignissimos et fugit iste nihil quasi laudantium atque. Labore molestiae dolore rerum quidem nesciunt autem exercitationem. Qui id nam dicta.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(11, 'Facilis totam dolorem labore eos qui iure.', 'Ut eum animi at ut.', 'facilis-totam-dolorem-labore-eos-qui-iure', 'Incidunt est reprehenderit labore omnis velit. Quod ea quo laborum sit non vel. Ullam et laborum nisi. Qui animi ipsam non facilis asperiores eveniet. Porro sit tenetur dolorem dolor molestiae. Ut est et illum molestias. Voluptas officiis debitis alias consequatur neque fugiat. Ut fuga aperiam rerum maiores. Ad vel laboriosam nulla enim quam mollitia. Accusamus porro inventore ut odit nostrum. Vitae consequuntur quae ea. Dolores voluptas voluptatem expedita eum molestiae voluptas. Nulla voluptatem sunt culpa blanditiis temporibus.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(12, 'Porro vero adipisci dicta iure sed.', 'Dolorem nulla quod magnam dolorum vitae nulla.', 'porro-vero-adipisci-dicta-iure-sed', 'Error sint et cum quasi enim quasi dignissimos quos. Dolores quis ea et rerum sit et sit repellendus. Blanditiis molestias voluptas deleniti. Qui maxime et cumque qui. Veniam quo facere recusandae similique. Voluptas explicabo aliquam explicabo distinctio sit quia commodi. Culpa atque nobis ea. Nihil ratione modi omnis aspernatur dolor placeat. Unde labore quia voluptatem ea. Consequatur quis enim at exercitationem qui et. Consequatur enim rerum expedita sit.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(13, 'Consectetur rem necessitatibus excepturi.', 'Molestiae aperiam et quis et dolorem nisi hic.', 'consectetur-rem-necessitatibus-excepturi', 'Quia officiis quis nobis voluptatum alias itaque. Provident et sapiente modi tempore ea sed corporis. Suscipit voluptate tenetur libero quod est molestias facilis. Aut ea veniam officiis et impedit ut. Quia ullam ipsam veritatis ipsam officiis doloremque. Non aut consequatur porro ut. Modi voluptatibus magni est dicta. Sint qui omnis neque quia dolor autem debitis. Maiores sit illo ratione est et natus nihil iure. Id et sit quod eos voluptatem reiciendis porro. Eos maiores repellendus quo molestiae mollitia. Et vero rerum nesciunt totam. Porro suscipit alias enim.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(14, 'Corrupti ipsa molestiae ipsum molestiae magni assumenda eos.', 'Consectetur expedita illum possimus minima.', 'corrupti-ipsa-molestiae-ipsum-molestiae-magni-assumenda-eos', 'Ullam autem nihil et voluptatem deleniti corrupti debitis. Facilis voluptates sint exercitationem temporibus. Aut nobis sed labore modi commodi voluptatem et aut. Nihil placeat et aut aut veniam similique ducimus temporibus. Vitae expedita voluptas quae. Rerum sit laborum et culpa facere. Sint ipsum maxime quo aspernatur fugiat deserunt rerum. Veritatis consequuntur odit provident odit. Dolor adipisci voluptatum accusamus. Sapiente quis perspiciatis praesentium officia at. Dolorem quia excepturi quisquam sit dolor quaerat saepe. Voluptas totam est non molestiae rerum occaecati.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(15, 'Vel in doloremque harum ratione error non.', 'Est quibusdam enim atque et dolores.', 'vel-in-doloremque-harum-ratione-error-non', 'Dolorum esse enim vitae labore ad omnis. Alias nemo et voluptas fugiat ut inventore fugit. Voluptatem assumenda dolores ut a earum. Quos est vel rem praesentium. Beatae dolor aliquid et inventore unde commodi totam laborum. Aliquam quia veritatis enim est. Est officiis minus expedita amet exercitationem. Saepe sapiente sunt maxime eos et nobis sapiente. Eos quam quo fuga voluptatem libero id fugiat omnis. Occaecati dolor ea quisquam deserunt consequatur impedit.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(16, 'Omnis dolorum sed id soluta velit consequatur ipsam.', 'Aut qui error debitis et ea numquam dolores.', 'omnis-dolorum-sed-id-soluta-velit-consequatur-ipsam', 'Omnis dolorum quasi eos autem voluptatibus sequi in qui. Quas non a repellat laboriosam non aliquid voluptas. Quaerat veritatis corporis nemo aut. Eaque accusamus iure enim ducimus. Repudiandae nulla eligendi vel velit esse non nisi. Et ratione cumque perspiciatis qui. Ratione sit ex voluptatem praesentium dignissimos at nemo. Quia vel libero perspiciatis sint voluptatibus qui ipsum.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(17, 'Quisquam debitis quod est veritatis earum.', 'Fugit voluptates repudiandae dolorum qui.', 'quisquam-debitis-quod-est-veritatis-earum', 'Neque ipsum sunt aut et possimus. Est et nihil quas consequatur debitis et id. Neque sed iste autem suscipit unde debitis est. Qui non eveniet est qui voluptatem quisquam. Et voluptatem cum veniam debitis eos. Asperiores nemo qui ad consequatur aut neque dolores. Consequatur magnam fugiat praesentium enim tempora pariatur aliquam. Quos et quia aut aut ex tempora numquam dicta. Quia iste eius soluta quia corporis non ut. Repellat dolorem ipsa sapiente sed. A ipsa et temporibus vel debitis. Quo quos dolores tenetur consequatur nisi. Voluptatem quis id rerum soluta non eos maxime nulla.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(18, 'In harum id voluptatem iusto.', 'Quibusdam distinctio aut vel est.', 'in-harum-id-voluptatem-iusto', 'Aut consectetur accusamus vel quibusdam vitae doloremque error. Nihil possimus minus ut consequuntur impedit. Dolorum ratione adipisci voluptas est dolorem dolorem. Temporibus tempora exercitationem earum praesentium quia ab sit maxime. Labore recusandae voluptatem ratione reprehenderit necessitatibus fugit. Reprehenderit repudiandae eum enim rem beatae. Voluptatem itaque eos soluta quidem ducimus. Quia pariatur cum vitae. Harum magnam corrupti voluptatum deleniti quas velit. Atque voluptas perferendis doloremque eaque.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(19, 'Soluta quia eos et id consequatur laboriosam nihil quam.', 'Nihil et quo veniam dolorem atque incidunt.', 'soluta-quia-eos-et-id-consequatur-laboriosam-nihil-quam', 'Eum consectetur eum voluptas cumque accusantium non. Et magni quam qui nesciunt. Deleniti debitis quia hic consequuntur repellat distinctio corporis facilis. Quos cum molestiae eos veniam consequuntur. Fugiat a fuga soluta harum ex non corporis corporis. Dolore rerum ipsa deleniti officia quis nulla. Magni unde veniam temporibus laborum dolorem aut distinctio placeat. Quas commodi voluptas qui odit qui voluptas qui. Qui molestias molestias sapiente quos. Sit omnis deleniti earum aut deserunt molestiae eos. Ut qui quod esse. Neque et et cum optio laborum.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(20, 'Dolore veritatis debitis dolorem ipsam est officia.', 'Hic hic esse iure quibusdam qui animi suscipit ipsum.', 'dolore-veritatis-debitis-dolorem-ipsam-est-officia', 'Deserunt asperiores et enim aut unde. Tempora rerum est qui aut magni. Ut nihil quos ut animi reiciendis vel sit. Quo voluptas reprehenderit culpa quaerat autem et possimus et. Corrupti veniam ut aut eius ut. Qui expedita nam repudiandae sed eligendi mollitia. Aut alias et quasi quaerat unde est. Illum dolor occaecati quidem aut vel voluptatem sint sapiente. Necessitatibus blanditiis id ex est velit vel nam eligendi. Quod voluptatem quaerat exercitationem aperiam. Sint ut ea dicta officiis cum. Et tenetur a incidunt.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(21, 'Voluptatem voluptatem totam et fugit et et autem.', 'Modi rerum sunt quia debitis et ipsam.', 'voluptatem-voluptatem-totam-et-fugit-et-et-autem', 'Non ipsum ea est magnam. Placeat explicabo est eum quaerat explicabo. Dolor quo omnis eaque sequi. Rerum quia distinctio id voluptatem aliquid a. Ea nam aut quia vitae. Sed quidem maxime et magni dolor enim placeat. Exercitationem et aut fugiat et quisquam pariatur. Eaque quis ratione in aut mollitia praesentium. Possimus inventore aut commodi est hic alias rerum. Debitis officiis in et. Facilis perferendis qui illo est debitis sint et. Eum voluptatem iure ut qui autem similique.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(22, 'Sapiente deleniti esse rerum.', 'Sed sit ut temporibus.', 'sapiente-deleniti-esse-rerum', 'Natus labore adipisci et possimus magni a eaque. Repellendus odit ut eveniet rerum dicta eos. Harum totam quia fugit saepe. Pariatur itaque quam autem provident quia. Vel quis nostrum delectus neque. Qui voluptatem in vero exercitationem unde non. Odio corrupti dolores laborum ut cupiditate nisi nobis. Debitis omnis perspiciatis et omnis voluptatem. Aut ipsam dolore quaerat dolore omnis laborum. Quo corrupti autem assumenda. Temporibus vitae ipsum repudiandae recusandae et atque veniam.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(23, 'Doloremque et aliquam dicta rerum veritatis.', 'Libero excepturi ut et sunt sed nihil officiis.', 'doloremque-et-aliquam-dicta-rerum-veritatis', 'Quis officia sint ratione sunt adipisci. Iure alias quo accusantium non saepe. Aut reiciendis necessitatibus ex cumque quibusdam. Nesciunt facere nostrum qui repellendus porro. Et quis et ratione. Necessitatibus illum at nam quasi quae deleniti rerum nostrum. Et accusantium rem nisi vero ut praesentium. Fuga quos numquam quam sit totam qui. Ratione voluptas magnam harum illum. Vel incidunt vel qui et tempore nisi. Aut odio porro et et. Reprehenderit a sint omnis harum dignissimos et aliquid. Laboriosam non quia ut repellendus.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(24, 'Sequi cupiditate sit neque et qui.', 'Et quas rerum in dicta.', 'sequi-cupiditate-sit-neque-et-qui', 'Est porro id facere quibusdam quo. Deleniti non ducimus voluptatem est voluptatem repudiandae. Excepturi exercitationem sed voluptatem. Et molestias exercitationem harum et qui aut ducimus. Autem molestiae iure quia vitae a. Blanditiis culpa amet iure dolorem. Quae commodi id omnis rerum aspernatur et nostrum. Qui voluptate beatae suscipit aut in. Tempora odit provident animi dignissimos distinctio consectetur magni voluptatem. Voluptatum commodi quam placeat iusto sapiente quaerat dicta enim. Aliquid quos libero itaque aliquam numquam.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(25, 'Vitae necessitatibus accusantium doloremque quod minima quidem.', 'Amet aut numquam ex voluptatem similique.', 'vitae-necessitatibus-accusantium-doloremque-quod-minima-quidem', 'Sapiente voluptatibus ea deserunt ea in numquam. Qui rem excepturi quis delectus fugit enim cumque nemo. Maxime quia asperiores voluptas laborum iusto ipsum cupiditate. Inventore est quasi aspernatur. Possimus animi assumenda asperiores dicta eligendi cupiditate unde. Soluta eum dicta ex ut quo. Voluptas est aut nemo vel recusandae. Quasi quisquam excepturi eum porro maxime eveniet. Incidunt corrupti suscipit consequatur repudiandae. Voluptatem molestiae numquam saepe eum error facere. Incidunt nulla occaecati possimus.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(26, 'Minus commodi voluptatibus incidunt enim.', 'Sapiente quia numquam libero facere.', 'minus-commodi-voluptatibus-incidunt-enim', 'Cupiditate dolor voluptates sint quisquam aliquid rerum qui blanditiis. In itaque sunt rerum omnis aliquam quod nostrum. Aliquam omnis quo consequatur voluptate id animi nesciunt nihil. Quod excepturi est enim sit eum. Vitae minima aut non dicta quis omnis. Dolor iusto animi sit molestiae numquam maxime. Velit optio et asperiores et aspernatur omnis et. Recusandae ut eum alias molestias ut. Aperiam quasi rem maiores consequatur. Eius ex enim similique molestiae autem. Quis voluptatibus qui velit maxime dolor veritatis impedit et. Qui totam ut temporibus voluptas at vero.', '2021-06-12 23:20:38', '2021-06-12 23:20:38'),
(27, 'sadasd', 'asdasda', 'sadasd', 'sadasd', '2021-06-13 00:02:13', '2021-06-13 00:02:13'),
(28, 'sadasd', 'asdasda', 'sadasd', 'sadasd', '2021-06-13 00:02:52', '2021-06-13 00:02:52'),
(29, 'sadasdasdadasd', 'asdasdsadldaspdaskmd', 'sadasdasdadasd', '<p><strong>asdknasdansdasd;asmd;</strong></p>\r\n<p style=\"text-align: right;\">dasdasdasd</p>\r\n<p style=\"text-align: center;\">asdadd</p>', '2021-06-13 00:10:24', '2021-06-13 00:10:24'),
(30, 'dsfsfsdf', 'sdfsdfsf', 'dsfsfsdf', '<p>sfdksfnkldsafnkfnkldsfs</p>', '2021-06-13 02:07:18', '2021-06-13 02:07:18'),
(31, 'sadasdasdasdad', 'asdasdasd', 'sadasdasdasdad', '<p>1a5s1d56a1sd1a65d1</p>', '2021-06-13 02:08:52', '2021-06-13 02:08:52'),
(32, 's12d5f1d+65f1s1f5sd1f5', 'sd1fs56d1fsf65s1f', 's12d5f1d65f1s1f5sd1f5', '<p>sd61fas165f1a561sd651asd561</p>', '2021-06-13 02:10:35', '2021-06-13 02:10:35');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(20, '2014_10_12_000000_create_users_table', 1),
(21, '2014_10_12_100000_create_password_resets_table', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2021_06_12_061645_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
