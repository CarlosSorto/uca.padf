# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.19)
# Database: website_uca_iw_sv
# Generation Time: 2017-10-03 00:19:01 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

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



# Dump of table classifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `classifications`;

CREATE TABLE `classifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `classifications` WRITE;
/*!40000 ALTER TABLE `classifications` DISABLE KEYS */;

INSERT INTO `classifications` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Medio ambiente y derechos ligados a la tierra','2017-08-05 08:54:40','2017-08-05 08:54:40',NULL),
	(2,'Derechos de supervivencia: vida, integridad física y salud','2017-08-24 23:10:24','2017-08-24 23:10:24',NULL),
	(3,'Otras categorías','2017-08-24 23:32:19','2017-08-24 23:32:19',NULL),
	(4,'Derechos de desarrollo: trabajo y educación','2017-08-24 23:45:51','2017-08-24 23:45:51',NULL),
	(5,'Derechos de participación (participación política y libertad de expresión)','2017-08-24 23:46:04','2017-08-24 23:46:04',NULL),
	(6,'Derechos de protección (funcionamiento de instituciones, acceso a la justicia, seguridad y garantías judiciales)','2017-08-24 23:46:18','2017-08-24 23:46:18',NULL);

/*!40000 ALTER TABLE `classifications` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table contents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contents`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;

INSERT INTO `contents` (`id`, `key`, `value`, `created_at`, `updated_at`, `deleted_at`, `name`, `description`)
VALUES
	(1,'links_footer','<h3 class=\"ttu text--light-blue-50 fw5 f4 mb0\">¿Cómo Unirte a esta Iniciativa?</h3>\r\n<hr class=\"mw3 ba bo--light-blue-50 mb3\" align=\"left\">\r\n<ul class=\"left-0 list white w-80 tl ma0 pa0\">\r\n    <li class=\"f6 lh-copy relative pl4 fw3 white mb2\"><span class=\"icon-right-arrow text--light-blue-50 ma1 absolute top-0 left-0\"></span><a href=\"/formacion/crear\" class=\"link fw4 white o-80\">Divulga tus actividades formativas.</a></li>\r\n    <li class=\"f6 lh-copy relative pl4 fw3 white mb2\"><span class=\"icon-right-arrow text--light-blue-50 ma1 absolute top-0 left-0\"></span><a href=\"/organizacion/crear\" class=\"link fw4 white o-80\">Afiliate a nuestro directorio general.</a></li>\r\n    <li class=\"f6 lh-copy relative pl4 fw3 white mb2\"><span class=\"icon-right-arrow text--light-blue-50 ma1 absolute top-0 left-0\"></span><a href=\"/documento/crear\" class=\"link fw4 white o-80\">Comparte investigaciones, informes o documentos de interés.</a></li>\r\n    <li class=\"f6 lh-copy relative pl4 fw3 mb2\"><span class=\"icon-right-arrow text--light-blue-50 ma1 absolute top-0 left-0\"></span><a href=\"http://foro.uca.iw.sv/\" target=\"_blank\" class=\"link fw4 white o-80\">Aprende junto con otros e intercambia experiencias.</a></li>\r\n</ul>','2017-08-02 08:46:52','2017-08-24 23:24:44',NULL,'Enlaces en Footer',NULL),
	(2,'welcome_home','<section class=\"pv5\" id=\"welcome\">\r\n        <div class=\"center w-80\">\r\n            <h1 class=\"f2 fw4 ttu text--blue tc\">Bienvenidos/as</h1>\r\n            <p class=\"tc center f5 fw3 lh-copy mv5 ph2 ph7-l tracked silver\">Al “Portal Centroamericano de Derechos Humanos y Democracia”, un espacio que promueve la divulgación e intercambio de información, investigación, análisis, reflexión, aprendizaje y promoción de redes, sobre derechos humanos y democracia en la región.</p>\r\n            <div class=\"tc\">\r\n                <a href=\"acerca-del-portal\" class=\"f5 bo--purple fw4 link ba bw1 ph4 pv2 text--purple hover-bg--purple hover-white bg-animate\">Más Información</a>\r\n            </div>\r\n\r\n        </div>\r\n    </section>','2017-08-04 06:21:50','2017-08-04 06:22:24',NULL,'Mensaje de Bienvenido en Sección de Inicio',NULL),
	(3,'new_documents','<div class=\"img-cover relative dn db-l\">\r\n    <img src=\"/storage/pages/inicio/hQ6jHTmJcv7QwtG3Z8SyniL38akBByVZIXjDQI5d.jpeg\" alt=\"\" class=\"w-100 h5 db\">\r\n    <div class=\"img-overlay\"></div>\r\n    <div class=\"text-overlay-l\">\r\n        <h1 class=\"white \">Nueva Documentación <br>Disponible</h1>\r\n    </div>\r\n</div>','2017-08-05 10:37:05','2017-08-11 06:59:56',NULL,'Sección de Cabecera de Nuevos Documentos','Sección de Cabecera de Nuevos Documentos en la sección de Inicio'),
	(4,'acerca_del_portal_iniciativa','<section class=\"pv2\">\r\n        <div class=\"cf w-60-l w-80 center mv6-l\">\r\n            <div class=\"fl w-100 w-50-l dn db-l\">\r\n                <img src=\"/storage/pages/Acerca%20del%20Portal/r5K2ro5dguVd2WCbQD2FE2dNOqbZ1AVFsbge3LVM.jpeg\" alt=\"La Iniciativa\" class=\"w-80\">\r\n            </div>\r\n            <div class=\"fl w-100 w-50-l\">\r\n                <h2 class=\"f2 fw4 text--blue mb3\">La iniciativa</h2>\r\n                <hr class=\"ba bw1 bo--light-blue-50 w-20\" align=\"left\">\r\n                <p class=\"fw3 lh-copy f5 tj\">Es fruto del esfuerzo realizado de manera conjunta por varias organizaciones, principalmente universidades de la región C.A. y otras entidades socias clave, con la visión de contar con un espacio virtual que disponga de recursos y herramientas que sean de utilidad en la gestión del conocimiento sobre los derechos humanos y democracia y que nos facilite compartir nuestras experiencias en la promoción y garantía de los derechos humanos en la región.</p>\r\n            </div>\r\n        </div>\r\n        <div class=\"w-100 db dn-ns\">\r\n                <img src=\"/storage/pages/Acerca%20del%20Portal/r5K2ro5dguVd2WCbQD2FE2dNOqbZ1AVFsbge3LVM.jpeg\" alt=\"La Iniciativa\">\r\n        </div>\r\n    </section>','2017-08-06 00:01:11','2017-10-02 23:30:09',NULL,'Acerca del Portal La Iniciativa',NULL),
	(5,'acerca_del_portal_porque_surgio','<section class=\"bg--light-blue pv4\">\r\n        <div class=\"center mw8\">\r\n            <h1 class=\"tc text--blue fw4 f2\">¿Por qué surgió?</h1>\r\n            <p class=\"tc silver fw4 f5-l f4 w-80 center\">La idea del portal surgió, a raíz de la identificación de los siguientes hallazgos:</p>\r\n            <div class=\"center cf\">\r\n                <div class=\"fl w-100 w-third-l ph4\">\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6-l pa4 h6 shadow-5\">\r\n                        <span class=\"icon-dipersion f-headline text--light-blue-50 fw5 tc center w-100 db\" ></span>\r\n                        <h4 class=\"tc fw4 text--blue f4 h3-l\">Dispersión de la Información</h4>\r\n                        <hr class=\"ba bo--light-blue-50 w-40\">\r\n                        <p class=\"tc silver lh-copy f6-l f5 h3 mb4\">Dispersión de la información, datos y recursos sobre derechos humanos en la red.</p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"fl w-100 w-third-l ph4\">\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6-l pa4 h6 shadow-5\">\r\n                        <span class=\"icon-existencia f-headline text--light-blue-50 fw5 tc center w-100 db\" ></span>\r\n                        <h4 class=\"tc fw4 text--blue f4 h3-l\">Existencia de formación sobre DDHH</h4>\r\n                        <hr class=\"ba bo--light-blue-50 w-40\">\r\n                        <p class=\"tc silver lh-copy f6-l f5 h3 mb4\">Existencia de formación sobre DDHH, en su mayoría en modalidad presencial, asistemática y poco compartida.</p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"fl w-100 w-third-l ph4\">\r\n                    <div class=\"ba bg-white b--black-10 mv4 w-100 mw6-l pa4 h6 shadow-5\">\r\n                        <span class=\"icon-intercambio f-headline text--light-blue-50 fw5 tc center w-100 db\" ></span>\r\n                        <h4 class=\"tc fw4 text--blue f4 h3-l\">Necesidad de espacios de intercambio</h4>\r\n                        <hr class=\"ba bo--light-blue-50 w-40\">\r\n                        <p class=\"tc silver lh-copy f6-l f5 h3 mb4\">Espacios comunitarios que faciliten el conocimiento e intercambio de experiencias sobre derechos humanos en la región.</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>','2017-08-06 00:11:05','2017-08-24 21:37:03',NULL,'Acerca del Portal ¿Por qué surgio?',NULL),
	(6,'acerca_del_portal_beneficios','<section class=\"pv4\">\r\n        <div class=\"center w-50-l w-80\">\r\n            <h1 class=\"tc text--blue fw4 f2\">¿Te interesa sumarte a la iniciativa?</h1>\r\n            <p class=\"tc silver fw4 f5\">Te colocamos algunos beneficios para los miembros afiliados</p>\r\n            <div class=\"cf mv5\">\r\n                <div class=\"fl w-100 w-50-l mb5\">\r\n                    <img src=\"/storage/pages/Acerca%20del%20Portal/oDV4lr6BiOFXACpWbUm2NLmoqOdIuGBRywtI1baJ.jpeg\" alt=\"Visibilidad\" class=\"w-80-l w-100\">\r\n                </div>\r\n                <div class=\"fl w-100 w-50-l\">\r\n                    <span class=\"icon-visibilidad silver f1 ma0 pa0\"></span>\r\n                    <h2 class=\"f2 fw3-l fw5 text--blue mv2\">Visibilidad</h2>\r\n                    <hr class=\"ba bo--light-blue-50 w-10\" align=\"left\">\r\n                    <p class=\"fw4 lh-copy f5 w-80-l w-100 text--light-blue-10\">El portal permite visibilizar a nivel regional a las organizaciones que conforman la red, facilitando su vinculación con otras entidades especializadas en derechos humanos.</p>\r\n                </div>\r\n            </div>\r\n            <div class=\"cf mv5\">\r\n                <div class=\"fl w-100 w-50-l\">\r\n                    <div class=\"w-80-l\">\r\n                        <span class=\"icon-divulgar silver f1 ma0 pa0 db tr\"></span>\r\n                        <h2 class=\"f2 fw3-l fw5 text--blue mv2 tr\">Divulgar</h2>\r\n                        <hr class=\"ba bo--light-blue-50 w-20\" align=\"right\">\r\n                        <p class=\"fw4 lh-copy f5 text--light-blue-10 tr\">Las organizaciones afiliadas podrán divulgar y promocionar sus actividades formativas, brindando una mayor cobertura, difusión e impacto a nivel de la región.</p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"fl w-100 w-50-l\">\r\n                    <img src=\"/storage/pages/Acerca%20del%20Portal/nD0lczLOnn3tZ3JGUKKU4TOMKsoP6T4WnOMtJpBG.jpeg\" alt=\"Divulgar\" class=\"w-80-l w-100\">\r\n                </div>\r\n            </div>\r\n            <div class=\"cf mv5\">\r\n                <div class=\"fl w-100 w-50-l mb5\">\r\n                    <img src=\"/storage/pages/Acerca%20del%20Portal/Q6BMAw59LM6sYif29Oryb5HJoQFhlQ3YY7Z8LChO.jpeg\" alt=\"Crear y Participar\" class=\"w-80-l w-100\">\r\n                </div>\r\n                <div class=\"fl w-100 w-50-l\">\r\n                    <span class=\"icon-crear silver f1 ma0 pa0\"></span>\r\n                    <h2 class=\"f2 fw3-l fw5 text--blue mv2\">Crear y participar</h2>\r\n                    <hr class=\"ba bo--light-blue-50 w-10\" align=\"left\">\r\n                    <p class=\"fw4 lh-copy f5 w-80-l w-100 text--light-blue-10\">Todos los usuarios pueden tener acceso a todas las herramientas e información del portal, teniendo la oportunidad de crear y participar en comunidades de práctica, cargar y descargar documentación del repositorio de información en derechos humanos; tener acceso a los cursos, seminarios, talleres, webinars disponbibles; entre otros.</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>','2017-08-06 01:08:01','2017-08-24 21:41:43',NULL,'Acerca del Portal Beneficios',NULL),
	(7,'acerca_del_portal_organizaciones','<div class=\"center w-50-l w-80 tc\">\r\n    <h1 class=\"tc text--blue fw4 f2\">Organizaciones que coordinan esta iniciativa</h1>\r\n    <p class=\"tc silver fw4 f5 lh-copy\">El portal ha sido desarrollado en el marco del Proyecto Regional de Derechos Humanos y Democracia, con el apoyo de la Fundación Panamericana para el Desarrollo (PADF, por sus siglas en inglés) y la Agencia de los Estados Unidos para el Desarrollo Internacional (USAID).</p>\r\n</div>','2017-08-06 02:14:29','2017-08-08 20:14:47',NULL,'Acerca del Portal Organizaciones',NULL),
	(8,'acerca_del_portal_galeria','<section class=\"pv4\">\r\n        <div class=\"center w-60-l w-80\">\r\n            <h1 class=\"tc text--blue fw4 f2\">Galería</h1>\r\n            <div class=\"owl-carousel owl-theme center\" id=\"owl-galery\" data-slider-id=\"1\">\r\n                <img class=\"owl-lazy img-carousel tc\" data-src=\"./images/crear.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel tc\" data-src=\"./images/divulgar.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/visibilidad.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/dddd.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/crear.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/crear.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/crear.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/crear.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/crear.jpg\" alt=\"\">\r\n                <img class=\"owl-lazy img-carousel\" data-src=\"./images/crear.jpg\" alt=\"\">\r\n            </div>\r\n            <div class=\"owl-thumbs\" data-slider-id=\"1\">\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy tc\" src=\"./images/crear.jpg\" alt=\"\">\r\n                </button>\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy\" src=\"./images/divulgar.jpg\" alt=\"\">\r\n                </button>\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy\" src=\"./images/visibilidad.jpg\" alt=\"\">\r\n                </button>\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy\" src=\"./images/dddd.jpg\" alt=\"\">\r\n                </button>\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy\" src=\"./images/crear.jpg\" alt=\"\">\r\n                </button>\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy\" src=\"./images/crear.jpg\" alt=\"\">\r\n                </button>\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy\" src=\"./images/crear.jpg\" alt=\"\">\r\n                </button>\r\n                <button class=\"owl-thumb-item\">\r\n                    <img class=\"owl-lazy\" src=\"./images/crear.jpg\" alt=\"\">\r\n                </button>\r\n            </div>\r\n        </div>\r\n    </section>','2017-08-06 03:40:55','2017-08-06 03:40:55',NULL,'Acerca del Portal Galería',NULL),
	(9,'repositorio_ddhh_introduccion','<section class=\"pv4\">\r\n        <div class=\"center w-60-l w-80\">\r\n            <h1 class=\"tc text--blue fw4 f2\">¿Cómo utilizar el repositorio?</h1>\r\n            <div class=\"cf mv5\">\r\n                <div class=\"fl w-100 w-50-l dn db-l\">\r\n                    <img src=\"/storage/pages/Repositorio/aNw7hIEUmNehynop5aysxNGKFLSZ7KgCd8sOx1Hz.jpeg\" alt=\"Explora\" class=\"w-80\">\r\n                </div>\r\n                <div class=\"fl w-100 w-50-l\">\r\n                    <p class=\"mt3\">\r\n                        <span class=\"icon-explora silver f1\"></span>\r\n                    </p>\r\n                    <h2 class=\"f2 fw3 text--blue mv2\">Explora</h2>\r\n                    <hr class=\"ba bo--light-blue-50 w-10\" align=\"left\">\r\n                    <p class=\"fw4 lh-copy f5 w-80-l w-100 text--light-blue-10 mb5\">Si tu interés estriba en la investigación y exploración de documentación. A través del motor de búsqueda podrás identificar fácilmente el material ya sea por país, filtros temáticos en derechos humanos, año, autor u otros filtros, de acuerdo a tu necesidad.</p>\r\n                    <a href=\"#busqueda\" class=\"f5 bo--purple fw4 link ba bw1 ph4 pv2 text--purple hover-bg--purple hover-white bg-animate\">Iniciar búsqueda</a>\r\n                </div>\r\n            </div>\r\n            <div class=\"cf mv5\">\r\n                <div class=\"fl w-100 w-50-l\">\r\n                    <div class=\"w-80-l w-100\">\r\n                        <p class=\"mt3\">\r\n                            <span class=\"icon-comparte silver f1 ma0 pa0 db tr\"></span>\r\n                        </p>\r\n                        <h2 class=\"f2 fw3 text--blue mv2 tr\">Comparte</h2>\r\n                        <hr class=\"ba bo--light-blue-50 w-20\" align=\"right\">\r\n                        <p class=\"fw4 lh-copy f5 text--light-blue-10 tr mb5\">Si lo que te atrae es compartir con otros. También en este espacio puedes contribuir con investigadores, académicos, estudiantes u otras personas interesadas en derechos humanos, subiendo materiales que resulten de interés para la difusión y conocimiento a nivel de la región.</p>\r\n                        <p class=\"tr\">\r\n                            <a href=\"/documento/crear\" class=\"f5 bo--purple fw4 link ba bw1 ph4 pv2 text--purple hover-bg--purple hover-white bg-animate\" id=\"busqueda\">Comienza a compartir</a>\r\n                        </p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"fl w-100 w-50-l dn db-l\">\r\n                    <img src=\"/storage/pages/Repositorio/3K5WheP0RpABIQZTPhCFOjordt6DgwIqJwNfrxPq.jpeg\" alt=\"Comparte\" class=\"w-80\">\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>','2017-08-06 03:42:48','2017-08-11 07:00:54',NULL,'Repositorio DDHH ¿Cómo Utilizarlo?',NULL),
	(10,'organizaciones_introduccion','<section class=\"pv5\">\r\n    <div class=\"center w-50-l w-80 tc\">\r\n        <span class=\"icon-search-map f1 silver\"></span>\r\n        <h1 class=\"text--blue f2 fw5 mb5\">¿Cómo usar el mapa?</h1>\r\n        <p class=\"silver f4 f5-l lh-copy\">Con el cursor recorra la región Centroamericana. Al hacer clic sobre un país, se desplegará el número de organizaciones registradas en el directorio, haciendo un segundo clic sobre el resultado se desplegará el directorio de organizaciones del país correspondiente.</p>\r\n        <p class=\"silver f4 f5-l lh-copy mb5\">Esta página igualmente dispone de herramientas de búsqueda especializada por áreas temáticas de derechos humanos, como, por ejemplo: derechos de las mujeres, comunidad LGTBI, entre otros.</p>\r\n        <a href=\"/organizacion/crear\" class=\"f5-l f4 fw4 tc bo--purple link ba bw1 pv2 ph4 text--purple hover-bg--purple hover-white bg-animate\">Inscribe tu Organización</a>\r\n    </div>\r\n</section>','2017-08-06 03:47:06','2017-08-24 21:55:37',NULL,'Organizaciones ¿Cómo usar el mapa?',NULL),
	(11,'formacion_introduccion','<section class=\"pv5\">\r\n    <div class=\"w-80 center tc\">\r\n        <h1 class=\"f2 fw5 text--blue\">¿Cómo divulgar tus actividades formativas?</h1>\r\n        <p class=\"lh-copy f5 silver ma4 w-50-l w-80 tc center\">\r\n            Si tu organización o institución se encuentra desarrollando actividades de fortalecimiento orientadas al mejoramiento de conocimientos, habilidades y destrezas en el área de derechos humanos, el portal te permite publicar la información y visibilizarla a nivel regional.\r\n        </p>\r\n        <a href=\"/formacion/crear\" class=\"f5 fw4 tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate ph5-l ph2+\">Inscribe tu actividad formativa</a>\r\n    </div>\r\n</section>','2017-08-06 03:49:18','2017-08-24 22:41:00',NULL,'Formación ¿Cómo crear contenido?',NULL);

/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(191) DEFAULT NULL,
  `iso` varchar(191) DEFAULT NULL,
  `iso3` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `sp_name` varchar(191) DEFAULT NULL,
  `numcode` varchar(191) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;

INSERT INTO `countries` (`id`, `iso_name`, `iso`, `iso3`, `name`, `sp_name`, `numcode`, `region_id`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'CHAD','TD','TCD','Chad','Chad','148',NULL,NULL,'2016-12-01 21:35:48','2016-12-01 21:35:48'),
	(2,'FAROE ISLANDS','FO','FRO','Faroe Islands','Faroe Islands','234',NULL,NULL,'2016-12-01 21:35:48','2016-12-01 21:35:48'),
	(3,'INDIA','IN','IND','India','India','356',NULL,NULL,'2016-12-01 21:35:48','2016-12-01 21:35:48'),
	(4,'NICARAGUA','NI','NIC','Nicaragua','Nicaragua','558',NULL,NULL,'2016-12-01 21:35:48','2016-12-01 21:35:48'),
	(5,'SAINT LUCIA','LC','LCA','Saint Lucia','Saint Lucia','662',NULL,NULL,'2016-12-01 21:35:48','2016-12-01 21:35:48'),
	(6,'FIJI','FJ','FJI','Fiji','Fiji','242',NULL,NULL,'2016-12-01 21:35:48','2016-12-01 21:35:48'),
	(7,'INDONESIA','ID','IDN','Indonesia','Indonesia','360',NULL,NULL,'2016-12-01 21:35:48','2016-12-01 21:35:48'),
	(8,'NIGER','NE','NER','Niger','Níger','562',NULL,NULL,'2016-12-01 21:35:48','2016-12-01 21:35:48'),
	(9,'SAINT PIERRE AND MIQUELON','PM','SPM','Saint Pierre and Miquelon','Saint Pierre and Miquelon','666',NULL,NULL,'2016-12-01 21:35:48','2016-12-01 21:35:48'),
	(10,'FINLAND','FI','FIN','Finland','Finlandia','246',NULL,NULL,'2016-12-01 21:35:48','2016-12-01 21:35:48'),
	(11,'NIGERIA','NG','NGA','Nigeria','Nigeria','566',NULL,NULL,'2016-12-01 21:35:48','2016-12-01 21:35:48'),
	(12,'SAINT VINCENT AND THE GRENADINES','VC','VCT','Saint Vincent and the Grenadines','San Vicente y Las Granadinas','670',NULL,NULL,'2016-12-01 21:35:49','2016-12-01 21:35:49'),
	(13,'FRANCE','FR','FRA','France','Francia','250',NULL,NULL,'2016-12-01 21:35:49','2016-12-01 21:35:49'),
	(14,'IRAN, ISLAMIC REPUBLIC OF','IR','IRN','Iran, Islamic Republic of','Irán','364',NULL,NULL,'2016-12-01 21:35:50','2016-12-01 21:35:50'),
	(15,'NIUE','NU','NIU','Niue','Niue','570',NULL,NULL,'2016-12-01 21:35:50','2016-12-01 21:35:50'),
	(16,'SAMOA','WS','WSM','Samoa','Samoa','882',NULL,NULL,'2016-12-01 21:35:50','2016-12-01 21:35:50'),
	(17,'FRENCH GUIANA','GF','GUF','French Guiana','Guayana Francesa','254',NULL,NULL,'2016-12-01 21:35:50','2016-12-01 21:35:50'),
	(18,'IRAQ','IQ','IRQ','Iraq','Iraq','368',NULL,NULL,'2016-12-01 21:35:50','2016-12-01 21:35:50'),
	(19,'SAN MARINO','SM','SMR','San Marino','San Marino','674',NULL,NULL,'2016-12-01 21:35:50','2016-12-01 21:35:50'),
	(20,'IRELAND','IE','IRL','Ireland','Irlanda','372',NULL,NULL,'2016-12-01 21:35:50','2016-12-01 21:35:50'),
	(21,'SAO TOME AND PRINCIPE','ST','STP','Sao Tome and Principe','Sao Tome and Principe','678',NULL,NULL,'2016-12-01 21:35:51','2016-12-01 21:35:51'),
	(22,'ISRAEL','IL','ISR','Israel','Israel','376',NULL,NULL,'2016-12-01 21:35:51','2016-12-01 21:35:51'),
	(23,'SAUDI ARABIA','SA','SAU','Saudi Arabia','Arabia Saudita','682',NULL,NULL,'2016-12-01 21:35:51','2016-12-01 21:35:51'),
	(24,'ITALY','IT','ITA','Italy','Italia','380',NULL,NULL,'2016-12-01 21:35:51','2016-12-01 21:35:51'),
	(25,'SENEGAL','SN','SEN','Senegal','Senegal','686',NULL,NULL,'2016-12-01 21:35:51','2016-12-01 21:35:51'),
	(26,'JAMAICA','JM','JAM','Jamaica','Jamaica','388',NULL,NULL,'2016-12-01 21:35:51','2016-12-01 21:35:51'),
	(27,'JAPAN','JP','JPN','Japan','Japón','392',NULL,NULL,'2016-12-01 21:35:51','2016-12-01 21:35:51'),
	(28,'JORDAN','JO','JOR','Jordan','Jordania','400',NULL,NULL,'2016-12-01 21:35:52','2016-12-01 21:35:52'),
	(29,'BELGIUM','BE','BEL','Belgium','Bélgica','56',NULL,NULL,'2016-12-01 21:35:52','2016-12-01 21:35:52'),
	(30,'BELIZE','BZ','BLZ','Belize','Belice','84',NULL,NULL,'2016-12-01 21:35:52','2016-12-01 21:35:52'),
	(31,'KAZAKHSTAN','KZ','KAZ','Kazakhstan','Kazajistán','398',NULL,NULL,'2016-12-01 21:35:52','2016-12-01 21:35:52'),
	(32,'UGANDA','UG','UGA','Uganda','Uganda','800',NULL,NULL,'2016-12-01 21:35:52','2016-12-01 21:35:52'),
	(33,'BENIN','BJ','BEN','Benin','Benín','204',NULL,NULL,'2016-12-01 21:35:52','2016-12-01 21:35:52'),
	(34,'KENYA','KE','KEN','Kenya','Kenia','404',NULL,NULL,'2016-12-01 21:35:52','2016-12-01 21:35:52'),
	(35,'UKRAINE','UA','UKR','Ukraine','Ucrania','804',NULL,NULL,'2016-12-01 21:35:52','2016-12-01 21:35:52'),
	(36,'BERMUDA','BM','BMU','Bermuda','Bermuda','60',NULL,NULL,'2016-12-01 21:35:52','2016-12-01 21:35:52'),
	(37,'KIRIBATI','KI','KIR','Kiribati','Kiribati','296',NULL,NULL,'2016-12-01 21:35:52','2016-12-01 21:35:52'),
	(38,'MEXICO','MX','MEX','Mexico','México','484',NULL,NULL,'2016-12-01 21:35:53','2016-12-01 21:35:53'),
	(39,'UNITED ARAB EMIRATES','AE','ARE','United Arab Emirates','Emiratos Árabes Unidos','784',NULL,NULL,'2016-12-01 21:35:56','2016-12-01 21:35:56'),
	(40,'BHUTAN','BT','BTN','Bhutan','Bután','64',NULL,NULL,'2016-12-01 21:35:56','2016-12-01 21:35:56'),
	(41,'CUBA','CU','CUB','Cuba','Cuba','192',NULL,NULL,'2016-12-01 21:35:56','2016-12-01 21:35:56'),
	(42,'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','KP','PRK','North Korea','Corea del Norte','408',NULL,NULL,'2016-12-01 21:35:56','2016-12-01 21:35:56'),
	(43,'MICRONESIA, FEDERATED STATES OF','FM','FSM','Micronesia, Federated States of','Micronesia','583',NULL,NULL,'2016-12-01 21:35:56','2016-12-01 21:35:56'),
	(44,'UNITED KINGDOM','GB','GBR','United Kingdom','United Kingdom','826',NULL,NULL,'2016-12-01 21:35:56','2016-12-01 21:35:56'),
	(45,'BOLIVIA','BO','BOL','Bolivia','Bolivia','68',NULL,NULL,'2016-12-01 21:35:56','2016-12-01 21:35:56'),
	(46,'CYPRUS','CY','CYP','Cyprus','Chipre','196',NULL,NULL,'2016-12-01 21:35:56','2016-12-01 21:35:56'),
	(47,'KOREA, REPUBLIC OF','KR','KOR','South Korea','Corea del Sur','410',NULL,NULL,'2016-12-01 21:35:56','2016-12-01 21:35:56'),
	(48,'MOLDOVA, REPUBLIC OF','MD','MDA','Moldova, Republic of','Moldova, Republic of','498',NULL,NULL,'2016-12-01 21:35:57','2016-12-01 21:35:57'),
	(49,'UNITED STATES','US','USA','United States','Estados Unidos','840',NULL,NULL,'2016-12-01 21:35:58','2016-12-01 21:35:58'),
	(50,'BOSNIA AND HERZEGOVINA','BA','BIH','Bosnia and Herzegovina','Bosnia y Herzegovina','70',NULL,NULL,'2016-12-01 21:36:15','2016-12-01 21:36:15'),
	(51,'CZECH REPUBLIC','CZ','CZE','Czech Republic','República Checa','203',NULL,NULL,'2016-12-01 21:36:15','2016-12-01 21:36:15'),
	(52,'KUWAIT','KW','KWT','Kuwait','Kuwait','414',NULL,NULL,'2016-12-01 21:36:16','2016-12-01 21:36:16'),
	(53,'MONACO','MC','MCO','Monaco','Monaco','492',NULL,NULL,'2016-12-01 21:36:16','2016-12-01 21:36:16'),
	(54,'URUGUAY','UY','URY','Uruguay','Uruguay','858',NULL,NULL,'2016-12-01 21:36:16','2016-12-01 21:36:16'),
	(55,'BOTSWANA','BW','BWA','Botswana','Botswana','72',NULL,NULL,'2016-12-01 21:36:16','2016-12-01 21:36:16'),
	(56,'DENMARK','DK','DNK','Denmark','Dinamarca','208',NULL,NULL,'2016-12-01 21:36:16','2016-12-01 21:36:16'),
	(57,'GUADELOUPE','GP','GLP','Guadeloupe','Guadeloupe','312',NULL,NULL,'2016-12-01 21:36:16','2016-12-01 21:36:16'),
	(58,'KYRGYZSTAN','KG','KGZ','Kyrgyzstan','Kirguistán','417',NULL,NULL,'2016-12-01 21:36:16','2016-12-01 21:36:16'),
	(59,'MONGOLIA','MN','MNG','Mongolia','Mongolia','496',NULL,NULL,'2016-12-01 21:36:16','2016-12-01 21:36:16'),
	(60,'PHILIPPINES','PH','PHL','Philippines','Filipinas','608',NULL,NULL,'2016-12-01 21:36:16','2016-12-01 21:36:16'),
	(61,'BRAZIL','BR','BRA','Brazil','Brasil','76',NULL,NULL,'2016-12-01 21:36:16','2016-12-01 21:36:16'),
	(62,'DJIBOUTI','DJ','DJI','Djibouti','Djibouti','262',NULL,NULL,'2016-12-01 21:36:17','2016-12-01 21:36:17'),
	(63,'GUAM','GU','GUM','Guam','Guam','316',NULL,NULL,'2016-12-01 21:36:17','2016-12-01 21:36:17'),
	(64,'LAO PEOPLE\'S DEMOCRATIC REPUBLIC','LA','LAO','Lao People\'s Democratic Republic','Laos','418',NULL,NULL,'2016-12-01 21:36:17','2016-12-01 21:36:17'),
	(65,'MONTSERRAT','MS','MSR','Montserrat','Montserrat','500',NULL,NULL,'2016-12-01 21:36:18','2016-12-01 21:36:18'),
	(66,'PITCAIRN','PN','PCN','Pitcairn','Pitcairn','612',NULL,NULL,'2016-12-01 21:36:18','2016-12-01 21:36:18'),
	(67,'UZBEKISTAN','UZ','UZB','Uzbekistan','Uzbekistán','860',NULL,NULL,'2016-12-01 21:36:18','2016-12-01 21:36:18'),
	(68,'BRUNEI DARUSSALAM','BN','BRN','Brunei Darussalam','Brunéi','96',NULL,NULL,'2016-12-01 21:36:18','2016-12-01 21:36:18'),
	(69,'DOMINICA','DM','DMA','Dominica','Dominica','212',NULL,NULL,'2016-12-01 21:36:18','2016-12-01 21:36:18'),
	(70,'GUATEMALA','GT','GTM','Guatemala','Guatemala','320',NULL,NULL,'2016-12-01 21:36:18','2016-12-01 21:36:18'),
	(71,'MOROCCO','MA','MAR','Morocco','Marruecos','504',NULL,NULL,'2016-12-01 21:36:18','2016-12-01 21:36:18'),
	(72,'POLAND','PL','POL','Poland','Polonia','616',NULL,NULL,'2016-12-01 21:36:18','2016-12-01 21:36:18'),
	(73,'VANUATU','VU','VUT','Vanuatu','Vanuatu','548',NULL,NULL,'2016-12-01 21:36:19','2016-12-01 21:36:19'),
	(74,'DOMINICAN REPUBLIC','DO','DOM','Dominican Republic','República Dominicana','214',NULL,NULL,'2016-12-01 21:36:19','2016-12-01 21:36:19'),
	(75,'MOZAMBIQUE','MZ','MOZ','Mozambique','Mozambique','508',NULL,NULL,'2016-12-01 21:36:19','2016-12-01 21:36:19'),
	(76,'PORTUGAL','PT','PRT','Portugal','Portugal','620',NULL,NULL,'2016-12-01 21:36:20','2016-12-01 21:36:20'),
	(77,'SUDAN','SD','SDN','Sudan','Sudán','736',NULL,NULL,'2016-12-01 21:36:20','2016-12-01 21:36:20'),
	(78,'VENEZUELA','VE','VEN','Venezuela','Venezuela','862',NULL,NULL,'2016-12-01 21:36:20','2016-12-01 21:36:20'),
	(79,'ECUADOR','EC','ECU','Ecuador','Ecuador','218',NULL,NULL,'2016-12-01 21:36:20','2016-12-01 21:36:20'),
	(80,'GUINEA','GN','GIN','Guinea','Guinea','324',NULL,NULL,'2016-12-01 21:36:20','2016-12-01 21:36:20'),
	(81,'MYANMAR','MM','MMR','Myanmar','Birmania','104',NULL,NULL,'2016-12-01 21:36:20','2016-12-01 21:36:20'),
	(82,'PUERTO RICO','PR','PRI','Puerto Rico','Puerto Rico','630',NULL,NULL,'2016-12-01 21:36:20','2016-12-01 21:36:20'),
	(83,'SURINAME','SR','SUR','Suriname','Surinam','740',NULL,NULL,'2016-12-01 21:36:22','2016-12-01 21:36:22'),
	(84,'VIET NAM','VN','VNM','Viet Nam','Vietnam','704',NULL,NULL,'2016-12-01 21:36:22','2016-12-01 21:36:22'),
	(85,'EGYPT','EG','EGY','Egypt','Egipto','818',NULL,NULL,'2016-12-01 21:36:22','2016-12-01 21:36:22'),
	(86,'GUINEA-BISSAU','GW','GNB','Guinea-Bissau','Guinea-Bissau','624',NULL,NULL,'2016-12-01 21:36:22','2016-12-01 21:36:22'),
	(87,'NAMIBIA','NA','NAM','Namibia','Namibia','516',NULL,NULL,'2016-12-01 21:36:22','2016-12-01 21:36:22'),
	(88,'QATAR','QA','QAT','Qatar','Qatar','634',NULL,NULL,'2016-12-01 21:36:22','2016-12-01 21:36:22'),
	(89,'SVALBARD AND JAN MAYEN','SJ','SJM','Svalbard and Jan Mayen','Svalbard and Jan Mayen','744',NULL,NULL,'2016-12-01 21:36:22','2016-12-01 21:36:22'),
	(90,'EL SALVADOR','SV','SLV','El Salvador','El Salvador','222',NULL,NULL,'2016-12-01 21:36:22','2016-12-01 21:36:22'),
	(91,'GUYANA','GY','GUY','Guyana','Guyana','328',NULL,NULL,'2016-12-01 21:36:23','2016-12-01 21:36:23'),
	(92,'REUNION','RE','REU','Reunion','Reunion','638',NULL,NULL,'2016-12-01 21:36:23','2016-12-01 21:36:23'),
	(93,'HAITI','HT','HTI','Haiti','Haití','332',NULL,NULL,'2016-12-01 21:36:23','2016-12-01 21:36:23'),
	(94,'ROMANIA','RO','ROM','Romania','Rumania','642',NULL,NULL,'2016-12-01 21:36:23','2016-12-01 21:36:23'),
	(95,'SWAZILAND','SZ','SWZ','Swaziland','Suazilandia','748',NULL,NULL,'2016-12-01 21:36:23','2016-12-01 21:36:23'),
	(96,'HOLY SEE (VATICAN CITY STATE)','VA','VAT','Holy See (Vatican City State)','Holy See (Vatican City State)','336',NULL,NULL,'2016-12-01 21:36:23','2016-12-01 21:36:23'),
	(97,'RUSSIAN FEDERATION','RU','RUS','Russian Federation','Rusia','643',NULL,NULL,'2016-12-01 21:36:23','2016-12-01 21:36:23'),
	(98,'SWEDEN','SE','SWE','Sweden','Suecia','752',NULL,NULL,'2016-12-01 21:36:24','2016-12-01 21:36:24'),
	(99,'HONDURAS','HN','HND','Honduras','Honduras','340',NULL,NULL,'2016-12-01 21:36:24','2016-12-01 21:36:24'),
	(100,'RWANDA','RW','RWA','Rwanda','Ruanda','646',NULL,NULL,'2016-12-01 21:36:24','2016-12-01 21:36:24'),
	(101,'SWITZERLAND','CH','CHE','Switzerland','Suiza','756',NULL,NULL,'2016-12-01 21:36:24','2016-12-01 21:36:24'),
	(102,'HONG KONG','HK','HKG','Hong Kong','Hong Kong','344',NULL,NULL,'2016-12-01 21:36:25','2016-12-01 21:36:25'),
	(103,'SYRIAN ARAB REPUBLIC','SY','SYR','Syrian Arab Republic','Siria','760',NULL,NULL,'2016-12-01 21:36:25','2016-12-01 21:36:25'),
	(104,'TAIWAN, PROVINCE OF CHINA','TW','TWN','Taiwan','Taiwan','158',NULL,NULL,'2016-12-01 21:36:25','2016-12-01 21:36:25'),
	(105,'TAJIKISTAN','TJ','TJK','Tajikistan','Tayikistán','762',NULL,NULL,'2016-12-01 21:36:25','2016-12-01 21:36:25'),
	(106,'TANZANIA, UNITED REPUBLIC OF','TZ','TZA','Tanzania, United Republic of','Tanzania','834',NULL,NULL,'2016-12-01 21:36:25','2016-12-01 21:36:25'),
	(107,'ARMENIA','AM','ARM','Armenia','Armenia','51',NULL,NULL,'2016-12-01 21:36:25','2016-12-01 21:36:25'),
	(108,'ARUBA','AW','ABW','Aruba','Aruba','533',NULL,NULL,'2016-12-01 21:36:25','2016-12-01 21:36:25'),
	(109,'AUSTRALIA','AU','AUS','Australia','Australia','36',NULL,NULL,'2016-12-01 21:36:25','2016-12-01 21:36:25'),
	(110,'THAILAND','TH','THA','Thailand','Tailandia','764',NULL,NULL,'2016-12-01 21:36:25','2016-12-01 21:36:25'),
	(111,'AUSTRIA','AT','AUT','Austria','Austria','40',NULL,NULL,'2016-12-01 21:36:26','2016-12-01 21:36:26'),
	(112,'MADAGASCAR','MG','MDG','Madagascar','Madagascar','450',NULL,NULL,'2016-12-01 21:36:26','2016-12-01 21:36:26'),
	(113,'TOGO','TG','TGO','Togo','Togo','768',NULL,NULL,'2016-12-01 21:36:26','2016-12-01 21:36:26'),
	(114,'AZERBAIJAN','AZ','AZE','Azerbaijan','Azerbaiyán','31',NULL,NULL,'2016-12-01 21:36:26','2016-12-01 21:36:26'),
	(115,'CHILE','CL','CHL','Chile','Chile','152',NULL,NULL,'2016-12-01 21:36:27','2016-12-01 21:36:27'),
	(116,'MALAWI','MW','MWI','Malawi','Malaui','454',NULL,NULL,'2016-12-01 21:36:27','2016-12-01 21:36:27'),
	(117,'TOKELAU','TK','TKL','Tokelau','Tokelau','772',NULL,NULL,'2016-12-01 21:36:27','2016-12-01 21:36:27'),
	(118,'BAHAMAS','BS','BHS','Bahamas','Bahamas','44',NULL,NULL,'2016-12-01 21:36:27','2016-12-01 21:36:27'),
	(119,'CHINA','CN','CHN','China','China','156',NULL,NULL,'2016-12-01 21:36:27','2016-12-01 21:36:27'),
	(120,'MALAYSIA','MY','MYS','Malaysia','Malasia','458',NULL,NULL,'2016-12-01 21:36:27','2016-12-01 21:36:27'),
	(121,'TONGA','TO','TON','Tonga','Tonga','776',NULL,NULL,'2016-12-01 21:36:27','2016-12-01 21:36:27'),
	(122,'BAHRAIN','BH','BHR','Bahrain','Bahréin','48',NULL,NULL,'2016-12-01 21:36:27','2016-12-01 21:36:27'),
	(123,'COLOMBIA','CO','COL','Colombia','Colombia','170',NULL,NULL,'2016-12-01 21:36:27','2016-12-01 21:36:27'),
	(124,'MALDIVES','MV','MDV','Maldives','Maldivas','462',NULL,NULL,'2016-12-01 21:36:28','2016-12-01 21:36:28'),
	(125,'TRINIDAD AND TOBAGO','TT','TTO','Trinidad and Tobago','Trinidad y Tobago','780',NULL,NULL,'2016-12-01 21:36:28','2016-12-01 21:36:28'),
	(126,'BANGLADESH','BD','BGD','Bangladesh','Bangladesh','50',NULL,NULL,'2016-12-01 21:36:28','2016-12-01 21:36:28'),
	(127,'COMOROS','KM','COM','Comoros','Comoros','174',NULL,NULL,'2016-12-01 21:36:28','2016-12-01 21:36:28'),
	(128,'FRENCH POLYNESIA','PF','PYF','French Polynesia','French Polynesia','258',NULL,NULL,'2016-12-01 21:36:28','2016-12-01 21:36:28'),
	(129,'MALI','ML','MLI','Mali','Malí','466',NULL,NULL,'2016-12-01 21:36:28','2016-12-01 21:36:28'),
	(130,'NORFOLK ISLAND','NF','NFK','Norfolk Island','Norfolk Island','574',NULL,NULL,'2016-12-01 21:36:28','2016-12-01 21:36:28'),
	(131,'TUNISIA','TN','TUN','Tunisia','Túnez','788',NULL,NULL,'2016-12-01 21:36:28','2016-12-01 21:36:28'),
	(132,'BARBADOS','BB','BRB','Barbados','Barbados','52',NULL,NULL,'2016-12-01 21:36:29','2016-12-01 21:36:29'),
	(133,'CONGO','CG','COG','Congo','Congo','178',NULL,NULL,'2016-12-01 21:36:29','2016-12-01 21:36:29'),
	(134,'GABON','GA','GAB','Gabon','Gabon','266',NULL,NULL,'2016-12-01 21:36:29','2016-12-01 21:36:29'),
	(135,'MALTA','MT','MLT','Malta','Malta','470',NULL,NULL,'2016-12-01 21:36:29','2016-12-01 21:36:29'),
	(136,'NORTHERN MARIANA ISLANDS','MP','MNP','Northern Mariana Islands','Northern Mariana Islands','580',NULL,NULL,'2016-12-01 21:36:29','2016-12-01 21:36:29'),
	(137,'TURKEY','TR','TUR','Turkey','Turquía','792',NULL,NULL,'2016-12-01 21:36:29','2016-12-01 21:36:29'),
	(138,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CD','COD','Congo, the Democratic Republic of the','Congo, the Democratic Republic of the','180',NULL,NULL,'2016-12-01 21:36:29','2016-12-01 21:36:29'),
	(139,'MARSHALL ISLANDS','MH','MHL','Marshall Islands','Marshall Islands','584',NULL,NULL,'2016-12-01 21:36:29','2016-12-01 21:36:29'),
	(140,'NORWAY','NO','NOR','Norway','Noruega','578',NULL,NULL,'2016-12-01 21:36:29','2016-12-01 21:36:29'),
	(141,'TURKMENISTAN','TM','TKM','Turkmenistan','Turkmenistán','795',NULL,NULL,'2016-12-01 21:36:30','2016-12-01 21:36:30'),
	(142,'BELARUS','BY','BLR','Belarus','Bielorrusia','112',NULL,NULL,'2016-12-01 21:36:30','2016-12-01 21:36:30'),
	(143,'COOK ISLANDS','CK','COK','Cook Islands','Cook Islands','184',NULL,NULL,'2016-12-01 21:36:30','2016-12-01 21:36:30'),
	(144,'GAMBIA','GM','GMB','Gambia','Gambia','270',NULL,NULL,'2016-12-01 21:36:30','2016-12-01 21:36:30'),
	(145,'MARTINIQUE','MQ','MTQ','Martinique','Martinique','474',NULL,NULL,'2016-12-01 21:36:30','2016-12-01 21:36:30'),
	(146,'OMAN','OM','OMN','Oman','Omán','512',NULL,NULL,'2016-12-01 21:36:30','2016-12-01 21:36:30'),
	(147,'SEYCHELLES','SC','SYC','Seychelles','Seychelles','690',NULL,NULL,'2016-12-01 21:36:30','2016-12-01 21:36:30'),
	(148,'TURKS AND CAICOS ISLANDS','TC','TCA','Turks and Caicos Islands','Turks and Caicos Islands','796',NULL,NULL,'2016-12-01 21:36:30','2016-12-01 21:36:30'),
	(149,'GEORGIA','GE','GEO','Georgia','Georgia','268',NULL,NULL,'2016-12-01 21:36:30','2016-12-01 21:36:30'),
	(150,'MAURITANIA','MR','MRT','Mauritania','Mauritania','478',NULL,NULL,'2016-12-01 21:36:30','2016-12-01 21:36:30'),
	(151,'PAKISTAN','PK','PAK','Pakistan','Pakistán','586',NULL,NULL,'2016-12-01 21:36:30','2016-12-01 21:36:30'),
	(152,'SIERRA LEONE','SL','SLE','Sierra Leone','Sierra Leona','694',NULL,NULL,'2016-12-01 21:36:31','2016-12-01 21:36:31'),
	(153,'TUVALU','TV','TUV','Tuvalu','Tuvalu','798',NULL,NULL,'2016-12-01 21:36:31','2016-12-01 21:36:31'),
	(154,'COSTA RICA','CR','CRI','Costa Rica','Costa Rica','188',NULL,NULL,'2016-12-01 21:36:31','2016-12-01 21:36:31'),
	(155,'GERMANY','DE','DEU','Germany','Alemania','276',NULL,NULL,'2016-12-01 21:36:31','2016-12-01 21:36:31'),
	(156,'MAURITIUS','MU','MUS','Mauritius','Mauritius','480',NULL,NULL,'2016-12-01 21:36:31','2016-12-01 21:36:31'),
	(157,'PALAU','PW','PLW','Palau','Palau','585',NULL,NULL,'2016-12-01 21:36:31','2016-12-01 21:36:31'),
	(158,'COTE D\'IVOIRE','CI','CIV','Cote D\'Ivoire','Costa de Marfil','384',NULL,NULL,'2016-12-01 21:36:31','2016-12-01 21:36:31'),
	(159,'PANAMA','PA','PAN','Panama','Panamá','591',NULL,NULL,'2016-12-01 21:36:31','2016-12-01 21:36:31'),
	(160,'SINGAPORE','SG','SGP','Singapore','Singapur','702',NULL,NULL,'2016-12-01 21:36:31','2016-12-01 21:36:31'),
	(161,'CROATIA','HR','HRV','Croatia','Croacia','191',NULL,NULL,'2016-12-01 21:36:31','2016-12-01 21:36:31'),
	(162,'GHANA','GH','GHA','Ghana','Ghana','288',NULL,NULL,'2016-12-01 21:36:32','2016-12-01 21:36:32'),
	(163,'PAPUA NEW GUINEA','PG','PNG','Papua New Guinea','Papúa Nueva Guinea','598',NULL,NULL,'2016-12-01 21:36:32','2016-12-01 21:36:32'),
	(164,'SLOVAKIA','SK','SVK','Slovakia','Eslovaquia','703',NULL,NULL,'2016-12-01 21:36:32','2016-12-01 21:36:32'),
	(165,'GIBRALTAR','GI','GIB','Gibraltar','Gibraltar','292',NULL,NULL,'2016-12-01 21:36:32','2016-12-01 21:36:32'),
	(166,'PARAGUAY','PY','PRY','Paraguay','Paraguay','600',NULL,NULL,'2016-12-01 21:36:32','2016-12-01 21:36:32'),
	(167,'SLOVENIA','SI','SVN','Slovenia','Eslovenia','705',NULL,NULL,'2016-12-01 21:36:33','2016-12-01 21:36:33'),
	(168,'GREECE','GR','GRC','Greece','Grecia','300',NULL,NULL,'2016-12-01 21:36:33','2016-12-01 21:36:33'),
	(169,'PERU','PE','PER','Peru','Perú','604',NULL,NULL,'2016-12-01 21:36:33','2016-12-01 21:36:33'),
	(170,'SOLOMON ISLANDS','SB','SLB','Solomon Islands','Solomon Islands','90',NULL,NULL,'2016-12-01 21:36:33','2016-12-01 21:36:33'),
	(171,'GREENLAND','GL','GRL','Greenland','Greenland','304',NULL,NULL,'2016-12-01 21:36:33','2016-12-01 21:36:33'),
	(172,'SOMALIA','SO','SOM','Somalia','Somalia','706',NULL,NULL,'2016-12-01 21:36:33','2016-12-01 21:36:33'),
	(173,'GRENADA','GD','GRD','Grenada','Granada','308',NULL,NULL,'2016-12-01 21:36:33','2016-12-01 21:36:33'),
	(174,'SOUTH AFRICA','ZA','ZAF','South Africa','Sudáfrica','710',NULL,NULL,'2016-12-01 21:36:33','2016-12-01 21:36:33'),
	(175,'SPAIN','ES','ESP','Spain','España','724',NULL,NULL,'2016-12-01 21:36:34','2016-12-01 21:36:34'),
	(176,'SRI LANKA','LK','LKA','Sri Lanka','Sri Lanka','144',NULL,NULL,'2016-12-01 21:36:34','2016-12-01 21:36:34'),
	(177,'AFGHANISTAN','AF','AFG','Afghanistan','Afganistán','4',NULL,NULL,'2016-12-01 21:36:34','2016-12-01 21:36:34'),
	(178,'ALBANIA','AL','ALB','Albania','Albania','8',NULL,NULL,'2016-12-01 21:36:34','2016-12-01 21:36:34'),
	(179,'ALGERIA','DZ','DZA','Algeria','Argelia','12',NULL,NULL,'2016-12-01 21:36:34','2016-12-01 21:36:34'),
	(180,'LATVIA','LV','LVA','Latvia','Latvia','428',NULL,NULL,'2016-12-01 21:36:35','2016-12-01 21:36:35'),
	(181,'AMERICAN SAMOA','AS','ASM','American Samoa','American Samoa','16',NULL,NULL,'2016-12-01 21:36:35','2016-12-01 21:36:35'),
	(182,'BULGARIA','BG','BGR','Bulgaria','Bulgaria','100',NULL,NULL,'2016-12-01 21:36:35','2016-12-01 21:36:35'),
	(183,'LEBANON','LB','LBN','Lebanon','Líbano','422',NULL,NULL,'2016-12-01 21:36:35','2016-12-01 21:36:35'),
	(184,'ANDORRA','AD','AND','Andorra','Andorra','20',NULL,NULL,'2016-12-01 21:36:35','2016-12-01 21:36:35'),
	(185,'BURKINA FASO','BF','BFA','Burkina Faso','Burkina Faso','854',NULL,NULL,'2016-12-01 21:36:35','2016-12-01 21:36:35'),
	(186,'LESOTHO','LS','LSO','Lesotho','Lesotho','426',NULL,NULL,'2016-12-01 21:36:35','2016-12-01 21:36:35'),
	(187,'ANGOLA','AO','AGO','Angola','Angola','24',NULL,NULL,'2016-12-01 21:36:35','2016-12-01 21:36:35'),
	(188,'BURUNDI','BI','BDI','Burundi','Burundi','108',NULL,NULL,'2016-12-01 21:36:35','2016-12-01 21:36:35'),
	(189,'LIBERIA','LR','LBR','Liberia','Liberia','430',NULL,NULL,'2016-12-01 21:36:35','2016-12-01 21:36:35'),
	(190,'VIRGIN ISLANDS, BRITISH','VG','VGB','Virgin Islands, British','Virgin Islands, British','92',NULL,NULL,'2016-12-01 21:36:35','2016-12-01 21:36:35'),
	(191,'ANGUILLA','AI','AIA','Anguilla','Anguilla','660',NULL,NULL,'2016-12-01 21:36:35','2016-12-01 21:36:35'),
	(192,'CAMBODIA','KH','KHM','Cambodia','Camboya','116',NULL,NULL,'2016-12-01 21:36:35','2016-12-01 21:36:35'),
	(193,'EQUATORIAL GUINEA','GQ','GNQ','Equatorial Guinea','Guinea Ecuatorial','226',NULL,NULL,'2016-12-01 21:36:35','2016-12-01 21:36:35'),
	(194,'LIBYAN ARAB JAMAHIRIYA','LY','LBY','Libyan Arab Jamahiriya','Libia','434',NULL,NULL,'2016-12-01 21:36:36','2016-12-01 21:36:36'),
	(195,'NAURU','NR','NRU','Nauru','Nauru','520',NULL,NULL,'2016-12-01 21:36:36','2016-12-01 21:36:36'),
	(196,'VIRGIN ISLANDS, U.S.','VI','VIR','Virgin Islands, U.S.','Virgin Islands, U.S.','850',NULL,NULL,'2016-12-01 21:36:36','2016-12-01 21:36:36'),
	(197,'ANTIGUA AND BARBUDA','AG','ATG','Antigua and Barbuda','Antigua y Barbuda','28',NULL,NULL,'2016-12-01 21:36:36','2016-12-01 21:36:36'),
	(198,'CAMEROON','CM','CMR','Cameroon','Camerún','120',NULL,NULL,'2016-12-01 21:36:36','2016-12-01 21:36:36'),
	(199,'LIECHTENSTEIN','LI','LIE','Liechtenstein','Liechtenstein','438',NULL,NULL,'2016-12-01 21:36:36','2016-12-01 21:36:36'),
	(200,'NEPAL','NP','NPL','Nepal','Nepal','524',NULL,NULL,'2016-12-01 21:36:36','2016-12-01 21:36:36'),
	(201,'WALLIS AND FUTUNA','WF','WLF','Wallis and Futuna','Wallis and Futuna','876',NULL,NULL,'2016-12-01 21:36:36','2016-12-01 21:36:36'),
	(202,'WESTERN SAHARA','EH','ESH','Western Sahara','Western Sahara','732',NULL,NULL,'2016-12-01 21:36:36','2016-12-01 21:36:36'),
	(203,'ARGENTINA','AR','ARG','Argentina','Argentina','32',NULL,NULL,'2016-12-01 21:36:36','2016-12-01 21:36:36'),
	(204,'CANADA','CA','CAN','Canada','Canadá','124',NULL,NULL,'2016-12-01 21:36:37','2016-12-01 21:36:37'),
	(205,'ERITREA','ER','ERI','Eritrea','Eritrea','232',NULL,NULL,'2016-12-01 21:36:37','2016-12-01 21:36:37'),
	(206,'LITHUANIA','LT','LTU','Lithuania','Lituania','440',NULL,NULL,'2016-12-01 21:36:37','2016-12-01 21:36:37'),
	(207,'NETHERLANDS','NL','NLD','Netherlands','Netherlands','528',NULL,NULL,'2016-12-01 21:36:37','2016-12-01 21:36:37'),
	(208,'YEMEN','YE','YEM','Yemen','Yemen','887',NULL,NULL,'2016-12-01 21:36:37','2016-12-01 21:36:37'),
	(209,'CAPE VERDE','CV','CPV','Cape Verde','Cape Verde','132',NULL,NULL,'2016-12-01 21:36:37','2016-12-01 21:36:37'),
	(210,'ESTONIA','EE','EST','Estonia','Estonia','233',NULL,NULL,'2016-12-01 21:36:37','2016-12-01 21:36:37'),
	(211,'LUXEMBOURG','LU','LUX','Luxembourg','Luxemburgo','442',NULL,NULL,'2016-12-01 21:36:38','2016-12-01 21:36:38'),
	(212,'NETHERLANDS ANTILLES','AN','ANT','Netherlands Antilles','Netherlands Antilles','530',NULL,NULL,'2016-12-01 21:36:38','2016-12-01 21:36:38'),
	(213,'SAINT HELENA','SH','SHN','Saint Helena','Saint Helena','654',NULL,NULL,'2016-12-01 21:36:38','2016-12-01 21:36:38'),
	(214,'ZAMBIA','ZM','ZMB','Zambia','Zambia','894',NULL,NULL,'2016-12-01 21:36:38','2016-12-01 21:36:38'),
	(215,'CAYMAN ISLANDS','KY','CYM','Cayman Islands','Cayman Islands','136',NULL,NULL,'2016-12-01 21:36:38','2016-12-01 21:36:38'),
	(216,'ETHIOPIA','ET','ETH','Ethiopia','Etiopía','231',NULL,NULL,'2016-12-01 21:36:38','2016-12-01 21:36:38'),
	(217,'HUNGARY','HU','HUN','Hungary','Hungría','348',NULL,NULL,'2016-12-01 21:36:38','2016-12-01 21:36:38'),
	(218,'MACAO','MO','MAC','Macao','Macao','446',NULL,NULL,'2016-12-01 21:36:38','2016-12-01 21:36:38'),
	(219,'NEW CALEDONIA','NC','NCL','New Caledonia','New Caledonia','540',NULL,NULL,'2016-12-01 21:36:38','2016-12-01 21:36:38'),
	(220,'ZIMBABWE','ZW','ZWE','Zimbabwe','Zimbabue','716',NULL,NULL,'2016-12-01 21:36:38','2016-12-01 21:36:38'),
	(221,'CENTRAL AFRICAN REPUBLIC','CF','CAF','Central African Republic','Rep. Centroafricana','140',NULL,NULL,'2016-12-01 21:36:38','2016-12-01 21:36:38'),
	(222,'FALKLAND ISLANDS (MALVINAS)','FK','FLK','Falkland Islands (Malvinas)','Falkland Islands (Malvinas)','238',NULL,NULL,'2016-12-01 21:36:39','2016-12-01 21:36:39'),
	(223,'ICELAND','IS','ISL','Iceland','Iceland','352',NULL,NULL,'2016-12-01 21:36:39','2016-12-01 21:36:39'),
	(224,'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MK','MKD','Macedonia','Macedonia','807',NULL,NULL,'2016-12-01 21:36:39','2016-12-01 21:36:39'),
	(225,'NEW ZEALAND','NZ','NZL','New Zealand','Nueva Zelanda','554',NULL,NULL,'2016-12-01 21:36:39','2016-12-01 21:36:39'),
	(226,'SAINT KITTS AND NEVIS','KN','KNA','Saint Kitts and Nevis','San Cristóbal y Nevis','659',NULL,NULL,'2016-12-01 21:36:39','2016-12-01 21:36:39'),
	(227,NULL,'RS','SRB','Serbia','Serbia','999',NULL,NULL,'2016-12-01 21:36:39','2016-12-01 21:36:39');

/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table covers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `covers`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `covers` WRITE;
/*!40000 ALTER TABLE `covers` DISABLE KEYS */;

INSERT INTO `covers` (`id`, `image`, `title`, `created_at`, `updated_at`, `deleted_at`, `section`, `description`)
VALUES
	(1,'covers/August2017/d2gv4E2GzZ1G16COyGf7.png','Únete a esta iniciativa','2017-08-02 20:46:59','2017-08-24 21:30:57',NULL,'inicio',NULL),
	(2,'covers/August2017/rA1PmfVoi1DPaisdTDm4.jpg','Acerca del Portal','2017-08-02 22:28:26','2017-08-02 22:28:26',NULL,'acerca-del-portal','El Portal Centroamericano de Derechos Humanos y Democracia es un espacio virtual que promueve la divulgación e intercambio de información, investigación, análisis, reflexión, aprendizaje y promoción de redes, sobre derechos humanos y democracia de la región.'),
	(3,'covers/August2017/nC8tUQj7Qh06liV6RjaG.jpg','Repositorio de Información','2017-08-02 22:38:23','2017-08-02 22:38:23',NULL,'repositorio-ddhh','En este espacio encontrarás documentación diversa vinculada a los derechos humanos: estudios, investigaciones, documentales, informes, publicaciones; entre otros, procedente de países de la región C.A.'),
	(4,'covers/August2017/FcuXLlvPIu6L8EI34hQI.jpg','Organizaciones Afiliadas','2017-08-02 22:41:13','2017-08-02 22:41:13',NULL,'organizaciones-afiliadas','En este espacio encontrarás organizaciones dedicadas a la defensa y protección de derechos humanos en la región de Centroamérica, facilitando datos de contacto e información relacionada con las áreas prioritarias de trabajo.'),
	(5,'covers/August2017/hW8PkleJg4pSEHACVwMX.jpg','Formación en DDHH','2017-08-02 22:43:19','2017-08-02 22:43:19',NULL,'formacion','En este espacio encontrarás un catálogo abierto de formación sobre derechos humanos en la región, agrupado en diversas modalidades: presencial, semi-presencial y virtual, que han sido compartidas por las organizaciones aﬁliadas a esta iniciativa.'),
	(6,'covers/August2017/RMTXJtbbxlx6378nibUO.jpg','Contáctenos','2017-08-02 22:44:53','2017-08-02 22:44:53',NULL,'contactenos','En este espacio encontrarás documentación diversa vinculada a los derechos humanos: estudios, investigaciones, documentales, informes, publicaciones; entre otros, procedente de países de la región C.A.');

/*!40000 ALTER TABLE `covers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_rows`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`)
VALUES
	(1,1,'id','number','ID',1,0,0,0,0,0,'',1),
	(2,1,'author_id','text','Author',1,0,1,1,0,1,'',2),
	(3,1,'category_id','text','Category',1,0,1,1,1,0,'',3),
	(4,1,'title','text','Title',1,1,1,1,1,1,'',4),
	(5,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',5),
	(6,1,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),
	(7,1,'image','image','Post Image',0,1,1,1,1,1,'\n{\n    \"resize\": {\n        \"width\": \"1000\",\n        \"height\": \"null\"\n    },\n    \"quality\": \"70%\",\n    \"upsize\": true,\n    \"thumbnails\": [\n        {\n            \"name\": \"medium\",\n            \"scale\": \"50%\"\n        },\n        {\n            \"name\": \"small\",\n            \"scale\": \"25%\"\n        },\n        {\n            \"name\": \"cropped\",\n            \"crop\": {\n                \"width\": \"300\",\n                \"height\": \"250\"\n            }\n        }\n    ]\n}',7),
	(8,1,'slug','text','slug',1,0,1,1,1,1,'\n{\n    \"slugify\": {\n        \"origin\": \"title\",\n        \"forceUpdate\": true\n    }\n}',8),
	(9,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,'',9),
	(10,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,'',10),
	(11,1,'status','select_dropdown','status',1,1,1,1,1,1,'\n{\n    \"default\": \"DRAFT\",\n    \"options\": {\n        \"PUBLISHED\": \"published\",\n        \"DRAFT\": \"draft\",\n        \"PENDING\": \"pending\"\n    }\n}',11),
	(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'',12),
	(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',13),
	(14,2,'id','number','id',1,0,0,0,0,0,NULL,1),
	(16,2,'title','text','Título',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',2),
	(17,2,'excerpt','text_area','Descripción',0,1,1,1,1,1,NULL,4),
	(18,2,'body','code_editor','Contenido',1,0,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',5),
	(23,2,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,8),
	(24,2,'updated_at','timestamp','Actualizado',0,0,0,0,0,0,NULL,9),
	(26,3,'id','number','id',1,0,0,0,0,0,NULL,1),
	(27,3,'name','text','Nombre',1,1,1,1,1,1,NULL,2),
	(28,3,'email','text','Correo Electrónico',1,1,1,1,1,1,NULL,3),
	(29,3,'password','password','Contraseña',1,0,0,1,1,0,NULL,4),
	(30,3,'remember_token','text','Recordar',0,0,0,0,0,0,NULL,5),
	(31,3,'created_at','timestamp','Creado',0,0,1,0,0,0,NULL,6),
	(32,3,'updated_at','timestamp','Actualizado',0,0,0,0,0,0,NULL,7),
	(33,3,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),
	(34,5,'id','number','id',1,0,0,0,0,0,'',1),
	(35,5,'name','text','name',1,1,1,1,1,1,'',2),
	(36,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),
	(37,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),
	(38,4,'id','number','id',1,0,0,0,0,0,'',1),
	(39,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
	(40,4,'order','text','order',1,1,1,1,1,1,'{\"default\":1}',3),
	(41,4,'name','text','name',1,1,1,1,1,1,'',4),
	(42,4,'slug','text','slug',1,1,1,1,1,1,'',5),
	(43,4,'created_at','timestamp','created_at',0,0,1,0,0,0,'',6),
	(44,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),
	(45,6,'id','number','id',1,0,0,0,0,0,'',1),
	(46,6,'name','text','Name',1,1,1,1,1,1,'',2),
	(47,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),
	(48,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),
	(49,6,'display_name','text','Display Name',1,1,1,1,1,1,'',5),
	(50,1,'seo_title','text','seo_title',0,1,1,1,1,1,'',14),
	(51,1,'featured','checkbox','featured',1,1,1,1,1,1,'',15),
	(52,3,'role_id','text','Rol',0,1,1,1,1,1,NULL,9),
	(59,8,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(60,8,'name','text','Nombre',1,1,1,1,1,1,NULL,2),
	(61,8,'description','text_area','Descripción',0,1,1,1,1,1,NULL,3),
	(62,8,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,4),
	(63,8,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,5),
	(64,8,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,6),
	(65,9,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(66,9,'title','text','Título',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',2),
	(67,9,'author','text','Autor',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',3),
	(68,9,'published_date','date','Fecha de Publicación',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',4),
	(69,9,'description','text','Descripción',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',5),
	(70,9,'long_description','text_area','Descripción Larga',1,0,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',6),
	(71,9,'country_id','select_dropdown','País',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"method\":\"country\"},\"validation\":{\"rule\":\"required\"}}',7),
	(72,9,'organization_id','select_dropdown','Organización',0,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"method\":\"organization\"},\"validation\":{\"rule\":\"required\"}}',8),
	(74,9,'keywords','text_area','Palabras Clave',0,0,1,1,1,1,NULL,10),
	(75,10,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(76,10,'key','text','Llave',0,1,1,1,1,1,NULL,2),
	(77,10,'value','code_editor','Valor',0,1,1,1,1,1,NULL,3),
	(78,10,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,4),
	(79,10,'updated_at','timestamp','Creado',0,1,1,0,0,0,NULL,5),
	(80,10,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,6),
	(87,12,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(88,12,'key','text','Llave',1,1,1,1,1,1,NULL,4),
	(89,12,'value','code_editor','Valor',1,0,1,1,1,1,NULL,5),
	(90,12,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,6),
	(91,12,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,7),
	(92,12,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,8),
	(93,12,'name','text','Nombre',1,1,1,1,1,1,NULL,2),
	(94,12,'description','text_area','Descripción',0,1,1,1,1,1,NULL,3),
	(95,2,'cover','image','Cover',1,0,1,1,1,1,NULL,6),
	(96,2,'text_cover','text','Text de Cover',1,0,1,1,1,1,NULL,7),
	(97,2,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,10),
	(98,2,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',3),
	(99,13,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(100,13,'image','image','Imagen',1,1,1,1,1,1,NULL,2),
	(102,13,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,6),
	(103,13,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,7),
	(104,13,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,8),
	(105,13,'section','text','Sección',1,1,1,1,1,1,NULL,3),
	(106,13,'title','text','Título',0,1,1,1,1,1,NULL,4),
	(107,13,'description','text_area','Descripción',0,1,1,1,1,1,NULL,5),
	(108,14,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(109,14,'name','text','Nombre',1,1,1,1,1,1,NULL,2),
	(110,14,'icon','text','Icono',0,1,1,0,1,0,NULL,3),
	(111,14,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,4),
	(112,14,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,5),
	(113,14,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,6),
	(114,15,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(115,15,'name','text','Nombre',1,1,1,1,1,1,NULL,2),
	(116,15,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,3),
	(117,15,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,4),
	(118,15,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,5),
	(119,16,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(120,16,'title','text','Título',1,1,1,1,1,1,NULL,2),
	(121,16,'duration','text','Duración',1,1,1,1,1,1,NULL,3),
	(122,16,'place','text_area','Lugar',1,1,1,1,1,1,NULL,4),
	(123,16,'since','date','Desde',1,0,1,1,1,1,'{\"format\":\"Y-m-d\"}',5),
	(124,16,'until','date','Hasta',1,0,1,1,1,1,NULL,6),
	(125,16,'public','text_area','Dirigido a',1,1,1,1,1,1,NULL,7),
	(126,16,'organizer','text','Organización',1,1,1,1,1,1,NULL,17),
	(127,16,'representative','text','Representante de Organización',1,1,1,1,1,1,NULL,16),
	(128,16,'position','text','Cargo de Representante',1,1,1,1,1,1,NULL,18),
	(129,16,'email','text','Correo Electrónico',0,0,1,1,1,1,NULL,8),
	(130,16,'website','text','Sitio Web',0,0,1,1,1,1,NULL,9),
	(131,16,'link','text','Enlace de Capacitación',1,0,1,1,1,1,NULL,11),
	(132,16,'active','checkbox','Activo',1,1,1,1,1,1,NULL,10),
	(133,16,'description','text_area','Descripción',1,1,1,1,1,1,NULL,12),
	(134,16,'modality_id','select_dropdown','Modalidad',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"method\":\"modality\"}}',13),
	(135,16,'country_id','select_dropdown','País',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"method\":\"country\"}}',14),
	(136,16,'formation_type_id','select_dropdown','Tipo de Formación',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"method\":\"formationType\"}}',15),
	(137,16,'created_at','timestamp','Creado',0,0,0,0,0,0,NULL,19),
	(138,16,'updated_at','timestamp','Actualizado',0,0,0,0,0,0,NULL,20),
	(139,16,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,21),
	(140,17,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(141,17,'name','text','Nombre',1,1,1,1,1,1,NULL,2),
	(142,17,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,3),
	(143,17,'updated_at','timestamp','Actualizado',0,0,0,0,0,0,NULL,4),
	(144,17,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,5),
	(145,20,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(146,20,'name','text','Nombre',1,1,1,1,1,1,NULL,2),
	(147,20,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,3),
	(148,20,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,4),
	(149,20,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,5),
	(150,21,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(151,21,'name','text','Nombre',1,1,1,1,1,1,NULL,2),
	(152,21,'phone','text','Teléfono',1,0,1,1,1,1,NULL,3),
	(153,21,'email','text','Correo Electrónico',1,1,1,1,1,1,NULL,4),
	(154,21,'description','text_area','Descripción',1,0,1,1,1,1,NULL,5),
	(155,21,'classification_id','select_dropdown','Clasificación Contemporánea',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"page_slug\":\"admin/classifications\",\"method\":\"classification\"}}',6),
	(156,21,'country_id','select_dropdown','País',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"method\":\"country\"}}',7),
	(157,21,'website','text','Sitio Web',0,1,1,1,1,1,NULL,9),
	(159,21,'latitude','text','Latitud',0,0,1,1,1,1,NULL,10),
	(160,21,'longitude','text','Longitud',0,0,1,1,1,1,NULL,11),
	(161,21,'image','image','Imagen',1,1,1,1,1,1,NULL,12),
	(162,21,'active','checkbox','Activo',1,1,1,1,1,1,NULL,13),
	(163,21,'applicant','text','Nombre de Solicitante',1,0,1,1,1,1,NULL,14),
	(164,21,'institution','text','Institución Solicitante',1,0,1,1,1,1,NULL,15),
	(165,21,'position','text','Posición de Solicitante',1,0,1,1,1,1,NULL,16),
	(166,21,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,17),
	(167,21,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,18),
	(168,21,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,19),
	(169,21,'workareas','select_multiple','Áreas de Trabajo',0,0,0,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',8),
	(170,9,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,11),
	(171,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,12),
	(172,9,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,NULL,13),
	(173,9,'topics','select_multiple','Categorización Tematica',0,0,0,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"},\"validation\":{\"rule\":\"required\"}}',9),
	(174,9,'active','checkbox','Activo',1,1,1,1,1,1,'{\"on\":\"Desactivar\",\"off\":\"Activar\",\"validation\":{\"rule\":\"required\"}}',15),
	(175,9,'file','file','Documento',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',14),
	(176,22,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(177,22,'name','text','Nombre',1,1,1,1,1,1,NULL,2),
	(178,22,'image','image','Logo',1,1,1,1,1,1,NULL,3),
	(179,22,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,4),
	(180,22,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,5),
	(181,22,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,6),
	(182,23,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(183,23,'name','text','Nombre',1,1,1,1,1,1,NULL,2),
	(184,23,'image','image','Imagen',1,1,1,1,1,1,NULL,3),
	(185,23,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,4),
	(186,23,'updated_at','timestamp','Actualizado',0,1,1,0,0,0,NULL,5),
	(187,23,'deleted_at','timestamp','Eliminado',0,0,0,0,0,0,NULL,6),
	(188,9,'name_applicant','text','Nombre de Solicitante',1,0,1,1,1,1,NULL,16),
	(189,9,'institution','text','Institución',1,0,1,1,1,1,NULL,17),
	(190,9,'position','text','Cargo',1,0,1,1,1,1,NULL,18),
	(191,21,'long_description','text','Descripción Larga',0,1,1,1,1,1,NULL,20);

/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_types`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`)
VALUES
	(1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','','',1,0,'2017-08-02 04:09:47','2017-08-02 04:09:47'),
	(2,'pages','pages','Página','Páginas','voyager-file-text','App\\Page',NULL,NULL,1,1,'2017-08-02 04:09:47','2017-08-02 09:28:24'),
	(3,'users','users','Usuario','Usuarios','voyager-person','TCG\\Voyager\\Models\\User',NULL,NULL,1,0,'2017-08-02 04:09:48','2017-08-31 20:25:08'),
	(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category','','',1,0,'2017-08-02 04:09:48','2017-08-02 04:09:48'),
	(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu','','',1,0,'2017-08-02 04:09:48','2017-08-02 04:09:48'),
	(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role','','',1,0,'2017-08-02 04:09:48','2017-08-02 04:09:48'),
	(8,'work_areas','work-areas','Área de Trabajo','Áreas de Trabajo','voyager-treasure','App\\WorkArea',NULL,NULL,1,0,'2017-08-02 04:35:57','2017-08-02 04:38:19'),
	(9,'documents','documents','Document','Documents',NULL,'App\\Document',NULL,NULL,1,0,'2017-08-02 05:07:01','2017-08-02 05:07:01'),
	(10,'content','content','Contenido','Contenidos','voyager-browser','App\\Content',NULL,NULL,1,1,'2017-08-02 08:29:46','2017-08-02 08:29:46'),
	(12,'contents','contents','Contenido','Contenidos','voyager-browser','App\\Content',NULL,NULL,1,1,'2017-08-02 08:39:06','2017-08-02 08:44:52'),
	(13,'covers','covers','Cover de Sección','Covers de Secciones','voyager-images','App\\Cover',NULL,NULL,1,0,'2017-08-02 20:42:36','2017-08-02 20:42:36'),
	(14,'modalities','modalities','Modalidad','Modalidades',NULL,'App\\Modality',NULL,NULL,1,0,'2017-08-04 06:43:09','2017-08-04 06:43:09'),
	(15,'formation_types','formation-types','Tipo de Formación','Tipos de Formación',NULL,'App\\FormationType',NULL,NULL,1,0,'2017-08-04 06:57:22','2017-08-04 06:57:22'),
	(16,'formations','formations','Capacitación','Capacitaciones',NULL,'App\\Formation',NULL,NULL,1,0,'2017-08-04 09:03:38','2017-08-04 09:03:38'),
	(17,'topics','topics','Categoría Tematica','Categorías Tematicas',NULL,'App\\Topic',NULL,NULL,1,0,'2017-08-05 07:53:37','2017-08-05 07:53:37'),
	(20,'classifications','classifications','Clasificación Contemporánea','Clasificaciones Contemporáneas',NULL,'App\\Classification',NULL,NULL,1,0,'2017-08-05 08:51:40','2017-08-05 08:52:31'),
	(21,'organizations','organizations','Organización','Organizaciones',NULL,'App\\Organization',NULL,NULL,1,0,'2017-08-05 09:07:04','2017-08-05 09:53:08'),
	(22,'founders','founders','Organización Fundadora','Organizaciones Fundadoras',NULL,'App\\Founder',NULL,NULL,1,0,'2017-08-08 20:09:53','2017-08-08 20:09:53'),
	(23,'galleries','galleries','Galería','Galerías','voyager-photos','App\\Gallery',NULL,NULL,1,0,'2017-08-08 20:22:58','2017-08-08 20:22:58');

/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table document_topics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `document_topics`;

CREATE TABLE `document_topics` (
  `document_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `document_topics` WRITE;
/*!40000 ALTER TABLE `document_topics` DISABLE KEYS */;

INSERT INTO `document_topics` (`document_id`, `topic_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,NULL,NULL,NULL),
	(2,4,NULL,NULL,NULL);

/*!40000 ALTER TABLE `document_topics` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table documents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `documents`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;

INSERT INTO `documents` (`id`, `title`, `author`, `published_date`, `description`, `long_description`, `country_id`, `organization_id`, `topics`, `keywords`, `created_at`, `updated_at`, `deleted_at`, `active`, `file`, `name_applicant`, `institution`, `position`)
VALUES
	(1,'Tratado de Paz de la Republica de El Salvador','Juan Manuel Cañas','1993-12-01','Un Tratado de Paz es un acuerdo entre dos o más partes hostiles, por lo general países o gobiernos, que culmina formalmente un estado de guerra entre las partes. Es diferente de un armisticio, que es un acuerdo para detener las hostilidades','Un Tratado de Paz es un acuerdo entre dos o más partes hostiles, por lo general países o gobiernos, que culmina formalmente un estado de guerra entre las partes. Es diferente de un armisticio, que',1,7,NULL,'sdfsdf','2017-08-05 10:32:00','2017-08-06 11:48:18',NULL,1,'documents/August2017/fXy5Ep7XXcLF72hVRpEp.pdf','','',''),
	(2,'Informe sobre situación de desplazamiento forzado por violencia generalizada','Mesa de Sociedad Civil','2014-04-12','Basado en casos registrados en el periodo 2014-2015','La mesa de sociedad civil contra el desplazamiento forzado por violencia y crimen organizado.',90,7,NULL,'desplazamientos','2017-08-25 05:04:00','2017-08-25 05:05:08',NULL,1,'documents/August2017/cZYSw93a7LOjYWsuA3ni.pdf','','','');

/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table formation_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `formation_types`;

CREATE TABLE `formation_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `formation_types` WRITE;
/*!40000 ALTER TABLE `formation_types` DISABLE KEYS */;

INSERT INTO `formation_types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Webinars','2017-08-04 07:03:42','2017-08-04 07:03:42',NULL),
	(2,'Master, posgrados y especializaciones','2017-08-24 23:36:46','2017-08-24 23:36:46',NULL),
	(3,'Seminarios y cursos','2017-08-24 23:36:59','2017-08-24 23:36:59',NULL),
	(4,'Congresos y encuentros','2017-08-24 23:37:09','2017-08-24 23:37:09',NULL),
	(5,'Foros','2017-08-24 23:37:18','2017-08-24 23:37:18',NULL);

/*!40000 ALTER TABLE `formation_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table formations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `formations`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `formations` WRITE;
/*!40000 ALTER TABLE `formations` DISABLE KEYS */;

INSERT INTO `formations` (`id`, `title`, `duration`, `place`, `since`, `until`, `public`, `organizer`, `representative`, `position`, `email`, `website`, `link`, `active`, `description`, `modality_id`, `country_id`, `formation_type_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Formación programa de gestión medio ambiental','16 Horas','Salón Audiovisuales, Universidad Centroamericana José Simeón Cañas','2017-07-10','2017-07-11','Todo Publico','Universidad Simeon Cañas','Lic. Juan Rodriguez','Profesor de Fisica Cuantica','example@uca.edu.sv','www.uca.com.sv','http://laravel.com',1,'El programa es desarrollado por la Universidad Centroamericana “José Simeón Cañas” (UCA) y tiene como objetivo proporcionar a los participantes una visión global, actualizada e integradora sobre los conocimientos, habilidades y actitudes.',1,1,1,'2017-08-04 09:12:55','2017-08-24 21:32:08',NULL),
	(2,'Taller nacional sobre movilidad humana','16 horas','Tegucigalpa, Honduras','2017-07-17','2017-07-18','funcionarios del Ministerio de Relaciones Exteriores, Jueces, funcionario de las procuradurías de Derechos Humanos, y entidades públicas asociadas a la defensa de los derechos de migrantes','OAS','OAS','Presidente','CIDHPromocion@oas.org','http://www.oas.org/en/','http://www.oas.org/en/',1,'Se trata de un taller nacional orientado al compartimiento de los estándares de movilidad humana desarrollados por la CIDH a efecto de identificar su inserción o inclusión en las legislaciones de los países nacionales del entorno centroamericano.',2,90,3,'2017-08-25 00:02:59','2017-08-25 00:02:59',NULL),
	(3,'Estudio de Violencia contra las mujeres en los partidos políticos','8 horas','Tegucigalpa, Honduras','2017-07-20','2017-07-20','Defensores de Derechos Humanos, funcionarios públicos y miembros de sociedad civil.','UCA Honduras','UCA Honduras','Presidente','jmurillo@padf.org','https://www.padf.org/','https://www.padf.org/',1,'En dicha actividad se dará inicio a la campaña de sensibilización sobre la participación política de mujeres en Honduras.',2,99,4,'2017-08-25 02:49:22','2017-08-25 02:49:22',NULL),
	(4,'I Reunión-taller de trabajo de Ombudsman','16 horas','Antigua Guatemala, Guatemala','2017-07-19','2017-07-20','titulares de las defensorías o procuradurías de los derechos humanos de la región centroamericana, México, Chile y Colombia.','UCA Guatemala','UCA Guatemala','Presidente','CIDHPromocion@oas.org','http://www.oas.org/en/','http://www.oas.org/en/',1,'Es una actividad que tiene como objetivo establecer un marco de dialogo entre los procuradores y procuradoras de derechos humanos, intercambiar buenas prácticas y analizar el estado de avance de la implementación de los estándares interamericanos de derechos humanos en la región, a través de un dialogo participativo y abierto, así como acordar y definir acciones conjuntas con el apoyo de la CIDH.',2,70,3,'2017-08-25 02:53:27','2017-08-25 02:53:27',NULL);

/*!40000 ALTER TABLE `formations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table founders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `founders`;

CREATE TABLE `founders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `founders` WRITE;
/*!40000 ALTER TABLE `founders` DISABLE KEYS */;

INSERT INTO `founders` (`id`, `name`, `image`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Universidad Centroamericana \"José Simeón Cañas\" (UCA)','founders/August2017/cTiItRWH5PUnLUsKbYt9.png','2017-08-08 20:11:18','2017-08-08 20:11:18',NULL);

/*!40000 ALTER TABLE `founders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table galleries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `galleries`;

CREATE TABLE `galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;

INSERT INTO `galleries` (`id`, `name`, `image`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Imagen 1','galleries/August2017/Tdr4LbHoSyHExw5IW8oF.png','2017-08-08 20:24:32','2017-08-08 20:24:32',NULL),
	(2,'Imagen 2','galleries/August2017/rZMQhoEMRDw2Ec87jVEI.jpg','2017-08-08 20:26:23','2017-08-08 20:26:23',NULL),
	(3,'imagen 3','galleries/August2017/dHfFKiDtrKfO2TEqmgJc.jpg','2017-08-08 20:26:35','2017-08-08 20:26:35',NULL);

/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_items`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`)
VALUES
	(1,1,'Dashboard','/admin','_self','voyager-boat','#000000',NULL,1,'2017-08-02 04:09:52','2017-08-02 08:02:57',NULL,''),
	(2,1,'Media','/admin/media','_self',NULL,'#000000',48,2,'2017-08-02 04:09:52','2017-08-09 21:43:41',NULL,''),
	(4,1,'Usuarios','/admin/users','_self','voyager-person','#000000',NULL,2,'2017-08-02 04:09:52','2017-08-31 23:45:40',NULL,''),
	(8,1,'Herramientas','','_self','voyager-tools','#000000',NULL,8,'2017-08-02 04:09:53','2017-08-31 23:45:40',NULL,''),
	(9,1,'Generador de Menú','/admin/menus','_self','voyager-list','#000000',8,1,'2017-08-02 04:09:53','2017-08-05 07:54:30',NULL,''),
	(11,1,'Configuraciones','/admin/settings','_self','voyager-settings','#000000',NULL,7,'2017-08-02 04:09:53','2017-08-31 23:45:40',NULL,''),
	(12,1,'Áreas de Trabajo','/admin/work-areas','_self',NULL,'#0a0a0a',49,2,'2017-08-02 04:28:33','2017-08-09 21:44:03',NULL,''),
	(13,1,'Documentos','/admin/documents','_self',NULL,'#000000',42,1,'2017-08-02 05:07:28','2017-08-31 23:45:45',NULL,''),
	(14,2,'Acerca del Portal','/acerca-del-portal','_self',NULL,'#000000',NULL,1,'2017-08-02 05:16:17','2017-08-04 09:44:21',NULL,''),
	(15,2,'Repositorio DDHH','/repositorio-ddhh','_self',NULL,'#000000',NULL,2,'2017-08-02 05:16:41','2017-08-04 09:44:21',NULL,''),
	(16,2,'Directorio de Organizaciones','/directorio-organizaciones','_self',NULL,'#000000',NULL,3,'2017-08-02 05:17:01','2017-08-24 21:56:55',NULL,''),
	(18,2,'Comunidad de Práctica','http://foro.uca.iw.sv/','_blank',NULL,'#000000',NULL,5,'2017-08-02 05:17:53','2017-08-04 09:44:52',NULL,''),
	(19,3,'Contáctenos','/contactenos','_self',NULL,'#000000',NULL,17,'2017-08-02 05:47:22','2017-08-02 05:47:22',NULL,''),
	(20,3,'Buscar','/buscar','_self',NULL,'#000000',NULL,18,'2017-08-02 05:47:39','2017-08-02 05:47:39',NULL,''),
	(21,4,'Inicio','/','_self',NULL,'#000000',NULL,19,'2017-08-02 08:04:34','2017-08-02 08:04:34',NULL,''),
	(22,4,'Acerca del Portal','/acerca-del-portal','_self',NULL,'#000000',NULL,20,'2017-08-02 08:05:00','2017-08-02 08:05:00',NULL,''),
	(23,4,'Repositorio DDHH','/repositorio-ddhh','_self',NULL,'#000000',NULL,21,'2017-08-02 08:05:19','2017-08-02 08:05:19',NULL,''),
	(24,4,'Organizaciones Afiliadas','/directorio-organizaciones','_self',NULL,'#000000',NULL,22,'2017-08-02 08:05:37','2017-09-06 00:18:39',NULL,''),
	(25,4,'Formación','/formaciones','_self',NULL,'#000000',NULL,23,'2017-08-02 08:05:47','2017-08-12 19:00:39',NULL,''),
	(26,4,'Comunidad de Práctica','http://foro.uca.iw.sv','_self',NULL,'#000000',NULL,24,'2017-08-02 08:06:17','2017-08-02 08:06:17',NULL,''),
	(27,4,'Contáctenos','/contactenos','_self',NULL,'#000000',NULL,25,'2017-08-02 08:06:29','2017-08-02 08:06:29',NULL,''),
	(28,4,'Buscar','/buscar','_self',NULL,'#000000',NULL,26,'2017-08-02 08:06:40','2017-08-02 08:06:40',NULL,''),
	(29,5,'Acerca del Portal','/acerca-del-portal','_self',NULL,'#000000',NULL,27,'2017-08-02 08:09:34','2017-08-02 08:09:34',NULL,''),
	(30,5,'Repositorio DDHH','/repositorio-ddhh','_self',NULL,'#000000',NULL,28,'2017-08-02 08:09:53','2017-08-02 08:09:53',NULL,''),
	(31,5,'Organizaciones Afiliadas','/directorio-organizaciones','_self',NULL,'#000000',NULL,29,'2017-08-02 08:10:10','2017-09-06 00:18:08',NULL,''),
	(32,5,'Formación','/formaciones','_self',NULL,'#000000',NULL,30,'2017-08-02 08:10:20','2017-09-06 00:17:57',NULL,''),
	(33,5,'Comunidad de Práctica','http://foro.uca.iw.sv','_blank',NULL,'#000000',NULL,31,'2017-08-02 08:10:47','2017-08-02 08:10:47',NULL,''),
	(35,1,'Contenidos','/admin/contents','_self',NULL,'#000000',48,1,'2017-08-02 08:39:30','2017-08-09 21:43:21',NULL,''),
	(36,1,'Covers de Secciones','/admin/covers','_self',NULL,'#000000',48,4,'2017-08-02 20:39:39','2017-08-09 21:43:50',NULL,''),
	(37,1,'Modalidades','/admin/modalities','_self',NULL,'#000000',39,2,'2017-08-04 06:43:32','2017-08-09 21:40:20',NULL,''),
	(38,1,'Tipos de Formación','/admin/formation-types','_self',NULL,'#000000',39,1,'2017-08-04 07:03:21','2017-08-04 07:07:03',NULL,''),
	(39,1,'Formación','','_self','voyager-book','#000000',NULL,5,'2017-08-04 07:06:56','2017-08-31 23:45:40',NULL,''),
	(40,1,'Capacitaciones','/admin/formations','_self',NULL,'#000000',39,3,'2017-08-04 09:04:15','2017-08-09 21:40:20',NULL,''),
	(41,2,'Formación','/formaciones','_self',NULL,'#000000',NULL,4,'2017-08-04 09:42:42','2017-08-04 09:43:20',NULL,''),
	(42,1,'Repositorio','','_self','voyager-news','#000000',NULL,3,'2017-08-05 07:49:18','2017-08-31 23:45:40',NULL,''),
	(43,1,'Categorías Tematicas','/admin/topics','_self',NULL,'#000000',42,2,'2017-08-05 07:50:36','2017-08-31 23:46:32',NULL,''),
	(44,1,'Clasif. Contemporáneas','/admin/classifications','_self',NULL,'#000000',49,3,'2017-08-05 08:53:13','2017-08-09 21:45:15',NULL,''),
	(45,1,'Organizaciones','/admin/organizations','_self',NULL,'#000000',49,4,'2017-08-05 09:34:54','2017-08-09 21:40:20',NULL,''),
	(46,1,'Organizaciones Fundadoras','/admin/founders','_self',NULL,'#000000',49,1,'2017-08-08 20:10:16','2017-08-09 21:39:59',NULL,''),
	(47,1,'Galería','/admin/galleries','_self',NULL,'#000000',48,3,'2017-08-08 20:23:18','2017-08-09 21:39:41',NULL,''),
	(48,1,'Contenidos','','_self','voyager-photo','#000000',NULL,4,'2017-08-09 21:39:11','2017-08-31 23:45:40',NULL,''),
	(49,1,'Organizaciones','','_self','voyager-treasure','#000000',NULL,6,'2017-08-09 21:39:54','2017-08-31 23:45:40',NULL,'');

/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','2017-08-02 04:09:52','2017-08-02 04:09:52'),
	(2,'main','2017-08-02 05:15:31','2017-08-02 05:49:38'),
	(3,'secondary','2017-08-02 05:46:21','2017-08-02 05:49:32'),
	(4,'responsive','2017-08-02 05:46:31','2017-08-02 05:49:24'),
	(5,'footer','2017-08-02 08:09:14','2017-08-02 08:09:14');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_01_01_000000_add_voyager_user_fields',1),
	(4,'2016_01_01_000000_create_data_types_table',1),
	(5,'2016_01_01_000000_create_pages_table',1),
	(6,'2016_01_01_000000_create_posts_table',1),
	(7,'2016_02_15_204651_create_categories_table',1),
	(8,'2016_05_19_173453_create_menu_table',1),
	(9,'2016_10_21_190000_create_roles_table',1),
	(10,'2016_10_21_190000_create_settings_table',1),
	(11,'2016_11_30_135954_create_permission_table',1),
	(12,'2016_11_30_141208_create_permission_role_table',1),
	(13,'2016_12_26_201236_data_types__add__server_side',1),
	(14,'2017_01_13_000000_add_route_to_menu_items_table',1),
	(15,'2017_01_14_005015_create_translations_table',1),
	(16,'2017_01_15_000000_add_permission_group_id_to_permissions_table',1),
	(17,'2017_01_15_000000_create_permission_groups_table',1),
	(18,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),
	(19,'2017_03_06_000000_add_controller_to_data_types_table',1),
	(20,'2017_04_21_000000_add_order_to_data_rows_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modalities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modalities`;

CREATE TABLE `modalities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `modalities` WRITE;
/*!40000 ALTER TABLE `modalities` DISABLE KEYS */;

INSERT INTO `modalities` (`id`, `name`, `icon`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Virtual','icon-online','2017-08-04 06:44:24','2017-08-04 06:44:24',NULL),
	(2,'Presencial','icon-presencial','2017-08-04 06:44:48','2017-08-04 06:44:48',NULL);

/*!40000 ALTER TABLE `modalities` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table organization_work_areas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_work_areas`;

CREATE TABLE `organization_work_areas` (
  `organization_id` int(11) NOT NULL,
  `work_area_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `organization_work_areas` WRITE;
/*!40000 ALTER TABLE `organization_work_areas` DISABLE KEYS */;

INSERT INTO `organization_work_areas` (`organization_id`, `work_area_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(6,1,NULL,NULL,NULL),
	(7,1,NULL,NULL,NULL),
	(9,3,NULL,NULL,NULL),
	(10,1,NULL,NULL,NULL),
	(11,5,NULL,NULL,NULL);

/*!40000 ALTER TABLE `organization_work_areas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table organizations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organizations`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;

INSERT INTO `organizations` (`id`, `name`, `phone`, `email`, `description`, `classification_id`, `country_id`, `website`, `workareas`, `latitude`, `longitude`, `image`, `active`, `applicant`, `institution`, `position`, `created_at`, `updated_at`, `deleted_at`, `long_description`)
VALUES
	(7,'Universidad Jose Simeon Cañas','(503) 2345 9874','email@uca.edu.sv','Institución Salesiana de educación superior',1,90,'ssdfsf',NULL,132456,13213,'organizations/August2017/qiDzwgoP7Wfg5mo3bQPW.png',1,'sdfs','sdfsdf','dfg','2017-08-05 10:22:28','2017-08-09 14:03:21',NULL,NULL),
	(9,'Cristosal','(+503) 22637598','info@cristosal.org','Cristosal es una organización no gubernamental con sede en El Salvador, que promueve los derechos humanos en Centroamérica a través de la programación, la investigación y el aprendizaje basados en los derechos.',3,1,'http://www.cristosal.org/',NULL,NULL,NULL,'organizations/August2017/2YlSoby8fLAkSab074W1.jpg',1,'Cristoal','Cristosal','Presidente','2017-08-24 23:49:38','2017-08-24 23:50:31',NULL,NULL),
	(10,'FESPAD','(+503) 2236-1888 / (+503) 22361800','fespadinfo@fespad.org.sv','FESPAD se define a sí misma como una institución de promoción humana, cuyo ámbito de aproximación a la sociedad es el Derecho',6,90,'http://fespad.org.sv/',NULL,NULL,NULL,'organizations/August2017/Y5syjx34BpmQwbfCh8fa.jpg',1,'FESPAD','FESPAD','Presidente','2017-08-24 23:53:45','2017-08-24 23:53:45',NULL,NULL),
	(11,'SSPAS','(+503) 2511-9300 / (+503) 2118 2350','sspas@sspas.org.sv','El Servicio Social Pasionista nació desde la preocupación y sensibilidad del carisma pasionista por la realidad de violencias que vive a diario la población de El Salvador.',4,90,'http://sspas.org.sv/',NULL,NULL,NULL,'organizations/August2017/rVqksdR0EYhuO5gePUAZ.png',1,'sspas','sspas','Presidente','2017-08-24 23:58:06','2017-08-24 23:58:06',NULL,NULL);

/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permission_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_groups`;

CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(26,1),
	(27,1),
	(28,1),
	(29,1),
	(30,1),
	(31,1),
	(32,1),
	(33,1),
	(34,1),
	(40,1),
	(41,1),
	(42,1),
	(43,1),
	(44,1),
	(45,1),
	(46,1),
	(47,1),
	(48,1),
	(49,1),
	(50,1),
	(51,1),
	(52,1),
	(53,1),
	(54,1),
	(60,1),
	(61,1),
	(62,1),
	(63,1),
	(64,1),
	(65,1),
	(66,1),
	(67,1),
	(68,1),
	(69,1),
	(70,1),
	(71,1),
	(72,1),
	(73,1),
	(74,1),
	(75,1),
	(76,1),
	(77,1),
	(78,1),
	(79,1),
	(80,1),
	(81,1),
	(82,1),
	(83,1),
	(84,1),
	(85,1),
	(86,1),
	(87,1),
	(88,1),
	(89,1),
	(90,1),
	(91,1),
	(92,1),
	(93,1),
	(94,1),
	(95,1),
	(96,1),
	(97,1),
	(98,1),
	(99,1),
	(100,1),
	(101,1),
	(102,1),
	(103,1),
	(104,1),
	(105,1),
	(106,1),
	(107,1),
	(108,1),
	(109,1);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`)
VALUES
	(1,'browse_admin',NULL,'2017-08-02 04:09:53','2017-08-02 04:09:53',NULL),
	(2,'browse_database',NULL,'2017-08-02 04:09:53','2017-08-02 04:09:53',NULL),
	(3,'browse_media',NULL,'2017-08-02 04:09:53','2017-08-02 04:09:53',NULL),
	(4,'browse_settings',NULL,'2017-08-02 04:09:53','2017-08-02 04:09:53',NULL),
	(5,'browse_menus','menus','2017-08-02 04:09:53','2017-08-02 04:09:53',NULL),
	(6,'read_menus','menus','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(7,'edit_menus','menus','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(8,'add_menus','menus','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(9,'delete_menus','menus','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(10,'browse_pages','pages','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(11,'read_pages','pages','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(12,'edit_pages','pages','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(13,'add_pages','pages','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(14,'delete_pages','pages','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(15,'browse_roles','roles','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(16,'read_roles','roles','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(17,'edit_roles','roles','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(18,'add_roles','roles','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(19,'delete_roles','roles','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(20,'browse_users','users','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(21,'read_users','users','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(22,'edit_users','users','2017-08-02 04:09:54','2017-08-02 04:09:54',NULL),
	(23,'add_users','users','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),
	(24,'delete_users','users','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),
	(25,'browse_posts','posts','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),
	(26,'read_posts','posts','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),
	(27,'edit_posts','posts','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),
	(28,'add_posts','posts','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),
	(29,'delete_posts','posts','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),
	(30,'browse_categories','categories','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),
	(31,'read_categories','categories','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),
	(32,'edit_categories','categories','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),
	(33,'add_categories','categories','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),
	(34,'delete_categories','categories','2017-08-02 04:09:55','2017-08-02 04:09:55',NULL),
	(40,'browse_work_areas','work_areas','2017-08-02 04:35:57','2017-08-02 04:35:57',NULL),
	(41,'read_work_areas','work_areas','2017-08-02 04:35:57','2017-08-02 04:35:57',NULL),
	(42,'edit_work_areas','work_areas','2017-08-02 04:35:57','2017-08-02 04:35:57',NULL),
	(43,'add_work_areas','work_areas','2017-08-02 04:35:57','2017-08-02 04:35:57',NULL),
	(44,'delete_work_areas','work_areas','2017-08-02 04:35:57','2017-08-02 04:35:57',NULL),
	(45,'browse_documents','documents','2017-08-02 05:07:02','2017-08-02 05:07:02',NULL),
	(46,'read_documents','documents','2017-08-02 05:07:02','2017-08-02 05:07:02',NULL),
	(47,'edit_documents','documents','2017-08-02 05:07:02','2017-08-02 05:07:02',NULL),
	(48,'add_documents','documents','2017-08-02 05:07:02','2017-08-02 05:07:02',NULL),
	(49,'delete_documents','documents','2017-08-02 05:07:02','2017-08-02 05:07:02',NULL),
	(50,'browse_content','content','2017-08-02 08:29:46','2017-08-02 08:29:46',NULL),
	(51,'read_content','content','2017-08-02 08:29:46','2017-08-02 08:29:46',NULL),
	(52,'edit_content','content','2017-08-02 08:29:46','2017-08-02 08:29:46',NULL),
	(53,'add_content','content','2017-08-02 08:29:46','2017-08-02 08:29:46',NULL),
	(54,'delete_content','content','2017-08-02 08:29:46','2017-08-02 08:29:46',NULL),
	(60,'browse_contents','contents','2017-08-02 08:39:06','2017-08-02 08:39:06',NULL),
	(61,'read_contents','contents','2017-08-02 08:39:06','2017-08-02 08:39:06',NULL),
	(62,'edit_contents','contents','2017-08-02 08:39:06','2017-08-02 08:39:06',NULL),
	(63,'add_contents','contents','2017-08-02 08:39:06','2017-08-02 08:39:06',NULL),
	(64,'delete_contents','contents','2017-08-02 08:39:06','2017-08-02 08:39:06',NULL),
	(65,'browse_covers','covers','2017-08-02 20:42:36','2017-08-02 20:42:36',NULL),
	(66,'read_covers','covers','2017-08-02 20:42:36','2017-08-02 20:42:36',NULL),
	(67,'edit_covers','covers','2017-08-02 20:42:36','2017-08-02 20:42:36',NULL),
	(68,'add_covers','covers','2017-08-02 20:42:36','2017-08-02 20:42:36',NULL),
	(69,'delete_covers','covers','2017-08-02 20:42:36','2017-08-02 20:42:36',NULL),
	(70,'browse_modalities','modalities','2017-08-04 06:43:09','2017-08-04 06:43:09',NULL),
	(71,'read_modalities','modalities','2017-08-04 06:43:09','2017-08-04 06:43:09',NULL),
	(72,'edit_modalities','modalities','2017-08-04 06:43:09','2017-08-04 06:43:09',NULL),
	(73,'add_modalities','modalities','2017-08-04 06:43:09','2017-08-04 06:43:09',NULL),
	(74,'delete_modalities','modalities','2017-08-04 06:43:09','2017-08-04 06:43:09',NULL),
	(75,'browse_formation_types','formation_types','2017-08-04 06:57:22','2017-08-04 06:57:22',NULL),
	(76,'read_formation_types','formation_types','2017-08-04 06:57:22','2017-08-04 06:57:22',NULL),
	(77,'edit_formation_types','formation_types','2017-08-04 06:57:22','2017-08-04 06:57:22',NULL),
	(78,'add_formation_types','formation_types','2017-08-04 06:57:22','2017-08-04 06:57:22',NULL),
	(79,'delete_formation_types','formation_types','2017-08-04 06:57:22','2017-08-04 06:57:22',NULL),
	(80,'browse_formations','formations','2017-08-04 09:03:38','2017-08-04 09:03:38',NULL),
	(81,'read_formations','formations','2017-08-04 09:03:38','2017-08-04 09:03:38',NULL),
	(82,'edit_formations','formations','2017-08-04 09:03:38','2017-08-04 09:03:38',NULL),
	(83,'add_formations','formations','2017-08-04 09:03:38','2017-08-04 09:03:38',NULL),
	(84,'delete_formations','formations','2017-08-04 09:03:38','2017-08-04 09:03:38',NULL),
	(85,'browse_topics','topics','2017-08-05 07:53:37','2017-08-05 07:53:37',NULL),
	(86,'read_topics','topics','2017-08-05 07:53:37','2017-08-05 07:53:37',NULL),
	(87,'edit_topics','topics','2017-08-05 07:53:37','2017-08-05 07:53:37',NULL),
	(88,'add_topics','topics','2017-08-05 07:53:37','2017-08-05 07:53:37',NULL),
	(89,'delete_topics','topics','2017-08-05 07:53:37','2017-08-05 07:53:37',NULL),
	(90,'browse_classifications','classifications','2017-08-05 08:51:40','2017-08-05 08:51:40',NULL),
	(91,'read_classifications','classifications','2017-08-05 08:51:40','2017-08-05 08:51:40',NULL),
	(92,'edit_classifications','classifications','2017-08-05 08:51:40','2017-08-05 08:51:40',NULL),
	(93,'add_classifications','classifications','2017-08-05 08:51:40','2017-08-05 08:51:40',NULL),
	(94,'delete_classifications','classifications','2017-08-05 08:51:40','2017-08-05 08:51:40',NULL),
	(95,'browse_organizations','organizations','2017-08-05 09:07:05','2017-08-05 09:07:05',NULL),
	(96,'read_organizations','organizations','2017-08-05 09:07:05','2017-08-05 09:07:05',NULL),
	(97,'edit_organizations','organizations','2017-08-05 09:07:05','2017-08-05 09:07:05',NULL),
	(98,'add_organizations','organizations','2017-08-05 09:07:05','2017-08-05 09:07:05',NULL),
	(99,'delete_organizations','organizations','2017-08-05 09:07:05','2017-08-05 09:07:05',NULL),
	(100,'browse_founders','founders','2017-08-08 20:09:53','2017-08-08 20:09:53',NULL),
	(101,'read_founders','founders','2017-08-08 20:09:53','2017-08-08 20:09:53',NULL),
	(102,'edit_founders','founders','2017-08-08 20:09:53','2017-08-08 20:09:53',NULL),
	(103,'add_founders','founders','2017-08-08 20:09:53','2017-08-08 20:09:53',NULL),
	(104,'delete_founders','founders','2017-08-08 20:09:53','2017-08-08 20:09:53',NULL),
	(105,'browse_galleries','galleries','2017-08-08 20:22:58','2017-08-08 20:22:58',NULL),
	(106,'read_galleries','galleries','2017-08-08 20:22:58','2017-08-08 20:22:58',NULL),
	(107,'edit_galleries','galleries','2017-08-08 20:22:58','2017-08-08 20:22:58',NULL),
	(108,'add_galleries','galleries','2017-08-08 20:22:58','2017-08-08 20:22:58',NULL),
	(109,'delete_galleries','galleries','2017-08-08 20:22:58','2017-08-08 20:22:58',NULL);

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

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



# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Administrator','2017-08-02 04:09:53','2017-08-02 04:09:53'),
	(2,'user','Normal User','2017-08-02 04:09:53','2017-08-02 04:09:53');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table search_contents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `search_contents`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `search_contents` WRITE;
/*!40000 ALTER TABLE `search_contents` DISABLE KEYS */;

INSERT INTO `search_contents` (`id`, `title`, `name`, `description`, `long_description`, `place`, `email`, `website`, `created_at`, `updated_at`, `deleted_at`, `sourceable_id`, `sourceable_type`, `author`, `active`)
VALUES
	(10,NULL,'Nombre','descripcion',NULL,NULL,'cesar@email.com',NULL,'2017-08-10 03:23:52','2017-08-10 03:23:52',NULL,8,'App\\Organization',NULL,0),
	(11,'Tratado de Paz de la Republica de El Salvador',NULL,'Un Tratado de Paz es un acuerdo entre dos o más partes hostiles, por lo general países o gobiernos, que culmina formalmente un estado de guerra entre las partes. Es diferente de un armisticio','Un Tratado de Paz es un acuerdo entre dos o más partes hostiles, por lo general países o gobiernos, que culmina formalmente un estado de guerra entre las partes. Es diferente de un armisticio, que',NULL,NULL,NULL,'2017-08-10 03:40:30','2017-08-10 03:40:30',NULL,1,'App\\Document','Juan Manuel Cañas',1),
	(12,'Formación programa de gestión medio ambiental',NULL,'El programa es desarrollado por la Universidad Centroamericana “José Simeón Cañas” (UCA) y tiene como objetivo proporcionar a los participantes una visión global, actualizada e integradora sobre los conocimientos, habilidades y actitudes.',NULL,'Salón Audiovisuales, Universidad Centroamericana José Simeón Cañas','example@uca.edu.sv','www.uca.com.sv','2017-08-10 05:11:54','2017-08-24 21:32:08',NULL,1,'App\\Formation',NULL,1),
	(13,NULL,'Universidad Jose Simeon Cañas','Institución Salesiana de educación superior',NULL,NULL,'email@uca.edu.sv','ssdfsf','2017-08-10 05:12:22','2017-08-10 05:12:22',NULL,7,'App\\Organization',NULL,1),
	(14,NULL,'Cristosal','Cristosal es una organización no gubernamental con sede en El Salvador, que promueve los derechos humanos en Centroamérica a través de la programación, la investigación y el aprendizaje basados en los derechos.',NULL,NULL,'info@cristosal.org','http://www.cristosal.org/','2017-08-24 23:49:38','2017-08-24 23:49:38',NULL,9,'App\\Organization',NULL,1),
	(15,NULL,'FESPAD','FESPAD se define a sí misma como una institución de promoción humana, cuyo ámbito de aproximación a la sociedad es el Derecho',NULL,NULL,'fespadinfo@fespad.org.sv','http://fespad.org.sv/','2017-08-24 23:53:45','2017-08-24 23:53:45',NULL,10,'App\\Organization',NULL,1),
	(16,NULL,'SSPAS','El Servicio Social Pasionista nació desde la preocupación y sensibilidad del carisma pasionista por la realidad de violencias que vive a diario la población de El Salvador.',NULL,NULL,'sspas@sspas.org.sv','http://sspas.org.sv/','2017-08-24 23:58:06','2017-08-24 23:58:06',NULL,11,'App\\Organization',NULL,1),
	(17,'Taller nacional sobre movilidad humana',NULL,'Se trata de un taller nacional orientado al compartimiento de los estándares de movilidad humana desarrollados por la CIDH a efecto de identificar su inserción o inclusión en las legislaciones de los países nacionales del entorno centroamericano.',NULL,'Tegucigalpa, Honduras','CIDHPromocion@oas.org','http://www.oas.org/en/','2017-08-25 00:02:59','2017-08-25 00:02:59',NULL,2,'App\\Formation',NULL,1),
	(18,'Estudio de Violencia contra las mujeres en los partidos políticos',NULL,'En dicha actividad se dará inicio a la campaña de sensibilización sobre la participación política de mujeres en Honduras.',NULL,'Tegucigalpa, Honduras','jmurillo@padf.org','https://www.padf.org/','2017-08-25 02:49:22','2017-08-25 02:49:22',NULL,3,'App\\Formation',NULL,1),
	(19,'I Reunión-taller de trabajo de Ombudsman',NULL,'Es una actividad que tiene como objetivo establecer un marco de dialogo entre los procuradores y procuradoras de derechos humanos, intercambiar buenas prácticas y analizar el estado de avance de la implementación de los estándares interamericanos de derechos humanos en la región, a través de un dialogo participativo y abierto, así como acordar y definir acciones conjuntas con el apoyo de la CIDH.',NULL,'Antigua Guatemala, Guatemala','CIDHPromocion@oas.org','http://www.oas.org/en/','2017-08-25 02:53:27','2017-08-25 02:53:27',NULL,4,'App\\Formation',NULL,1),
	(20,'Informe sobre situación de desplazamiento forzado por violencia generalizada',NULL,'Basado en casos registrados en el periodo 2014-2015','La mesa de sociedad civil contra el desplazamiento forzado por violencia y crimen organizado.',NULL,NULL,NULL,'2017-08-25 05:04:52','2017-08-25 05:05:08',NULL,2,'App\\Document','Mesa de Sociedad Civil',1);

/*!40000 ALTER TABLE `search_contents` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`)
VALUES
	(1,'title','Título del Sitio','Portal Centroamericano de Derechos Humanos y Democracia IDHUCA',NULL,'text',0),
	(2,'admin_title','Título de Administrador','Portal Centroamericano',NULL,'text',1),
	(3,'logo','Logo de Sitio','settings/August2017/IebDpy25Y7vrqvKFFg3I.png',NULL,'file',2),
	(4,'logo_usaid','USAID Logo','settings/August2017/Gt6p3kn5IAA3SziotjHt.png',NULL,'file',3),
	(5,'logo_padf','PADF Logo','settings/August2017/GmmIgsbmxWseqBGmuURB.png',NULL,'file',4),
	(6,'contact_direction','Contáctenos Dirección','Bulevar Los Proceres, San Salvador, El Salvador',NULL,'text_area',5),
	(7,'contact_email','Contáctenos Email','info@uca.edu.sv',NULL,'text',6),
	(8,'contact_phone','Contáctenos Teléfono','(503) 7062 6532',NULL,'text',7),
	(9,'admin.title','Admin Title','',NULL,'text',8),
	(10,'admin.description','Admin Description','',NULL,'text',9);

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table topics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `topics`;

CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;

INSERT INTO `topics` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(3,'Migrantes','2017-08-24 23:38:06','2017-08-24 23:38:06',NULL),
	(4,'Desplazados internos','2017-08-24 23:38:15','2017-08-24 23:38:15',NULL),
	(5,'Niñez y adolescencia','2017-08-24 23:38:31','2017-08-24 23:38:31',NULL),
	(6,'Mujeres en situación de riesgo','2017-08-24 23:38:48','2017-08-24 23:38:48',NULL),
	(7,'Defensores/as de D.H.','2017-08-24 23:39:04','2017-08-24 23:39:04',NULL),
	(8,'Personas con discapacidad','2017-08-24 23:39:18','2017-08-24 23:39:18',NULL),
	(9,'LGTBI','2017-08-24 23:39:29','2017-08-24 23:39:29',NULL),
	(10,'Pueblos originarios','2017-08-24 23:39:40','2017-08-24 23:39:40',NULL),
	(11,'Tercera edad','2017-08-24 23:39:51','2017-08-24 23:39:51',NULL);

/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translations`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`)
VALUES
	(1,'data_types','display_name_singular',1,'pt','Post','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(2,'data_types','display_name_singular',2,'pt','Página','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(3,'data_types','display_name_singular',3,'pt','Utilizador','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(4,'data_types','display_name_singular',4,'pt','Categoria','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(5,'data_types','display_name_singular',5,'pt','Menu','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(6,'data_types','display_name_singular',6,'pt','Função','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(7,'data_types','display_name_plural',1,'pt','Posts','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(8,'data_types','display_name_plural',2,'pt','Páginas','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(9,'data_types','display_name_plural',3,'pt','Utilizadores','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(10,'data_types','display_name_plural',4,'pt','Categorias','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(11,'data_types','display_name_plural',5,'pt','Menus','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(12,'data_types','display_name_plural',6,'pt','Funções','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(13,'data_types','display_name_singular',1,'es','Publicación','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(14,'data_types','display_name_singular',2,'es','Página','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(15,'data_types','display_name_singular',3,'es','Usuario','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(16,'data_types','display_name_singular',4,'es','Categoría','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(17,'data_types','display_name_singular',5,'es','Menú','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(18,'data_types','display_name_singular',6,'es','Rol','2017-08-02 07:20:37','2017-08-02 07:20:37'),
	(19,'data_types','display_name_plural',1,'es','Publicaciones','2017-08-02 07:20:38','2017-08-02 07:20:38'),
	(20,'data_types','display_name_plural',2,'es','Páginas','2017-08-02 07:20:38','2017-08-02 07:20:38'),
	(21,'data_types','display_name_plural',3,'es','Usuarios','2017-08-02 07:20:38','2017-08-02 07:20:38'),
	(22,'data_types','display_name_plural',4,'es','Categorías','2017-08-02 07:20:38','2017-08-02 07:20:38'),
	(23,'data_types','display_name_plural',5,'es','Menus','2017-08-02 07:20:38','2017-08-02 07:20:38'),
	(24,'data_types','display_name_plural',6,'es','Roles','2017-08-02 07:20:38','2017-08-02 07:20:38'),
	(25,'menu_items','title',1,'pt','Painel de Controle','2017-08-02 07:22:30','2017-08-02 07:22:30'),
	(26,'menu_items','title',2,'pt','Media','2017-08-02 07:22:30','2017-08-02 07:22:30'),
	(27,'menu_items','title',3,'pt','Publicações','2017-08-02 07:22:30','2017-08-02 07:22:30'),
	(28,'menu_items','title',4,'pt','Utilizadores','2017-08-02 07:22:30','2017-08-02 07:22:30'),
	(29,'menu_items','title',5,'pt','Categorias','2017-08-02 07:22:30','2017-08-02 07:22:30'),
	(30,'menu_items','title',6,'pt','Páginas','2017-08-02 07:22:30','2017-08-02 07:22:30'),
	(31,'menu_items','title',7,'pt','Funções','2017-08-02 07:22:30','2017-08-02 07:22:30'),
	(32,'menu_items','title',8,'pt','Ferramentas','2017-08-02 07:22:30','2017-08-02 07:22:30'),
	(33,'menu_items','title',9,'pt','Menus','2017-08-02 07:22:30','2017-08-02 07:22:30'),
	(34,'menu_items','title',10,'pt','Base de dados','2017-08-02 07:22:30','2017-08-02 07:22:30'),
	(35,'menu_items','title',11,'pt','Configurações','2017-08-02 07:22:30','2017-08-02 07:22:30'),
	(36,'menu_items','title',1,'es','Panel de Control','2017-08-02 07:22:31','2017-08-02 07:22:31'),
	(37,'menu_items','title',2,'es','Media','2017-08-02 07:22:31','2017-08-02 07:22:31'),
	(39,'menu_items','title',4,'es','Usuarios','2017-08-02 07:22:31','2017-08-02 07:22:31'),
	(43,'menu_items','title',8,'es','Herramientas','2017-08-02 07:22:31','2017-08-02 07:22:31'),
	(44,'menu_items','title',9,'es','Constructor de Menú','2017-08-02 07:22:31','2017-08-02 07:22:31'),
	(46,'menu_items','title',11,'es','Configuraciones','2017-08-02 07:22:31','2017-08-02 07:22:31'),
	(47,'menu_items','title',8,'en','Tools','2017-08-02 08:02:39','2017-08-02 08:02:39'),
	(48,'menu_items','title',1,'en','Dashboard','2017-08-02 08:02:57','2017-08-02 08:02:57'),
	(49,'menu_items','title',4,'en','Users','2017-08-02 08:03:04','2017-08-02 08:03:04'),
	(50,'menu_items','title',10,'en','Database','2017-08-02 08:03:19','2017-08-02 08:03:19'),
	(51,'menu_items','title',9,'en','Menu Builder','2017-08-02 08:03:57','2017-08-02 08:03:57');

/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,1,'César Ramírez','cesar@email.com','users/August2017/R40xzGQWLrEUD7W4s8Iz.png','$2y$10$ekepDFAXPpX3JmB.mVBsvOX7X3Hf/y/b3bPAJJGPO2DGVWTfdLgTq','fseyP1ToPmKnIfzuAFZH9ZIr5zUdzoelsGJqCKzhCgqKTkmZ7x4Leu6s8Ivz','2017-08-02 04:15:17','2017-08-02 04:16:48'),
	(2,1,'Administrador UCA PADF','admin@uca.edu.sv','users/default.png','$2y$10$8EJL3E1cRjYmaxd8j4wuleTvkPqiuXPqLfbASqsJigkO9m93DiB9a',NULL,'2017-08-09 21:37:22','2017-08-09 21:37:22');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table work_areas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `work_areas`;

CREATE TABLE `work_areas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `work_areas` WRITE;
/*!40000 ALTER TABLE `work_areas` DISABLE KEYS */;

INSERT INTO `work_areas` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Grupos con orientación sexual diversa (LGTBI)',NULL,'2017-08-02 04:39:06','2017-08-02 04:39:06',NULL),
	(2,'Movilidad humana (migrantes/desplazados internos)',NULL,'2017-08-24 23:08:38','2017-08-24 23:08:38',NULL),
	(3,'Niñez y adolescencia',NULL,'2017-08-24 23:08:53','2017-08-24 23:08:53',NULL),
	(4,'Mujeres y enfoque de género',NULL,'2017-08-24 23:09:09','2017-08-24 23:09:09',NULL),
	(5,'Defensores/as de D.H.',NULL,'2017-08-24 23:09:21','2017-08-24 23:09:21',NULL),
	(6,'Personas con discapacidad',NULL,'2017-08-24 23:09:31','2017-08-24 23:09:31',NULL),
	(7,'Pueblos originarios y afrodescendientes',NULL,'2017-08-24 23:09:42','2017-08-24 23:09:42',NULL),
	(8,'Adultos mayores',NULL,'2017-08-24 23:09:52','2017-08-24 23:09:52',NULL);

/*!40000 ALTER TABLE `work_areas` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
