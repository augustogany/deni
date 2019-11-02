-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla deni.busines
CREATE TABLE IF NOT EXISTS `busines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `watsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addres` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `site` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoria_id` bigint(20) unsigned NOT NULL,
  `description_long` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) unsigned NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `busine_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `sharemap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `busines_categoria_id_foreign` (`categoria_id`),
  KEY `busines_user_id_foreign` (`user_id`),
  CONSTRAINT `busines_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `busines_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.busines: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `busines` DISABLE KEYS */;
INSERT INTO `busines` (`id`, `name`, `image`, `watsapp`, `addres`, `longitude`, `latitude`, `description`, `site`, `categoria_id`, `description_long`, `user_id`, `slug`, `images`, `busine_relation`, `created_at`, `updated_at`, `deleted_at`, `sharemap`) VALUES
	(1, 'Lorem ipsum', 'busines/October2019/vETF3jTYaNc8XolCxU0i.jpg', '75195380', 'No se puede acceder a este sitio webNo se ha podido encontrar la dirección IP del servidor de www.google.com.', '123131231', '123123123', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod', 'www.busine.com', 7, '<p>qweqweqweqewqe</p>', 1, 'pizzeria-tatu', '["busines\\/October2019\\/IgQ2qjZcrME8mZkVQtpr.jpg","busines\\/October2019\\/rVXTQFQLcwdyNfRmU36z.jpg"]', '[]', '2019-10-25 01:23:50', '2019-10-29 23:15:26', '2019-10-29 23:15:26', 'https://g.page/PizzasTatu?share'),
	(2, 'Campo Ferial Fexpo Beni', 'busines\\October2019\\Xj49ZlHCVS8GaEbiusBa.png', NULL, 'Av. Ganadera Km 1,5 Carretera Norte', '-14.8106949,-64.9052386,17', '-14.8106949!4d-64.9030499', 'Campo ferial donde se exponen las mejores e importantes ferias de negocios del Beni', 'www.uabjb.edu.bo/fexpobeni/', 3, '<h1 style="text-align: center;">UBICACION</h1>\r\n<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3857.2594519071126!2d-64.90523858542153!3d-14.810689703473097!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93dd6e2032bbaf29%3A0x51d7c9163bbd5267!2sFexpoBeni!5e0!3m2!1ses-419!2sbo!4v1572312908560!5m2!1ses-419!2sbo" width="1110" height="600" frameborder="0" allowfullscreen=""></iframe></p>', 3, 'campo-ferial-fexpo-beni', '["busines\\\\October2019\\\\vf6vuGA1r9mMSwUMntQI.png","busines\\\\October2019\\\\mL6LJeJ0hzIlQlpGKOFt.png","busines\\\\October2019\\\\ZEI7heLa0uCFMYzxFOWE.png"]', '["2"]', '2019-10-27 00:27:01', '2019-10-28 23:41:17', NULL, 'goo.gl/maps/aeQBpAXwFusANorx9'),
	(3, 'Colegio la Salle', 'busines\\October2019\\xs6eA1GQVOOfYkMOLAv4.png', '34622422', 'Av Circunvalacion, Trinidad', NULL, NULL, 'CONTRIBUYE A IMPARTIR UNA EDUCACION MODERNA Y DE CALIDAD.', 'collage.salle.com', 6, '<h1 style="text-align: center;">COLEGIO LA SALLE</h1>\r\n<p>CON EL ESFUERZO DE MUCHOS, EL APOYO DE LA COMUNIDAD EDUCATIVA, GRACIAS AL APORTE ECONOMICO DE LOS HERMANOS DE LA SALLE BOLIVIA Y EL CARI&Ntilde;O A LA NI&Ntilde;EZ Y JUVENTUD LA SALLISTA SE HIZO REALIDAD.</p>\r\n<ul>\r\n<li>PRIMARIA</li>\r\n<li>SECUNDARIA</li>\r\n</ul>\r\n<h2 style="text-align: center;">UBICACION</h2>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15427.824218511128!2d-64.8959478!3d-14.8277243!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9cfb4efc6a07210a!2sColegio%20La%20Salle!5e0!3m2!1ses-419!2sbo!4v1572139078432!5m2!1ses-419!2sbo" width="1110" height="600" frameborder="0" allowfullscreen=""></iframe></p>', 4, 'richard-eddy', '["busines\\/October2019\\/0zMBqM5XqB3sU8IqgRaH.jpg","busines\\/October2019\\/krbViwTiPgsaJ9dRR3z1.jpg"]', '["3"]', '2019-10-27 01:13:28', '2019-10-29 16:02:44', NULL, 'https://goo.gl/maps/aza4PdVquoJXuH396'),
	(4, 'Pizzeria TaTu', 'busines\\October2019\\KRu56gAeBuBoeGwf36KO.png', NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, 2, 'pizzeria-tatu-1', NULL, '[]', '2019-10-27 01:26:14', '2019-10-29 23:00:32', NULL, ''),
	(5, 'Pizzeria La popular', 'busines\\October2019\\Fphet9FertO34CqsHjS4.png', '7519933', 'Av Sta Cruz, Trinidad', NULL, NULL, 'ventas de pizzas', 'www.pizzeriapopular.loginweb.net', 7, NULL, 1, 'pizzeria-la-popular', '["busines\\/October2019\\/F3rA2PcZg7cozFxAAISB.jpg","busines\\/October2019\\/WW0iAOSOR2a0EljkqhTF.jpg","busines\\/October2019\\/NqJVrtT7iWQDKbLNjQJg.jpg"]', '[]', '2019-10-27 01:26:27', '2019-10-29 23:06:28', NULL, 'https://goo.gl/maps/avRhgfuSt7XnpSt86'),
	(6, 'SION Empresa Constructora', 'busines\\October2019\\HpZUemjw8gk94YydamA4.png', '70261492', 'www.gruposion.bo/', NULL, NULL, 'Empresa constructora de edificios, viviendas, etc', 'www.facebook.com/Constructora-SION-1862769370629700/', 15, '<p style="margin: 0px 0px 6px; font-family: Helvetica, Arial, sans-serif; color: #1c1e21;">Servicios de construcci&oacute;n en seco:</p>\r\n<p style="margin: 0px 0px 6px; font-family: Helvetica, Arial, sans-serif; color: #1c1e21;"><br />- CIELO FALO DE PVC, DRYWAL Y MAS...<span class="_5mfr" style="margin: 0px 1px; font-family: inherit;"><span class="_6qdm" style="background-repeat: no-repeat; background-size: contain; color: transparent; display: inline-block; text-shadow: none; vertical-align: text-bottom; font-family: inherit; height: 16px; width: 16px; font-size: 16px; background-image: url(\'https://www.facebook.com/images/emoji.php/v9/tb9/1/16/1f6e0.png\');">🛠</span></span><span class="_5mfr" style="margin: 0px 1px; font-family: inherit;"><span class="_6qdm" style="background-repeat: no-repeat; background-size: contain; color: transparent; display: inline-block; text-shadow: none; vertical-align: text-bottom; font-family: inherit; height: 16px; width: 16px; font-size: 16px; background-image: url(\'https://www.facebook.com/images/emoji.php/v9/t5c/1/16/1f477_200d_2642.png\');">👷&zwj;♂️</span></span><br />- CERCHA METALICA DE ACERO GALVANIZADO<span class="_5mfr" style="margin: 0px 1px; font-family: inherit;"><span class="_6qdm" style="background-repeat: no-repeat; background-size: contain; color: transparent; display: inline-block; text-shadow: none; vertical-align: text-bottom; font-family: inherit; height: 16px; width: 16px; font-size: 16px; background-image: url(\'https://www.facebook.com/images/emoji.php/v9/t54/1/16/1f529.png\');">🔩</span></span><span class="_5mfr" style="margin: 0px 1px; font-family: inherit;"><span class="_6qdm" style="background-repeat: no-repeat; background-size: contain; color: transparent; display: inline-block; text-shadow: none; vertical-align: text-bottom; font-family: inherit; height: 16px; width: 16px; font-size: 16px; background-image: url(\'https://www.facebook.com/images/emoji.php/v9/t8d/1/16/2699.png\');">⚙️</span></span><br />- CUBIERTAS DE TODO TIPO<span class="_5mfr" style="margin: 0px 1px; font-family: inherit;"><span class="_6qdm" style="background-repeat: no-repeat; background-size: contain; color: transparent; display: inline-block; text-shadow: none; vertical-align: text-bottom; font-family: inherit; height: 16px; width: 16px; font-size: 16px; background-image: url(\'https://www.facebook.com/images/emoji.php/v9/tf6/1/16/1f3e0.png\');">🏠</span></span><br />- TABIQUES Y MUROS DIVISORIOS</p>\r\n<div class="text_exposed_show" style="display: inline; font-family: Helvetica, Arial, sans-serif; color: #1c1e21;">\r\n<p style="margin: 0px 0px 6px; font-family: inherit;">Visitanos: CALLE COCHABAMBA ESQ. BOLIVAR<br />Celulares: 71004836 - 70261492</p>\r\n<p style="margin: 0px 0px 6px; font-family: inherit;">&nbsp;</p>\r\n<h2 style="margin: 0px 0px 6px; font-family: inherit; text-align: center;"><span style="text-decoration: underline;">UBICACION</span></h2>\r\n<p style="margin: 0px 0px 6px; font-family: inherit;">&nbsp;</p>\r\n</div>\r\n<p style="text-align: center;"><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3856.876518419932!2d-64.90422598588943!3d-14.832186789655278!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93dd6fd4c584afdd%3A0x5f4eddfc25cdee09!2sCONSTRUCTORA%20SION!5e0!3m2!1ses-419!2sbo!4v1572316559180!5m2!1ses-419!2sbo" width="600" height="450" frameborder="0" allowfullscreen=""></iframe></p>', 3, 'sion-empresa-constructora', '["busines\\/October2019\\/91h2Nc5G9qN4XIZex3Mk.jpg"]', '["2"]', '2019-10-27 01:33:12', '2019-10-29 00:39:04', NULL, 'Calle Cochabamba, esquina Bolivar'),
	(7, 'La Palabra del Beni', 'busines\\October2019\\TzoKro3CVt85eRw8F8Xp.png', '34620808', 'Avenida 6 de agosto, entre Pando y Ejercito', NULL, NULL, 'Medio de Comunicación Digital', 'www.lapalabradelbeni.com.bo', 15, '<p>Somos un medio de comunicacion impreso que sale diariamente a las calles con el objetivo de proporcionar informacion, veraz e imparcial a nuestros lectores</p>\r\n<h2 style="text-align: center;"><span style="text-decoration: underline;">UBICACION</span></h2>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p style="text-align: center;"><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3856.9580596288597!2d-64.9062952858895!3d-14.827611789658256!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93dd6e2a3f4d5cf1%3A0xa737847f0851c1cf!2sLa%20Palabra%20Del%20Beni!5e0!3m2!1ses-419!2sbo!4v1572316004598!5m2!1ses-419!2sbo" width="600" height="450" frameborder="0" allowfullscreen=""></iframe></p>', 3, 'la-palabra-del-beni', '["busines\\/October2019\\/9PkLFE9ahiGaxIiEdrxn.jpg"]', '["2"]', '2019-10-27 01:55:46', '2019-10-29 00:29:35', NULL, 'goo.gl/maps/GqnUcS8gkac15tPx7'),
	(8, 'Super Mercado Trinidad', 'busines\\October2019\\u5yjzKYHTFJo3sWXqSVp.jpg', '4622190.4627060', 'AV. COMUNIDAD EUROPEA', NULL, NULL, 'En el supermercado Trinidad tenemos 🛒\r\nOfertas Todo el año para ti🤯\r\nNo te pierdas de nuestras ‼️', 'www.laguia.bo/empresa/trinidad-supermercado', 12, '<h1 style="text-align: center;">SUPERMERCADO TRINIDAD</h1>\r\n<p>VISITANOS Y VERAS LA VARIEDAD DE PRODUCTOS Q OFRECEMOS AL ALCANCE DE TU BOLSILLO Y PEDIDOS A DOMICILIO COMO SER:</p>\r\n<ul>\r\n<li><span style="color: #1c1e21; font-family: Helvetica, Arial, sans-serif;">PRODUCTOS LACTEOS.</span></li>\r\n<li>MATERIAL DE LIMPIEZA.</li>\r\n<li>SECTOR DE JUGUETERIA.</li>\r\n<li>GALERIA DE VINOS.</li>\r\n<li>CARNE EN TODOS LOS CORTES.</li>\r\n<li>TODO PARA EL HOGAR.</li>\r\n</ul>\r\n<p><span style="color: #1c1e21; font-family: Helvetica, Arial, sans-serif;">TE ESPERAMOS CON MUCHAS OFERTAS MAS !!!</span></p>\r\n<h2 style="text-align: center;">UBICACION</h2>\r\n<p>&nbsp;</p>\r\n<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15428.052947428378!2d-64.9007058!3d-14.8245152!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4e69039a2801d705!2sSupermercado%20Trinidad!5e0!3m2!1ses-419!2sbo!4v1572141783494!5m2!1ses-419!2sbo" width="1110" height="600" frameborder="0" allowfullscreen=""></iframe></p>', 4, 'super-mercado-trinidad', '["busines\\/October2019\\/ae45rciUeMu06W6Wjjkb.jpg"]', '["6"]', '2019-10-27 02:04:04', '2019-10-29 17:37:43', NULL, 'goo.gl/maps/BiCRBAaAih8LuiwJA'),
	(9, 'Museo ICTICOLA Dr. Jorge Estivars', 'busines/October2019/GQalNguYjgdb5PoWiDBH.jpg', '76863146', 'Cercado, Trinidad, Beni, Bolivia.', NULL, NULL, 'PROMUEVE EL TURISMO CULTURAL Y CIENTIFICO DEPENDIENTE DEL C.I.R.A.', 'bolivia-natura.com/actividades/trinidad-y-beni/museo-icticola-del-beni/', 2, '<h1 style="text-align: center;">MUSEO ICTICOLA</h1>\r\n<p>UNICO MUSEO EN SU GENERO EN BOLIVIA QUE EXNA, CON FINES EXHIBE AL PUBLICO 509 ESPECIES DE PECES DE LA CUENCA AMAZONICA BOLIVIANA, CON FINES&nbsp; EDUCATIVO RECREACION Y DELEITE.</p>\r\n<h2 style="text-align: center;">UBICACION</h2>\r\n<p>&nbsp;</p>\r\n<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15428.964359913965!2d-64.8959789!3d-14.8117212!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc91c918e22bebe08!2sMuseo%20Ict%C3%ADcola%20del%20Beni!5e0!3m2!1ses-419!2sbo!4v1572307507653!5m2!1ses-419!2sbo" width="1110" height="600" frameborder="0" allowfullscreen=""></iframe></p>\r\n<p>&nbsp;</p>', 4, 'museo-icticola-dr-jorge-estivars', '["busines\\/October2019\\/dBpaQM22K5SE4imrjQ9o.jpg","busines\\/October2019\\/m0JxbAiGntSaCZD3Kwz3.jpg"]', '["2"]', '2019-10-28 22:06:25', '2019-10-29 17:16:05', NULL, 'https://goo.gl/maps/M4Q5smZ4LY2Nmtd56'),
	(10, 'Farmacorp', 'busines/October2019/mM8jfYLcDF71cLMKUT5Y.png', '69053587', 'Edifico Durán, Trinidad', NULL, NULL, 'CADENA NACIONAL DE FARMACIAS ES UNA UNIDAD DE NEGOCIIOS DEL GRUPO EMPRESARIAL NEXOCORP.', 'https://farmacorp.com', 4, '<h1 style="text-align: center;">FARMACIA FARMACORP</h1>\r\n<p style="text-align: left;">FARMACORP LA CADENA DE NACIONAL DE FARMACIAS CON 80 A&Ntilde;OS EN EL MERCADO BOLIVIANO, PONE A DISPOSISCION DE SUS CLIENTES UNA VARIADA OFERTA DE PRODUCTOS</p>\r\n<ul>\r\n<li style="text-align: left;">FARMACEUTICOS&nbsp;</li>\r\n<li style="text-align: left;">INSUMOS MEDICOS</li>\r\n<li>HASTA EL CUIDADO PERSONAL</li>\r\n<li>COSMETICOS</li>\r\n<li>SUPLEMENTOS ALIMENTICION</li>\r\n<li>OTROS.</li>\r\n</ul>\r\n<h2 style="text-align: center;">UBICACION</h2>\r\n<p>&nbsp;</p>\r\n<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15427.325973555256!2d-64.9034555!3d-14.8347124!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7352017ced2491c3!2sFarmacorp%20-%20Sucursal%20Beni!5e0!3m2!1ses-419!2sbo!4v1572310408851!5m2!1ses-419!2sbo" width="1110" height="600" frameborder="0" allowfullscreen=""></iframe></p>\r\n<p><iframe src="https://www.youtube.com/embed/aLWS-f57P0I" width="1110" height="315" frameborder="0" allowfullscreen=""></iframe></p>', 4, 'farmacorp', '["busines\\/October2019\\/uoJ95HfQKN5pi8pUYBcW.jpg"]', '["6"]', '2019-10-28 22:55:16', '2019-10-29 17:48:14', NULL, 'goo.gl/maps/VtBXMRTSBEofJznd9'),
	(11, 'Churrasqueria La Estancia', 'busines/October2019/RdV6Qz9FVIJ6eOV3519K.jpg', NULL, 'Calle Ibare 57 between Av. Pedro Ignacio Muiba and Hernan Velarde, Trinidad Bolivia', NULL, NULL, 'TIPOS DE COMIDA\r\nCHURRASQUERIA\r\nPARRILLADA\r\nTELF: 59134620022', NULL, 7, '<h1 style="text-align: center;">CHURRASQUERIA LA ESTANCIA</h1>\r\n<div style="margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Tahoma, \'Bitstream Vera Sans\', sans-serif; font-size: medium;">\r\n<div class="restaurants-detail-overview-cards-DetailsSectionOverviewCard__categoryTitle--2RJP_" style="margin: 0px; padding: 0px; text-transform: uppercase; font-weight: bold; color: #000a12; font-size: 12px; line-height: 16px;">COMIDAS</div>\r\n<ul>\r\n<li class="restaurants-detail-overview-cards-DetailsSectionOverviewCard__tagText--1OH6h" style="font-size: 14px; line-height: 18px;">Almuerzo</li>\r\n<li class="restaurants-detail-overview-cards-DetailsSectionOverviewCard__tagText--1OH6h" style="font-size: 14px; line-height: 18px;">Cena</li>\r\n</ul>\r\n</div>\r\n<div class="restaurants-detail-overview-cards-DetailsSectionOverviewCard__categoryTitle--2RJP_" style="margin: 0px; padding: 0px; text-transform: uppercase; font-weight: bold; color: #000a12; font-size: 12px; line-height: 16px; text-align: left;">CARACTER&Iacute;STICAS</div>\r\n<ul>\r\n<li class="restaurants-detail-overview-cards-DetailsSectionOverviewCard__tagText--1OH6h" style="font-size: 14px; line-height: 18px; text-align: left;">Servicio de mesa</li>\r\n<li class="restaurants-detail-overview-cards-DetailsSectionOverviewCard__tagText--1OH6h" style="font-size: 14px; line-height: 18px; text-align: left;">Reservas ind&iacute;genas</li>\r\n</ul>\r\n<h2 style="text-align: center;">UBICACION</h2>\r\n<p>&nbsp;</p>\r\n<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15426.962396110823!2d-64.9036612!3d-14.8398097!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x147d68df5eea15b1!2sChurrasquer%C3%ADa%20La%20Estancia!5e0!3m2!1ses-419!2sbo!4v1572312644249!5m2!1ses-419!2sbo" width="1110" height="600" frameborder="0" allowfullscreen=""></iframe></p>', 4, 'churrasqueria-la-estancia', '["busines\\/October2019\\/7BtFa4jRxJhQeceoFMit.jpg","busines\\/October2019\\/gBtC3lCioK9ms1plIemQ.jpg"]', '["6"]', '2019-10-28 23:40:14', '2019-10-29 17:21:56', NULL, 'https://goo.gl/maps/hbiiy6gK6AexH9DM9'),
	(12, 'Churrasqueria El Pacumuto Trinitario', 'busines/October2019/LSxmbaQc0InCl9agWraC.jpg', '72820537', 'Calle Santa Cruz Norte entre Av Del Mar y Felix Sattori\r\nTrinidad (Bolivia).', NULL, NULL, 'RESTAURANTES DE CARNES EN TRINIDAD(BOLIVIA)', NULL, 7, '<h1 style="text-align: center;">CHURRASQUERIA EL PACUMUTO TRINITARI</h1>\r\n<p>RESTAURANTE DE TRADICION FAMILIAR:</p>\r\n<p>CARNES DE CORTE DE LOMO A LA PARRILLA CON GUARNICION DE ARROZ CON QUESO,YUCA FRITA, ENSALADA DE TOMATE Y CEBOLLA.</p>\r\n<p>SE SIRVE:</p>\r\n<ul>\r\n<li>ALMUERZO.</li>\r\n<li>CENA.</li>\r\n<li>BEBIDAS.</li>\r\n</ul>\r\n<p>SERVICIOS:</p>\r\n<ul>\r\n<li>IDEAL PARA GRUPOS.</li>\r\n<li>ACEPTA RESERVAS.</li>\r\n<li>PARA LLEVAR.</li>\r\n<li>SERVICIO MESERO.</li>\r\n<li>NO REQUIERE RESERVAS.</li>\r\n</ul>\r\n<h2 style="text-align: center;">UBICACION&nbsp;</h2>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15427.714245191886!2d-64.9064742!3d-14.829267!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x187641bacba11d92!2sChurrasqueria%20El%20Pacumuto%20Trinitario!5e0!3m2!1ses-419!2sbo!4v1572386061113!5m2!1ses-419!2sbo" width="1110" height="600" frameborder="0" allowfullscreen=""></iframe></p>', 4, 'churrasqueria-el-pacumuto-trinitario', '["busines\\/October2019\\/l7GkALbNLgMDS5Txgu3X.jpg","busines\\/October2019\\/SG9KzISX5wYyGwKtYBhI.jpg"]', '["6"]', '2019-10-29 20:05:33', '2019-10-29 23:05:22', NULL, 'https://goo.gl/maps/fKkZFzZKUDUA5rQy5');
/*!40000 ALTER TABLE `busines` ENABLE KEYS */;

-- Volcando estructura para tabla deni.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.categorias: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`id`, `name`, `image`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Turismo Rural', '', 'fas fa-globe-americas dark-grey-text mr-3', '2019-10-20 01:36:35', '2019-10-24 03:25:26', NULL),
	(2, 'Turismo Urbano', '', 'fas fa-car-side dark-grey-text mr-3', '2019-10-20 01:36:56', '2019-10-25 04:18:43', NULL),
	(3, 'Lugares Publicos', '', 'fas fa-archway dark-grey-text mr-3', '2019-10-20 01:37:11', '2019-10-25 04:19:48', NULL),
	(4, 'Farmacias', '', 'fas fa-briefcase-medical dark-grey-text mr-3', '2019-10-20 01:37:20', '2019-10-25 04:20:30', NULL),
	(5, 'Salud', '', 'fas fa-clinic-medical dark-grey-text mr-3', '2019-10-20 01:37:29', '2019-10-29 23:36:04', '2019-10-29 23:36:04'),
	(6, 'Educacion', '', 'fas fa-city dark-grey-text mr-3', '2019-10-20 01:37:38', '2019-10-25 04:23:14', NULL),
	(7, 'Restaurantes', '', 'fas fa-hamburger dark-grey-text mr-3', '2019-10-20 01:38:08', '2019-10-25 04:24:40', NULL),
	(8, 'Hoteles', '', '', '2019-10-20 01:38:23', '2019-10-20 01:38:23', NULL),
	(9, 'Transporte', '', '', '2019-10-20 01:38:37', '2019-10-20 01:38:37', NULL),
	(10, 'Religion', '', '', '2019-10-20 01:38:49', '2019-10-20 01:38:49', NULL),
	(11, 'Casas Comerciales', '', '', '2019-10-20 01:39:00', '2019-10-20 01:39:15', NULL),
	(12, 'Super & shoping', '', '', '2019-10-20 01:39:42', '2019-10-20 01:39:42', NULL),
	(13, 'Boutique & Zapatos', '', 'fas fa-shoe-prints dark-grey-text mr-3', '2019-10-20 01:40:01', '2019-10-24 03:22:38', NULL),
	(14, 'Belleza & Peliqueria', '', 'fas fa-cut dark-grey-text mr-3', '2019-10-20 01:40:33', '2019-10-24 03:21:25', NULL),
	(15, 'Tecnologias', '', 'fas fa-tv dark-grey-text mr-3', '2019-10-20 01:43:20', '2019-10-24 03:15:58', NULL);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

-- Volcando estructura para tabla deni.categories
CREATE TABLE IF NOT EXISTS `categories` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.categories: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, NULL, 1, 'Category 1', 'category-1', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(2, NULL, 1, 'Category 2', 'category-2', '2019-10-25 00:33:22', '2019-10-25 00:33:22');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Volcando estructura para tabla deni.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `commenter_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commenter_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `child_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_commenter_id_commenter_type_index` (`commenter_id`,`commenter_type`),
  KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  KEY `comments_child_id_foreign` (`child_id`),
  CONSTRAINT `comments_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.comments: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `commenter_id`, `commenter_type`, `guest_name`, `guest_email`, `commentable_type`, `commentable_id`, `comment`, `approved`, `child_id`, `created_at`, `updated_at`) VALUES
	(1, '2', 'App\\User', NULL, NULL, 'App\\Busine', '2', 'Esta Negocio esta mal Registrado', 1, NULL, '2019-10-27 00:41:45', '2019-10-27 00:41:45'),
	(2, '1', 'App\\User', NULL, NULL, 'App\\Busine', '5', 'Buenas pizas', 1, NULL, '2019-10-28 20:51:38', '2019-10-28 20:51:38'),
	(3, '4', 'App\\User', NULL, NULL, 'App\\Busine', '5', 'Seria bueno la promociones', 1, NULL, '2019-10-28 20:53:07', '2019-10-28 20:53:07');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Volcando estructura para tabla deni.data_rows
CREATE TABLE IF NOT EXISTS `data_rows` (
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.data_rows: ~112 rows (aproximadamente)
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
	(1, 1, 'id', 'number', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
	(2, 1, 'name', 'text', 'Nombre', 1, 1, 1, 1, 1, 0, '{}', 2),
	(3, 1, 'email', 'text', 'Correo Electrónico', 1, 1, 1, 1, 1, 0, '{}', 3),
	(4, 1, 'password', 'password', 'Constraseña', 1, 0, 1, 1, 1, 0, '{}', 4),
	(5, 1, 'remember_token', 'text', 'Token de Recuerdo', 0, 0, 0, 0, 0, 0, '{}', 5),
	(6, 1, 'created_at', 'timestamp', 'Creado', 0, 0, 1, 0, 0, 0, '{}', 6),
	(7, 1, 'updated_at', 'timestamp', 'Actualizado', 0, 1, 0, 0, 0, 0, '{}', 7),
	(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 0, '{}', 8),
	(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Rol', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":"0","taggable":"0"}', 10),
	(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
	(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
	(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(13, 2, 'name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, NULL, 2),
	(14, 2, 'created_at', 'timestamp', 'Creado', 0, 0, 0, 0, 0, 0, NULL, 3),
	(15, 2, 'updated_at', 'timestamp', 'Actualizado', 0, 0, 0, 0, 0, 0, NULL, 4),
	(16, 3, 'id', 'number', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
	(17, 3, 'name', 'text', 'Nombre', 1, 1, 1, 1, 1, 0, '{}', 2),
	(18, 3, 'created_at', 'timestamp', 'Creado', 0, 0, 1, 0, 0, 0, '{}', 3),
	(19, 3, 'updated_at', 'timestamp', 'Actualizado', 0, 1, 1, 0, 0, 0, '{}', 4),
	(20, 3, 'display_name', 'text', 'Nombre a Mostrar', 1, 1, 1, 1, 1, 0, '{}', 5),
	(21, 1, 'role_id', 'text', 'Rol', 0, 1, 1, 1, 1, 1, '{}', 9),
	(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
	(23, 4, 'parent_id', 'select_dropdown', 'Padre', 0, 0, 1, 1, 1, 1, '{"default":"","null":"","options":{"":"-- None --"},"relationship":{"key":"id","label":"name"}}', 2),
	(24, 4, 'order', 'text', 'Orden', 1, 1, 1, 1, 1, 1, '{"default":1}', 3),
	(25, 4, 'name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 4),
	(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name"}}', 5),
	(27, 4, 'created_at', 'timestamp', 'Creado', 0, 0, 1, 0, 0, 0, '{}', 6),
	(28, 4, 'updated_at', 'timestamp', 'Actualizado', 0, 0, 0, 0, 0, 0, '{}', 7),
	(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(30, 5, 'author_id', 'text', 'Autor', 1, 0, 1, 1, 0, 1, NULL, 2),
	(31, 5, 'category_id', 'text', 'Categoría', 1, 0, 1, 1, 1, 0, NULL, 3),
	(32, 5, 'title', 'text', 'Título', 1, 1, 1, 1, 1, 1, NULL, 4),
	(33, 5, 'excerpt', 'text_area', 'Extracto', 1, 0, 1, 1, 1, 1, NULL, 5),
	(34, 5, 'body', 'rich_text_box', 'Cuerpo', 1, 0, 1, 1, 1, 1, NULL, 6),
	(35, 5, 'image', 'image', 'Imagen del Post', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
	(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true},"validation":{"rule":"unique:posts,slug"}}', 8),
	(37, 5, 'meta_description', 'text_area', 'Meta Descripción', 1, 0, 1, 1, 1, 1, NULL, 9),
	(38, 5, 'meta_keywords', 'text_area', 'Meta Palabras Clave', 1, 0, 1, 1, 1, 1, NULL, 10),
	(39, 5, 'status', 'select_dropdown', 'Estatus', 1, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"PUBLISHED":"published","DRAFT":"draft","PENDING":"pending"}}', 11),
	(40, 5, 'created_at', 'timestamp', 'Creado', 0, 1, 1, 0, 0, 0, NULL, 12),
	(41, 5, 'updated_at', 'timestamp', 'Actualizado', 0, 0, 0, 0, 0, 0, NULL, 13),
	(42, 5, 'seo_title', 'text', 'Título SEO', 0, 1, 1, 1, 1, 1, NULL, 14),
	(43, 5, 'featured', 'checkbox', 'Destacado', 1, 1, 1, 1, 1, 1, NULL, 15),
	(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(45, 6, 'author_id', 'text', 'Autor', 1, 0, 0, 0, 0, 0, NULL, 2),
	(46, 6, 'title', 'text', 'Título', 1, 1, 1, 1, 1, 1, NULL, 3),
	(47, 6, 'excerpt', 'text_area', 'Extracto', 1, 0, 1, 1, 1, 1, NULL, 4),
	(48, 6, 'body', 'rich_text_box', 'Cuerpo', 1, 0, 1, 1, 1, 1, NULL, 5),
	(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title"},"validation":{"rule":"unique:pages,slug"}}', 6),
	(50, 6, 'meta_description', 'text', 'Meta Descripción', 1, 0, 1, 1, 1, 1, NULL, 7),
	(51, 6, 'meta_keywords', 'text', 'Meta Palabras Clave', 1, 0, 1, 1, 1, 1, NULL, 8),
	(52, 6, 'status', 'select_dropdown', 'Estatus', 1, 1, 1, 1, 1, 1, '{"default":"INACTIVE","options":{"INACTIVE":"INACTIVE","ACTIVE":"ACTIVE"}}', 9),
	(53, 6, 'created_at', 'timestamp', 'Creado', 1, 1, 1, 0, 0, 0, NULL, 10),
	(54, 6, 'updated_at', 'timestamp', 'Actualizado', 1, 0, 0, 0, 0, 0, NULL, 11),
	(55, 6, 'image', 'image', 'Imagen de la página', 0, 1, 1, 1, 1, 1, NULL, 12),
	(56, 7, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
	(57, 7, 'name', 'text', 'Nombre Comercial', 1, 1, 1, 1, 1, 1, '{"display":{"width":"6"}}', 5),
	(58, 7, 'image', 'image', 'Image Default', 0, 0, 1, 1, 1, 0, '{"display":{"width":"6"}}', 11),
	(59, 7, 'watsapp', 'number', 'Whatsapp', 0, 0, 1, 1, 1, 0, '{"display":{"width":"6"}}', 6),
	(60, 7, 'addres', 'text_area', 'Direccion del Negocio', 0, 0, 1, 1, 1, 0, '{"display":{"width":"6"}}', 10),
	(61, 7, 'longitude', 'hidden', 'Longitude', 0, 0, 1, 0, 0, 0, '{}', 13),
	(62, 7, 'latitude', 'hidden', 'Latitude', 0, 0, 1, 0, 0, 0, '{}', 14),
	(63, 7, 'description', 'text_area', 'Descripcion Corta del Negocio', 0, 0, 1, 1, 1, 0, '{"display":{"width":"6"}}', 9),
	(64, 7, 'site', 'text', 'Sitio Web del Neocio', 0, 0, 1, 1, 1, 0, '{"display":{"width":"6"}}', 7),
	(65, 7, 'categoria_id', 'text', 'Categoria Id', 1, 1, 1, 1, 1, 1, '{}', 2),
	(66, 7, 'description_long', 'rich_text_box', 'Description Long', 0, 0, 1, 1, 1, 0, '{}', 17),
	(67, 7, 'user_id', 'text', 'User Id', 1, 0, 1, 1, 1, 1, '{}', 3),
	(68, 7, 'slug', 'text', 'Slug', 1, 0, 1, 0, 0, 0, '{}', 18),
	(69, 7, 'images', 'multiple_images', 'Images (3-5)', 0, 0, 1, 1, 1, 0, '{"display":{"width":"6"}}', 12),
	(70, 7, 'busine_relation', 'select_multiple', 'Busine Relation', 0, 0, 1, 1, 1, 0, '{"options":{"2":"uabjb","3":"La salle","4":"terminal Jose ballivian","5":"hotel jacaranda","6":"LoginWeb"}}', 19),
	(71, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 20),
	(72, 7, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 21),
	(73, 8, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
	(74, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 0, '{}', 2),
	(75, 8, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
	(77, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 5),
	(78, 8, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 6),
	(79, 7, 'busine_belongsto_categoria_relationship', 'relationship', 'Elija una Categorias', 0, 1, 1, 1, 1, 0, '{"model":"App\\\\Categoria","table":"categorias","type":"belongsTo","column":"categoria_id","key":"id","label":"name","pivot_table":"busines","pivot":"0","taggable":"0"}', 4),
	(80, 7, 'busine_belongsto_user_relationship', 'relationship', 'users', 0, 0, 1, 1, 1, 1, '{"model":"App\\\\User","table":"users","type":"belongsTo","column":"user_id","key":"id","label":"name","pivot_table":"busines","pivot":"0","taggable":"0"}', 22),
	(90, 7, 'busine_hasmany_horario_relationship', 'relationship', 'Horario del Negocio', 0, 0, 1, 1, 1, 0, '{"model":"App\\\\Horario","table":"horarios","type":"hasMany","column":"busine_id","key":"id","label":"title","pivot_table":"busines","pivot":"0","taggable":"0"}', 16),
	(91, 10, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
	(92, 10, 'link', 'text', 'Link', 1, 1, 1, 1, 1, 0, '{}', 3),
	(93, 10, 'busine_id', 'text', 'Busine Id', 1, 1, 1, 1, 1, 1, '{}', 4),
	(94, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 5),
	(95, 10, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 6),
	(96, 10, 'social_network_belongsto_busine_relationship', 'relationship', 'Negocio o Comercio', 0, 1, 1, 1, 1, 0, '{"model":"App\\\\Busine","table":"busines","type":"belongsTo","column":"busine_id","key":"id","label":"name","pivot_table":"busines","pivot":"0","taggable":"0"}', 2),
	(97, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(98, 11, 'puntuacion', 'text', 'Puntuacion', 1, 1, 1, 1, 1, 1, '{}', 4),
	(99, 11, 'busine_id', 'text', 'Busine Id', 1, 1, 1, 1, 1, 1, '{}', 2),
	(100, 11, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
	(101, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
	(102, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
	(103, 11, 'start_belongsto_busine_relationship', 'relationship', 'busines', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Busine","table":"busines","type":"belongsTo","column":"busine_id","key":"id","label":"name","pivot_table":"busines","pivot":"0","taggable":"0"}', 7),
	(104, 11, 'start_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\User","table":"users","type":"belongsTo","column":"user_id","key":"id","label":"name","pivot_table":"busines","pivot":"0","taggable":"0"}', 8),
	(105, 8, 'icon', 'text', 'Icon', 1, 1, 1, 1, 1, 0, '{}', 4),
	(106, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 0, '{}', 7),
	(115, 13, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
	(116, 13, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 0, '{}', 3),
	(117, 13, 'dias', 'select_multiple', 'Dias', 0, 1, 1, 1, 1, 0, '{"options":{"1":"Lunes","2":"Martes","3":"Miercoles","4":"Jueves","5":"Viernes","6":"Sabado","7":"Domingo"}}', 4),
	(118, 13, 'hora_inicio', 'time', 'Hora Inicio', 0, 1, 1, 1, 1, 0, '{}', 5),
	(119, 13, 'hora_final', 'time', 'Hora Final', 0, 1, 1, 1, 1, 0, '{}', 6),
	(120, 13, 'busine_id', 'text', 'Busine Id', 1, 1, 1, 1, 1, 1, '{}', 2),
	(121, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 7),
	(122, 13, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 8),
	(123, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 1, 0, 0, 0, '{}', 9),
	(124, 13, 'horario_belongsto_busine_relationship', 'relationship', 'busines', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Busine","table":"busines","type":"belongsTo","column":"busine_id","key":"id","label":"name","pivot_table":"busines","pivot":"0","taggable":"0"}', 10),
	(126, 7, 'busine_hasmany_social_network_relationship', 'relationship', 'Redes Sociales', 0, 1, 1, 1, 1, 0, '{"model":"App\\\\SocialNetwork","table":"social_networks","type":"hasMany","column":"busine_id","key":"id","label":"link","pivot_table":"busines","pivot":"0","taggable":"0"}', 15),
	(127, 7, 'sharemap', 'text', 'Ruta hacia el Negocio', 1, 0, 1, 1, 1, 0, '{"display":{"width":"6"}}', 8),
	(128, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 0, '{}', 6),
	(129, 10, 'redes', 'select_dropdown', 'Redes', 0, 1, 1, 1, 1, 1, '{"options":{"1":"Facebook","2":"Twitter","3":"Youtube","4":"Instagram"}}', 4),
	(130, 10, 'icon', 'select_dropdown', 'Icon', 1, 1, 1, 1, 1, 1, '{"options":{"fab fa-facebook-square fa-lg mr-3":"facebook","fab fa-twitter  fa-lg mr-3":"twitter","fab fa-youtube fa-fw red-text fa-lg mr-3":"youtube","fab fa-instagram fa-fw pink-text fa-lg mr-3":"instagram"}}', 5),
	(131, 7, 'deleted_at', 'timestamp', 'Deleted At', 1, 1, 1, 1, 1, 0, '{}', 18);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;

-- Volcando estructura para tabla deni.data_types
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.data_types: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
	(1, 'users', 'users', 'Usuario', 'Usuarios', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 1, '{"order_column":"updated_at","order_display_column":"name","order_direction":"desc","default_search_key":"name","scope":null}', '2019-10-25 00:33:22', '2019-10-27 00:14:05'),
	(2, 'menus', 'menus', 'Menú', 'Menús', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(3, 'roles', 'roles', 'Rol', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, NULL, NULL, 1, 1, '{"order_column":"updated_at","order_display_column":"name","order_direction":"desc","default_search_key":"name","scope":null}', '2019-10-25 00:33:22', '2019-10-27 00:18:43'),
	(4, 'categories', 'categories', 'Categoría', 'Categorías', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"desc","default_search_key":null,"scope":null}', '2019-10-25 00:33:22', '2019-10-29 00:08:29'),
	(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(6, 'pages', 'pages', 'Página', 'Páginas', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(7, 'busines', 'busines', 'Negocios', 'Neogicio', 'voyager-shop', 'App\\Busine', NULL, NULL, 'Formulario par crear & editar Negocio o Comercios', 1, 1, '{"order_column":"updated_at","order_display_column":"name","order_direction":"desc","default_search_key":"name","scope":null}', '2019-10-25 00:44:42', '2019-10-29 23:06:43'),
	(8, 'categorias', 'categorias', 'Categoria', 'Categorias', 'voyager-list', 'App\\Categoria', NULL, NULL, 'Formulario para gestionar los categorias', 1, 1, '{"order_column":"updated_at","order_display_column":"name","order_direction":"desc","default_search_key":"name","scope":null}', '2019-10-25 01:20:24', '2019-10-29 23:21:17'),
	(10, 'social_networks', 'social-networks', 'Red Social', 'Redes Sociales', 'voyager-facebook', 'App\\SocialNetwork', NULL, NULL, NULL, 1, 1, '{"order_column":"updated_at","order_display_column":"link","order_direction":"desc","default_search_key":"link","scope":null}', '2019-10-25 12:30:19', '2019-10-28 15:23:19'),
	(11, 'starts', 'starts', 'Start', 'Starts', NULL, 'App\\Start', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2019-10-25 12:31:13', '2019-10-25 12:32:05'),
	(13, 'horarios', 'horarios', 'Horario', 'Horarios', 'voyager-watch', 'App\\Horario', NULL, NULL, 'Formulario para  gestionar los horarios', 1, 1, '{"order_column":"created_at","order_display_column":"title","order_direction":"desc","default_search_key":"title","scope":null}', '2019-10-25 17:20:44', '2019-10-29 00:12:16');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;

-- Volcando estructura para tabla deni.horarios
CREATE TABLE IF NOT EXISTS `horarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hora_inicio` time DEFAULT '00:00:04',
  `hora_final` time DEFAULT '23:59:04',
  `busine_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `horarios_busine_id_foreign` (`busine_id`),
  CONSTRAINT `horarios_busine_id_foreign` FOREIGN KEY (`busine_id`) REFERENCES `busines` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.horarios: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` (`id`, `title`, `dias`, `hora_inicio`, `hora_final`, `busine_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(2, 'horario tatu', '["1","7"]', '18:00:00', '00:30:00', 1, '2019-10-25 17:28:34', '2019-10-25 17:29:21', NULL),
	(3, 'horario pizzeria la popular', '["1","7"]', '18:00:00', '23:59:00', 5, '2019-10-27 01:28:52', '2019-10-27 01:28:52', NULL),
	(4, 'horario de la salle', '["1","2","3","4","5","6"]', '07:00:00', '12:30:00', 3, '2019-10-27 01:39:21', '2019-10-27 01:40:57', NULL),
	(5, 'Horario La palabra del beni', '["1","2","3","4","5","6"]', '07:00:00', '18:00:00', 7, '2019-10-28 15:31:00', '2019-10-28 15:31:00', NULL),
	(7, 'horario', '["1","2","3","4","5","6","7"]', '17:10:00', '02:00:00', 2, '2019-10-28 15:54:35', '2019-10-28 16:31:59', NULL),
	(8, 'Horario de Supermercado trinidad', '["1","2","3","4","5","6"]', '07:00:00', '10:00:00', 8, '2019-10-28 21:16:54', '2019-10-28 21:16:54', NULL),
	(9, 'Horario de Supermercado trinidad', '["7"]', '08:30:00', '14:00:00', 8, '2019-10-28 21:22:54', '2019-10-28 21:22:54', NULL),
	(10, 'Horario Museo ICTICOLA', '["1","2","3","4","5"]', '07:30:00', '18:00:00', 9, '2019-10-28 22:16:04', '2019-10-28 22:16:04', NULL),
	(11, 'Horario Museo ICTICOLA', '["6"]', '07:00:00', '12:00:00', 9, '2019-10-28 22:19:43', '2019-10-28 22:19:43', NULL),
	(12, 'Horario FARMACORP', '["1","2","3","4","5","6","7"]', '00:00:00', '23:59:00', 10, '2019-10-28 22:58:39', '2019-10-28 22:58:39', NULL),
	(13, 'Horario: La Churrasqueria Estancia', '["1"]', '11:00:00', '15:00:00', 11, '2019-10-29 00:01:02', '2019-10-29 00:01:02', NULL),
	(14, 'Horario Churrasqueria El Pacumuto Trinitario', '["1","2","3","4","5","6","7"]', '11:30:00', '23:30:00', 12, '2019-10-29 20:18:51', '2019-10-29 20:18:51', NULL);
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;

-- Volcando estructura para tabla deni.menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.menus: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2019-10-25 00:33:22', '2019-10-25 00:33:22');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Volcando estructura para tabla deni.menu_items
CREATE TABLE IF NOT EXISTS `menu_items` (
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.menu_items: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
	(1, 1, 'Panel', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2019-10-25 00:33:22', '2019-10-26 23:42:42', 'voyager.dashboard', 'null'),
	(2, 1, 'Multimedia', '', '_self', 'voyager-images', NULL, 5, 3, '2019-10-25 00:33:22', '2019-10-28 14:47:05', 'voyager.media.index', NULL),
	(3, 1, 'Usuarios', '', '_self', 'voyager-person', NULL, 22, 1, '2019-10-25 00:33:22', '2019-10-26 23:42:55', 'voyager.users.index', NULL),
	(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 22, 2, '2019-10-25 00:33:22', '2019-10-26 23:42:55', 'voyager.roles.index', NULL),
	(5, 1, 'Herramientas', '', '_self', 'voyager-tools', NULL, NULL, 5, '2019-10-25 00:33:22', '2019-10-26 23:59:33', NULL, NULL),
	(6, 1, 'Menús', '', '_self', 'voyager-list', '#000000', 5, 4, '2019-10-25 00:33:22', '2019-10-28 14:46:59', 'voyager.menus.index', 'null'),
	(7, 1, 'Base de Datos', '', '_self', 'voyager-data', NULL, 5, 2, '2019-10-25 00:33:22', '2019-10-28 14:47:05', 'voyager.database.index', NULL),
	(8, 1, 'Compás', '', '_self', 'voyager-compass', NULL, 5, 5, '2019-10-25 00:33:22', '2019-10-28 14:46:55', 'voyager.compass.index', NULL),
	(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 1, '2019-10-25 00:33:22', '2019-10-28 14:46:56', 'voyager.bread.index', NULL),
	(10, 1, 'Parámetros', '', '_self', 'voyager-settings', NULL, NULL, 2, '2019-10-25 00:33:22', '2019-10-26 23:59:23', 'voyager.settings.index', NULL),
	(11, 1, 'Categorías', '', '_self', 'voyager-categories', NULL, 5, 6, '2019-10-25 00:33:22', '2019-10-26 23:43:33', 'voyager.categories.index', NULL),
	(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 5, 7, '2019-10-25 00:33:22', '2019-10-26 23:43:34', 'voyager.posts.index', NULL),
	(13, 1, 'Páginas', '', '_self', 'voyager-file-text', NULL, 5, 8, '2019-10-25 00:33:23', '2019-10-26 23:43:38', 'voyager.pages.index', NULL),
	(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 9, '2019-10-25 00:33:23', '2019-10-26 23:43:43', 'voyager.hooks', NULL),
	(15, 1, 'Bussines', '', '_self', 'voyager-double-right', '#000000', 23, 1, '2019-10-25 00:44:42', '2019-10-28 14:45:09', 'voyager.busines.index', 'null'),
	(16, 1, 'Categorias', '', '_self', 'voyager-double-right', '#000000', 23, 2, '2019-10-25 01:20:24', '2019-10-28 14:45:21', 'voyager.categorias.index', 'null'),
	(18, 1, 'Social Networks', '', '_self', 'voyager-double-right', '#000000', 23, 3, '2019-10-25 12:30:19', '2019-10-28 14:45:36', 'voyager.social-networks.index', 'null'),
	(19, 1, 'Puntuaciones', '', '_self', 'voyager-double-right', '#000000', 23, 5, '2019-10-25 12:31:13', '2019-10-28 14:45:59', 'voyager.starts.index', 'null'),
	(21, 1, 'Horarios', '', '_self', 'voyager-double-right', '#000000', 23, 4, '2019-10-25 17:20:44', '2019-10-28 14:45:48', 'voyager.horarios.index', 'null'),
	(22, 1, 'User & Roles', '', '_self', 'voyager-group', '#000000', NULL, 4, '2019-10-26 23:42:24', '2019-10-26 23:59:36', NULL, ''),
	(23, 1, 'M. Bussines', '', '_self', 'voyager-shop', '#000000', NULL, 3, '2019-10-26 23:44:36', '2019-10-26 23:59:36', NULL, '');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Volcando estructura para tabla deni.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_user_id_foreign` (`user_id`),
  CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.messages: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;

-- Volcando estructura para tabla deni.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.migrations: ~35 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_01_01_000000_add_voyager_user_fields', 1),
	(4, '2016_01_01_000000_create_data_types_table', 1),
	(5, '2016_01_01_000000_create_pages_table', 1),
	(6, '2016_01_01_000000_create_posts_table', 1),
	(7, '2016_02_15_204651_create_categories_table', 1),
	(8, '2016_05_19_173453_create_menu_table', 1),
	(9, '2016_10_21_190000_create_roles_table', 1),
	(10, '2016_10_21_190000_create_settings_table', 1),
	(11, '2016_11_30_135954_create_permission_table', 1),
	(12, '2016_11_30_141208_create_permission_role_table', 1),
	(13, '2016_12_26_201236_data_types__add__server_side', 1),
	(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
	(15, '2017_01_14_005015_create_translations_table', 1),
	(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
	(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
	(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
	(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
	(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
	(21, '2017_08_05_000000_add_group_to_settings_table', 1),
	(22, '2017_11_26_013050_add_user_role_relationship', 1),
	(23, '2017_11_26_015000_create_user_roles_table', 1),
	(24, '2018_03_11_000000_add_user_settings', 1),
	(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
	(26, '2018_03_16_000000_make_settings_value_nullable', 1),
	(27, '2018_08_08_100000_create_telescope_entries_table', 1),
	(28, '2019_10_24_210103_create_categorias_table', 1),
	(29, '2019_10_24_213800_create_busines_table', 1),
	(30, '2019_10_24_220336_create_horaios_table', 1),
	(31, '2019_10_24_221000_create_social_networks_table', 1),
	(32, '2019_10_24_221149_create_social_starts_table', 1),
	(33, '2018_06_30_113500_create_comments_table', 2),
	(34, '2019_11_02_121605_create_websockets_statistics_entries_table', 3),
	(35, '2019_11_02_130806_create_messages_table', 4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla deni.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.pages: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
	(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-10-25 00:33:23', '2019-10-25 00:33:23');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Volcando estructura para tabla deni.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.password_resets: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('r.e.t.c.bolivia@gmail.com', '$2y$10$dSjD.ki.AiX7nDZsXFROjeWbgCC03GztwtVd6Ap../hrCWntDGv4m', '2019-10-28 19:45:09');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla deni.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.permissions: ~66 rows (aproximadamente)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
	(1, 'browse_admin', NULL, '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(2, 'browse_bread', NULL, '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(3, 'browse_database', NULL, '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(4, 'browse_media', NULL, '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(5, 'browse_compass', NULL, '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(6, 'browse_menus', 'menus', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(7, 'read_menus', 'menus', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(8, 'edit_menus', 'menus', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(9, 'add_menus', 'menus', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(10, 'delete_menus', 'menus', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(11, 'browse_roles', 'roles', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(12, 'read_roles', 'roles', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(13, 'edit_roles', 'roles', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(14, 'add_roles', 'roles', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(15, 'delete_roles', 'roles', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(16, 'browse_users', 'users', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(17, 'read_users', 'users', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(18, 'edit_users', 'users', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(19, 'add_users', 'users', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(20, 'delete_users', 'users', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(21, 'browse_settings', 'settings', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(22, 'read_settings', 'settings', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(23, 'edit_settings', 'settings', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(24, 'add_settings', 'settings', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(25, 'delete_settings', 'settings', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(26, 'browse_categories', 'categories', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(27, 'read_categories', 'categories', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(28, 'edit_categories', 'categories', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(29, 'add_categories', 'categories', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(30, 'delete_categories', 'categories', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(31, 'browse_posts', 'posts', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(32, 'read_posts', 'posts', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(33, 'edit_posts', 'posts', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(34, 'add_posts', 'posts', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(35, 'delete_posts', 'posts', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(36, 'browse_pages', 'pages', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(37, 'read_pages', 'pages', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(38, 'edit_pages', 'pages', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(39, 'add_pages', 'pages', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(40, 'delete_pages', 'pages', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(41, 'browse_hooks', NULL, '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(42, 'browse_busines', 'busines', '2019-10-25 00:44:42', '2019-10-25 00:44:42'),
	(43, 'read_busines', 'busines', '2019-10-25 00:44:42', '2019-10-25 00:44:42'),
	(44, 'edit_busines', 'busines', '2019-10-25 00:44:42', '2019-10-25 00:44:42'),
	(45, 'add_busines', 'busines', '2019-10-25 00:44:42', '2019-10-25 00:44:42'),
	(46, 'delete_busines', 'busines', '2019-10-25 00:44:42', '2019-10-25 00:44:42'),
	(47, 'browse_categorias', 'categorias', '2019-10-25 01:20:24', '2019-10-25 01:20:24'),
	(48, 'read_categorias', 'categorias', '2019-10-25 01:20:24', '2019-10-25 01:20:24'),
	(49, 'edit_categorias', 'categorias', '2019-10-25 01:20:24', '2019-10-25 01:20:24'),
	(50, 'add_categorias', 'categorias', '2019-10-25 01:20:24', '2019-10-25 01:20:24'),
	(51, 'delete_categorias', 'categorias', '2019-10-25 01:20:24', '2019-10-25 01:20:24'),
	(57, 'browse_social_networks', 'social_networks', '2019-10-25 12:30:19', '2019-10-25 12:30:19'),
	(58, 'read_social_networks', 'social_networks', '2019-10-25 12:30:19', '2019-10-25 12:30:19'),
	(59, 'edit_social_networks', 'social_networks', '2019-10-25 12:30:19', '2019-10-25 12:30:19'),
	(60, 'add_social_networks', 'social_networks', '2019-10-25 12:30:19', '2019-10-25 12:30:19'),
	(61, 'delete_social_networks', 'social_networks', '2019-10-25 12:30:19', '2019-10-25 12:30:19'),
	(62, 'browse_starts', 'starts', '2019-10-25 12:31:13', '2019-10-25 12:31:13'),
	(63, 'read_starts', 'starts', '2019-10-25 12:31:13', '2019-10-25 12:31:13'),
	(64, 'edit_starts', 'starts', '2019-10-25 12:31:13', '2019-10-25 12:31:13'),
	(65, 'add_starts', 'starts', '2019-10-25 12:31:13', '2019-10-25 12:31:13'),
	(66, 'delete_starts', 'starts', '2019-10-25 12:31:13', '2019-10-25 12:31:13'),
	(72, 'browse_horarios', 'horarios', '2019-10-25 17:20:44', '2019-10-25 17:20:44'),
	(73, 'read_horarios', 'horarios', '2019-10-25 17:20:44', '2019-10-25 17:20:44'),
	(74, 'edit_horarios', 'horarios', '2019-10-25 17:20:44', '2019-10-25 17:20:44'),
	(75, 'add_horarios', 'horarios', '2019-10-25 17:20:44', '2019-10-25 17:20:44'),
	(76, 'delete_horarios', 'horarios', '2019-10-25 17:20:44', '2019-10-25 17:20:44');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Volcando estructura para tabla deni.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.permission_role: ~86 rows (aproximadamente)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(1, 3),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1),
	(36, 1),
	(37, 1),
	(38, 1),
	(39, 1),
	(40, 1),
	(42, 1),
	(42, 3),
	(43, 1),
	(43, 3),
	(44, 1),
	(44, 3),
	(45, 1),
	(45, 3),
	(46, 1),
	(47, 1),
	(47, 3),
	(48, 1),
	(48, 3),
	(49, 1),
	(49, 3),
	(50, 1),
	(50, 3),
	(51, 1),
	(57, 1),
	(57, 3),
	(58, 1),
	(58, 3),
	(59, 1),
	(59, 3),
	(60, 1),
	(60, 3),
	(61, 1),
	(62, 1),
	(62, 3),
	(63, 1),
	(63, 3),
	(64, 1),
	(64, 3),
	(65, 1),
	(65, 3),
	(66, 1),
	(72, 1),
	(72, 3),
	(73, 1),
	(73, 3),
	(74, 1),
	(74, 3),
	(75, 1),
	(75, 3),
	(76, 1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Volcando estructura para tabla deni.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.posts: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
	(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-25 00:33:22', '2019-10-25 00:33:22');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Volcando estructura para tabla deni.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.roles: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Administrador', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(2, 'user', 'Usuario Normal', '2019-10-25 00:33:22', '2019-10-25 00:33:22'),
	(3, 'Editor', 'Editor de Bussines', '2019-10-27 00:20:26', '2019-10-27 00:20:26');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla deni.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.settings: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
	(1, 'site.title', 'Título del sitio', 'DENI', '', 'text', 1, 'Site'),
	(2, 'site.description', 'Descripción del sitio', 'DIRECTORIO DE EMPRESAS Y NEGOCIOS EN INTERNET', '', 'text', 2, 'Site'),
	(3, 'site.logo', 'Logo del sitio', '', '', 'image', 3, 'Site'),
	(4, 'site.google_analytics_tracking_id', 'ID de rastreo de Google Analytics', NULL, '', 'text', 4, 'Site'),
	(5, 'admin.bg_image', 'Imagen de fondo del administrador', '', '', 'image', 5, 'Admin'),
	(6, 'admin.title', 'Título del administrador', 'Deni', '', 'text', 1, 'Admin'),
	(7, 'admin.description', 'Descripción del administrador', 'Bienvenido a Voyager. El administrador que le faltaba a Laravel', '', 'text', 2, 'Admin'),
	(8, 'admin.loader', 'Imagen de carga del administrador', '', '', 'image', 3, 'Admin'),
	(9, 'admin.icon_image', 'Ícono del administrador', '', '', 'image', 4, 'Admin'),
	(10, 'admin.google_analytics_client_id', 'ID de Cliente para Google Analytics (usado para el tablero de administrador)', NULL, '', 'text', 1, 'Admin'),
	(11, 'site.banner', 'banner', 'settings/October2019/gv0ytzTcd4wv4AVp5wf1.jpg', NULL, 'image', 6, 'Site');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Volcando estructura para tabla deni.social_networks
CREATE TABLE IF NOT EXISTS `social_networks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `busine_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_networks_busine_id_foreign` (`busine_id`),
  CONSTRAINT `social_networks_busine_id_foreign` FOREIGN KEY (`busine_id`) REFERENCES `busines` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.social_networks: ~18 rows (aproximadamente)
/*!40000 ALTER TABLE `social_networks` DISABLE KEYS */;
INSERT INTO `social_networks` (`id`, `link`, `redes`, `icon`, `busine_id`, `created_at`, `updated_at`) VALUES
	(1, 'www.youtube.com', '3', 'fab fa-youtube fa-fw red-text fa-lg mr-3', 1, '2019-10-25 12:33:32', '2019-10-28 15:19:27'),
	(2, 'https://facebook.com/pizzaspopular', '1', 'fab fa-facebook-square fa-lg mr-3', 5, '2019-10-27 01:27:54', '2019-10-29 02:13:42'),
	(3, 'https://facebook.com/LaSalleTddOficial/', '1', 'fab fa-facebook-square fa-lg mr-3', 3, '2019-10-27 01:29:49', '2019-10-29 02:14:09'),
	(4, 'https://facebook.com/pg/supermercadotdd/posts/', '1', 'fab fa-facebook-square fa-lg mr-3', 8, '2019-10-27 02:10:07', '2019-10-29 02:12:39'),
	(5, 'www.instagram.com', '4', 'fab fa-instagram fa-fw pink-text fa-lg mr-3', 4, '2019-10-28 15:10:47', '2019-10-28 15:19:17'),
	(6, 'www.youtube.com', '3', 'fab fa-youtube fa-fw red-text fa-lg mr-3', 4, '2019-10-28 15:12:13', '2019-10-28 15:19:07'),
	(7, 'www.facebook.com', '1', 'fab fa-facebook-square fa-lg mr-3', 4, '2019-10-28 15:12:44', '2019-10-28 15:24:18'),
	(8, 'www.facebook.com', '1', 'fab fa-facebook-square fa-lg mr-3', 7, '2019-10-28 15:42:50', '2019-10-28 15:42:50'),
	(9, 'www.twitter.com', '2', 'fab fa-twitter  fa-lg mr-3', 7, '2019-10-28 15:43:24', '2019-10-28 15:43:24'),
	(10, 'www.youtube.com', '3', 'fab fa-youtube fa-fw red-text fa-lg mr-3', 7, '2019-10-28 15:44:00', '2019-10-28 15:44:00'),
	(11, 'www.instagram.com', '4', 'fab fa-instagram fa-fw pink-text fa-lg mr-3', 7, '2019-10-28 15:44:23', '2019-10-28 15:44:23'),
	(12, 'https://facebook.com/Fexpobeni', '1', 'fab fa-facebook-square fa-lg mr-3', 2, '2019-10-28 16:01:09', '2019-10-29 02:10:43'),
	(13, 'https://twitter.com', '2', 'fab fa-twitter  fa-lg mr-3', 2, '2019-10-28 16:01:29', '2019-10-29 02:12:14'),
	(14, 'https://youtube.com', '3', 'fab fa-youtube fa-fw red-text fa-lg mr-3', 2, '2019-10-28 16:01:55', '2019-10-29 02:11:53'),
	(15, 'https://facebook.com/museo.icticoladelbeni/', '1', 'fab fa-facebook-square fa-lg mr-3', 9, '2019-10-28 22:10:53', '2019-10-29 02:11:26'),
	(16, 'https://facebook.com/farmacorp', '1', 'fab fa-facebook-square fa-lg mr-3', 10, '2019-10-28 23:07:37', '2019-10-29 02:11:13'),
	(17, 'https://facebook.com/ChurrasqueriaLaEstancia/', '1', 'fab fa-facebook-square fa-lg mr-3', 11, '2019-10-28 23:57:44', '2019-10-29 02:10:59'),
	(18, 'https://www.facebook.com/PacumutoTrinitario', '1', 'fab fa-facebook-square fa-lg mr-3', 12, '2019-10-29 20:13:43', '2019-10-29 20:13:43');
/*!40000 ALTER TABLE `social_networks` ENABLE KEYS */;

-- Volcando estructura para tabla deni.starts
CREATE TABLE IF NOT EXISTS `starts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `puntuacion` int(11) NOT NULL,
  `busine_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `starts_user_id_foreign` (`user_id`),
  KEY `starts_busine_id_foreign` (`busine_id`),
  CONSTRAINT `starts_busine_id_foreign` FOREIGN KEY (`busine_id`) REFERENCES `busines` (`id`),
  CONSTRAINT `starts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.starts: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `starts` DISABLE KEYS */;
INSERT INTO `starts` (`id`, `puntuacion`, `busine_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 5, 1, 1, '2019-10-25 12:34:09', '2019-10-25 12:34:09'),
	(2, 1, 1, 1, '2019-10-26 00:53:20', '2019-10-26 00:53:20'),
	(3, 5, 3, 4, '2019-10-28 21:00:21', '2019-10-28 21:00:21'),
	(4, 3, 8, 4, '2019-10-28 21:10:37', '2019-10-28 21:10:37');
/*!40000 ALTER TABLE `starts` ENABLE KEYS */;

-- Volcando estructura para tabla deni.telescope_entries
CREATE TABLE IF NOT EXISTS `telescope_entries` (
  `sequence` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`sequence`),
  UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  KEY `telescope_entries_batch_id_index` (`batch_id`),
  KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`),
  KEY `telescope_entries_family_hash_index` (`family_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.telescope_entries: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `telescope_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `telescope_entries` ENABLE KEYS */;

-- Volcando estructura para tabla deni.telescope_entries_tags
CREATE TABLE IF NOT EXISTS `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  KEY `telescope_entries_tags_tag_index` (`tag`),
  CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.telescope_entries_tags: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `telescope_entries_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `telescope_entries_tags` ENABLE KEYS */;

-- Volcando estructura para tabla deni.telescope_monitoring
CREATE TABLE IF NOT EXISTS `telescope_monitoring` (
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.telescope_monitoring: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `telescope_monitoring` DISABLE KEYS */;
/*!40000 ALTER TABLE `telescope_monitoring` ENABLE KEYS */;

-- Volcando estructura para tabla deni.translations
CREATE TABLE IF NOT EXISTS `translations` (
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.translations: ~30 rows (aproximadamente)
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-10-25 00:33:23', '2019-10-25 00:33:23'),
	(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-10-25 00:33:23', '2019-10-25 00:33:23');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- Volcando estructura para tabla deni.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.users: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Admin', 'admin@admin.com', 'users\\November2019\\1yk30zJNfCQ94LO4OX1Z.jpg', NULL, '$2y$10$AqAZWeSmoJz5shYLqdA6luXMM.CiHmUH1OPqDdmrh1WnWq/Ys0hTW', 'X16BHThT8gy54F3AVSDmy9MteFpQSar25ro6vek99dkOk6H5VRZ3ZqTGi5zN', '{"locale":"es"}', '2019-10-25 00:33:22', '2019-11-02 16:04:55'),
	(2, 3, 'percy alvarez', 'percy.alvarez.2017@gmail.com', 'users/default.png', NULL, '$2y$10$7WwPHdodDEqPEz2kiaSxBeFxKTw4t5I9FARUK0TSeq/t7kaBcJgKO', NULL, '{"locale":"es"}', '2019-10-26 23:05:49', '1969-12-31 20:00:04'),
	(3, 3, 'paul', 'paulbrayan2011@gmail.com', 'users/default.png', NULL, '$2y$10$AqAZWeSmoJz5shYLqdA6luXMM.CiHmUH1OPqDdmrh1WnWq/Ys0hTW', NULL, '{"locale":"es"}', '2019-10-26 23:25:01', '1969-12-31 20:00:02'),
	(4, 3, 'richard eddy', 'r.e.t.c.bolivia@gmail.com', 'users/default.png', NULL, '$2y$10$KiBHIhJIbMIY097KUltYfOH4QtaJ85l1m/Du4ytXbYiBUrrv.wibO', NULL, '{"locale":"es"}', '2019-10-26 23:27:50', '1969-12-31 20:00:01'),
	(5, 2, 'Agustin Mejia', 'buddy.m091@gmail.com', 'users\\November2019\\8snCkEItEu1bFYxLbkS5.jpg', NULL, '$2y$10$27ocmaNRNm15wlReqrjG8uQpUSd5Fnr7Aticd2THkTK/Fe9HSxflG', NULL, '{"locale":"es"}', '2019-11-02 15:47:24', '2019-11-02 17:41:30'),
	(6, 2, 'Augusto Carvalho', 'auguss24@gmail.com', 'users/default.png', NULL, '$2y$10$roAojb2j3NGeZFaVz94GjuBrLlU.DleQNQuTFWsqIq3WLdB8CJ9gS', NULL, NULL, '2019-11-02 17:56:31', '2019-11-02 17:56:31'),
	(7, 2, 'paulbrayan', 'paul@gmail.com', 'users/default.png', NULL, '$2y$10$1crbafWRAMtDmRyRasz9pOpDuUYJ/.f1h.gtMaxZNUMBDQmKHYQOe', NULL, NULL, '2019-11-02 18:01:41', '2019-11-02 18:01:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla deni.user_roles
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.user_roles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

-- Volcando estructura para tabla deni.websockets_statistics_entries
CREATE TABLE IF NOT EXISTS `websockets_statistics_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla deni.websockets_statistics_entries: ~195 rows (aproximadamente)
/*!40000 ALTER TABLE `websockets_statistics_entries` DISABLE KEYS */;
INSERT INTO `websockets_statistics_entries` (`id`, `app_id`, `peak_connection_count`, `websocket_message_count`, `api_message_count`, `created_at`, `updated_at`) VALUES
	(1, 'anyID', 1, 1, 0, '2019-11-02 13:40:23', '2019-11-02 13:40:23'),
	(2, 'anyID', 2, 15, 1, '2019-11-02 13:41:23', '2019-11-02 13:41:23'),
	(3, 'anyID', 2, 15, 1, '2019-11-02 13:42:23', '2019-11-02 13:42:23'),
	(4, 'anyID', 2, 4, 1, '2019-11-02 13:43:23', '2019-11-02 13:43:23'),
	(5, 'anyID', 2, 4, 1, '2019-11-02 13:44:23', '2019-11-02 13:44:23'),
	(6, 'anyID', 2, 4, 1, '2019-11-02 13:45:23', '2019-11-02 13:45:23'),
	(7, 'anyID', 2, 26, 1, '2019-11-02 13:46:23', '2019-11-02 13:46:23'),
	(8, 'anyID', 2, 6, 1, '2019-11-02 13:47:23', '2019-11-02 13:47:23'),
	(9, 'anyID', 2, 4, 1, '2019-11-02 13:48:23', '2019-11-02 13:48:23'),
	(10, 'anyID', 2, 27, 3, '2019-11-02 13:49:23', '2019-11-02 13:49:23'),
	(11, 'anyID', 2, 0, 1, '2019-11-02 13:50:23', '2019-11-02 13:50:23'),
	(12, 'anyID', 0, 0, 1, '2019-11-02 13:51:24', '2019-11-02 13:51:24'),
	(13, 'anyID', 0, 0, 1, '2019-11-02 13:52:23', '2019-11-02 13:52:23'),
	(14, 'anyID', 0, 0, 1, '2019-11-02 13:53:24', '2019-11-02 13:53:24'),
	(15, 'anyID', 0, 0, 1, '2019-11-02 13:54:23', '2019-11-02 13:54:23'),
	(16, 'anyID', 0, 0, 1, '2019-11-02 13:55:23', '2019-11-02 13:55:23'),
	(17, 'anyID', 0, 0, 1, '2019-11-02 13:56:23', '2019-11-02 13:56:23'),
	(18, 'anyID', 0, 0, 1, '2019-11-02 13:57:23', '2019-11-02 13:57:23'),
	(19, 'anyID', 1, 1, 1, '2019-11-02 13:58:23', '2019-11-02 13:58:23'),
	(20, 'anyID', 1, 1, 0, '2019-11-02 15:42:02', '2019-11-02 15:42:02'),
	(21, 'anyID', 1, 27, 3, '2019-11-02 15:43:01', '2019-11-02 15:43:01'),
	(22, 'anyID', 1, 2, 1, '2019-11-02 15:44:01', '2019-11-02 15:44:01'),
	(23, 'anyID', 1, 0, 1, '2019-11-02 15:45:01', '2019-11-02 15:45:01'),
	(24, 'anyID', 1, 1, 1, '2019-11-02 15:46:01', '2019-11-02 15:46:01'),
	(25, 'anyID', 1, 2, 1, '2019-11-02 15:47:01', '2019-11-02 15:47:01'),
	(26, 'anyID', 3, 21, 4, '2019-11-02 15:48:01', '2019-11-02 15:48:01'),
	(27, 'anyID', 3, 6, 1, '2019-11-02 15:49:01', '2019-11-02 15:49:01'),
	(28, 'anyID', 3, 6, 1, '2019-11-02 15:50:01', '2019-11-02 15:50:01'),
	(29, 'anyID', 3, 3, 1, '2019-11-02 15:51:01', '2019-11-02 15:51:01'),
	(30, 'anyID', 2, 10, 1, '2019-11-02 15:52:01', '2019-11-02 15:52:01'),
	(31, 'anyID', 2, 4, 1, '2019-11-02 15:53:01', '2019-11-02 15:53:01'),
	(32, 'anyID', 2, 4, 1, '2019-11-02 15:54:01', '2019-11-02 15:54:01'),
	(33, 'anyID', 2, 4, 1, '2019-11-02 15:55:01', '2019-11-02 15:55:01'),
	(34, 'anyID', 2, 4, 1, '2019-11-02 15:56:01', '2019-11-02 15:56:01'),
	(35, 'anyID', 2, 4, 1, '2019-11-02 15:57:01', '2019-11-02 15:57:01'),
	(36, 'anyID', 2, 3, 1, '2019-11-02 15:58:01', '2019-11-02 15:58:01'),
	(37, 'anyID', 2, 4, 1, '2019-11-02 15:59:01', '2019-11-02 15:59:01'),
	(38, 'anyID', 2, 4, 1, '2019-11-02 16:00:01', '2019-11-02 16:00:01'),
	(39, 'anyID', 2, 4, 1, '2019-11-02 16:01:01', '2019-11-02 16:01:01'),
	(40, 'anyID', 2, 4, 1, '2019-11-02 16:02:01', '2019-11-02 16:02:01'),
	(41, 'anyID', 2, 4, 1, '2019-11-02 16:03:01', '2019-11-02 16:03:01'),
	(42, 'anyID', 2, 14, 3, '2019-11-02 16:04:01', '2019-11-02 16:04:01'),
	(43, 'anyID', 2, 4, 1, '2019-11-02 16:05:01', '2019-11-02 16:05:01'),
	(44, 'anyID', 2, 3, 1, '2019-11-02 16:06:01', '2019-11-02 16:06:01'),
	(45, 'anyID', 2, 4, 1, '2019-11-02 16:07:01', '2019-11-02 16:07:01'),
	(46, 'anyID', 2, 4, 1, '2019-11-02 16:08:01', '2019-11-02 16:08:01'),
	(47, 'anyID', 2, 4, 1, '2019-11-02 16:09:01', '2019-11-02 16:09:01'),
	(48, 'anyID', 2, 4, 1, '2019-11-02 16:10:01', '2019-11-02 16:10:01'),
	(49, 'anyID', 2, 4, 1, '2019-11-02 16:11:01', '2019-11-02 16:11:01'),
	(50, 'anyID', 2, 4, 1, '2019-11-02 16:12:01', '2019-11-02 16:12:01'),
	(51, 'anyID', 2, 4, 1, '2019-11-02 16:13:01', '2019-11-02 16:13:01'),
	(52, 'anyID', 2, 4, 1, '2019-11-02 16:14:01', '2019-11-02 16:14:01'),
	(53, 'anyID', 2, 4, 1, '2019-11-02 16:15:01', '2019-11-02 16:15:01'),
	(54, 'anyID', 2, 3, 1, '2019-11-02 16:16:01', '2019-11-02 16:16:01'),
	(55, 'anyID', 2, 4, 1, '2019-11-02 16:17:01', '2019-11-02 16:17:01'),
	(56, 'anyID', 2, 3, 1, '2019-11-02 16:18:01', '2019-11-02 16:18:01'),
	(57, 'anyID', 2, 4, 1, '2019-11-02 16:19:01', '2019-11-02 16:19:01'),
	(58, 'anyID', 2, 4, 1, '2019-11-02 16:20:01', '2019-11-02 16:20:01'),
	(59, 'anyID', 2, 4, 1, '2019-11-02 16:21:01', '2019-11-02 16:21:01'),
	(60, 'anyID', 2, 4, 1, '2019-11-02 16:22:01', '2019-11-02 16:22:01'),
	(61, 'anyID', 2, 4, 1, '2019-11-02 16:23:01', '2019-11-02 16:23:01'),
	(62, 'anyID', 2, 4, 1, '2019-11-02 16:24:01', '2019-11-02 16:24:01'),
	(63, 'anyID', 2, 3, 1, '2019-11-02 16:25:01', '2019-11-02 16:25:01'),
	(64, 'anyID', 2, 4, 1, '2019-11-02 16:26:01', '2019-11-02 16:26:01'),
	(65, 'anyID', 2, 4, 1, '2019-11-02 16:27:01', '2019-11-02 16:27:01'),
	(66, 'anyID', 2, 4, 1, '2019-11-02 16:28:01', '2019-11-02 16:28:01'),
	(67, 'anyID', 2, 4, 1, '2019-11-02 16:29:01', '2019-11-02 16:29:01'),
	(68, 'anyID', 2, 4, 1, '2019-11-02 16:30:01', '2019-11-02 16:30:01'),
	(69, 'anyID', 2, 4, 1, '2019-11-02 16:31:01', '2019-11-02 16:31:01'),
	(70, 'anyID', 2, 4, 1, '2019-11-02 16:32:01', '2019-11-02 16:32:01'),
	(71, 'anyID', 2, 4, 1, '2019-11-02 16:33:01', '2019-11-02 16:33:01'),
	(72, 'anyID', 2, 2, 1, '2019-11-02 16:34:01', '2019-11-02 16:34:01'),
	(73, 'anyID', 2, 4, 1, '2019-11-02 16:35:01', '2019-11-02 16:35:01'),
	(74, 'anyID', 2, 4, 1, '2019-11-02 16:36:01', '2019-11-02 16:36:01'),
	(75, 'anyID', 2, 4, 1, '2019-11-02 16:37:01', '2019-11-02 16:37:01'),
	(76, 'anyID', 2, 4, 1, '2019-11-02 16:38:01', '2019-11-02 16:38:01'),
	(77, 'anyID', 2, 4, 1, '2019-11-02 16:39:01', '2019-11-02 16:39:01'),
	(78, 'anyID', 2, 4, 1, '2019-11-02 16:40:01', '2019-11-02 16:40:01'),
	(79, 'anyID', 2, 4, 1, '2019-11-02 16:41:01', '2019-11-02 16:41:01'),
	(80, 'anyID', 2, 4, 1, '2019-11-02 16:42:01', '2019-11-02 16:42:01'),
	(81, 'anyID', 2, 4, 1, '2019-11-02 16:43:01', '2019-11-02 16:43:01'),
	(82, 'anyID', 2, 4, 1, '2019-11-02 16:44:01', '2019-11-02 16:44:01'),
	(83, 'anyID', 2, 4, 1, '2019-11-02 16:45:01', '2019-11-02 16:45:01'),
	(84, 'anyID', 2, 4, 1, '2019-11-02 16:46:01', '2019-11-02 16:46:01'),
	(85, 'anyID', 2, 4, 1, '2019-11-02 16:47:01', '2019-11-02 16:47:01'),
	(86, 'anyID', 2, 4, 1, '2019-11-02 16:48:01', '2019-11-02 16:48:01'),
	(87, 'anyID', 2, 2, 1, '2019-11-02 16:49:01', '2019-11-02 16:49:01'),
	(88, 'anyID', 2, 4, 1, '2019-11-02 16:50:01', '2019-11-02 16:50:01'),
	(89, 'anyID', 2, 5, 1, '2019-11-02 16:51:01', '2019-11-02 16:51:01'),
	(90, 'anyID', 2, 3, 1, '2019-11-02 16:52:01', '2019-11-02 16:52:01'),
	(91, 'anyID', 2, 3, 1, '2019-11-02 16:53:01', '2019-11-02 16:53:01'),
	(92, 'anyID', 2, 4, 1, '2019-11-02 16:54:01', '2019-11-02 16:54:01'),
	(93, 'anyID', 2, 4, 1, '2019-11-02 16:55:01', '2019-11-02 16:55:01'),
	(94, 'anyID', 2, 4, 1, '2019-11-02 16:56:01', '2019-11-02 16:56:01'),
	(95, 'anyID', 2, 4, 1, '2019-11-02 16:57:01', '2019-11-02 16:57:01'),
	(96, 'anyID', 2, 3, 1, '2019-11-02 16:58:01', '2019-11-02 16:58:01'),
	(97, 'anyID', 1, 2, 1, '2019-11-02 16:59:01', '2019-11-02 16:59:01'),
	(98, 'anyID', 1, 2, 1, '2019-11-02 17:00:01', '2019-11-02 17:00:01'),
	(99, 'anyID', 1, 2, 1, '2019-11-02 17:01:01', '2019-11-02 17:01:01'),
	(100, 'anyID', 1, 2, 1, '2019-11-02 17:02:01', '2019-11-02 17:02:01'),
	(101, 'anyID', 1, 2, 1, '2019-11-02 17:03:01', '2019-11-02 17:03:01'),
	(102, 'anyID', 1, 2, 1, '2019-11-02 17:04:01', '2019-11-02 17:04:01'),
	(103, 'anyID', 1, 2, 1, '2019-11-02 17:05:01', '2019-11-02 17:05:01'),
	(104, 'anyID', 1, 2, 1, '2019-11-02 17:06:01', '2019-11-02 17:06:01'),
	(105, 'anyID', 1, 2, 1, '2019-11-02 17:07:01', '2019-11-02 17:07:01'),
	(106, 'anyID', 1, 1, 1, '2019-11-02 17:08:01', '2019-11-02 17:08:01'),
	(107, 'anyID', 1, 2, 1, '2019-11-02 17:09:01', '2019-11-02 17:09:01'),
	(108, 'anyID', 1, 2, 1, '2019-11-02 17:10:01', '2019-11-02 17:10:01'),
	(109, 'anyID', 1, 2, 1, '2019-11-02 17:11:01', '2019-11-02 17:11:01'),
	(110, 'anyID', 1, 2, 1, '2019-11-02 17:12:01', '2019-11-02 17:12:01'),
	(111, 'anyID', 1, 2, 1, '2019-11-02 17:13:01', '2019-11-02 17:13:01'),
	(112, 'anyID', 1, 2, 1, '2019-11-02 17:14:01', '2019-11-02 17:14:01'),
	(113, 'anyID', 1, 2, 1, '2019-11-02 17:15:01', '2019-11-02 17:15:01'),
	(114, 'anyID', 1, 2, 1, '2019-11-02 17:16:01', '2019-11-02 17:16:01'),
	(115, 'anyID', 1, 2, 1, '2019-11-02 17:17:01', '2019-11-02 17:17:01'),
	(116, 'anyID', 1, 2, 1, '2019-11-02 17:18:01', '2019-11-02 17:18:01'),
	(117, 'anyID', 1, 2, 1, '2019-11-02 17:19:01', '2019-11-02 17:19:01'),
	(118, 'anyID', 1, 3, 1, '2019-11-02 17:20:01', '2019-11-02 17:20:01'),
	(119, 'anyID', 1, 2, 1, '2019-11-02 17:21:01', '2019-11-02 17:21:01'),
	(120, 'anyID', 1, 2, 1, '2019-11-02 17:22:01', '2019-11-02 17:22:01'),
	(121, 'anyID', 1, 5, 2, '2019-11-02 17:23:01', '2019-11-02 17:23:01'),
	(122, 'anyID', 1, 2, 1, '2019-11-02 17:24:01', '2019-11-02 17:24:01'),
	(123, 'anyID', 1, 2, 1, '2019-11-02 17:25:01', '2019-11-02 17:25:01'),
	(124, 'anyID', 1, 3, 1, '2019-11-02 17:26:01', '2019-11-02 17:26:01'),
	(125, 'anyID', 1, 2, 1, '2019-11-02 17:27:01', '2019-11-02 17:27:01'),
	(126, 'anyID', 1, 2, 1, '2019-11-02 17:28:01', '2019-11-02 17:28:01'),
	(127, 'anyID', 1, 2, 1, '2019-11-02 17:29:01', '2019-11-02 17:29:01'),
	(128, 'anyID', 1, 2, 1, '2019-11-02 17:30:01', '2019-11-02 17:30:01'),
	(129, 'anyID', 1, 2, 1, '2019-11-02 17:31:01', '2019-11-02 17:31:01'),
	(130, 'anyID', 0, 3, 1, '2019-11-02 17:32:01', '2019-11-02 17:32:01'),
	(131, 'anyID', 1, 2, 1, '2019-11-02 17:33:01', '2019-11-02 17:33:01'),
	(132, 'anyID', 1, 2, 1, '2019-11-02 17:34:01', '2019-11-02 17:34:01'),
	(133, 'anyID', 1, 2, 1, '2019-11-02 17:35:01', '2019-11-02 17:35:01'),
	(134, 'anyID', 1, 2, 1, '2019-11-02 17:36:01', '2019-11-02 17:36:01'),
	(135, 'anyID', 1, 3, 1, '2019-11-02 17:37:01', '2019-11-02 17:37:01'),
	(136, 'anyID', 1, 2, 1, '2019-11-02 17:38:01', '2019-11-02 17:38:01'),
	(137, 'anyID', 2, 16, 2, '2019-11-02 17:39:01', '2019-11-02 17:39:01'),
	(138, 'anyID', 2, 14, 2, '2019-11-02 17:40:01', '2019-11-02 17:40:01'),
	(139, 'anyID', 2, 3, 1, '2019-11-02 17:41:01', '2019-11-02 17:41:01'),
	(140, 'anyID', 2, 2, 1, '2019-11-02 17:42:01', '2019-11-02 17:42:01'),
	(141, 'anyID', 2, 3, 1, '2019-11-02 17:43:02', '2019-11-02 17:43:02'),
	(142, 'anyID', 2, 1, 1, '2019-11-02 17:44:01', '2019-11-02 17:44:01'),
	(143, 'anyID', 1, 8, 2, '2019-11-02 17:45:01', '2019-11-02 17:45:01'),
	(144, 'anyID', 2, 16, 2, '2019-11-02 17:46:01', '2019-11-02 17:46:01'),
	(145, 'anyID', 2, 9, 2, '2019-11-02 17:47:01', '2019-11-02 17:47:01'),
	(146, 'anyID', 2, 6, 1, '2019-11-02 17:48:01', '2019-11-02 17:48:01'),
	(147, 'anyID', 2, 6, 1, '2019-11-02 17:49:01', '2019-11-02 17:49:01'),
	(148, 'anyID', 2, 3, 1, '2019-11-02 17:50:01', '2019-11-02 17:50:01'),
	(149, 'anyID', 2, 4, 1, '2019-11-02 17:51:01', '2019-11-02 17:51:01'),
	(150, 'anyID', 2, 3, 1, '2019-11-02 17:52:01', '2019-11-02 17:52:01'),
	(151, 'anyID', 2, 4, 1, '2019-11-02 17:53:01', '2019-11-02 17:53:01'),
	(152, 'anyID', 2, 4, 1, '2019-11-02 17:54:01', '2019-11-02 17:54:01'),
	(153, 'anyID', 2, 4, 1, '2019-11-02 17:55:01', '2019-11-02 17:55:01'),
	(154, 'anyID', 2, 4, 1, '2019-11-02 17:56:01', '2019-11-02 17:56:01'),
	(155, 'anyID', 3, 3, 1, '2019-11-02 17:57:01', '2019-11-02 17:57:01'),
	(156, 'anyID', 4, 8, 1, '2019-11-02 17:58:01', '2019-11-02 17:58:01'),
	(157, 'anyID', 4, 8, 1, '2019-11-02 17:59:01', '2019-11-02 17:59:01'),
	(158, 'anyID', 4, 8, 1, '2019-11-02 18:00:01', '2019-11-02 18:00:01'),
	(159, 'anyID', 4, 8, 1, '2019-11-02 18:01:01', '2019-11-02 18:01:01'),
	(160, 'anyID', 5, 8, 1, '2019-11-02 18:02:01', '2019-11-02 18:02:01'),
	(161, 'anyID', 5, 5, 1, '2019-11-02 18:03:01', '2019-11-02 18:03:01'),
	(162, 'anyID', 3, 6, 1, '2019-11-02 18:04:01', '2019-11-02 18:04:01'),
	(163, 'anyID', 3, 6, 1, '2019-11-02 18:05:01', '2019-11-02 18:05:01'),
	(164, 'anyID', 3, 6, 1, '2019-11-02 18:06:01', '2019-11-02 18:06:01'),
	(165, 'anyID', 3, 6, 1, '2019-11-02 18:07:01', '2019-11-02 18:07:01'),
	(166, 'anyID', 3, 6, 1, '2019-11-02 18:08:01', '2019-11-02 18:08:01'),
	(167, 'anyID', 3, 2, 1, '2019-11-02 18:09:01', '2019-11-02 18:09:01'),
	(168, 'anyID', 2, 4, 1, '2019-11-02 18:10:01', '2019-11-02 18:10:01'),
	(169, 'anyID', 2, 4, 1, '2019-11-02 18:11:01', '2019-11-02 18:11:01'),
	(170, 'anyID', 2, 4, 1, '2019-11-02 18:12:01', '2019-11-02 18:12:01'),
	(171, 'anyID', 2, 4, 1, '2019-11-02 18:13:01', '2019-11-02 18:13:01'),
	(172, 'anyID', 2, 4, 1, '2019-11-02 18:14:01', '2019-11-02 18:14:01'),
	(173, 'anyID', 2, 4, 1, '2019-11-02 18:15:01', '2019-11-02 18:15:01'),
	(174, 'anyID', 2, 4, 1, '2019-11-02 18:16:01', '2019-11-02 18:16:01'),
	(175, 'anyID', 2, 4, 1, '2019-11-02 18:17:01', '2019-11-02 18:17:01'),
	(176, 'anyID', 2, 4, 1, '2019-11-02 18:18:01', '2019-11-02 18:18:01'),
	(177, 'anyID', 2, 2, 1, '2019-11-02 18:19:01', '2019-11-02 18:19:01'),
	(178, 'anyID', 2, 4, 1, '2019-11-02 18:20:01', '2019-11-02 18:20:01'),
	(179, 'anyID', 2, 4, 1, '2019-11-02 18:21:01', '2019-11-02 18:21:01'),
	(180, 'anyID', 2, 4, 1, '2019-11-02 18:22:01', '2019-11-02 18:22:01'),
	(181, 'anyID', 2, 4, 1, '2019-11-02 18:23:01', '2019-11-02 18:23:01'),
	(182, 'anyID', 2, 4, 1, '2019-11-02 18:24:02', '2019-11-02 18:24:02'),
	(183, 'anyID', 2, 4, 1, '2019-11-02 18:25:01', '2019-11-02 18:25:01'),
	(184, 'anyID', 2, 4, 1, '2019-11-02 18:26:01', '2019-11-02 18:26:01'),
	(185, 'anyID', 2, 4, 1, '2019-11-02 18:27:01', '2019-11-02 18:27:01'),
	(186, 'anyID', 2, 4, 1, '2019-11-02 18:28:01', '2019-11-02 18:28:01'),
	(187, 'anyID', 2, 4, 1, '2019-11-02 18:29:01', '2019-11-02 18:29:01'),
	(188, 'anyID', 2, 4, 1, '2019-11-02 18:30:01', '2019-11-02 18:30:01'),
	(189, 'anyID', 2, 4, 1, '2019-11-02 18:31:01', '2019-11-02 18:31:01'),
	(190, 'anyID', 2, 4, 1, '2019-11-02 18:32:01', '2019-11-02 18:32:01'),
	(191, 'anyID', 2, 4, 1, '2019-11-02 18:33:01', '2019-11-02 18:33:01'),
	(192, 'anyID', 2, 2, 1, '2019-11-02 18:34:01', '2019-11-02 18:34:01'),
	(193, 'anyID', 2, 4, 1, '2019-11-02 18:35:01', '2019-11-02 18:35:01'),
	(194, 'anyID', 2, 4, 1, '2019-11-02 18:36:01', '2019-11-02 18:36:01'),
	(195, 'anyID', 2, 4, 1, '2019-11-02 18:37:01', '2019-11-02 18:37:01'),
	(196, 'anyID', 2, 4, 1, '2019-11-02 18:38:01', '2019-11-02 18:38:01');
/*!40000 ALTER TABLE `websockets_statistics_entries` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
