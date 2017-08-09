-- MySQL dump 10.16  Distrib 10.1.23-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: uca_padf
-- ------------------------------------------------------
-- Server version	10.1.23-MariaDB-9+deb9u1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classifications`
--

DROP TABLE IF EXISTS `classifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classifications`
--

LOCK TABLES `classifications` WRITE;
/*!40000 ALTER TABLE `classifications` DISABLE KEYS */;
INSERT INTO `classifications` VALUES (1,'Medio ambiente y derechos ligados a la tierra','2017-08-05 08:54:40','2017-08-05 08:54:40',NULL);
/*!40000 ALTER TABLE `classifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (1,'links_footer','<h3 class=\"ttu text--light-blue-50 fw5 f4 mb0\">¿Cómo Unirte a esta Iniciativa?</h3>\r\n<hr class=\"mw3 ba bo--light-blue-50 mb3\" align=\"left\">\r\n<ul class=\"left-0 list white w-80 tl ma0 pa0\">\r\n    <li class=\"f6 lh-copy relative pl3 fw3 silver\"><span class=\"icon-right-arrow text--light-blue-50 ma1 absolute top-0 left-0\"></span>Divulga tus actividades formativas en Derechos Humanos.</li>\r\n    <li class=\"f6 lh-copy relative pl3 fw3 silver\"><span class=\"icon-right-arrow text--light-blue-50 ma1 absolute top-0 left-0\"></span>Visibiliza tu organización afiliándote a nuestro director regional.</li>\r\n    <li class=\"f6 lh-copy relative pl3 fw3 silver\"><span class=\"icon-right-arrow text--light-blue-50 ma1 absolute top-0 left-0\"></span>Comparte investigaciones, informes o documentos de interés en el área de Derechos Humanos y Democracia.</li>\r\n    <li class=\"f6 lh-copy relative pl3 fw3 silver\"><span class=\"icon-right-arrow text--light-blue-50 ma1 absolute top-0 left-0\"></span>Aprende junto con otros y crea tus espacios para el intercambio colectivo de experiencias en Derechos Humanos.</li>\r\n</ul>','2017-08-02 08:46:52','2017-08-02 09:14:30',NULL,'Enlaces en Footer',NULL),(2,'welcome_home','<section class=\"pv5\" id=\"welcome\">\r\n        <div class=\"center w-80\">\r\n            <h1 class=\"f2 fw4 ttu text--blue tc\">Bienvenidos/as</h1>\r\n            <p class=\"tc center f5 fw3 lh-copy mv5 ph2 ph7-l tracked silver\">Al “Portal Centroamericano de Derechos Humanos y Democracia”, un espacio que promueve la divulgación e intercambio de información, investigación, análisis, reflexión, aprendizaje y promoción de redes, sobre derechos humanos y democracia en la región.</p>\r\n            <div class=\"tc\">\r\n                <a href=\"acerca-del-portal\" class=\"f5 bo--purple fw4 link ba bw1 ph4 pv2 text--purple hover-bg--purple hover-white bg-animate\">Más Información</a>\r\n            </div>\r\n\r\n        </div>\r\n    </section>','2017-08-04 06:21:50','2017-08-04 06:22:24',NULL,'Mensaje de Bienvenido en Sección de Inicio',NULL),(3,'new_documents','<div class=\"img-cover relative dn db-l\">\r\n    <img src=\"http://uca.padf.dev/storage/pages/inicio/hQ6jHTmJcv7QwtG3Z8SyniL38akBByVZIXjDQI5d.jpeg\" alt=\"\" class=\"w-100 h5\">\r\n    <div class=\"img-overlay\"></div>\r\n    <h1 class=\"white text-overlay\">Nueva Documentación <br>Disponible</h1>\r\n</div>','2017-08-05 10:37:05','2017-08-05 10:38:28',NULL,'Sección de Cabecera de Nuevos Documentos','Sección de Cabecera de Nuevos Documentos en la sección de Inicio'),(4,'acerca_del_portal_iniciativa','<section class=\"pv2\">\r\n        <div class=\"cf w-60-l w-80 center mv6-l\">\r\n            <div class=\"fl w-100 w-50-l dn db-l\">\r\n                <img src=\"/storage/pages/Acerca%20del%20Portal/r5K2ro5dguVd2WCbQD2FE2dNOqbZ1AVFsbge3LVM.jpeg\" alt=\"La Iniciativa\" class=\"w-80\">\r\n            </div>\r\n            <div class=\"fl w-100 w-50-l\">\r\n                <h2 class=\"f2 fw4 text--blue mb3\">La iniciativa</h2>\r\n                <hr class=\"ba bw1 bo--light-blue-50 w-20\" align=\"left\">\r\n                <p class=\"fw3 lh-copy f5\">Es fruto del esfuerzo realizado de manera conjunta por varias organizaciones, principalmente universidades de la región C.A. y otras entidades socias clave, con la visión de contar con un espacio virtual que disponga de recursos y herramientas que sean de utilidad en la gestión del conocimiento sobre los derechos humanos y democracia y que nos facilite compartir nuestras experiencias en la promoción y garantía de los derechos humanos en la región.</p>\r\n            </div>\r\n        </div>\r\n        <div class=\"w-100 db dn-ns\">\r\n                <img src=\"/storage/pages/Acerca%20del%20Portal/r5K2ro5dguVd2WCbQD2FE2dNOqbZ1AVFsbge3LVM.jpeg\" alt=\"La Iniciativa\">\r\n        </div>\r\n    </section>','2017-08-06 00:01:11','2017-08-06 00:09:30',NULL,'Acerca del Portal La Iniciativa',NULL),(5,'acerca_del_portal_porque_surgio','<section class=\"bg--light-blue pv4\">\r\n        <div class=\"center mw8\">\r\n            <h1 class=\"tc text--blue fw4 f2\">¿Por qué surgió?</h1>\r\n            <p class=\"tc silver fw4 f5-l f4 w-80 center\">La idea del portal surgió, a raíz de la identificación de los siguientes hallazgos:</p>\r\n            <div class=\"center cf\">\r\n                <div class=\"fl w-100 w-third-l ph4\">\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6-l pa4 h6 shadow-5\">\r\n                        <span class=\"icon-dipersion f-headline text--light-blue-50 fw5 tc center w-100 db\" ></span>\r\n                        <h4 class=\"tc fw4 text--blue f4 h3-l\">Dispersión de la Información</h4>\r\n                        <hr class=\"ba bo--light-blue-50 w-40\">\r\n                        <p class=\"tc silver lh-copy f6-l f5 h3 mb4\">Dispersión de la información, datos y recursos sobre derechos humanos en la red.</p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"fl w-100 w-third-l ph4\">\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6-l pa4 h6 shadow-5\">\r\n                        <span class=\"icon-existencia f-headline text--light-blue-50 fw5 tc center w-100 db\" ></span>\r\n                        <h4 class=\"tc fw4 text--blue f4 h3-l\">Existencia de formación sobre DDHH</h4>\r\n                        <hr class=\"ba bo--light-blue-50 w-40\">\r\n                        <p class=\"tc silver lh-copy f6-l f5 h3 mb4\">Existencia de formación sobre DDHH, en su mayoría en modalidad presencial, asistemática y poco compartida.</p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"fl w-100 w-third-l ph4\">\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6-l pa4 h6 shadow-5\">\r\n                        <span class=\"icon-intercambio f-headline text--light-blue-50 fw5 tc center w-100 db\" ></span>\r\n                        <h4 class=\"tc fw4 text--blue f4 h3-l\">Necesidad de espacios de intercambio</h4>\r\n                        <hr class=\"ba bo--light-blue-50 w-40\">\r\n                        <p class=\"tc silver lh-copy f6-l f5 h3 mb4\">Espacios comunitarios que faciliten el conocimiento e intercambio de experiencias sobre derechos humanos en la región </p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>','2017-08-06 00:11:05','2017-08-06 00:11:05',NULL,'Acerca del Portal ¿Por qué surgio?',NULL),(6,'acerca_del_portal_beneficios','<section class=\"pv4\">\r\n        <div class=\"center w-50-l w-80\">\r\n            <h1 class=\"tc text--blue fw4 f2\">¿Te interesa sumarte a la iniciativa?</h1>\r\n            <p class=\"tc silver fw4 f5\">Te colocamos algunos beneficios para los miembros afiliados</p>\r\n            <div class=\"cf mv5\">\r\n                <div class=\"fl w-100 w-50-l mb5\">\r\n                    <img src=\"/storage/pages/Acerca%20del%20Portal/oDV4lr6BiOFXACpWbUm2NLmoqOdIuGBRywtI1baJ.jpeg\" alt=\"Visibilidad\" class=\"w-80-l w-100\">\r\n                </div>\r\n                <div class=\"fl w-100 w-50-l\">\r\n                    <span class=\"icon-visibilidad silver f1 ma0 pa0\"></span>\r\n                    <h2 class=\"f2 fw3-l fw5 text--blue mv2\">Visibilidad</h2>\r\n                    <hr class=\"ba bo--light-blue-50 w-10\" align=\"left\">\r\n                    <p class=\"fw4 lh-copy f5 w-80-l w-100 text--light-blue-10\">El portal permite visibilizar a nivel regional a las organizaciones que conforman la red, facilitando suvinculación con otras entidades especializadas en derechos humanos.</p>\r\n                </div>\r\n            </div>\r\n            <div class=\"cf mv5\">\r\n                <div class=\"fl w-100 w-50-l\">\r\n                    <div class=\"w-80-l\">\r\n                        <span class=\"icon-divulgar silver f1 ma0 pa0 db tr\"></span>\r\n                        <h2 class=\"f2 fw3-l fw5 text--blue mv2 tr\">Divulgar</h2>\r\n                        <hr class=\"ba bo--light-blue-50 w-20\" align=\"right\">\r\n                        <p class=\"fw4 lh-copy f5 text--light-blue-10 tr\">Las organizaciones afiliadas podrán divulgar y promocionar sus actividades formativas, brindando una mayor cobertura, difusión e impacto a nivel de la región.</p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"fl w-100 w-50-l\">\r\n                    <img src=\"/storage/pages/Acerca%20del%20Portal/nD0lczLOnn3tZ3JGUKKU4TOMKsoP6T4WnOMtJpBG.jpeg\" alt=\"Divulgar\" class=\"w-80-l w-100\">\r\n                </div>\r\n            </div>\r\n            <div class=\"cf mv5\">\r\n                <div class=\"fl w-100 w-50-l mb5\">\r\n                    <img src=\"/storage/pages/Acerca%20del%20Portal/Q6BMAw59LM6sYif29Oryb5HJoQFhlQ3YY7Z8LChO.jpeg\" alt=\"Crear y Participar\" class=\"w-80-l w-100\">\r\n                </div>\r\n                <div class=\"fl w-100 w-50-l\">\r\n                    <span class=\"icon-crear silver f1 ma0 pa0\"></span>\r\n                    <h2 class=\"f2 fw3-l fw5 text--blue mv2\">Crear y participar</h2>\r\n                    <hr class=\"ba bo--light-blue-50 w-10\" align=\"left\">\r\n                    <p class=\"fw4 lh-copy f5 w-80-l w-100 text--light-blue-10\">Todos los usuarios pueden tener acceso a todas las herramientas e información del portal, teniendo la oportunidad de crear y participar en comunidades de práctica, cargar y descargar documentación del repositorio de información en derechos humanos; tener acceso a los cursos, seminarios, talleres, webinars disponbibles; entre otros.</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>','2017-08-06 01:08:01','2017-08-06 01:10:41',NULL,'Acerca del Portal Beneficios',NULL),(7,'acerca_del_portal_organizaciones','<div class=\"center w-50-l w-80 tc\">\r\n    <h1 class=\"tc text--blue fw4 f2\">Organizaciones que coordinan esta iniciativa</h1>\r\n    <p class=\"tc silver fw4 f5 lh-copy\">El portal ha sido desarrollado en el marco del Proyecto Regional de Derechos Humanos y Democracia, con el apoyo de la Fundación Panamericana para el Desarrollo (PADF, por sus siglas en inglés) y la Agencia de los Estados Unidos para el Desarrollo Internacional (USAID).</p>\r\n</div>','2017-08-06 02:14:29','2017-08-08 20:14:47',NULL,'Acerca del Portal Organizaciones',NULL),(8,'acerca_del_portal_galeria','<section class=\"pv4\">\r\n        <div class=\"center w-60-l w-80\">\r\n            <h1 class=\"tc text--blue fw4 f2\">Galería</h1>\r\n            <div class=\"owl-carousel owl-theme center\" id=\"owl-galery\" data-slider-id=\"1\">\r\n                <img class=\"owl-lazy img-carousel tc\" data-src=\"./images/crear.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel tc\" data-src=\"./images/divulgar.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/visibilidad.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/dddd.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/crear.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/crear.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/crear.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/crear.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/crear.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/crear.jpg\" alt=\"\">\r\n            </div>\r\n            <div class=\"owl-thumbs\" data-slider-id=\"1\">\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy tc\" src=\"./images/crear.jpg\" alt=\"\">\r\n                </button>\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy\" src=\"./images/divulgar.jpg\" alt=\"\">\r\n                </button>\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy\" src=\"./images/visibilidad.jpg\" alt=\"\">\r\n                </button>\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy\" src=\"./images/dddd.jpg\" alt=\"\">\r\n                </button>\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy\" src=\"./images/crear.jpg\" alt=\"\">\r\n                </button>\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy\" src=\"./images/crear.jpg\" alt=\"\">\r\n                </button>\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy\" src=\"./images/crear.jpg\" alt=\"\">\r\n                </button>\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy\" src=\"./images/crear.jpg\" alt=\"\">\r\n                </button>\r\n            </div>\r\n        </div>\r\n    </section>','2017-08-06 03:40:55','2017-08-06 03:40:55',NULL,'Acerca del Portal Galería',NULL),(9,'repositorio_ddhh_introduccion','<section class=\"pv4\">\r\n        <div class=\"center w-60-l w-80\">\r\n            <h1 class=\"tc text--blue fw4 f2\">¿Cómo utilizar el repositorio?</h1>\r\n            <div class=\"cf mv5\">\r\n                <div class=\"fl w-100 w-50-l dn db-l\">\r\n                    <img src=\"/storage/pages/Repositorio/aNw7hIEUmNehynop5aysxNGKFLSZ7KgCd8sOx1Hz.jpeg\" alt=\"Explora\" class=\"w-80\">\r\n                </div>\r\n                <div class=\"fl w-100 w-50-l\">\r\n                    <p class=\"mt3\">\r\n                        <span class=\"icon-explora silver f1\"></span>\r\n                    </p>\r\n                    <h2 class=\"f2 fw3 text--blue mv2\">Explora</h2>\r\n                    <hr class=\"ba bo--light-blue-50 w-10\" align=\"left\">\r\n                    <p class=\"fw4 lh-copy f5 w-80-l w-100 text--light-blue-10 mb5\">Si tu interés estriba en la investigación y exploración de documentación. A través del motor de búsqueda podrás identificar fácilmente el material ya sea por país, filtros temáticos en derechos humanos, año, autor u otros filtros, de acuerdo a tu necesidad.</p>\r\n                    <a href=\"#search\" class=\"f5 bo--purple fw4 link ba bw1 ph4 pv2 text--purple hover-bg--purple hover-white bg-animate\">Iniciar búsqueda</a>\r\n                </div>\r\n            </div>\r\n            <div class=\"cf mv5\">\r\n                <div class=\"fl w-100 w-50-l\">\r\n                    <div class=\"w-80-l w-100\">\r\n                        <p class=\"mt3\">\r\n                            <span class=\"icon-comparte silver f1 ma0 pa0 db tr\"></span>\r\n                        </p>\r\n                        <h2 class=\"f2 fw3 text--blue mv2 tr\">Comparte</h2>\r\n                        <hr class=\"ba bo--light-blue-50 w-20\" align=\"right\">\r\n                        <p class=\"fw4 lh-copy f5 text--light-blue-10 tr mb5\">Si lo que te atrae es compartir con otros. También en este espacio puedes contribuir con investigadores, académicos, estudiantes u otras personas interesadas en derechos humanos, subiendo materiales que resulten de interés para la difusión y conocimiento a nivel de la región.</p>\r\n                        <p class=\"tr\">\r\n                            <a href=\"/documento/crear\" class=\"f5 bo--purple fw4 link ba bw1 ph4 pv2 text--purple hover-bg--purple hover-white bg-animate\">Comienza a compartir</a>\r\n                        </p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"fl w-100 w-50-l dn db-l\">\r\n                    <img src=\"/storage/pages/Repositorio/3K5WheP0RpABIQZTPhCFOjordt6DgwIqJwNfrxPq.jpeg\" alt=\"Comparte\" class=\"w-80\">\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>','2017-08-06 03:42:48','2017-08-06 11:34:39',NULL,'Repositorio DDHH ¿Cómo Utilizarlo?',NULL),(10,'organizaciones_introduccion','<section class=\"pv5\">\r\n        <div class=\"center w-30-l w-80 tc\">\r\n            <span class=\"icon-search-map f1 silver\"></span>\r\n            <h1 class=\"text--blue f2 fw5 mb5\">¿Cómo usar el mapa?</h1>\r\n            <p class=\"silver f4 f5-l lh-copy\">Con el cursor recorra la región Centroamericana. Al hacer clic sobre un país, se desplegará el número de organizaciones registradas en el directorio, haciendo un segundo clic sobre el resultado se desplegará el directorio de organizaciones del país correspondiente.</p>\r\n            <p class=\"silver f4 f5-l lh-copy mb5\">Esta página igualmente dispone de herramientas de búsqueda especializada por áreas temáticas de derechos humanos, como, por ejemplo: derechos de las mujeres, comunidad LGTBI, entre otros.</p>\r\n            <a href=\"/organizacion/crear\" class=\"f5-l f4 fw4 tc bo--purple link ba bw1 pv2 ph4 text--purple hover-bg--purple hover-white bg-animate\">Inscribe tu Organización</a>\r\n        </div>\r\n    </section>','2017-08-06 03:47:06','2017-08-06 11:36:03',NULL,'Organizaciones ¿Cómo usar el mapa?',NULL),(11,'formacion_introduccion','<section class=\"pv5\">\r\n    <div class=\"w-60-l w-80 center tc\">\r\n        <h1 class=\"f2 fw5 text--blue\">¿Cómo crear contenido formativo?</h1>\r\n        <p class=\"lh-copy f5 silver ma4 w-50-l w-80 tc center\">\r\n            Si lo que te atrae es compartir con otros. También en este espacio puedes contribuir con investigadores, académicos, estudiantes u otras personas interesadas en derechos humanos, subiendo materiales que resulten de interés para la difusión y conocimiento a nivel de la región.\r\n        </p>\r\n        <a href=\"/formacion/crear\" class=\"f5 fw4 tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate ph5-l ph2+\">Inscribir contenido Formativo</a>\r\n    </div>\r\n</section>','2017-08-06 03:49:18','2017-08-06 11:36:19',NULL,'Formación ¿Cómo crear contenido?',NULL);
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'El Salvador','2017-08-04 08:56:54','2017-08-04 08:56:54',NULL),(2,'Guatemala','2017-08-04 08:57:00','2017-08-04 08:57:00',NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `covers`
--

DROP TABLE IF EXISTS `covers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `covers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `section` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inicio',
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `covers`
--

LOCK TABLES `covers` WRITE;
/*!40000 ALTER TABLE `covers` DISABLE KEYS */;
INSERT INTO `covers` VALUES (1,'covers/August2017/d2gv4E2GzZ1G16COyGf7.png','Unete a esta iniciativa','2017-08-02 20:46:59','2017-08-02 20:49:06',NULL,'inicio',NULL),(2,'covers/August2017/rA1PmfVoi1DPaisdTDm4.jpg','Acerca del Portal','2017-08-02 22:28:26','2017-08-02 22:28:26',NULL,'acerca-del-portal','El Portal Centroamericano de Derechos Humanos y Democracia es un espacio virtual que promueve la divulgación e intercambio de información, investigación, análisis, reflexión, aprendizaje y promoción de redes, sobre derechos humanos y democracia de la región.'),(3,'covers/August2017/nC8tUQj7Qh06liV6RjaG.jpg','Repositorio de Información','2017-08-02 22:38:23','2017-08-02 22:38:23',NULL,'repositorio-ddhh','En este espacio encontrarás documentación diversa vinculada a los derechos humanos: estudios, investigaciones, documentales, informes, publicaciones; entre otros, procedente de países de la región C.A.'),(4,'covers/August2017/FcuXLlvPIu6L8EI34hQI.jpg','Organizaciones Afiliadas','2017-08-02 22:41:13','2017-08-02 22:41:13',NULL,'organizaciones-afiliadas','En este espacio encontrarás organizaciones dedicadas a la defensa y protección de derechos humanos en la región de Centroamérica, facilitando datos de contacto e información relacionada con las áreas prioritarias de trabajo.'),(5,'covers/August2017/hW8PkleJg4pSEHACVwMX.jpg','Formación en DDHH','2017-08-02 22:43:19','2017-08-02 22:43:19',NULL,'formacion','En este espacio encontrarás un catálogo abierto de formación sobre derechos humanos en la región, agrupado en diversas modalidades: presencial, semi-presencial y virtual, que han sido compartidas por las organizaciones aﬁliadas a esta iniciativa.'),(6,'covers/August2017/RMTXJtbbxlx6378nibUO.jpg','Contáctenos','2017-08-02 22:44:53','2017-08-02 22:44:53',NULL,'contactenos','En este espacio encontrarás documentación diversa vinculada a los derechos humanos: estudios, investigaciones, documentales, informes, publicaciones; entre otros, procedente de países de la región C.A.');
/*!40000 ALTER TABLE `covers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'author_id','text','Author',1,0,1,1,0,1,'',2),(3,1,'category_id','text','Category',1,0,1,1,1,0,'',3),(4,1,'title','text','Title',1,1,1,1,1,1,'',4),(5,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',5),(6,1,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(7,1,'image','image','Post Image',0,1,1,1,1,1,'\n{\n    \"resize\": {\n        \"width\": \"1000\",\n        \"height\": \"null\"\n    },\n    \"quality\": \"70%\",\n    \"upsize\": true,\n    \"thumbnails\": [\n        {\n            \"name\": \"medium\",\n            \"scale\": \"50%\"\n        },\n        {\n            \"name\": \"small\",\n            \"scale\": \"25%\"\n        },\n        {\n            \"name\": \"cropped\",\n            \"crop\": {\n                \"width\": \"300\",\n                \"height\": \"250\"\n            }\n        }\n    ]\n}',7),(8,1,'slug','text','slug',1,0,1,1,1,1,'\n{\n    \"slugify\": {\n        \"origin\": \"title\",\n        \"forceUpdate\": true\n    }\n}',8),(9,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,'',9),(10,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,'',10),(11,1,'status','select_dropdown','status',1,1,1,1,1,1,'\n{\n    \"default\": \"DRAFT\",\n    \"options\": {\n        \"PUBLISHED\": \"published\",\n        \"DRAFT\": \"draft\",\n        \"PENDING\": \"pending\"\n    }\n}',11),(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'',12),(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',13),(14,2,'id','number','id',1,0,0,0,0,0,NULL,1),(16,2,'title','text','Título',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',2),(17,2,'excerpt','text_area','Descripción',0,1,1,1,1,1,NULL,4),(18,2,'body','code_editor','Contenido',1,0,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',5),(23,2,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,8),(24,2,'updated_at','timestamp','Actualizado',0,0,0,0,0,0,NULL,9),(26,3,'id','number','id',1,0,0,0,0,0,'',1),(27,3,'name','text','name',1,1,1,1,1,1,'',2),(28,3,'email','text','email',1,1,1,1,1,1,'',3),(29,3,'password','password','password',1,0,0,1,1,0,'',4),(30,3,'remember_token','text','remember_token',0,0,0,0,0,0,'',5),(31,3,'created_at','timestamp','created_at',0,1,1,0,0,0,'',6),(32,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(33,3,'avatar','image','avatar',0,1,1,1,1,1,'',8),(34,5,'id','number','id',1,0,0,0,0,0,'',1),(35,5,'name','text','name',1,1,1,1,1,1,'',2),(36,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(37,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(38,4,'id','number','id',1,0,0,0,0,0,'',1),(39,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(40,4,'order','text','order',1,1,1,1,1,1,'{\"default\":1}',3),(41,4,'name','text','name',1,1,1,1,1,1,'',4),(42,4,'slug','text','slug',1,1,1,1,1,1,'',5),(43,4,'created_at','timestamp','created_at',0,0,1,0,0,0,'',6),(44,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(45,6,'id','number','id',1,0,0,0,0,0,'',1),(46,6,'name','text','Name',1,1,1,1,1,1,'',2),(47,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(48,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(49,6,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(50,1,'seo_title','text','seo_title',0,1,1,1,1,1,'',14),(51,1,'featured','checkbox','featured',1,1,1,1,1,1,'',15),(52,3,'role_id','text','role_id',1,1,1,1,1,1,'',9),(59,8,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(60,8,'name','text','Nombre',1,1,1,1,1,1,NULL,2),(61,8,'description','text_area','Descripción',0,1,1,1,1,1,NULL,3),(62,8,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,4),(63,8,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,5),(64,8,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,6),(65,9,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(66,9,'title','text','Título',1,1,1,1,1,1,NULL,2),(67,9,'author','text','Autor',1,1,1,1,1,1,NULL,3),(68,9,'published_date','date','Fecha de Publicación',1,1,1,1,1,1,NULL,4),(69,9,'description','text','Descripción',1,1,1,1,1,1,NULL,5),(70,9,'long_description','text_area','Descripción Larga',1,1,1,1,1,1,NULL,6),(71,9,'country_id','select_dropdown','País',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',7),(72,9,'organization_id','select_dropdown','Organización',0,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',8),(74,9,'keywords','text_area','Palabras Clave',0,1,1,1,1,1,NULL,10),(75,10,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(76,10,'key','text','Llave',0,1,1,1,1,1,NULL,2),(77,10,'value','code_editor','Valor',0,1,1,1,1,1,NULL,3),(78,10,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,4),(79,10,'updated_at','timestamp','Creado',0,1,1,0,0,0,NULL,5),(80,10,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,6),(87,12,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(88,12,'key','text','Llave',1,1,1,1,1,1,NULL,4),(89,12,'value','code_editor','Valor',1,0,1,1,1,1,NULL,5),(90,12,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,6),(91,12,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,7),(92,12,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,8),(93,12,'name','text','Nombre',1,1,1,1,1,1,NULL,2),(94,12,'description','text_area','Descripción',0,1,1,1,1,1,NULL,3),(95,2,'cover','image','Cover',1,0,1,1,1,1,NULL,6),(96,2,'text_cover','text','Text de Cover',1,0,1,1,1,1,NULL,7),(97,2,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,10),(98,2,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',3),(99,13,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(100,13,'image','image','Imagen',1,1,1,1,1,1,NULL,2),(102,13,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,6),(103,13,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,7),(104,13,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,8),(105,13,'section','text','Sección',1,1,1,1,1,1,NULL,3),(106,13,'title','text','Título',0,1,1,1,1,1,NULL,4),(107,13,'description','text_area','Descripción',0,1,1,1,1,1,NULL,5),(108,14,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(109,14,'name','text','Nombre',1,1,1,1,1,1,NULL,2),(110,14,'icon','text','Icono',0,1,1,0,1,0,NULL,3),(111,14,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,4),(112,14,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,5),(113,14,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,6),(114,15,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(115,15,'name','text','Nombre',1,1,1,1,1,1,NULL,2),(116,15,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,3),(117,15,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,4),(118,15,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,5),(119,16,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(120,16,'title','text','Título',1,1,1,1,1,1,NULL,2),(121,16,'duration','text','Duración',1,1,1,1,1,1,NULL,3),(122,16,'place','text_area','Lugar',1,1,1,1,1,1,NULL,4),(123,16,'since','date','Desde',1,1,1,1,1,1,'{\"format\":\"d-mm-Y\"}',5),(124,16,'until','date','Hasta',1,1,1,1,1,1,NULL,6),(125,16,'public','text','Dirigido a',1,1,1,1,1,1,NULL,7),(126,16,'organizer','text','Organización',1,1,1,1,1,1,NULL,17),(127,16,'representative','text','Representante de Organización',1,1,1,1,1,1,NULL,16),(128,16,'position','text','Cargo de Representante',1,1,1,1,1,1,NULL,18),(129,16,'email','text','Correo Electrónico',0,0,1,1,1,1,NULL,8),(130,16,'website','text','Sitio Web',0,0,1,1,1,1,NULL,9),(131,16,'link','text','Enlace de Capacitación',1,0,1,1,1,1,NULL,11),(132,16,'active','checkbox','Activo',1,1,1,1,1,1,NULL,10),(133,16,'description','text_area','Descripción',1,1,1,1,1,1,NULL,12),(134,16,'modality_id','select_dropdown','Modalidad',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',13),(135,16,'country_id','select_dropdown','País',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',14),(136,16,'formation_type_id','select_dropdown','Tipo de Formación',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',15),(137,16,'created_at','timestamp','Creado',0,0,0,0,0,0,NULL,19),(138,16,'updated_at','timestamp','Actualizado',0,0,0,0,0,0,NULL,20),(139,16,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,21),(140,17,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(141,17,'name','text','Nombre',1,1,1,1,1,1,NULL,2),(142,17,'created_at','timestamp','Creado',0,1,1,1,0,1,NULL,3),(143,17,'updated_at','timestamp','Actualizado',0,0,0,0,0,0,NULL,4),(144,17,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,5),(145,20,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(146,20,'name','text','Nombre',1,1,1,1,1,1,NULL,2),(147,20,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,3),(148,20,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,4),(149,20,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,5),(150,21,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(151,21,'name','text','Nombre',1,1,1,1,1,1,NULL,2),(152,21,'phone','text','Teléfono',1,0,1,1,1,1,NULL,3),(153,21,'email','text','Correo Electrónico',1,1,1,1,1,1,NULL,4),(154,21,'description','text_area','Descripción',1,0,1,1,1,1,NULL,5),(155,21,'classification_id','select_dropdown','Clasificación Contemporánea',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"page_slug\":\"admin/classifications\"}}',6),(156,21,'country_id','select_dropdown','País',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',7),(157,21,'website','text','Sitio Web',1,1,1,1,1,1,NULL,9),(159,21,'latitude','text','Latitud',0,0,1,1,1,1,NULL,10),(160,21,'longitude','text','Longitud',0,0,1,1,1,1,NULL,11),(161,21,'image','image','Imagen',1,1,1,1,1,1,NULL,12),(162,21,'active','checkbox','Activo',1,1,1,1,1,1,NULL,13),(163,21,'applicant','text','Nombre de Solicitante',1,0,1,1,1,1,NULL,14),(164,21,'institution','text','Institución Solicitante',1,0,1,1,1,1,NULL,15),(165,21,'position','text','Posición de Solicitante',1,0,1,1,1,1,NULL,16),(166,21,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,17),(167,21,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,18),(168,21,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,19),(169,21,'workareas','select_multiple','Áreas de Trabajo',0,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',8),(170,9,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,11),(171,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,12),(172,9,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,NULL,13),(173,9,'topics','select_multiple','Categorización Tematica',0,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',9),(174,9,'active','checkbox','Activo',1,1,1,1,1,1,NULL,15),(175,9,'file','file','Documento',1,1,1,1,1,1,NULL,14),(176,22,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(177,22,'name','text','Nombre',1,1,1,1,1,1,NULL,2),(178,22,'image','image','Logo',1,1,1,1,1,1,NULL,3),(179,22,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,4),(180,22,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,5),(181,22,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,6),(182,23,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(183,23,'name','text','Nombre',1,1,1,1,1,1,NULL,2),(184,23,'image','image','Imagen',1,1,1,1,1,1,NULL,3),(185,23,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,4),(186,23,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,5),(187,23,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,6);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','','',1,0,'2017-08-02 04:09:47','2017-08-02 04:09:47'),(2,'pages','pages','Página','Páginas','voyager-file-text','App\\Page',NULL,NULL,1,1,'2017-08-02 04:09:47','2017-08-02 09:28:24'),(3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','','',1,0,'2017-08-02 04:09:48','2017-08-02 04:09:48'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category','','',1,0,'2017-08-02 04:09:48','2017-08-02 04:09:48'),(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu','','',1,0,'2017-08-02 04:09:48','2017-08-02 04:09:48'),(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role','','',1,0,'2017-08-02 04:09:48','2017-08-02 04:09:48'),(8,'work_areas','work-areas','Área de Trabajo','Áreas de Trabajo','voyager-treasure','App\\WorkArea',NULL,NULL,1,0,'2017-08-02 04:35:57','2017-08-02 04:38:19'),(9,'documents','documents','Document','Documents',NULL,'App\\Document',NULL,NULL,1,0,'2017-08-02 05:07:01','2017-08-02 05:07:01'),(10,'content','content','Contenido','Contenidos','voyager-browser','App\\Content',NULL,NULL,1,1,'2017-08-02 08:29:46','2017-08-02 08:29:46'),(12,'contents','contents','Contenido','Contenidos','voyager-browser','App\\Content',NULL,NULL,1,1,'2017-08-02 08:39:06','2017-08-02 08:44:52'),(13,'covers','covers','Cover de Sección','Covers de Secciones','voyager-images','App\\Cover',NULL,NULL,1,0,'2017-08-02 20:42:36','2017-08-02 20:42:36'),(14,'modalities','modalities','Modalidad','Modalidades',NULL,'App\\Modality',NULL,NULL,1,0,'2017-08-04 06:43:09','2017-08-04 06:43:09'),(15,'formation_types','formation-types','Tipo de Formación','Tipos de Formación',NULL,'App\\FormationType',NULL,NULL,1,0,'2017-08-04 06:57:22','2017-08-04 06:57:22'),(16,'formations','formations','Capacitación','Capacitaciones',NULL,'App\\Formation',NULL,NULL,1,0,'2017-08-04 09:03:38','2017-08-04 09:03:38'),(17,'topics','topics','Categoría Tematica','Categorías Tematicas',NULL,'App\\Topic',NULL,NULL,1,0,'2017-08-05 07:53:37','2017-08-05 07:53:37'),(20,'classifications','classifications','Clasificación Contemporánea','Clasificaciones Contemporáneas',NULL,'App\\Classification',NULL,NULL,1,0,'2017-08-05 08:51:40','2017-08-05 08:52:31'),(21,'organizations','organizations','Organización','Organizaciones',NULL,'App\\Organization',NULL,NULL,1,0,'2017-08-05 09:07:04','2017-08-05 09:53:08'),(22,'founders','founders','Organización Fundadora','Organizaciones Fundadoras',NULL,'App\\Founder',NULL,NULL,1,0,'2017-08-08 20:09:53','2017-08-08 20:09:53'),(23,'galleries','galleries','Galería','Galerías','voyager-photos','App\\Gallery',NULL,NULL,1,0,'2017-08-08 20:22:58','2017-08-08 20:22:58');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_topics`
--

DROP TABLE IF EXISTS `document_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_topics` (
  `document_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_topics`
--

LOCK TABLES `document_topics` WRITE;
/*!40000 ALTER TABLE `document_topics` DISABLE KEYS */;
INSERT INTO `document_topics` VALUES (1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `document_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `published_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `topics` int(11) DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `file` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name_applicant` text COLLATE utf8_unicode_ci NOT NULL,
  `institution` text COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,'Tratado de Paz de la Republica de El Salvador','Juan Manuel Cañas','1993-12-01','Un Tratado de Paz es un acuerdo entre dos o más partes hostiles, por lo general países o gobiernos, que culmina formalmente un estado de guerra entre las partes. Es diferente de un armisticio','Un Tratado de Paz es un acuerdo entre dos o más partes hostiles, por lo general países o gobiernos, que culmina formalmente un estado de guerra entre las partes. Es diferente de un armisticio, que',1,7,NULL,'sdfsdf','2017-08-05 10:32:00','2017-08-06 11:48:18',NULL,1,'documents/August2017/fXy5Ep7XXcLF72hVRpEp.pdf','','','');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formation_types`
--

DROP TABLE IF EXISTS `formation_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formation_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formation_types`
--

LOCK TABLES `formation_types` WRITE;
/*!40000 ALTER TABLE `formation_types` DISABLE KEYS */;
INSERT INTO `formation_types` VALUES (1,'Webinars','2017-08-04 07:03:42','2017-08-04 07:03:42',NULL);
/*!40000 ALTER TABLE `formation_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formations`
--

DROP TABLE IF EXISTS `formations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `place` text COLLATE utf8_unicode_ci NOT NULL,
  `since` date NOT NULL,
  `until` date NOT NULL,
  `public` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `organizer` text COLLATE utf8_unicode_ci NOT NULL,
  `representative` text COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `modality_id` int(10) unsigned NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `formation_type_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formations`
--

LOCK TABLES `formations` WRITE;
/*!40000 ALTER TABLE `formations` DISABLE KEYS */;
INSERT INTO `formations` VALUES (1,'Capacitación: programa de gestión medio ambiental','16 Horas','Salón Audiovisuales, Universidad Centroamericana José Simeón Cañas','2017-07-10','2017-07-11','Todo Publico','Universidad Simeon Cañas','Lic. Juan Rodriguez','Profesor de Fisica Cuantica','example@uca.edu.sv','www.uca.com.sv','http://laravel.com',1,'El programa es desarrollado por la Universidad Centroamericana “José Simeón Cañas” (UCA) y tiene como objetivo proporcionar a los participantes una visión global, actualizada e integradora sobre los conocimientos, habilidades y actitudes.',1,1,1,'2017-08-04 09:12:55','2017-08-10 05:27:24',NULL);
/*!40000 ALTER TABLE `formations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `founders`
--

DROP TABLE IF EXISTS `founders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `founders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `founders`
--

LOCK TABLES `founders` WRITE;
/*!40000 ALTER TABLE `founders` DISABLE KEYS */;
INSERT INTO `founders` VALUES (1,'Universidad Centroamericana \"José Simeón Cañas\" (UCA)','founders/August2017/cTiItRWH5PUnLUsKbYt9.png','2017-08-08 20:11:18','2017-08-08 20:11:18',NULL);
/*!40000 ALTER TABLE `founders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Imagen 1','galleries/August2017/Tdr4LbHoSyHExw5IW8oF.png','2017-08-08 20:24:32','2017-08-08 20:24:32',NULL),(2,'Imagen 2','galleries/August2017/rZMQhoEMRDw2Ec87jVEI.jpg','2017-08-08 20:26:23','2017-08-08 20:26:23',NULL),(3,'imagen 3','galleries/August2017/dHfFKiDtrKfO2TEqmgJc.jpg','2017-08-08 20:26:35','2017-08-08 20:26:35',NULL);
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','/admin','_self','voyager-boat','#000000',NULL,1,'2017-08-02 04:09:52','2017-08-02 08:02:57',NULL,''),(2,1,'Media','/admin/media','_self','voyager-images',NULL,NULL,7,'2017-08-02 04:09:52','2017-08-05 07:54:36',NULL,NULL),(4,1,'Usuarios','/admin/users','_self','voyager-person','#000000',NULL,3,'2017-08-02 04:09:52','2017-08-02 08:03:04',NULL,''),(7,1,'Roles','/admin/roles','_self','voyager-lock','#000000',NULL,2,'2017-08-02 04:09:53','2017-08-02 04:30:40',NULL,''),(8,1,'Herramientas','','_self','voyager-tools','#000000',NULL,8,'2017-08-02 04:09:53','2017-08-05 07:54:36',NULL,''),(9,1,'Generador de Menú','/admin/menus','_self','voyager-list','#000000',8,1,'2017-08-02 04:09:53','2017-08-05 07:54:30',NULL,''),(10,1,'Base de Datos','/admin/database','_self','voyager-data','#000000',8,2,'2017-08-02 04:09:53','2017-08-05 07:54:30',NULL,''),(11,1,'Configuraciones','/admin/settings','_self','voyager-settings','#000000',NULL,9,'2017-08-02 04:09:53','2017-08-05 07:54:36',NULL,''),(12,1,'Áreas de Trabajo','/admin/work-areas','_self','voyager-treasure','#0a0a0a',NULL,4,'2017-08-02 04:28:33','2017-08-02 04:34:58',NULL,''),(13,1,'Documentos','/admin/documents','_self','voyager-file-text','#000000',42,1,'2017-08-02 05:07:28','2017-08-05 07:49:35',NULL,''),(14,2,'Acerca del Portal','/acerca-del-portal','_self',NULL,'#000000',NULL,1,'2017-08-02 05:16:17','2017-08-04 09:44:21',NULL,''),(15,2,'Repositorio DDHH','/repositorio-ddhh','_self',NULL,'#000000',NULL,2,'2017-08-02 05:16:41','2017-08-04 09:44:21',NULL,''),(16,2,'Organizaciones Afiliadas','/organizaciones-afiliadas','_self',NULL,'#000000',NULL,3,'2017-08-02 05:17:01','2017-08-04 09:43:00',NULL,''),(18,2,'Comunidad de Práctica','http://foro.uca.iw.sv/','_blank',NULL,'#000000',NULL,5,'2017-08-02 05:17:53','2017-08-04 09:44:52',NULL,''),(19,3,'Contáctenos','/contactenos','_self',NULL,'#000000',NULL,17,'2017-08-02 05:47:22','2017-08-02 05:47:22',NULL,''),(20,3,'Buscar','/buscar','_self',NULL,'#000000',NULL,18,'2017-08-02 05:47:39','2017-08-02 05:47:39',NULL,''),(21,4,'Inicio','/','_self',NULL,'#000000',NULL,19,'2017-08-02 08:04:34','2017-08-02 08:04:34',NULL,''),(22,4,'Acerca del Portal','/acerca-del-portal','_self',NULL,'#000000',NULL,20,'2017-08-02 08:05:00','2017-08-02 08:05:00',NULL,''),(23,4,'Repositorio DDHH','/repositorio-ddhh','_self',NULL,'#000000',NULL,21,'2017-08-02 08:05:19','2017-08-02 08:05:19',NULL,''),(24,4,'Organizaciones Afiliadas','/organizaciones-afiliadas','_self',NULL,'#000000',NULL,22,'2017-08-02 08:05:37','2017-08-02 08:05:37',NULL,''),(25,4,'Formación','/formacion','_self',NULL,'#000000',NULL,23,'2017-08-02 08:05:47','2017-08-02 08:05:47',NULL,''),(26,4,'Comunidad de Práctica','http://foro.uca.iw.sv','_self',NULL,'#000000',NULL,24,'2017-08-02 08:06:17','2017-08-02 08:06:17',NULL,''),(27,4,'Contáctenos','/contactenos','_self',NULL,'#000000',NULL,25,'2017-08-02 08:06:29','2017-08-02 08:06:29',NULL,''),(28,4,'Buscar','/buscar','_self',NULL,'#000000',NULL,26,'2017-08-02 08:06:40','2017-08-02 08:06:40',NULL,''),(29,5,'Acerca del Portal','/acerca-del-portal','_self',NULL,'#000000',NULL,27,'2017-08-02 08:09:34','2017-08-02 08:09:34',NULL,''),(30,5,'Repositorio DDHH','/repositorio-ddhh','_self',NULL,'#000000',NULL,28,'2017-08-02 08:09:53','2017-08-02 08:09:53',NULL,''),(31,5,'Organizaciones Afiliadas','/organizaciones-afiliadas','_self',NULL,'#000000',NULL,29,'2017-08-02 08:10:10','2017-08-02 08:10:10',NULL,''),(32,5,'Formación','/formacion','_self',NULL,'#000000',NULL,30,'2017-08-02 08:10:20','2017-08-02 08:10:20',NULL,''),(33,5,'Comunidad de Práctica','http://foro.uca.iw.sv','_blank',NULL,'#000000',NULL,31,'2017-08-02 08:10:47','2017-08-02 08:10:47',NULL,''),(35,1,'Contenidos','/admin/contents','_self','voyager-browser','#000000',NULL,6,'2017-08-02 08:39:30','2017-08-05 07:54:36',NULL,''),(36,1,'Covers de Secciones','/admin/covers','_self','voyager-images','#000000',NULL,10,'2017-08-02 20:39:39','2017-08-05 07:54:36',NULL,''),(37,1,'Modalidades','/admin/modalities','_self',NULL,'#000000',39,2,'2017-08-04 06:43:32','2017-08-04 07:07:05',NULL,''),(38,1,'Tipos de Formación','/admin/formation-types','_self',NULL,'#000000',39,1,'2017-08-04 07:03:21','2017-08-04 07:07:03',NULL,''),(39,1,'Formación','','_self',NULL,'#000000',NULL,11,'2017-08-04 07:06:56','2017-08-05 07:54:36',NULL,''),(40,1,'Capacitaciones','/admin/formations','_self',NULL,'#000000',39,3,'2017-08-04 09:04:15','2017-08-04 09:04:21',NULL,''),(41,2,'Formación','/formaciones','_self',NULL,'#000000',NULL,4,'2017-08-04 09:42:42','2017-08-04 09:43:20',NULL,''),(42,1,'Repositorio','','_self',NULL,'#000000',NULL,5,'2017-08-05 07:49:18','2017-08-05 07:49:33',NULL,''),(43,1,'Categorías Tematics','/admin/topics','_self',NULL,'#000000',42,2,'2017-08-05 07:50:36','2017-08-05 07:54:38',NULL,''),(44,1,'Clasificaciones Contemporáneas','/admin/classifications','_self',NULL,'#000000',NULL,32,'2017-08-05 08:53:13','2017-08-05 08:53:13',NULL,''),(45,1,'Organizaciones','/admin/organizations','_self',NULL,'#000000',NULL,33,'2017-08-05 09:34:54','2017-08-05 09:34:54',NULL,''),(46,1,'Organizaciones Fundadoras','/admin/founders','_self',NULL,'#000000',NULL,34,'2017-08-08 20:10:16','2017-08-08 20:10:16',NULL,''),(47,1,'Galería','/admin/galleries','_self',NULL,'#000000',NULL,35,'2017-08-08 20:23:18','2017-08-08 20:23:18',NULL,'');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2017-08-02 04:09:52','2017-08-02 04:09:52'),(2,'main','2017-08-02 05:15:31','2017-08-02 05:49:38'),(3,'secondary','2017-08-02 05:46:21','2017-08-02 05:49:32'),(4,'responsive','2017-08-02 05:46:31','2017-08-02 05:49:24'),(5,'footer','2017-08-02 08:09:14','2017-08-02 08:09:14');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_01_01_000000_create_pages_table',1),(6,'2016_01_01_000000_create_posts_table',1),(7,'2016_02_15_204651_create_categories_table',1),(8,'2016_05_19_173453_create_menu_table',1),(9,'2016_10_21_190000_create_roles_table',1),(10,'2016_10_21_190000_create_settings_table',1),(11,'2016_11_30_135954_create_permission_table',1),(12,'2016_11_30_141208_create_permission_role_table',1),(13,'2016_12_26_201236_data_types__add__server_side',1),(14,'2017_01_13_000000_add_route_to_menu_items_table',1),(15,'2017_01_14_005015_create_translations_table',1),(16,'2017_01_15_000000_add_permission_group_id_to_permissions_table',1),(17,'2017_01_15_000000_create_permission_groups_table',1),(18,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(19,'2017_03_06_000000_add_controller_to_data_types_table',1),(20,'2017_04_21_000000_add_order_to_data_rows_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalities`
--

DROP TABLE IF EXISTS `modalities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalities`
--

LOCK TABLES `modalities` WRITE;
/*!40000 ALTER TABLE `modalities` DISABLE KEYS */;
INSERT INTO `modalities` VALUES (1,'Virtual','icon-online','2017-08-04 06:44:24','2017-08-04 06:44:24',NULL),(2,'Presencial','icon-presencial','2017-08-04 06:44:48','2017-08-04 06:44:48',NULL);
/*!40000 ALTER TABLE `modalities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_work_areas`
--

DROP TABLE IF EXISTS `organization_work_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_work_areas` (
  `organization_id` int(11) NOT NULL,
  `work_area_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_work_areas`
--

LOCK TABLES `organization_work_areas` WRITE;
/*!40000 ALTER TABLE `organization_work_areas` DISABLE KEYS */;
INSERT INTO `organization_work_areas` VALUES (6,1,NULL,NULL,NULL),(7,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `organization_work_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `classification_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `website` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workareas` int(11) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `applicant` text COLLATE utf8_unicode_ci NOT NULL,
  `institution` text COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `long_description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` VALUES (7,'Universidad Jose Simeon Cañas','(503) 2345 9874','email@uca.edu.sv','Institución Salesiana de educación superior',1,1,'ssdfsf',NULL,132456,13213,'organizations/August2017/qiDzwgoP7Wfg5mo3bQPW.png',1,'sdfs','sdfsdf','dfg','2017-08-05 10:22:28','2017-08-06 11:49:21',NULL,NULL),(8,'Nombre','70600161','cesar@email.com','descripcion',1,1,NULL,NULL,NULL,NULL,'/tmp/phpEWzufO',0,'solicitante','institucion','cargo','2017-08-07 22:56:03','2017-08-07 22:56:03',NULL,'larga');
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'slug',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`text_cover`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Inicio',NULL,'<section class=\"pv5\" id=\"welcome\">\r\n        <div class=\"center w-80\">\r\n            <h1 class=\"f2 fw4 ttu text--blue tc\">Bienvenidos/as</h1>\r\n            <p class=\"tc center f5 fw3 lh-copy mv5 ph2 ph7-l tracked silver\">Al “Portal Centroamericano de Derechos Humanos y Democracia”, un espacio que promueve la divulgación e intercambio de información, investigación, análisis, reflexión, aprendizaje y promoción de redes, sobre derechos humanos y democracia en la región.</p>\r\n            <div class=\"tc\">\r\n                <a href=\"acerca-del-portal\" class=\"f5 bo--purple fw4 link ba bw1 ph4 pv2 text--purple hover-bg--purple hover-white bg-animate\">Más Información</a>\r\n            </div>\r\n\r\n        </div>\r\n    </section>\r\n    <section class=\"bg--light-blue\" id=\"latest-formation\">\r\n        <div class=\"pv5 w-70-l w-80 center\">\r\n            <h1 class=\"text--blue fw4 f2 mh3\">Últimas Actividades <br>\r\n                Formativas</h1>\r\n                <div class=\"owl-carousel owl-theme\" id=\"owl-formation\">\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6 center pa4 h6 shadow-5\">\r\n                        <h4 class=\"fw6 text--blue f5\">Programa de eficiencia energética</h4>\r\n                        <p class=\"lh-copy f6 h3-l h4 mb4\">El programa fue diseñado a partir de sus propias investigaciones en las empresas, consta de 16 módulos de capacitación.</p>\r\n                        <p class=\"text--light-blue-50 f6\"><span class=\"icon-online\"></span> Presencia Virtual</p>\r\n                        <div class=\"mv4\">\r\n                            <a href=\"#\" class=\"f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate\">Ir a Capacitación</a>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6 center pa4 h6 shadow-5\">\r\n                        <h4 class=\"fw6 text--blue f5\">Programa de gestión medio ambiental</h4>\r\n                        <p class=\"lh-copy f6 h3-l h4 mb4\">El programa fue diseñado a partir de sus propias.</p>\r\n                        <p class=\"text--light-blue-50 f6\"><span class=\"icon-presencial\"></span> Curso Presencial</p>\r\n                        <div class=\"mv4\">\r\n                            <a href=\"#\" class=\"f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate\">Ir a Capacitación</a>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6 center pa4 h6 shadow-5\">\r\n                        <h4 class=\"fw6 text--blue f5\">Programa de gestión medio ambiental</h4>\r\n                        <p class=\"lh-copy f6 h3-l h4 mb4\">El programa fue diseñado a partir de sus propias investigaciones en las empresas, consta de 16 módulos de capacitación.</p>\r\n                        <p class=\"text--light-blue-50 f6\"><span class=\"icon-presencial\"></span> Curso Presencial</p>\r\n                        <div class=\"mv4\">\r\n                            <a href=\"#\" class=\"f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate\">Ir a Capacitación</a>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6 center pa4 h6 shadow-5\">\r\n                        <h4 class=\"fw6 text--blue f5\">Programa de gestión medio ambiental</h4>\r\n                        <p class=\"lh-copy f6 h3-l h4 mb4\">El programa fue diseñado a partir de sus propias investigaciones en las empresas, consta de 16 módulos de capacitación.</p>\r\n                        <p class=\"text--light-blue-50 f6\"><span class=\"icon-presencial\"></span> Curso Presencial</p>\r\n                        <div class=\"mv4\">\r\n                            <a href=\"#\" class=\"f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate\">Ir a Capacitación</a>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6 center pa4 h6 shadow-5\">\r\n                        <h4 class=\"fw6 text--blue f5\">Programa de gestión medio ambiental</h4>\r\n                        <p class=\"lh-copy f6 h3-l h4 mb4\">El programa fue diseñado a partir de sus propias investigaciones en las empresas, consta de 16 módulos de capacitación.</p>\r\n                        <p class=\"text--light-blue-50 f6\"><span class=\"icon-presencial\"></span> Curso Presencial</p>\r\n                        <div class=\"mv4\">\r\n                            <a href=\"#\" class=\"f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate\">Ir a Capacitación</a>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6 center pa4 h6 shadow-5\">\r\n                        <h4 class=\"fw6 text--blue f5\">Programa de gestión medio ambiental</h4>\r\n                        <p class=\"lh-copy f6 h3-l h4 mb4\">El programa fue diseñado a partir de sus propias investigaciones en las empresas, consta de 16 módulos de capacitación.</p>\r\n                        <p class=\"text--light-blue-50 f6\"><span class=\"icon-presencial\"></span> Curso Presencial</p>\r\n                        <div class=\"mv4\">\r\n                            <a href=\"#\" class=\"f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate\">Ir a Capacitación</a>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6 center pa4 h6 shadow-5\">\r\n                        <h4 class=\"fw6 text--blue f5\">Programa de gestión medio ambiental</h4>\r\n                        <p class=\"lh-copy f6 h3-l h4 mb4\">El programa fue diseñado a partir de sus propias investigaciones en las empresas, consta de 16 módulos de capacitación.</p>\r\n                        <p class=\"text--light-blue-50 f6\"><span class=\"icon-presencial\"></span> Curso Presencial</p>\r\n                        <div class=\"mv4\">\r\n                            <a href=\"#\" class=\"f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate\">Ir a Capacitación</a>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class=\"tc\">\r\n                    <a href=\"formacion.html\" class=\"f4 fw4 db tc center link ba bw1 white bo--blue text--blue mt5 pv3 w-30-l w-80-m w-100 hover-white hover-bg--blue\">Ver listado completo</a>\r\n                </div>\r\n        </div>\r\n    </section>\r\n    <section id=\"documents\" class=\"pv1\">\r\n        <div class=\"img-cover relative dn db-l\">\r\n            <img src=\"http://uca.padf.dev/storage/pages/inicio/hQ6jHTmJcv7QwtG3Z8SyniL38akBByVZIXjDQI5d.jpeg\" alt=\"\" class=\"w-100 h5\">\r\n            <div class=\"img-overlay\"></div>\r\n            <h1 class=\"white text-overlay\">Nueva Documentación <br>Disponible</h1>\r\n        </div>\r\n\r\n        <h1 class=\"text--blue db dn-l mh5 f2 fw4\">Nueva Documentación Disponible</h1>\r\n\r\n        <div class=\"mw9-l mw7 center ph3-ns mt5\">\r\n            <div class=\"cf ph2-ns\">\r\n                <div class=\"fl w-50-m w-third-ns w-100 ph5\">\r\n                    <div class=\"relative pl5\">\r\n                        <span class=\"icon-pdf f1 silver ma1 absolute top-0 left-0\"></span>\r\n                        <h3 class=\"f4 fw5 text--blue\">Visión sociológica del hombre latinoamericano</h3>\r\n                        <p class=\"silver f6\">Ellacuría, Ignacio, 1930-1989</p>\r\n                    </div>\r\n                    <div class=\"mv4\">\r\n                        <a href=\"#\" class=\"f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate\">Ver más</a>\r\n                    </div>\r\n                </div>\r\n                <div class=\"fl w-50-m w-third-ns w-100 ph5\">\r\n                    <div class=\"relative pl5\">\r\n                        <span class=\"icon-pdf f1 silver ma1 absolute top-0 left-0\"></span>\r\n                        <h3 class=\"f4 fw5 text--blue\">Visión sociológica del hombre latinoamericano</h3>\r\n                        <p class=\"silver f6\">Ellacuría, Ignacio, 1930-1989</p>\r\n                    </div>\r\n                    <div class=\"mv4\">\r\n                        <a href=\"#\" class=\"f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate\">Ver más</a>\r\n                    </div>\r\n                </div>\r\n                <div class=\"fl w-50-m w-third-ns w-100 ph5\">\r\n                    <div class=\"relative pl5\">\r\n                        <span class=\"icon-pdf f1 silver ma1 absolute top-0 left-0\"></span>\r\n                        <h3 class=\"f4 fw5 text--blue\">Visión sociológica del hombre latinoamericano</h3>\r\n                        <p class=\"silver f6\">Ellacuría, Ignacio, 1930-1989</p>\r\n                    </div>\r\n                    <div class=\"mv4\">\r\n                        <a href=\"#\" class=\"f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate\">Ver más</a>\r\n                    </div>\r\n                </div>\r\n                <div class=\"fl w-50-m w-third-ns w-100 ph5\">\r\n                    <div class=\"relative pl5\">\r\n                        <span class=\"icon-pdf f1 silver ma1 absolute top-0 left-0\"></span>\r\n                        <h3 class=\"f4 fw5 text--blue\">Visión sociológica del hombre latinoamericano</h3>\r\n                        <p class=\"silver f6\">Ellacuría, Ignacio, 1930-1989</p>\r\n                    </div>\r\n                    <div class=\"mv4\">\r\n                        <a href=\"#\" class=\"f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate\">Ver más</a>\r\n                    </div>\r\n                </div>\r\n                <div class=\"fl w-50-m w-third-ns w-100 ph5\">\r\n                    <div class=\"relative pl5\">\r\n                        <span class=\"icon-pdf f1 silver ma1 absolute top-0 left-0\"></span>\r\n                        <h3 class=\"f4 fw5 text--blue\">Visión sociológica del hombre latinoamericano</h3>\r\n                        <p class=\"silver f6\">Ellacuría, Ignacio, 1930-1989</p>\r\n                    </div>\r\n                    <div class=\"mv4\">\r\n                        <a href=\"#\" class=\"f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate\">Ver más</a>\r\n                    </div>\r\n                </div>\r\n                <div class=\"fl w-50-m w-third-ns w-100 ph5\">\r\n                    <div class=\"relative pl5\">\r\n                        <span class=\"icon-pdf f1 silver ma1 absolute top-0 left-0\"></span>\r\n                        <h3 class=\"f4 fw5 text--blue\">Visión sociológica del hombre latinoamericano</h3>\r\n                        <p class=\"silver f6\">Ellacuría, Ignacio, 1930-1989</p>\r\n                    </div>\r\n                    <div class=\"mv4\">\r\n                        <a href=\"#\" class=\"f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate\">Ver más</a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"tc mb5 w-70 center\">\r\n            <a href=\"repositorio-ddhh.html\" class=\"f4 fw4 db tc center link ba bw1 white bo--blue text--blue mt5 pv3 w-30-ns w-100 hover-white hover-bg--blue\">Ver más documentos</a>\r\n        </div>\r\n    </section>\r\n    <section class=\"bg--light-blue\" id=\"organizations\">\r\n        <div class=\"pv5 w-70-l w-80 center\">\r\n            <h1 class=\"text--blue fw4 f2 mh3\">Organizaciones Recientemente <br>\r\n                Incorporadas</h1>\r\n                <div class=\"owl-carousel owl-theme\" id=\"owl-organization\">\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6 center pa4 h6 shadow-5\">\r\n                        <img src=\"images/Naciones_Unidas_Logo.png\" alt=\"\" width=\"100%\">\r\n                        <h4 class=\"fw6 text--blue f4 h3\">Naciones Unidas Derechos Humanos</h4>\r\n                        <p class=\"silver lh-copy f6 h3 mb4\">Comisión para la Defensa de los Derechos Humanos en Centroamérica.</p>\r\n                        <p class=\"text--blue f5\"><span class=\"icon-phone mr2\"></span>(506) 2234 0404</p>\r\n                        <p class=\"text--blue f5\"><span class=\"icon-web mr2\"></span><a href=\"#\" class=\"link text--blue\">www.iidh.ed.cr</a></p>\r\n                        <div class=\"mt4 cf center \">\r\n                            <span class=\"fl tc pv2 w-50 w-third-ns f6 text--light-blue-50\">Migrante</span>\r\n                            <span class=\"fl tc pv2 w-50 w-third-ns f6 text--light-blue-50\">LGTBI</span>\r\n                            <span class=\"fl tc pv2 w-50 w-third-ns f6 text--light-blue-50\">Mujeres</span>\r\n                            <span class=\"fl tc pv2 w-50 w-third-ns f6 text--light-blue-50\">Hogar</span>\r\n                            <span class=\"fl tc pv2 w-50 w-third-ns f6 text--light-blue-50\">Vivienda</span>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6 center pa4 h6 shadow-5\">\r\n                        <img src=\"images/CIDH_Logo.png\" alt=\"\" width=\"100%\">\r\n                        <h4 class=\"fw6 text--blue f4 h3\">Comisión Interamericana de Derechos Humanos</h4>\r\n                        <p class=\"silver lh-copy f6 h3 mb4\">Comisión para la Defensa de los Derechos Humanos en Centroamérica.</p>\r\n                        <p class=\"text--blue f5\"><span class=\"icon-phone mr2\"></span>(506) 2234 0404</p>\r\n                        <p class=\"text--blue f5\"><span class=\"icon-web mr2\"></span><a href=\"#\" class=\"link text--blue\">www.iidh.ed.cr</a></p>\r\n                        <div class=\"mt4 cf center h3\">\r\n                            <span class=\"fl tc pv2 w-third f6 text--light-blue-50\">Migrante</span>\r\n                            <span class=\"fl tc pv2 w-third f6 text--light-blue-50\">LGTBI</span>\r\n                            <span class=\"fl tc pv2 w-third f6 text--light-blue-50\">Mujeres</span>\r\n                            <span class=\"fl tc pv2 w-third f6 text--light-blue-50\">Niños</span>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6 center pa4 h6 shadow-5\">\r\n                        <img src=\"images/IIDH_Logo.png\" alt=\"\" width=\"100%\">\r\n                        <h4 class=\"fw6 text--blue f4 h3\">Instituto Interamericano de Derechos Humanos</h4>\r\n                        <p class=\"silver lh-copy f6 h3 mb4\">Comisión para la Defensa de los Derechos Humanos en Centroamérica.</p>\r\n                        <p class=\"text--blue f5\"><span class=\"icon-phone mr2\"></span>(506) 2234 0404</p>\r\n                        <p class=\"text--blue f5\"><span class=\"icon-web mr2\"></span><a href=\"#\" class=\"link text--blue\">www.iidh.ed.cr</a></p>\r\n                        <div class=\"mt4 cf center h3\">\r\n                            <span class=\"fl tc pv2 w-100 w-third-ns f6 text--light-blue-50\">Migrante</span>\r\n                            <span class=\"fl tc pv2 w-100 w-third-ns f6 text--light-blue-50\">LGTBI</span>\r\n                            <span class=\"fl tc pv2 w-100 w-third-ns f6 text--light-blue-50\">Mujeres</span>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6 center pa4 h6 shadow-5\">\r\n                        <img src=\"images/IIDH_Logo.png\" alt=\"\" width=\"100%\">\r\n                        <h4 class=\"fw6 text--blue f4 h3\">Instituto Interamericano de Derechos Humanos</h4>\r\n                        <p class=\"silver lh-copy f6 h3 mb4\">Comisión para la Defensa de los Derechos Humanos en Centroamérica.</p>\r\n                        <p class=\"text--blue f5\"><span class=\"icon-phone mr2\"></span>(506) 2234 0404</p>\r\n                        <p class=\"text--blue f5\"><span class=\"icon-web mr2\"></span><a href=\"#\" class=\"link text--blue\">www.iidh.ed.cr</a></p>\r\n                        <div class=\"mt4 cf center h3\">\r\n                            <span class=\"fl tc pv2 w-third f6 text--light-blue-50\">Migrante</span>\r\n                            <span class=\"fl tc pv2 w-third f6 text--light-blue-50\">LGTBI</span>\r\n                            <span class=\"fl tc pv2 w-third f6 text--light-blue-50\">Mujeres</span>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6 center pa4 h6 shadow-5\">\r\n                        <img src=\"images/IIDH_Logo.png\" alt=\"\" width=\"100%\">\r\n                        <h4 class=\"fw6 text--blue f4 h3\">Instituto Interamericano de Derechos Humanos</h4>\r\n                        <p class=\"silver lh-copy f6 h3 mb4\">Comisión para la Defensa de los Derechos Humanos en Centroamérica.</p>\r\n                        <p class=\"text--blue f5\"><span class=\"icon-phone mr2\"></span>(506) 2234 0404</p>\r\n                        <p class=\"text--blue f5\"><span class=\"icon-web mr2\"></span><a href=\"#\" class=\"link text--blue\">www.iidh.ed.cr</a></p>\r\n                        <div class=\"mt4 cf center h3\">\r\n                            <span class=\"fl tc pv2 w-third f6 text--light-blue-50\">Migrante</span>\r\n                            <span class=\"fl tc pv2 w-third f6 text--light-blue-50\">LGTBI</span>\r\n                            <span class=\"fl tc pv2 w-third f6 text--light-blue-50\">Mujeres</span>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class=\"tc\">\r\n                    <a href=\"organizaciones.html\" class=\"f4 fw4 db tc center link ba bw1 white bo--blue text--blue mt5 pv3 w-100 w-80-m w-40-ns hover-white hover-bg--blue\">Ver listado completo</a>\r\n                </div>\r\n        </div>\r\n    </section>','pages/August2017/ko8BQ2ClR9VNuy3cqePO.png','texto de cover','2017-08-02 09:27:37','2017-08-02 10:33:57',NULL,'inicio');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2017-08-02 04:09:53','2017-08-02 04:09:53',NULL),(2,'browse_database',NULL,'2017-08-02 04:09:53','2017-08-02 04:09:53',NULL),(3,'browse_media',NULL,'2017-08-02 04:09:53','2017-08-02 04:09:53',NULL),(4,'browse_settings',NULL,'2017-08-02 04:09:53','2017-08-02 04:09:53',NULL),(5,'browse_menus','menus','2017-08-02 04:09:53','2017-08-02 04:09:53',NULL),(6,'read_menus','menus','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(7,'edit_menus','menus','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(8,'add_menus','menus','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(9,'delete_menus','menus','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(10,'browse_pages','pages','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(11,'read_pages','pages','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(12,'edit_pages','pages','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(13,'add_pages','pages','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(14,'delete_pages','pages','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(15,'browse_roles','roles','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(16,'read_roles','roles','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(17,'edit_roles','roles','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(18,'add_roles','roles','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(19,'delete_roles','roles','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(20,'browse_users','users','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(21,'read_users','users','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(22,'edit_users','users','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),(23,'add_users','users','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),(24,'delete_users','users','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),(25,'browse_posts','posts','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),(26,'read_posts','posts','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),(27,'edit_posts','posts','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),(28,'add_posts','posts','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),(29,'delete_posts','posts','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),(30,'browse_categories','categories','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),(31,'read_categories','categories','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),(32,'edit_categories','categories','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),(33,'add_categories','categories','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),(34,'delete_categories','categories','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),(40,'browse_work_areas','work_areas','2017-08-02 04:35:57','2017-08-02 04:35:57',NULL),(41,'read_work_areas','work_areas','2017-08-02 04:35:57','2017-08-02 04:35:57',NULL),(42,'edit_work_areas','work_areas','2017-08-02 04:35:57','2017-08-02 04:35:57',NULL),(43,'add_work_areas','work_areas','2017-08-02 04:35:57','2017-08-02 04:35:57',NULL),(44,'delete_work_areas','work_areas','2017-08-02 04:35:57','2017-08-02 04:35:57',NULL),(45,'browse_documents','documents','2017-08-02 05:07:02','2017-08-02 05:07:02',NULL),(46,'read_documents','documents','2017-08-02 05:07:02','2017-08-02 05:07:02',NULL),(47,'edit_documents','documents','2017-08-02 05:07:02','2017-08-02 05:07:02',NULL),(48,'add_documents','documents','2017-08-02 05:07:02','2017-08-02 05:07:02',NULL),(49,'delete_documents','documents','2017-08-02 05:07:02','2017-08-02 05:07:02',NULL),(50,'browse_content','content','2017-08-02 08:29:46','2017-08-02 08:29:46',NULL),(51,'read_content','content','2017-08-02 08:29:46','2017-08-02 08:29:46',NULL),(52,'edit_content','content','2017-08-02 08:29:46','2017-08-02 08:29:46',NULL),(53,'add_content','content','2017-08-02 08:29:46','2017-08-02 08:29:46',NULL),(54,'delete_content','content','2017-08-02 08:29:46','2017-08-02 08:29:46',NULL),(60,'browse_contents','contents','2017-08-02 08:39:06','2017-08-02 08:39:06',NULL),(61,'read_contents','contents','2017-08-02 08:39:06','2017-08-02 08:39:06',NULL),(62,'edit_contents','contents','2017-08-02 08:39:06','2017-08-02 08:39:06',NULL),(63,'add_contents','contents','2017-08-02 08:39:06','2017-08-02 08:39:06',NULL),(64,'delete_contents','contents','2017-08-02 08:39:06','2017-08-02 08:39:06',NULL),(65,'browse_covers','covers','2017-08-02 20:42:36','2017-08-02 20:42:36',NULL),(66,'read_covers','covers','2017-08-02 20:42:36','2017-08-02 20:42:36',NULL),(67,'edit_covers','covers','2017-08-02 20:42:36','2017-08-02 20:42:36',NULL),(68,'add_covers','covers','2017-08-02 20:42:36','2017-08-02 20:42:36',NULL),(69,'delete_covers','covers','2017-08-02 20:42:36','2017-08-02 20:42:36',NULL),(70,'browse_modalities','modalities','2017-08-04 06:43:09','2017-08-04 06:43:09',NULL),(71,'read_modalities','modalities','2017-08-04 06:43:09','2017-08-04 06:43:09',NULL),(72,'edit_modalities','modalities','2017-08-04 06:43:09','2017-08-04 06:43:09',NULL),(73,'add_modalities','modalities','2017-08-04 06:43:09','2017-08-04 06:43:09',NULL),(74,'delete_modalities','modalities','2017-08-04 06:43:09','2017-08-04 06:43:09',NULL),(75,'browse_formation_types','formation_types','2017-08-04 06:57:22','2017-08-04 06:57:22',NULL),(76,'read_formation_types','formation_types','2017-08-04 06:57:22','2017-08-04 06:57:22',NULL),(77,'edit_formation_types','formation_types','2017-08-04 06:57:22','2017-08-04 06:57:22',NULL),(78,'add_formation_types','formation_types','2017-08-04 06:57:22','2017-08-04 06:57:22',NULL),(79,'delete_formation_types','formation_types','2017-08-04 06:57:22','2017-08-04 06:57:22',NULL),(80,'browse_formations','formations','2017-08-04 09:03:38','2017-08-04 09:03:38',NULL),(81,'read_formations','formations','2017-08-04 09:03:38','2017-08-04 09:03:38',NULL),(82,'edit_formations','formations','2017-08-04 09:03:38','2017-08-04 09:03:38',NULL),(83,'add_formations','formations','2017-08-04 09:03:38','2017-08-04 09:03:38',NULL),(84,'delete_formations','formations','2017-08-04 09:03:38','2017-08-04 09:03:38',NULL),(85,'browse_topics','topics','2017-08-05 07:53:37','2017-08-05 07:53:37',NULL),(86,'read_topics','topics','2017-08-05 07:53:37','2017-08-05 07:53:37',NULL),(87,'edit_topics','topics','2017-08-05 07:53:37','2017-08-05 07:53:37',NULL),(88,'add_topics','topics','2017-08-05 07:53:37','2017-08-05 07:53:37',NULL),(89,'delete_topics','topics','2017-08-05 07:53:37','2017-08-05 07:53:37',NULL),(90,'browse_classifications','classifications','2017-08-05 08:51:40','2017-08-05 08:51:40',NULL),(91,'read_classifications','classifications','2017-08-05 08:51:40','2017-08-05 08:51:40',NULL),(92,'edit_classifications','classifications','2017-08-05 08:51:40','2017-08-05 08:51:40',NULL),(93,'add_classifications','classifications','2017-08-05 08:51:40','2017-08-05 08:51:40',NULL),(94,'delete_classifications','classifications','2017-08-05 08:51:40','2017-08-05 08:51:40',NULL),(95,'browse_organizations','organizations','2017-08-05 09:07:05','2017-08-05 09:07:05',NULL),(96,'read_organizations','organizations','2017-08-05 09:07:05','2017-08-05 09:07:05',NULL),(97,'edit_organizations','organizations','2017-08-05 09:07:05','2017-08-05 09:07:05',NULL),(98,'add_organizations','organizations','2017-08-05 09:07:05','2017-08-05 09:07:05',NULL),(99,'delete_organizations','organizations','2017-08-05 09:07:05','2017-08-05 09:07:05',NULL),(100,'browse_founders','founders','2017-08-08 20:09:53','2017-08-08 20:09:53',NULL),(101,'read_founders','founders','2017-08-08 20:09:53','2017-08-08 20:09:53',NULL),(102,'edit_founders','founders','2017-08-08 20:09:53','2017-08-08 20:09:53',NULL),(103,'add_founders','founders','2017-08-08 20:09:53','2017-08-08 20:09:53',NULL),(104,'delete_founders','founders','2017-08-08 20:09:53','2017-08-08 20:09:53',NULL),(105,'browse_galleries','galleries','2017-08-08 20:22:58','2017-08-08 20:22:58',NULL),(106,'read_galleries','galleries','2017-08-08 20:22:58','2017-08-08 20:22:58',NULL),(107,'edit_galleries','galleries','2017-08-08 20:22:58','2017-08-08 20:22:58',NULL),(108,'add_galleries','galleries','2017-08-08 20:22:58','2017-08-08 20:22:58',NULL),(109,'delete_galleries','galleries','2017-08-08 20:22:58','2017-08-08 20:22:58',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2017-08-02 04:09:53','2017-08-02 04:09:53'),(2,'user','Normal User','2017-08-02 04:09:53','2017-08-02 04:09:53');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_contents`
--

DROP TABLE IF EXISTS `search_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `long_description` text COLLATE utf8_unicode_ci,
  `place` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `sourceable_id` int(10) unsigned DEFAULT NULL,
  `sourceable_type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_contents`
--

LOCK TABLES `search_contents` WRITE;
/*!40000 ALTER TABLE `search_contents` DISABLE KEYS */;
INSERT INTO `search_contents` VALUES (10,NULL,'Nombre','descripcion',NULL,NULL,'cesar@email.com',NULL,'2017-08-10 03:23:52','2017-08-10 03:23:52',NULL,8,'App\\Organization',NULL,0),(11,'Tratado de Paz de la Republica de El Salvador',NULL,'Un Tratado de Paz es un acuerdo entre dos o más partes hostiles, por lo general países o gobiernos, que culmina formalmente un estado de guerra entre las partes. Es diferente de un armisticio','Un Tratado de Paz es un acuerdo entre dos o más partes hostiles, por lo general países o gobiernos, que culmina formalmente un estado de guerra entre las partes. Es diferente de un armisticio, que',NULL,NULL,NULL,'2017-08-10 03:40:30','2017-08-10 03:40:30',NULL,1,'App\\Document','Juan Manuel Cañas',1),(12,'Capacitación: programa de gestión medio ambiental',NULL,'El programa es desarrollado por la Universidad Centroamericana “José Simeón Cañas” (UCA) y tiene como objetivo proporcionar a los participantes una visión global, actualizada e integradora sobre los conocimientos, habilidades y actitudes.',NULL,'Salón Audiovisuales, Universidad Centroamericana José Simeón Cañas','example@uca.edu.sv','www.uca.com.sv','2017-08-10 05:11:54','2017-08-10 05:27:24',NULL,1,'App\\Formation',NULL,1),(13,NULL,'Universidad Jose Simeon Cañas','Institución Salesiana de educación superior',NULL,NULL,'email@uca.edu.sv','ssdfsf','2017-08-10 05:12:22','2017-08-10 05:12:22',NULL,7,'App\\Organization',NULL,1);
/*!40000 ALTER TABLE `search_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'title','Título del Sitio','Portal Centroamericano de Derechos Humanos y Democracia IDHUCA',NULL,'text',0),(2,'admin_title','Título de Administrador','Administrador',NULL,'text',1),(3,'logo','Logo de Sitio','settings/August2017/IebDpy25Y7vrqvKFFg3I.png',NULL,'file',2),(4,'logo_usaid','USAID Logo','settings/August2017/DnCjxukj6k62OZEw2Fca.png',NULL,'file',3),(5,'logo_padf','PADF Logo','settings/August2017/ZzsaX0w8q0TS6oI5i3Km.png',NULL,'file',4);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'Primera','2017-08-05 10:31:21','2017-08-05 10:31:21',NULL),(2,'Segunda','2017-08-05 10:31:30','2017-08-05 10:31:30',NULL);
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',1,'pt','Post','2017-08-02 07:20:37','2017-08-02 07:20:37'),(2,'data_types','display_name_singular',2,'pt','Página','2017-08-02 07:20:37','2017-08-02 07:20:37'),(3,'data_types','display_name_singular',3,'pt','Utilizador','2017-08-02 07:20:37','2017-08-02 07:20:37'),(4,'data_types','display_name_singular',4,'pt','Categoria','2017-08-02 07:20:37','2017-08-02 07:20:37'),(5,'data_types','display_name_singular',5,'pt','Menu','2017-08-02 07:20:37','2017-08-02 07:20:37'),(6,'data_types','display_name_singular',6,'pt','Função','2017-08-02 07:20:37','2017-08-02 07:20:37'),(7,'data_types','display_name_plural',1,'pt','Posts','2017-08-02 07:20:37','2017-08-02 07:20:37'),(8,'data_types','display_name_plural',2,'pt','Páginas','2017-08-02 07:20:37','2017-08-02 07:20:37'),(9,'data_types','display_name_plural',3,'pt','Utilizadores','2017-08-02 07:20:37','2017-08-02 07:20:37'),(10,'data_types','display_name_plural',4,'pt','Categorias','2017-08-02 07:20:37','2017-08-02 07:20:37'),(11,'data_types','display_name_plural',5,'pt','Menus','2017-08-02 07:20:37','2017-08-02 07:20:37'),(12,'data_types','display_name_plural',6,'pt','Funções','2017-08-02 07:20:37','2017-08-02 07:20:37'),(13,'data_types','display_name_singular',1,'es','Publicación','2017-08-02 07:20:37','2017-08-02 07:20:37'),(14,'data_types','display_name_singular',2,'es','Página','2017-08-02 07:20:37','2017-08-02 07:20:37'),(15,'data_types','display_name_singular',3,'es','Usuario','2017-08-02 07:20:37','2017-08-02 07:20:37'),(16,'data_types','display_name_singular',4,'es','Categoría','2017-08-02 07:20:37','2017-08-02 07:20:37'),(17,'data_types','display_name_singular',5,'es','Menú','2017-08-02 07:20:37','2017-08-02 07:20:37'),(18,'data_types','display_name_singular',6,'es','Rol','2017-08-02 07:20:37','2017-08-02 07:20:37'),(19,'data_types','display_name_plural',1,'es','Publicaciones','2017-08-02 07:20:38','2017-08-02 07:20:38'),(20,'data_types','display_name_plural',2,'es','Páginas','2017-08-02 07:20:38','2017-08-02 07:20:38'),(21,'data_types','display_name_plural',3,'es','Usuarios','2017-08-02 07:20:38','2017-08-02 07:20:38'),(22,'data_types','display_name_plural',4,'es','Categorías','2017-08-02 07:20:38','2017-08-02 07:20:38'),(23,'data_types','display_name_plural',5,'es','Menus','2017-08-02 07:20:38','2017-08-02 07:20:38'),(24,'data_types','display_name_plural',6,'es','Roles','2017-08-02 07:20:38','2017-08-02 07:20:38'),(25,'menu_items','title',1,'pt','Painel de Controle','2017-08-02 07:22:30','2017-08-02 07:22:30'),(26,'menu_items','title',2,'pt','Media','2017-08-02 07:22:30','2017-08-02 07:22:30'),(27,'menu_items','title',3,'pt','Publicações','2017-08-02 07:22:30','2017-08-02 07:22:30'),(28,'menu_items','title',4,'pt','Utilizadores','2017-08-02 07:22:30','2017-08-02 07:22:30'),(29,'menu_items','title',5,'pt','Categorias','2017-08-02 07:22:30','2017-08-02 07:22:30'),(30,'menu_items','title',6,'pt','Páginas','2017-08-02 07:22:30','2017-08-02 07:22:30'),(31,'menu_items','title',7,'pt','Funções','2017-08-02 07:22:30','2017-08-02 07:22:30'),(32,'menu_items','title',8,'pt','Ferramentas','2017-08-02 07:22:30','2017-08-02 07:22:30'),(33,'menu_items','title',9,'pt','Menus','2017-08-02 07:22:30','2017-08-02 07:22:30'),(34,'menu_items','title',10,'pt','Base de dados','2017-08-02 07:22:30','2017-08-02 07:22:30'),(35,'menu_items','title',11,'pt','Configurações','2017-08-02 07:22:30','2017-08-02 07:22:30'),(36,'menu_items','title',1,'es','Panel de Control','2017-08-02 07:22:31','2017-08-02 07:22:31'),(37,'menu_items','title',2,'es','Media','2017-08-02 07:22:31','2017-08-02 07:22:31'),(39,'menu_items','title',4,'es','Usuarios','2017-08-02 07:22:31','2017-08-02 07:22:31'),(42,'menu_items','title',7,'es','Roles','2017-08-02 07:22:31','2017-08-02 07:22:31'),(43,'menu_items','title',8,'es','Herramientas','2017-08-02 07:22:31','2017-08-02 07:22:31'),(44,'menu_items','title',9,'es','Constructor de Menú','2017-08-02 07:22:31','2017-08-02 07:22:31'),(45,'menu_items','title',10,'es','Base de datos','2017-08-02 07:22:31','2017-08-02 07:22:31'),(46,'menu_items','title',11,'es','Configuraciones','2017-08-02 07:22:31','2017-08-02 07:22:31'),(47,'menu_items','title',8,'en','Tools','2017-08-02 08:02:39','2017-08-02 08:02:39'),(48,'menu_items','title',1,'en','Dashboard','2017-08-02 08:02:57','2017-08-02 08:02:57'),(49,'menu_items','title',4,'en','Users','2017-08-02 08:03:04','2017-08-02 08:03:04'),(50,'menu_items','title',10,'en','Database','2017-08-02 08:03:19','2017-08-02 08:03:19'),(51,'menu_items','title',9,'en','Menu Builder','2017-08-02 08:03:57','2017-08-02 08:03:57');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'César Ramírez','cesar@email.com','users/August2017/R40xzGQWLrEUD7W4s8Iz.png','$2y$10$ekepDFAXPpX3JmB.mVBsvOX7X3Hf/y/b3bPAJJGPO2DGVWTfdLgTq','hPFWsQXQ4BWzF9ySXdZbtgGvIMX9PIxcB5M71m90KR6e6nvVNccMZVXvvgOE','2017-08-02 04:15:17','2017-08-02 04:16:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_areas`
--

DROP TABLE IF EXISTS `work_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_areas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_areas`
--

LOCK TABLES `work_areas` WRITE;
/*!40000 ALTER TABLE `work_areas` DISABLE KEYS */;
INSERT INTO `work_areas` VALUES (1,'Grupos con orientación sexual diversa (LGTBI)',NULL,'2017-08-02 04:39:06','2017-08-02 04:39:06',NULL);
/*!40000 ALTER TABLE `work_areas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-09 17:57:45
