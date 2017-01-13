-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 12, 2017 at 07:03 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `al_factory`
--

-- --------------------------------------------------------

--
-- Table structure for table `ch_categories`
--

CREATE TABLE IF NOT EXISTS `ch_categories` (
  `id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `sort` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ch_categories`
--

INSERT INTO `ch_categories` (`id`, `value`, `language`, `sort`) VALUES
(1, 'Sexo', 'sp', 1),
(2, 'Edad', 'sp', 2),
(3, 'Raza', 'sp', 3),
(4, 'Apariencia', 'sp', 4),
(5, 'Orientación Sexual', 'sp', 5),
(6, 'Profesión', 'sp', 6),
(7, 'Virtudes', 'sp', 8),
(8, 'Defectos', 'sp', 7),
(9, 'Gustos', 'sp', 9),
(10, 'Aversiones', 'sp', 10),
(11, 'Miedos', 'sp', 11),
(12, 'Deseos', 'sp', 12),
(13, 'Circunstancias', 'sp', 13);

-- --------------------------------------------------------

--
-- Table structure for table `ch_circumstances`
--

CREATE TABLE IF NOT EXISTS `ch_circumstances` (
  `id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `sex` tinyint(4) NOT NULL COMMENT 'whether the attribute is applicable to 0: both sexes, 1: only to guys, 2: only to gals',
  `age` tinyint(4) NOT NULL COMMENT 'from what age the attribute is applicable'
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ch_circumstances`
--

INSERT INTO `ch_circumstances` (`id`, `value`, `language`, `sex`, `age`) VALUES
(1, 'Enfrenta un cáncer o alguna enfermedad ', 'sp', 0, 6),
(2, 'Recientemente liberad@ de prisión', 'sp', 0, 16),
(3, 'Debe mudarse a otra ciudad', 'sp', 0, 6),
(4, 'Espera la visita de alguien que no ve hace mucho', 'sp', 0, 6),
(5, 'Recientemente divorciad@', 'sp', 0, 27),
(6, 'Espera un bebé', 'sp', 0, 14),
(7, 'Ha quedado arruinad@', 'sp', 0, 25),
(8, 'Perdió el trabajo', 'sp', 0, 26),
(9, 'Recientemente retirad@', 'sp', 0, 64),
(10, 'Es ric@', 'sp', 0, 12),
(11, 'Es solter@', 'sp', 0, 26),
(12, 'Asesinó a alguien', 'sp', 0, 17),
(13, 'Pérdida de un hijo', 'sp', 0, 25),
(14, 'Pérdida de cónyugue', 'sp', 0, 25),
(15, 'Pérdida de un ser querido', 'sp', 0, 6),
(16, 'Cumplirá sentencia en prisión', 'sp', 0, 14),
(17, 'Saldrá de prisión', 'sp', 0, 18),
(18, 'Engaño conyugal', 'sp', 0, 18),
(19, 'Se enfrenta a una posible sanción laboral', 'sp', 0, 22),
(20, 'Se enfrenta a una posible pérdida del empleo', 'sp', 0, 17),
(21, 'Pronto se retirará', 'sp', 0, 60),
(22, 'Se enfrenta a una amenaza seria de criminales', 'sp', 0, 16),
(23, 'Es objeto de maltrato en el matrimonio o noviazgo', 'sp', 0, 16),
(24, 'Es objeto de maltrato en escuela o trabajo', 'sp', 0, 11),
(25, 'Se enfrenta a un gran estado depresivo', 'sp', 0, 17),
(26, 'Está en un periodo de apatía y falta de creatividad', 'sp', 0, 22),
(27, 'Ha empezado una relación amorosa prometedora', 'sp', 0, 15),
(28, 'Está inmers@ en un proceso de legalización', 'sp', 0, 22),
(29, 'Enfrenta graves problemas financieros', 'sp', 0, 24),
(30, 'Vive en un estado de soledad brutal', 'sp', 0, 32),
(31, 'Fue asaltad@ y robad@', 'sp', 0, 18),
(32, 'Ha muerto', 'sp', 0, 10),
(33, 'Sobrevivió a un accidente con secuelas', 'sp', 0, 13),
(34, 'Dejó el ejército y tiene traumas', 'sp', 0, 28),
(35, 'Empezó a asistir a escuela nocturna', 'sp', 0, 24),
(36, 'Tiene un concierto importante', 'sp', 0, 26),
(37, 'Enfrenta crisis de la edad', 'sp', 0, 40),
(38, 'Publica algo que se hace viral y le causa problemas', 'sp', 0, 12),
(39, 'Empieza un trabajo nuevo', 'sp', 0, 16),
(40, 'Decide empezar a perder o ganar peso', 'sp', 0, 14),
(41, 'Enfrenta crisis de fe', 'sp', 0, 18),
(42, 'Se vuelve religios@, espiritual', 'sp', 0, 24),
(43, 'Está rehabilitándose de abuso de sustancias y alcohol', 'sp', 0, 18),
(44, 'Tendrá que pelear con alguien', 'sp', 0, 12),
(45, 'Fué violad@', 'sp', 0, 12),
(46, 'Etapa de celos por ver el amor de su vida con alguien', 'sp', 0, 18),
(47, 'Está por perder la virginidad', 'sp', 0, 13),
(48, 'Sufre de amnesia temporal', 'sp', 0, 24),
(49, 'Está en un enredo por un malentendido', 'sp', 0, 24),
(50, 'Se quedó en la calle desahuciad@', 'sp', 0, 20),
(51, 'Cree que fue abducid@ por extraterrestres', 'sp', 0, 26),
(52, 'Descubre que su pareja le está siendo infiel', 'sp', 0, 13),
(53, 'Se recupera de una cirugía ', 'sp', 0, 12),
(54, 'Planea una venganza', 'sp', 0, 13),
(55, 'Planea un robo o crimen', 'sp', 0, 18),
(56, 'Compra una casa', 'sp', 0, 24),
(57, 'Enfrenta insomnio', 'sp', 0, 26),
(58, 'Le visita una persona muerta', 'sp', 0, 8),
(59, 'Se pierde de vacaciones', 'sp', 0, 26),
(60, 'Se encuentra con alguien famoso', 'sp', 0, 12),
(61, 'Está buscando pareja en internet y citas a ciegas', 'sp', 0, 18),
(62, 'Esta rentando un cuarto de su casa a extraños', 'sp', 0, 28),
(63, 'Va a adoptar a un bebé', 'sp', 0, 28),
(64, 'Conocerá al bebé que dio en adopción', 'sp', 0, 24),
(65, 'Un familiar o conocido saldrá pronto de prision', 'sp', 0, 12),
(66, 'Un enemigo saldrá pronto de prisión', 'sp', 0, 22),
(67, 'Ha dejado su trabajo para dedicarse al arte o planea hacerlo', 'sp', 0, 25),
(68, 'Se casará pronto o recién se caso', 'sp', 0, 18),
(69, 'Embarazo no deseado', 'sp', 0, 13),
(70, 'Ha ganado una importante e inesperada suma de dinero', 'sp', 0, 21),
(71, 'Está enfrentando problemas con su sexualidad', 'sp', 0, 12),
(72, 'Ha sido demandad@', 'sp', 0, 26),
(73, 'Le quitaron la licencia de conducción', 'sp', 0, 24),
(74, 'Tiene un ser querido con problemas mentales', 'sp', 0, 6),
(75, 'Enamoramiento no correspondido', 'sp', 0, 12),
(76, 'Su mejor amig@ se suicidó', 'sp', 0, 12),
(77, 'Irá a la guerra', 'sp', 0, 22),
(78, 'Cometió un robo', 'sp', 0, 14),
(79, 'Un ser querido ha desaparecido', 'sp', 0, 8),
(80, 'Es un fantasma', 'sp', 0, 8),
(81, 'Busca a un ser querido desaparecido', 'sp', 0, 27),
(82, 'Ya no le apetece el sexo', 'sp', 0, 27),
(83, 'Dejó la religión', 'sp', 0, 18),
(84, 'Está haciendo vida de inmigrante en otro país', 'sp', 0, 12),
(85, 'Está intentando contactar con alguien muerto', 'sp', 0, 27),
(86, 'Tiene un ser querido enfermo o muriendo', 'sp', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ch_dislikes`
--

CREATE TABLE IF NOT EXISTS `ch_dislikes` (
  `id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `sex` tinyint(4) NOT NULL COMMENT 'whether the attribute is applicable to 0: both sexes, 1: only to guys, 2: only to gals',
  `age` tinyint(4) NOT NULL COMMENT 'from what age the attribute is applicable'
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ch_dislikes`
--

INSERT INTO `ch_dislikes` (`id`, `value`, `language`, `sex`, `age`) VALUES
(1, 'Las personas que se toman la vida muy en serio', 'sp', 0, 19),
(2, 'Acampar', 'sp', 0, 27),
(3, 'Activismo político', 'sp', 0, 26),
(4, 'Animales', 'sp', 0, 48),
(5, 'Armas', 'sp', 0, 16),
(6, 'Arte', 'sp', 0, 14),
(7, 'Artes marciales', 'sp', 0, 30),
(8, 'Astrología', 'sp', 0, 19),
(9, 'Bailar', 'sp', 0, 14),
(10, 'Bicicletas', 'sp', 0, 45),
(11, 'Botes', 'sp', 0, 25),
(12, 'Carne', 'sp', 0, 19),
(13, 'Carros', 'sp', 0, 45),
(14, 'Caza', 'sp', 0, 15),
(15, 'Clubes', 'sp', 0, 35),
(16, 'Cocinar', 'sp', 0, 18),
(17, 'Hacer la limpieza', 'sp', 0, 10),
(18, 'Comediantes', 'sp', 0, 34),
(19, 'Computadoras y tecnología', 'sp', 0, 46),
(20, 'Deportes', 'sp', 0, 24),
(21, 'Espiritismo', 'sp', 0, 27),
(22, 'Fiestas', 'sp', 0, 12),
(23, 'Gatos', 'sp', 0, 23),
(24, 'Grafitti', 'sp', 0, 25),
(25, 'Hacer compras', 'sp', 0, 19),
(26, 'Insectos', 'sp', 0, 11),
(27, 'Internet', 'sp', 0, 40),
(28, 'Jazz', 'sp', 0, 25),
(29, 'La lluvia', 'sp', 0, 17),
(30, 'La nieve', 'sp', 0, 35),
(31, 'Las bromas de mal gusto', 'sp', 0, 16),
(32, 'Las bromas vulgares', 'sp', 0, 16),
(33, 'Las buenas maneras', 'sp', 0, 16),
(34, 'Leer', 'sp', 0, 14),
(35, 'Los dias nublados', 'sp', 0, 12),
(36, 'Motocicletas', 'sp', 0, 26),
(37, 'Música clásica', 'sp', 0, 20),
(38, 'Música country', 'sp', 0, 20),
(39, 'Música electrónica', 'sp', 0, 14),
(40, 'Música latina', 'sp', 0, 14),
(41, 'Nadar', 'sp', 0, 12),
(42, 'Naturaleza', 'sp', 0, 25),
(43, 'Patinaje sobre hielo', 'sp', 0, 16),
(44, 'Pelis de acción', 'sp', 0, 25),
(45, 'Pelis de horror', 'sp', 0, 18),
(46, 'Pelis románticas', 'sp', 0, 18),
(47, 'Perros', 'sp', 0, 12),
(48, 'Pesca', 'sp', 0, 12),
(49, 'Poesía', 'sp', 0, 14),
(50, 'Porno', 'sp', 0, 36),
(51, 'Rap', 'sp', 0, 16),
(52, 'Religión', 'sp', 0, 18),
(53, 'Reptiles', 'sp', 0, 16),
(54, 'Rock', 'sp', 0, 14),
(55, 'Serpientes', 'sp', 0, 14),
(56, 'Superhéroes', 'sp', 0, 25),
(57, 'Tatuajes', 'sp', 0, 30),
(58, 'Televisión', 'sp', 0, 19),
(59, 'Trenes', 'sp', 0, 23),
(60, 'Viajar', 'sp', 0, 33),
(61, 'Videojuegos', 'sp', 0, 40),
(62, 'Malos olores', 'sp', 0, 13),
(63, 'Frío extremo', 'sp', 0, 34),
(64, 'Calor extremo', 'sp', 0, 30),
(65, 'Bebida', 'sp', 0, 12),
(66, 'Drogas', 'sp', 0, 24),
(67, 'Ruido', 'sp', 0, 33),
(68, 'Los pies', 'sp', 0, 25),
(69, 'Abuso animal', 'sp', 0, 15),
(70, 'La vulgaridad', 'sp', 0, 15),
(71, 'Las risas estrépitosas', 'sp', 0, 23),
(72, 'La oscuridad', 'sp', 0, 5),
(73, 'La claridad excesiva', 'sp', 0, 32),
(74, 'El exceso de amabilidad', 'sp', 0, 24),
(75, 'Capitalismo', 'sp', 0, 18),
(76, 'Comunismo', 'sp', 0, 24),
(77, 'La gente muy inteligente', 'sp', 0, 24),
(78, 'Música ruidosa', 'sp', 0, 16),
(79, 'Las ranas y sapos', 'sp', 0, 11),
(80, 'Tomar el bus', 'sp', 0, 27),
(81, 'Comida picante', 'sp', 0, 13),
(82, 'Fumadores', 'sp', 0, 16),
(83, 'Policía', 'sp', 0, 17),
(84, 'Gobierno', 'sp', 0, 25),
(85, 'Multitudes', 'sp', 0, 35),
(86, 'La estupidez', 'sp', 0, 27),
(87, 'La charlatanería', 'sp', 0, 29),
(88, 'La vagancia', 'sp', 0, 34),
(89, 'La debilidad de carácter', 'sp', 0, 34),
(90, 'Ballet', 'sp', 0, 20),
(91, 'La simplonería', 'sp', 0, 28),
(92, 'La ignorancia', 'sp', 0, 17),
(93, 'Piercings', 'sp', 0, 15),
(94, 'Sexo', 'sp', 0, 30),
(95, 'La rutina', 'sp', 0, 23),
(96, 'Volar en avión', 'sp', 0, 25),
(97, 'Conducir', 'sp', 0, 35),
(98, 'Los malos padres', 'sp', 0, 27),
(99, 'La ingratitud', 'sp', 0, 27),
(100, 'La mentira', 'sp', 0, 19),
(101, 'La maldad', 'sp', 0, 15),
(102, 'La maledicencia', 'sp', 0, 27),
(103, 'La libertad de expresión', 'sp', 0, 19),
(104, 'La libertad', 'sp', 0, 19),
(105, 'La ridiculez', 'sp', 0, 29),
(106, 'La hipocresía', 'sp', 0, 18),
(107, 'Las obligaciones y responsabilidades', 'sp', 0, 16),
(108, 'Su jefe', 'sp', 0, 16),
(109, 'El desorden', 'sp', 0, 28),
(110, 'La gente', 'sp', 0, 13),
(111, 'La guerra', 'sp', 0, 17),
(112, 'La suciedad', 'sp', 0, 27),
(113, 'Las personas del sexo opuesto', 'sp', 0, 17),
(114, 'Los desconocidos', 'sp', 0, 45),
(115, 'Las personas materialistas', 'sp', 0, 19),
(116, 'Las grandes ciudades', 'sp', 0, 19),
(117, 'Escaleras', 'sp', 0, 37),
(118, 'El aburrimiento', 'sp', 0, 15),
(119, 'Medicinas', 'sp', 0, 8),
(120, 'La niebla', 'sp', 0, 26),
(121, 'Las injusticias', 'sp', 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `ch_fears`
--

CREATE TABLE IF NOT EXISTS `ch_fears` (
  `id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `sex` tinyint(4) NOT NULL COMMENT 'whether the attribute is applicable to 0: both sexes, 1: only to guys, 2: only to gals',
  `age` tinyint(4) NOT NULL COMMENT 'from what age the attribute is applicable'
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ch_fears`
--

INSERT INTO `ch_fears` (`id`, `value`, `language`, `sex`, `age`) VALUES
(1, 'No ser capaz de mantener a los hijos y/o la familia', 'sp', 0, 20),
(2, 'Hablar en público', 'sp', 0, 12),
(3, 'Quedarse calv@', 'sp', 0, 30),
(4, 'Serpientes', 'sp', 0, 5),
(5, 'Arañas', 'sp', 0, 5),
(6, 'Insectos', 'sp', 0, 5),
(7, 'Ganar o perder peso', 'sp', 0, 12),
(8, 'Perder el trabajo', 'sp', 0, 16),
(9, 'Decepcionar a quienes le rodean', 'sp', 0, 12),
(10, 'Perder a un ser querido', 'sp', 0, 5),
(11, 'Dejar de ser amad@', 'sp', 0, 16),
(12, 'No lograr nada en la vida', 'sp', 0, 27),
(13, 'Caer en la desidia y la apatía', 'sp', 0, 32),
(14, 'La rutina', 'sp', 0, 25),
(15, 'Payasos', 'sp', 0, 5),
(16, 'Fracasar', 'sp', 0, 12),
(17, 'Que sus secretos sean revelados', 'sp', 0, 25),
(18, 'Ir a prisión', 'sp', 0, 16),
(19, 'Ser asaltad@ y robad@', 'sp', 0, 13),
(20, 'Ser violad@', 'sp', 2, 12),
(21, 'Ser asesinad@', 'sp', 0, 16),
(22, 'Volar en avión', 'sp', 0, 24),
(23, 'Conducir', 'sp', 0, 26),
(24, 'Pelear', 'sp', 0, 9),
(25, 'Tener un hijo no deseado', 'sp', 0, 18),
(26, 'Divorciarse o separarse de su pareja', 'sp', 0, 16),
(27, 'Ser engañad@ por su pareja', 'sp', 0, 13),
(28, 'Ser el hazmereir de los demás', 'sp', 0, 11),
(29, 'Volverse loco', 'sp', 0, 27),
(30, 'Envejecer', 'sp', 0, 30),
(31, 'Morir', 'sp', 0, 5),
(32, 'Morir solo', 'sp', 0, 35),
(33, 'No encontrar nunca el amor', 'sp', 0, 27),
(34, 'Enfrentar críticas', 'sp', 0, 12),
(35, 'Alturas', 'sp', 0, 5),
(36, 'Velocidad', 'sp', 0, 5),
(37, 'Quedarse sin dinero', 'sp', 0, 28),
(38, 'Quedarse en la calle', 'sp', 0, 24),
(39, 'Perderlo todo', 'sp', 0, 28),
(40, 'Quedar impotente o con frigidez sexual', 'sp', 0, 40),
(41, 'Que los hijos tomen o retomen el mal camino', 'sp', 0, 34),
(42, 'Soledad', 'sp', 0, 26),
(43, 'Enfermedades, virus y gérmenes', 'sp', 0, 12),
(44, 'Enamorarse', 'sp', 0, 30),
(45, 'El futuro', 'sp', 0, 34),
(46, 'Los cambios', 'sp', 0, 12),
(47, 'Sufrir un secuestro', 'sp', 0, 12),
(48, 'El que dirán', 'sp', 0, 27),
(49, 'No poder tener hijos o más hijos', 'sp', 0, 25),
(50, 'La monotonía', 'sp', 0, 20),
(51, 'Quedar inválid@', 'sp', 0, 30),
(52, 'Quedar cieg@', 'sp', 0, 22),
(53, 'Quedar sord@', 'sp', 0, 26),
(54, 'Sufrir un accidente', 'sp', 0, 12),
(55, 'Abrir un negocio propio', 'sp', 0, 28),
(56, 'Las obligaciones y responsabilidades', 'sp', 0, 16),
(57, 'Policía', 'sp', 0, 12),
(58, 'Gobierno', 'sp', 0, 24),
(59, 'Su jefe', 'sp', 0, 16),
(60, 'La inestabilidad', 'sp', 0, 26),
(61, 'Afrontar la verdad y los hechos', 'sp', 0, 30),
(62, 'Confiar en las personas', 'sp', 0, 24),
(63, 'Sexo                                          ', 'sp', 0, 13),
(64, 'La guerra', 'sp', 0, 5),
(65, 'Espacios cerrados', 'sp', 0, 5),
(66, 'Espacios abiertos', 'sp', 0, 5),
(67, 'Salir a la calle', 'sp', 0, 35),
(68, 'Perros', 'sp', 0, 5),
(69, 'La oscuridad', 'sp', 0, 5),
(70, 'Perderse en un lugar extraño', 'sp', 0, 5),
(71, 'El dolor físico', 'sp', 0, 5),
(72, 'El sufrimiento', 'sp', 0, 25),
(73, 'Lúgares púbicos', 'sp', 0, 25),
(74, 'Armas', 'sp', 0, 12),
(75, 'Animales', 'sp', 0, 5),
(76, 'La suciedad', 'sp', 0, 20),
(77, 'Las personas del sexo opuesto', 'sp', 0, 13),
(78, 'Ahogarse', 'sp', 0, 10),
(79, 'Los desconocidos', 'sp', 0, 5),
(80, 'Fuego', 'sp', 0, 5),
(81, 'Ser pobre o permanecer pobre', 'sp', 0, 25),
(82, 'Truenos y relámpagos', 'sp', 0, 5),
(83, 'El desorden', 'sp', 0, 27),
(84, 'Desmayarse en público', 'sp', 0, 11),
(85, 'Las grandes ciudades', 'sp', 0, 10),
(86, 'Tiburones', 'sp', 0, 5),
(87, 'Fantasmas', 'sp', 0, 5),
(88, 'Comunismo', 'sp', 0, 35),
(89, 'Fiestas                                      ', 'sp', 0, 12),
(90, 'Ranas y sapos', 'sp', 0, 5),
(91, 'Hacer el ridículo', 'sp', 0, 13),
(92, 'Los espejos', 'sp', 0, 35),
(93, 'El mar', 'sp', 0, 5),
(94, 'Sufrir un robo', 'sp', 0, 12),
(95, 'Escaleras', 'sp', 0, 35),
(96, 'Multitudes', 'sp', 0, 30),
(97, 'El infierno', 'sp', 0, 5),
(98, 'Ser electrocutad@', 'sp', 0, 25),
(99, 'Ascensores', 'sp', 0, 27),
(100, 'Los criminales y delincuentes', 'sp', 0, 13),
(101, 'Drogas', 'sp', 0, 13),
(102, 'Bebida', 'sp', 0, 15),
(103, 'Medicinas', 'sp', 0, 25),
(104, 'Puentes', 'sp', 0, 31),
(105, 'El matrimonio', 'sp', 0, 25),
(106, 'Ver y oler sangre', 'sp', 0, 11),
(107, 'La niebla', 'sp', 0, 5),
(108, 'Ir al médico o al dentista', 'sp', 0, 5),
(109, 'Ser envenenad@', 'sp', 0, 32),
(110, 'Perder el móvil', 'sp', 0, 13),
(111, 'Los cementerios', 'sp', 0, 5),
(112, 'Tener que depender de los demás', 'sp', 0, 28),
(113, 'La falta de independencia', 'sp', 0, 28),
(114, 'Ser enterrad@ viv@', 'sp', 0, 5),
(115, 'Terremotos y tsunamis', 'sp', 0, 20),
(116, 'Brujería', 'sp', 0, 5),
(117, 'Los padres', 'sp', 0, 5),
(118, 'Atragantarse comiendo', 'sp', 0, 37),
(119, 'Ataques de ansiedad', 'sp', 2, 31),
(120, 'Reptiles', 'sp', 0, 7),
(121, 'Trenes', 'sp', 0, 9),
(122, 'Títeres', 'sp', 0, 5),
(123, 'Bicicletas', 'sp', 0, 10),
(124, 'Botes', 'sp', 0, 12),
(125, 'Carros', 'sp', 0, 17),
(126, 'Fiestas', 'sp', 0, 12),
(127, 'Motocicletas', 'sp', 0, 15),
(128, 'La libertad', 'sp', 0, 23),
(129, 'El sexo', 'sp', 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `ch_features`
--

CREATE TABLE IF NOT EXISTS `ch_features` (
  `id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT 'whether the attribute is 0: neutral, 1: good, 2: bad',
  `sex` tinyint(4) NOT NULL COMMENT 'whether the attribute is applicable to 0: both sexes, 1: only to guys, 2: only to gals',
  `age` tinyint(4) NOT NULL COMMENT 'from what age the attribute is applicable'
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ch_features`
--

INSERT INTO `ch_features` (`id`, `value`, `language`, `type`, `sex`, `age`) VALUES
(1, 'Drogadict@', 'sp', 2, 0, 17),
(2, 'Alcóholic@', 'sp', 2, 0, 19),
(3, 'Agresiv@', 'sp', 2, 0, 12),
(4, 'Arrogante', 'sp', 2, 0, 12),
(5, 'Prepotente', 'sp', 2, 0, 12),
(6, 'Envidios@', 'sp', 2, 0, 12),
(7, 'Tabaquismo', 'sp', 2, 0, 14),
(8, 'Ludópata', 'sp', 2, 0, 20),
(9, 'Chismos@', 'sp', 2, 0, 13),
(10, 'Charlatanería', 'sp', 2, 0, 12),
(11, 'Mentiros@', 'sp', 2, 0, 12),
(12, 'Autosuficiente', 'sp', 2, 0, 13),
(13, 'Egomanía', 'sp', 2, 0, 14),
(14, 'Mezquin@', 'sp', 2, 0, 16),
(15, 'Avar@', 'sp', 2, 0, 22),
(16, 'Tacañ@', 'sp', 2, 0, 12),
(17, 'Ambicios@', 'sp', 1, 0, 14),
(18, 'Abusiv@', 'sp', 2, 0, 12),
(19, 'Mal progenitor', 'sp', 2, 0, 24),
(20, 'Frí@', 'sp', 0, 0, 17),
(21, 'Nervios@', 'sp', 2, 0, 13),
(22, 'Loc@ de remate', 'sp', 0, 0, 16),
(23, 'Holgazanería', 'sp', 2, 0, 16),
(24, 'Cleptomanía', 'sp', 2, 0, 12),
(25, 'Egoísta', 'sp', 2, 0, 10),
(26, 'Introvertid@', 'sp', 0, 0, 13),
(27, 'Extrovertid@', 'sp', 0, 0, 12),
(28, 'Payas@', 'sp', 2, 0, 12),
(29, 'Intrigante', 'sp', 2, 0, 18),
(30, 'Aburrid@', 'sp', 2, 0, 12),
(31, 'Terc@', 'sp', 0, 0, 10),
(32, 'Criticon#, opinionista', 'sp', 2, 0, 18),
(33, 'Ignorante', 'sp', 2, 0, 16),
(34, 'Vulgar', 'sp', 2, 0, 13),
(35, 'Ingenu@', 'sp', 2, 0, 12),
(36, 'Cobarde', 'sp', 2, 0, 10),
(37, 'Valiente', 'sp', 1, 0, 13),
(38, 'Celos@', 'sp', 2, 0, 14),
(39, 'Cínic@', 'sp', 0, 0, 17),
(40, 'Compulsiv@', 'sp', 2, 0, 16),
(41, 'Condescendiente', 'sp', 2, 0, 16),
(42, 'Sarcástic@', 'sp', 0, 0, 16),
(43, 'Desagradable', 'sp', 2, 0, 13),
(44, 'Cruel', 'sp', 2, 0, 12),
(45, 'Coquet@', 'sp', 0, 0, 13),
(46, 'Promiscu@', 'sp', 0, 0, 12),
(47, 'Descortés', 'sp', 2, 0, 13),
(48, 'Desconsiderad@', 'sp', 2, 0, 12),
(49, 'Descuidad@', 'sp', 0, 0, 13),
(50, 'Deshonest@', 'sp', 2, 0, 12),
(51, 'Dogmátic@', 'sp', 2, 0, 16),
(52, 'Entrometid@', 'sp', 2, 0, 12),
(53, 'Malhumor', 'sp', 2, 0, 12),
(54, 'Impaciente', 'sp', 0, 0, 10),
(55, 'Impulsiv@', 'sp', 2, 0, 12),
(56, 'Inconsistente', 'sp', 2, 0, 12),
(57, 'Hipócrita', 'sp', 2, 0, 13),
(58, 'Insensible', 'sp', 2, 0, 12),
(59, 'Intolerante', 'sp', 2, 0, 16),
(60, 'Materialista', 'sp', 0, 0, 13),
(61, 'Obsesiv@', 'sp', 2, 0, 12),
(62, 'Pegajos@', 'sp', 2, 0, 10),
(63, 'Resentid@', 'sp', 2, 0, 12),
(64, 'Soplonería', 'sp', 2, 0, 12),
(65, 'Superficial', 'sp', 2, 0, 13),
(66, 'Temerari@', 'sp', 0, 0, 10),
(67, 'Tímid@', 'sp', 0, 0, 10),
(68, 'Vengativ@', 'sp', 0, 0, 13),
(69, 'Pesimista', 'sp', 2, 0, 16),
(70, 'Optimista', 'sp', 1, 0, 16),
(71, 'Sumis@', 'sp', 2, 0, 12),
(72, 'Supersticios@', 'sp', 2, 0, 13),
(73, 'Emocionalmente inestable', 'sp', 2, 0, 12),
(74, 'Poco practic@', 'sp', 2, 0, 16),
(75, 'Soñador#', 'sp', 0, 0, 13),
(76, 'Llora miseria, quejica', 'sp', 2, 0, 27),
(77, 'Inconforme', 'sp', 2, 0, 10),
(78, 'Conformista', 'sp', 0, 0, 13),
(79, 'Olvidadiz@', 'sp', 0, 0, 12),
(80, 'Solitari@', 'sp', 0, 0, 12),
(81, 'Maniátic@', 'sp', 2, 0, 18),
(82, 'Pendencier@', 'sp', 2, 0, 10),
(83, 'Manipulador#', 'sp', 2, 0, 16),
(84, 'Competitiv@', 'sp', 0, 0, 13),
(85, 'Preocupación enfermiza por todo', 'sp', 2, 0, 25),
(86, 'Snob', 'sp', 0, 0, 16),
(87, 'Inescrupulos@', 'sp', 2, 0, 13),
(88, 'Suci@', 'sp', 2, 0, 12),
(89, 'Extrasensible', 'sp', 2, 0, 10),
(90, 'Inseguridad', 'sp', 2, 0, 12),
(91, 'Débil de caracter', 'sp', 2, 0, 16),
(92, 'Elegante', 'sp', 1, 0, 14),
(93, 'Asead@', 'sp', 1, 0, 12),
(94, 'Pervers@ sexual', 'sp', 2, 0, 16),
(95, 'Con Clase, sofisticad@', 'sp', 1, 0, 16),
(96, 'Espiritual', 'sp', 0, 0, 12),
(97, 'Locuaz, bien hablad@', 'sp', 1, 0, 15),
(98, 'Cult@', 'sp', 1, 0, 14),
(99, 'Seri@', 'sp', 0, 0, 13),
(100, 'Colaborativ@', 'sp', 1, 0, 12),
(101, 'Extra-independiente', 'sp', 0, 0, 12),
(102, 'Cariños@', 'sp', 1, 0, 10),
(103, 'Romántic@', 'sp', 0, 0, 13),
(104, 'Orientad@ a la familia', 'sp', 1, 0, 18),
(105, 'Detallista', 'sp', 0, 0, 16),
(106, 'Perfeccionista', 'sp', 0, 0, 16),
(107, 'Astut@', 'sp', 1, 0, 16),
(108, 'Inteligente', 'sp', 1, 0, 10),
(109, 'Afable', 'sp', 1, 0, 12),
(110, 'Amigable', 'sp', 1, 0, 10),
(111, 'Aventurer@', 'sp', 0, 0, 18),
(112, 'Audaz', 'sp', 1, 0, 15),
(113, 'Atent@', 'sp', 1, 0, 15),
(114, 'Pacífic@', 'sp', 1, 0, 12),
(115, 'Gracios@', 'sp', 1, 0, 14),
(116, 'Compasiv@', 'sp', 1, 0, 10),
(117, 'Comprensiv@', 'sp', 1, 0, 16),
(118, 'Concienzud@', 'sp', 1, 0, 12),
(119, 'Confiable', 'sp', 1, 0, 12),
(120, 'Cortés', 'sp', 1, 0, 11),
(121, 'Meticulos@', 'sp', 0, 0, 28),
(122, 'Creativ@', 'sp', 1, 0, 13),
(123, 'Interesad@', 'sp', 2, 0, 13),
(124, 'Discret@', 'sp', 1, 0, 15),
(125, 'Enérgic@', 'sp', 0, 0, 17),
(126, 'Imponente', 'sp', 2, 0, 30),
(127, 'Llen@ de encanto', 'sp', 1, 0, 23),
(128, 'Entusiasta', 'sp', 1, 0, 13),
(129, 'Fiel, Leal', 'sp', 1, 0, 16),
(130, 'Fuerte de carácter', 'sp', 0, 0, 10),
(131, 'Depresiv@', 'sp', 2, 0, 16),
(132, 'Fácil de abrumar y doblegar', 'sp', 2, 0, 16),
(133, 'Rápid@ en encontrar soluciones', 'sp', 1, 0, 15),
(134, 'Difícil de doblegar', 'sp', 1, 0, 12),
(135, 'Ingenios@', 'sp', 1, 0, 15),
(136, 'Perspicaz', 'sp', 1, 0, 16),
(137, 'Imparcial', 'sp', 1, 0, 22),
(138, 'Imaginativ@', 'sp', 1, 0, 10),
(139, 'Honest@, Honrad@', 'sp', 1, 0, 16),
(140, 'Modest@', 'sp', 0, 0, 16),
(141, 'Tolerante', 'sp', 1, 0, 16),
(142, 'Amoros@', 'sp', 1, 0, 16),
(143, 'Sencill@', 'sp', 1, 0, 14),
(144, 'Simplonería', 'sp', 2, 0, 16),
(145, 'Con los pies en la tierra', 'sp', 0, 0, 16),
(146, 'Extremadamente racional', 'sp', 1, 0, 25),
(147, 'Resistente', 'sp', 1, 0, 16),
(148, 'Segur@ de sí', 'sp', 1, 0, 13),
(149, 'Sensat@', 'sp', 1, 0, 13),
(150, 'Servicial', 'sp', 1, 0, 12),
(151, 'Trabajador#', 'sp', 1, 0, 16),
(152, 'Torpe', 'sp', 2, 0, 12),
(153, 'Malediciente', 'sp', 2, 0, 16),
(154, 'Malvad@', 'sp', 2, 0, 13),
(155, 'Inmadur@', 'sp', 2, 0, 18),
(156, 'Rud@', 'sp', 2, 0, 15),
(157, 'Caprichos@', 'sp', 2, 0, 10),
(158, 'Superalegre', 'sp', 1, 0, 10),
(159, 'Sombrí@', 'sp', 0, 0, 12),
(160, 'Mentecat@', 'sp', 2, 0, 13),
(161, 'Refunfuñon#', 'sp', 2, 0, 28),
(162, 'Sensible', 'sp', 0, 0, 10),
(163, 'Rencoros@', 'sp', 2, 0, 13),
(164, 'Taciturno', 'sp', 0, 0, 13),
(165, 'Educad@', 'sp', 1, 0, 10),
(166, 'Taimad@', 'sp', 0, 0, 16),
(167, 'Alocad@', 'sp', 0, 0, 10),
(168, 'Popular', 'sp', 0, 0, 13),
(169, 'Impopular', 'sp', 2, 0, 12),
(170, 'Desconfiad@', 'sp', 0, 0, 11),
(171, 'Cabeza Fría', 'sp', 0, 0, 25),
(172, 'Humilde', 'sp', 1, 0, 19),
(173, 'Sin pelos en la lengua', 'sp', 0, 0, 20),
(174, 'Sexista', 'sp', 2, 0, 20),
(175, 'Racista', 'sp', 2, 0, 13),
(176, 'Xenófob@', 'sp', 2, 0, 19),
(177, 'Homófob@', 'sp', 2, 0, 13),
(178, 'Clasista', 'sp', 2, 0, 13),
(179, 'Rar@', 'sp', 0, 0, 12),
(180, 'Poco sociable', 'sp', 0, 0, 13),
(181, 'Muy sociable', 'sp', 0, 0, 13),
(182, 'Intuitiv@', 'sp', 1, 0, 13),
(183, 'Indecis@', 'sp', 2, 0, 12),
(184, 'Baja autoestima', 'sp', 2, 0, 11),
(185, 'De pocas palabras', 'sp', 0, 0, 24),
(186, 'Antipátic@', 'sp', 2, 0, 13),
(187, 'Impredecible', 'sp', 0, 0, 25),
(188, 'Original', 'sp', 1, 0, 13),
(189, 'Intens@', 'sp', 0, 0, 13),
(190, 'Despreocupad@', 'sp', 0, 0, 27),
(191, 'Fracasad@', 'sp', 2, 0, 34),
(192, 'Acomplejad@', 'sp', 2, 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `ch_goals`
--

CREATE TABLE IF NOT EXISTS `ch_goals` (
  `id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `sex` tinyint(4) NOT NULL COMMENT 'whether the attribute is applicable to 0: both sexes, 1: only to guys, 2: only to gals',
  `age` tinyint(4) NOT NULL COMMENT 'from what age the attribute is applicable'
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ch_goals`
--

INSERT INTO `ch_goals` (`id`, `value`, `language`, `sex`, `age`) VALUES
(1, 'Riquezas', 'sp', 0, 14),
(2, 'Encontrar Amor', 'sp', 0, 13),
(3, 'Obtener fama', 'sp', 0, 12),
(4, 'Crear algo grande', 'sp', 0, 17),
(5, 'Obtener un triunfo deportivo', 'sp', 0, 12),
(6, 'Ganar un torneo', 'sp', 0, 12),
(7, 'Ser popular', 'sp', 0, 12),
(8, 'Doctorarse', 'sp', 0, 24),
(9, 'Obtener un triunfo profesional', 'sp', 0, 24),
(10, 'Montar o llevar a cabo un gran negocio', 'sp', 0, 18),
(11, 'Ejecutar crimen perfecto', 'sp', 0, 16),
(12, 'Viajar', 'sp', 0, 16),
(13, 'Promiscuidad', 'sp', 0, 13),
(14, 'Tener mas diversión', 'sp', 0, 12),
(15, 'Ir a fiestas', 'sp', 0, 13),
(16, 'Drogas', 'sp', 0, 15),
(17, 'Dejar de fumar', 'sp', 0, 18),
(18, 'Aprender otro idioma', 'sp', 0, 13),
(19, 'Obtener promoción', 'sp', 0, 22),
(20, 'Tener un hijo', 'sp', 0, 16),
(21, 'Casarse', 'sp', 0, 18),
(22, 'Ser electo en política', 'sp', 0, 28),
(23, 'Pasar más tiempo con la familia', 'sp', 0, 5),
(24, 'Superar una enfermedad', 'sp', 0, 8),
(25, 'Tener más tiempo libre', 'sp', 0, 24),
(26, 'Dedicarse al arte', 'sp', 0, 12),
(27, 'Escribir un libro', 'sp', 0, 12),
(28, 'Regresar en el tiempo', 'sp', 0, 20),
(29, 'No morir nunca', 'sp', 0, 8),
(30, 'Ser joven para siempre', 'sp', 0, 22),
(31, 'Ser aceptad@ en un círculo de gente', 'sp', 0, 13),
(32, 'Ser respetad@ y temid@', 'sp', 0, 13),
(33, 'Vengar una afrenta', 'sp', 0, 12),
(34, 'Sentirse protegid@', 'sp', 0, 22),
(35, 'Convertirse # mejor en algo', 'sp', 0, 16),
(36, 'Ser bell@', 'sp', 0, 13),
(37, 'Tener más autoconfianza', 'sp', 0, 12),
(38, 'Aprender a tocar un instrumento', 'sp', 0, 12),
(39, 'Hacer nuevas amistades', 'sp', 0, 12),
(40, 'Comprar una casa', 'sp', 0, 26),
(41, 'Comprar un auto nuevo', 'sp', 0, 16),
(42, 'Cambiar de carrera', 'sp', 0, 28),
(43, 'Obtener grandes conocimientos', 'sp', 0, 14),
(44, 'Hacer más ejercicios y ser más saludable', 'sp', 0, 28),
(45, 'Aprender a bailar', 'sp', 0, 13),
(46, 'Aprender a pelear', 'sp', 0, 12),
(47, 'Irse a vivir a otra parte', 'sp', 0, 12),
(48, 'Empezar un blog o canal en youtube', 'sp', 0, 12),
(49, 'Empezar una fundación', 'sp', 0, 24),
(50, 'Convertirse en DJ', 'sp', 0, 18),
(51, 'Trabajar desde casa', 'sp', 0, 24),
(52, 'Ser su propio jefe', 'sp', 0, 26),
(53, 'Ser tomad@ en cuenta por todos', 'sp', 0, 32),
(54, 'Vencer el miedo', 'sp', 0, 12),
(55, 'Dejar de ser negativ@', 'sp', 0, 17),
(56, 'Ser perdonad@ por alguien', 'sp', 0, 12),
(57, 'Volver a ver a un ser querido muerto', 'sp', 0, 10),
(58, 'Poner más empeño en el trabajo y la vida', 'sp', 0, 28),
(59, 'Conocer a su celebridad favorita', 'sp', 0, 12),
(60, 'Saldar todas sus deudas', 'sp', 0, 22),
(61, 'Aprender a nadar', 'sp', 0, 12),
(62, 'Aprender a cocinar', 'sp', 0, 18),
(63, 'Tener valor para suicidarse', 'sp', 0, 13),
(64, 'Aprender a tejer', 'sp', 0, 24),
(65, 'Encontrar a alguien perdido', 'sp', 0, 10),
(66, 'Dejar la bebida o las drogas', 'sp', 0, 18),
(67, 'Ser bueno en un deporte o juego', 'sp', 0, 10),
(68, 'No estresarse tanto', 'sp', 0, 30),
(69, 'Comer más sano y hacer más ejercicio', 'sp', 0, 24),
(70, 'Encontrar un tesoro', 'sp', 0, 10),
(71, 'Contactar a los espíritus', 'sp', 0, 12),
(72, 'Contactar a los extraterrestres', 'sp', 0, 12),
(73, 'Tener un jardín', 'sp', 0, 26),
(74, 'Tener una piscina', 'sp', 0, 26),
(75, 'Ser más responsable', 'sp', 0, 22),
(76, 'Mantener a la familia unida', 'sp', 0, 12),
(77, 'Poder hablar con los animales', 'sp', 0, 5),
(78, 'Aprender a patinar', 'sp', 0, 8),
(79, 'Aprender algo nuevo', 'sp', 0, 24),
(80, 'Aprender cosas nuevas', 'sp', 0, 12),
(81, 'Montar a caballo', 'sp', 0, 10),
(82, 'Ser un superhéroe', 'sp', 0, 8),
(83, 'Ser mejor padre o madre', 'sp', 0, 26),
(84, 'Abrir un negocio propio', 'sp', 0, 25),
(85, 'Morir y nacer de nuevo', 'sp', 0, 38);

-- --------------------------------------------------------

--
-- Table structure for table `ch_likes`
--

CREATE TABLE IF NOT EXISTS `ch_likes` (
  `id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `sex` tinyint(4) NOT NULL COMMENT 'whether the attribute is applicable to 0: both sexes, 1: only to guys, 2: only to gals',
  `age` tinyint(4) NOT NULL COMMENT 'from what age the attribute is applicable'
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ch_likes`
--

INSERT INTO `ch_likes` (`id`, `value`, `language`, `sex`, `age`) VALUES
(1, 'Música clásica', 'sp', 0, 15),
(2, 'Música country', 'sp', 0, 16),
(3, 'Música latina', 'sp', 0, 10),
(4, 'Rap', 'sp', 0, 14),
(5, 'Rock', 'sp', 0, 14),
(6, 'Jazz', 'sp', 0, 24),
(7, 'Deportes', 'sp', 0, 8),
(8, 'Televisión', 'sp', 0, 30),
(9, 'Comedias', 'sp', 0, 14),
(10, 'Comediantes', 'sp', 0, 22),
(11, 'Conciertos en vivo', 'sp', 0, 15),
(12, 'Vidas de famosos', 'sp', 0, 12),
(13, 'Pelis de acción', 'sp', 0, 12),
(14, 'Pelis románticas', 'sp', 2, 13),
(15, 'Ciencia Ficción', 'sp', 0, 14),
(16, 'Leer', 'sp', 0, 12),
(17, 'Bailar', 'sp', 0, 6),
(18, 'Clubes', 'sp', 0, 16),
(19, 'Bicicletas', 'sp', 1, 10),
(20, 'Carros', 'sp', 1, 16),
(21, 'Botes', 'sp', 1, 24),
(22, 'Trenes', 'sp', 1, 12),
(23, 'Fotografía', 'sp', 0, 16),
(24, 'Pintar', 'sp', 0, 8),
(25, 'Dibujar', 'sp', 1, 8),
(26, 'Tatuajes', 'sp', 0, 18),
(27, 'Grafitti', 'sp', 1, 13),
(28, 'Motocicletas', 'sp', 0, 16),
(29, 'Patinar', 'sp', 0, 10),
(30, 'Patineta', 'sp', 1, 12),
(31, 'Acampar', 'sp', 0, 22),
(32, 'Ciencia', 'sp', 0, 10),
(33, 'Videojuegos', 'sp', 1, 12),
(34, 'Documentales', 'sp', 0, 22),
(35, 'Pelis de horror', 'sp', 0, 12),
(36, 'Superhéroes', 'sp', 1, 8),
(37, 'Coleccionar cosas', 'sp', 0, 30),
(38, 'Juegos de cartas', 'sp', 1, 22),
(39, 'Poker', 'sp', 0, 18),
(40, 'Lotería y apuestas', 'sp', 0, 34),
(41, 'Ajedrez', 'sp', 0, 8),
(42, 'Guitarra', 'sp', 0, 12),
(43, 'Tocar la filarmónica', 'sp', 1, 20),
(44, 'Artes marciales', 'sp', 0, 12),
(45, 'Gimnasia', 'sp', 0, 6),
(46, 'Piano', 'sp', 0, 8),
(47, 'Tocar la batería', 'sp', 0, 16),
(48, 'Saxofón', 'sp', 1, 24),
(49, 'Trompeta', 'sp', 1, 26),
(50, 'Violín', 'sp', 0, 12),
(51, 'Cello', 'sp', 0, 16),
(52, 'Poesía', 'sp', 0, 16),
(53, 'Escribir', 'sp', 0, 12),
(54, 'Perros', 'sp', 0, 8),
(55, 'Gatos', 'sp', 0, 20),
(56, 'Aves', 'sp', 0, 12),
(57, 'Peces', 'sp', 0, 8),
(58, 'Insectos', 'sp', 1, 8),
(59, 'Reptiles', 'sp', 0, 8),
(60, 'Animales', 'sp', 0, 12),
(61, 'Serpientes', 'sp', 1, 10),
(62, 'Actuar', 'sp', 0, 12),
(63, 'Juegos de mesa', 'sp', 0, 28),
(64, 'Hacer velas', 'sp', 2, 34),
(65, 'Artesanía', 'sp', 0, 24),
(66, 'Cocinar', 'sp', 0, 24),
(67, 'Fiestas', 'sp', 0, 12),
(68, 'Coctelería', 'sp', 0, 21),
(69, 'Disfraces', 'sp', 0, 26),
(70, 'Crucigramas y Puzzles', 'sp', 0, 34),
(71, 'Música electrónica', 'sp', 1, 16),
(72, 'Deportes de fantasía', 'sp', 0, 30),
(73, 'Redes sociales y chatrooms', 'sp', 0, 14),
(74, 'Moda', 'sp', 0, 20),
(75, 'Arreglo floral', 'sp', 2, 17),
(76, 'Idiomas', 'sp', 0, 19),
(77, 'Patinaje sobre hielo', 'sp', 0, 16),
(78, 'Trotar', 'sp', 0, 26),
(79, 'Tejer', 'sp', 2, 24),
(80, 'Magia', 'sp', 1, 12),
(81, 'Origami', 'sp', 0, 20),
(82, 'Canto', 'sp', 0, 12),
(83, 'Taxidermia', 'sp', 1, 32),
(84, 'Yoga', 'sp', 0, 20),
(85, 'Capoeira', 'sp', 0, 22),
(86, 'Astronomía', 'sp', 0, 12),
(87, 'Pesca', 'sp', 1, 15),
(88, 'Caza', 'sp', 1, 15),
(89, 'Jardinería', 'sp', 0, 40),
(90, 'Handball', 'sp', 1, 22),
(91, 'Senderismo', 'sp', 0, 30),
(92, 'Caballos', 'sp', 0, 12),
(93, 'Kayak', 'sp', 0, 20),
(94, 'Boxeo', 'sp', 0, 15),
(95, 'Paintball', 'sp', 1, 18),
(96, 'Rafting', 'sp', 1, 25),
(97, 'Bucear', 'sp', 0, 20),
(98, 'Alpinismo', 'sp', 0, 18),
(99, 'Surfing', 'sp', 0, 14),
(100, 'Hacer compras', 'sp', 2, 16),
(101, 'Maquillaje', 'sp', 2, 14),
(102, 'Nadar', 'sp', 0, 12),
(103, 'Deportes de nieve', 'sp', 0, 12),
(104, 'Carros Antiguos', 'sp', 1, 27),
(105, 'Minerales y Rocas', 'sp', 0, 10),
(106, 'Dinosaurios', 'sp', 1, 10),
(107, 'Billar', 'sp', 1, 16),
(108, 'Bolos', 'sp', 0, 20),
(109, 'Cheerleading', 'sp', 2, 13),
(110, 'Dardos', 'sp', 1, 20),
(111, 'Activismo político', 'sp', 0, 16),
(112, 'Negocios', 'sp', 0, 12),
(113, 'Golf', 'sp', 0, 30),
(114, 'Maratones', 'sp', 0, 28),
(115, 'Porno', 'sp', 0, 15),
(116, 'Astrología', 'sp', 2, 20),
(117, 'Arte', 'sp', 0, 16),
(118, 'Playa', 'sp', 0, 10),
(119, 'Danza del vientre', 'sp', 2, 16),
(120, 'Espiritismo', 'sp', 0, 25),
(121, 'Meditación', 'sp', 0, 24),
(122, 'Sexo Tántrico', 'sp', 0, 28),
(123, 'Internet', 'sp', 0, 15),
(124, 'Modelos de carros, botes, aviones o trenes', 'sp', 1, 12),
(125, 'Observar a la gente', 'sp', 0, 25),
(126, 'Paracaidismo', 'sp', 1, 21),
(127, 'Títeres', 'sp', 0, 25),
(128, 'Robots', 'sp', 1, 12),
(129, 'Viajar', 'sp', 0, 20),
(130, 'Windsurf', 'sp', 0, 20),
(131, 'Vinos', 'sp', 0, 30),
(132, 'Canto Coral', 'sp', 0, 13),
(133, 'Armas', 'sp', 0, 16),
(134, 'Carne', 'sp', 0, 14),
(135, 'Vegetales', 'sp', 0, 17),
(136, 'Computadoras y tecnología', 'sp', 1, 12),
(137, 'Religión', 'sp', 0, 38),
(138, 'Morir', 'sp', 0, 15),
(139, 'La nieve', 'sp', 0, 15),
(140, 'La lluvia', 'sp', 0, 17),
(141, 'Naturaleza', 'sp', 0, 13),
(142, 'Los dias nublados', 'sp', 0, 19),
(143, 'Las bromas de mal gusto', 'sp', 0, 17),
(144, 'Las bromas vulgares', 'sp', 1, 17),
(145, 'Las buenas maneras', 'sp', 0, 25),
(146, 'Las obligaciones y responsabilidades', 'sp', 0, 17),
(147, 'Bebida', 'sp', 0, 23),
(148, 'Drogas', 'sp', 0, 14),
(149, 'Los pies', 'sp', 0, 28),
(150, 'La vulgaridad', 'sp', 0, 13),
(151, 'La oscuridad', 'sp', 0, 15),
(152, 'Capitalismo ', 'sp', 0, 19),
(153, 'Comunismo ', 'sp', 0, 18),
(154, 'La gente muy inteligente', 'sp', 0, 18),
(155, 'Música ruidosa', 'sp', 0, 15),
(156, 'Las ranas y sapos ', 'sp', 0, 12),
(157, 'Tomar el bus', 'sp', 0, 27),
(158, 'Pasear', 'sp', 0, 27),
(159, 'Comida picante', 'sp', 0, 19),
(160, 'Gobierno', 'sp', 0, 18),
(161, 'La vagancia ', 'sp', 0, 16),
(162, 'Ballet', 'sp', 0, 12),
(163, 'Piercings', 'sp', 0, 15),
(164, 'Las culturas exóticas ', 'sp', 0, 15),
(165, 'Sexo', 'sp', 0, 15),
(166, 'La rutina', 'sp', 0, 32),
(167, 'Volar en avión', 'sp', 0, 19),
(168, 'Conducir', 'sp', 0, 16),
(169, 'La libertad de expresión', 'sp', 0, 23),
(170, 'La libertad ', 'sp', 0, 23),
(171, 'El desorden', 'sp', 0, 13),
(172, 'La gente', 'sp', 0, 19),
(173, 'La suciedad', 'sp', 0, 14),
(174, 'Las personas exitosas', 'sp', 0, 22),
(175, 'Las grandes ciudades', 'sp', 0, 25);

-- --------------------------------------------------------

--
-- Table structure for table `ch_physique`
--

CREATE TABLE IF NOT EXISTS `ch_physique` (
  `id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '0: stature, 1: body type, 2: appearance',
  `sex` tinyint(4) NOT NULL COMMENT 'whether the attribute is applicable to 0: both sexes, 1: only to guys, 2: only to gals',
  `age` tinyint(4) NOT NULL COMMENT 'from what age the attribute is applicable'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ch_physique`
--

INSERT INTO `ch_physique` (`id`, `value`, `language`, `type`, `sex`, `age`) VALUES
(1, 'Muy pequeñ@', 'sp', 0, 0, 5),
(2, 'Pequeñ@', 'sp', 0, 0, 5),
(3, 'Tamaño mediano', 'sp', 0, 0, 5),
(4, 'Tamaño normal', 'sp', 0, 0, 5),
(5, 'Alt@', 'sp', 0, 0, 5),
(6, 'Extremadamente alt@', 'sp', 0, 0, 14),
(7, 'Extremadamente delgad@', 'sp', 1, 0, 7),
(8, 'Delgad@', 'sp', 1, 0, 7),
(9, 'Complexión normal', 'sp', 1, 0, 5),
(10, 'Complexión atlética', 'sp', 1, 0, 15),
(11, 'Fornido', 'sp', 1, 1, 16),
(12, 'Musculoso', 'sp', 1, 1, 18),
(13, 'Buen cuerpo', 'sp', 1, 2, 13),
(14, 'Muy buen cuerpo', 'sp', 1, 2, 15),
(15, 'Cuerpo exhuberante', 'sp', 1, 2, 17),
(16, 'Regordet@', 'sp', 1, 0, 5),
(17, 'Gordit@', 'sp', 1, 0, 7),
(18, 'Muy obes@', 'sp', 1, 0, 16),
(19, 'Extremadamente fe@', 'sp', 2, 0, 15),
(20, 'Fe@', 'sp', 2, 0, 10),
(21, 'Un poco fe@', 'sp', 2, 0, 10),
(22, 'Rostro promedio', 'sp', 2, 0, 10),
(23, 'Rostro exótico', 'sp', 2, 0, 12),
(24, 'Rostro encantador', 'sp', 2, 0, 12),
(25, 'Atractiv@', 'sp', 2, 0, 12),
(26, 'Muy atractiv@', 'sp', 2, 0, 13),
(27, 'Rostro infantil', 'sp', 2, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ch_professions`
--

CREATE TABLE IF NOT EXISTS `ch_professions` (
  `id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `sex` tinyint(4) NOT NULL COMMENT 'whether the attribute is applicable to 0: both sexes, 1: only to guys, 2: only to gals',
  `age` tinyint(4) NOT NULL COMMENT 'from what age the attribute is applicable'
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ch_professions`
--

INSERT INTO `ch_professions` (`id`, `value`, `language`, `sex`, `age`) VALUES
(1, 'Abogad@', 'sp', 0, 26),
(2, 'Actuación', 'sp', 0, 8),
(3, 'Agente de viaje', 'sp', 0, 24),
(4, 'Arquitect@', 'sp', 0, 24),
(5, 'Científico', 'sp', 0, 25),
(6, 'Escritor#', 'sp', 0, 16),
(7, 'Barrender@', 'sp', 0, 26),
(8, 'Conserje', 'sp', 1, 30),
(9, 'Bibliotecari@', 'sp', 0, 22),
(10, 'Bombero', 'sp', 1, 22),
(11, 'Policía', 'sp', 0, 24),
(12, 'Cartero', 'sp', 0, 30),
(13, 'Vendedor# en tienda', 'sp', 0, 16),
(14, 'Carpintero', 'sp', 1, 28),
(15, 'Cirujan@', 'sp', 0, 28),
(16, 'Chofer', 'sp', 0, 22),
(17, 'Contabilidad', 'sp', 0, 24),
(18, 'Mucam@', 'sp', 0, 24),
(19, 'Agente de bienes raíces', 'sp', 0, 26),
(20, 'Chef', 'sp', 0, 26),
(21, 'Dentista', 'sp', 0, 24),
(22, 'Doctor#', 'sp', 0, 24),
(23, 'Decoración de interiores', 'sp', 2, 24),
(24, 'Electricista', 'sp', 1, 24),
(25, 'Enfermer@', 'sp', 0, 22),
(26, 'Peluquer@', 'sp', 0, 20),
(27, 'Farmacéutic@', 'sp', 0, 24),
(28, 'Fontanero', 'sp', 1, 28),
(29, 'Florista', 'sp', 0, 26),
(30, 'Artista', 'sp', 0, 16),
(31, 'Fotógraf@', 'sp', 0, 24),
(32, 'Granjer@', 'sp', 0, 26),
(33, 'Jardinero', 'sp', 1, 30),
(34, 'Política', 'sp', 0, 28),
(35, 'Juez', 'sp', 0, 35),
(36, 'Fiscal', 'sp', 0, 28),
(37, 'Limpiador de vidrios', 'sp', 1, 22),
(38, 'Albañil', 'sp', 1, 20),
(39, 'Mecánico', 'sp', 1, 22),
(40, 'Bartender', 'sp', 0, 22),
(41, 'Meser@', 'sp', 0, 16),
(42, 'Modelo', 'sp', 0, 6),
(43, 'Periodista', 'sp', 0, 18),
(44, 'Pescador', 'sp', 1, 25),
(45, 'Estudiante', 'sp', 0, 6),
(46, 'Ama de Casa', 'sp', 2, 20),
(47, 'Plomero', 'sp', 1, 25),
(48, 'Cerrajero', 'sp', 1, 23),
(49, 'Piloto', 'sp', 1, 25),
(50, 'Profesor#', 'sp', 0, 24),
(51, 'Psiquiatra', 'sp', 0, 26),
(52, 'Recepcionista', 'sp', 2, 18),
(53, 'Salvavidas', 'sp', 0, 25),
(54, 'Sastre', 'sp', 1, 35),
(55, 'Secretari@', 'sp', 0, 18),
(56, 'Soldado', 'sp', 0, 18),
(57, 'Taxista', 'sp', 0, 25),
(58, 'Trabajador# de fabrica', 'sp', 0, 18),
(59, 'Traductor#', 'sp', 0, 24),
(60, 'Veterinari@', 'sp', 0, 24),
(61, 'Bloguero o Youtuber', 'sp', 0, 14),
(62, 'Camarógrafo', 'sp', 1, 26),
(63, 'Luminotécnico', 'sp', 1, 24),
(64, 'Cineasta', 'sp', 0, 20),
(65, 'Empresari@', 'sp', 0, 26),
(66, 'Músico', 'sp', 0, 16),
(67, 'Trabajador# social', 'sp', 0, 24),
(68, 'Diseño gráfico', 'sp', 0, 20),
(69, 'Programación de software', 'sp', 0, 22),
(70, 'Administrador#', 'sp', 0, 28),
(71, 'Dueñ@ de local', 'sp', 0, 28),
(72, 'Estibador portuario', 'sp', 1, 25),
(73, 'Trabajador# de almacenes y tiendas', 'sp', 0, 16),
(74, 'Asistente', 'sp', 0, 18),
(75, 'Deportista', 'sp', 0, 6),
(76, 'Trabajador de matadero', 'sp', 0, 24),
(77, 'Vendedor ambulante', 'sp', 1, 28),
(78, 'Atención de huéspedes', 'sp', 2, 22),
(79, 'Comediante', 'sp', 0, 25),
(80, 'Bailarín#', 'sp', 0, 16),
(81, 'Mago', 'sp', 1, 24),
(82, 'Funcionari@ público', 'sp', 0, 24),
(83, 'Administrador de sistemas', 'sp', 1, 25),
(84, 'Gestión de recursos humanos', 'sp', 0, 24),
(85, 'Ingenier@', 'sp', 0, 25),
(86, 'Meteorólogo', 'sp', 0, 26),
(87, 'Cosmetista', 'sp', 2, 26),
(88, 'Niñera', 'sp', 2, 15),
(89, 'Oficinista', 'sp', 0, 24),
(90, 'Prostituta', 'sp', 2, 16),
(91, 'Zapatero', 'sp', 1, 30),
(92, 'Prestamista', 'sp', 1, 35),
(93, 'Criminal', 'sp', 0, 15),
(94, 'Entrenador#', 'sp', 0, 30),
(95, 'Testeador#', 'sp', 0, 26),
(96, 'Banquer@', 'sp', 0, 28),
(97, 'Agente de bolsa', 'sp', 1, 23),
(98, 'Comerciante', 'sp', 0, 28),
(99, 'Trabajador# de casino', 'sp', 0, 18),
(100, 'Maquinista ferroviario', 'sp', 1, 27),
(101, 'Marinero', 'sp', 1, 27),
(102, 'Embalsamador#', 'sp', 0, 23),
(103, 'Publicista', 'sp', 0, 24),
(104, 'Rector', 'sp', 1, 40),
(105, 'Telefonista', 'sp', 0, 20),
(106, 'Religión', 'sp', 0, 18),
(107, 'Agente de seguros', 'sp', 0, 22),
(108, 'Vendedor de autos', 'sp', 1, 24),
(109, 'Coreógraf@', 'sp', 0, 32),
(110, 'Guardia de seguridad', 'sp', 0, 28),
(111, 'Guía turístico', 'sp', 0, 26),
(112, 'Locutor# de radio', 'sp', 0, 28),
(113, 'Relaciones públicas', 'sp', 0, 26),
(114, 'Restaurador', 'sp', 1, 28),
(115, 'Joyer@', 'sp', 0, 26),
(116, 'Limpiador de carros', 'sp', 1, 18),
(117, 'Técnico de laboratorio', 'sp', 0, 24),
(118, 'Técnico electrónico', 'sp', 1, 24),
(119, 'Azafata', 'sp', 2, 24),
(120, 'Cajer@', 'sp', 0, 22),
(121, 'Basurero', 'sp', 1, 24),
(122, 'Minero', 'sp', 1, 25),
(123, 'Ebanista', 'sp', 1, 25),
(124, 'Guardaespaldas', 'sp', 1, 27),
(125, 'Repartidor# de volantes y anuncios', 'sp', 1, 23),
(126, 'Trabajador de mantenimiento', 'sp', 1, 28),
(127, 'Emplead@ de comida rápida', 'sp', 0, 16),
(128, 'Instructor# de conducción', 'sp', 0, 30),
(129, 'Lavaplatos', 'sp', 1, 17),
(130, 'Lavandera', 'sp', 2, 26),
(131, 'Promotor cultural', 'sp', 0, 25),
(132, 'Asistente de grupos de apoyo', 'sp', 0, 32),
(133, 'Redacción de contenidos', 'sp', 0, 22),
(134, 'Trabajador de museo', 'sp', 0, 23),
(135, 'Maquillista', 'sp', 0, 21),
(136, 'Funerario', 'sp', 1, 30),
(137, 'Stripper', 'sp', 2, 18),
(138, 'DJ', 'sp', 0, 21),
(139, 'Fabricante', 'sp', 1, 27),
(140, 'Artesan@', 'sp', 0, 25),
(141, 'Detective privado', 'sp', 1, 35),
(142, 'Paparazzi', 'sp', 1, 25),
(143, 'Paseador# de perros', 'sp', 0, 15),
(144, 'Agente de actuación', 'sp', 0, 28),
(145, 'Agente de atletas', 'sp', 1, 28),
(146, 'Agente de empleo', 'sp', 0, 24),
(147, 'Peluquer@ de perros', 'sp', 0, 26),
(148, 'Consejer@ Matrimonial', 'sp', 0, 34),
(149, 'Jugador# profesional', 'sp', 0, 25),
(150, 'Quiropráctico', 'sp', 1, 28),
(151, 'Masajista', 'sp', 0, 24),
(152, 'Gigoló', 'sp', 1, 16),
(153, 'Costurera', 'sp', 2, 17),
(154, 'Psicólog@', 'sp', 0, 28),
(155, 'Maestr@ de secundaria', 'sp', 0, 27),
(156, 'Maestra de niños', 'sp', 2, 24),
(157, 'Cantante', 'sp', 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `ch_races`
--

CREATE TABLE IF NOT EXISTS `ch_races` (
  `id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `sort` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ch_races`
--

INSERT INTO `ch_races` (`id`, `value`, `language`, `sort`) VALUES
(1, 'Blanca', 'sp', 1),
(2, 'Negra', 'sp', 2),
(3, 'Asiatica', 'sp', 3),
(4, 'Mixta', 'sp', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ch_sexuality`
--

CREATE TABLE IF NOT EXISTS `ch_sexuality` (
  `id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `sort` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ch_sexuality`
--

INSERT INTO `ch_sexuality` (`id`, `value`, `language`, `sort`) VALUES
(1, 'Heterosexual', 'sp', 1),
(2, 'Bisexual', 'sp', 2),
(3, 'Homosexual', 'sp', 3),
(4, 'Transexual', 'sp', 4),
(5, 'Asexual', 'sp', 5);

-- --------------------------------------------------------

--
-- Table structure for table `gn_contact`
--

CREATE TABLE IF NOT EXISTS `gn_contact` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gn_survey`
--

CREATE TABLE IF NOT EXISTS `gn_survey` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `p1` tinyint(4) NOT NULL,
  `p2` tinyint(4) NOT NULL,
  `p3` tinyint(4) NOT NULL,
  `p4` tinyint(4) NOT NULL,
  `p5` tinyint(4) NOT NULL,
  `p6` tinyint(4) NOT NULL,
  `p7` tinyint(4) NOT NULL,
  `p8` tinyint(4) NOT NULL,
  `p9` tinyint(4) NOT NULL,
  `p10` tinyint(4) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ch_categories`
--
ALTER TABLE `ch_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_circumstances`
--
ALTER TABLE `ch_circumstances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_dislikes`
--
ALTER TABLE `ch_dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_fears`
--
ALTER TABLE `ch_fears`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_features`
--
ALTER TABLE `ch_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language` (`language`),
  ADD KEY `type` (`type`),
  ADD KEY `sex` (`sex`),
  ADD KEY `age` (`age`);

--
-- Indexes for table `ch_goals`
--
ALTER TABLE `ch_goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_likes`
--
ALTER TABLE `ch_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `age` (`age`),
  ADD KEY `sex` (`sex`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `ch_physique`
--
ALTER TABLE `ch_physique`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language` (`language`),
  ADD KEY `age` (`age`),
  ADD KEY `sex` (`sex`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ch_professions`
--
ALTER TABLE `ch_professions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language` (`language`),
  ADD KEY `sex` (`sex`),
  ADD KEY `age` (`age`);

--
-- Indexes for table `ch_races`
--
ALTER TABLE `ch_races`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `ch_sexuality`
--
ALTER TABLE `ch_sexuality`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `gn_contact`
--
ALTER TABLE `gn_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `name` (`name`),
  ADD KEY `mail` (`email`),
  ADD KEY `subject` (`subject`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `gn_survey`
--
ALTER TABLE `gn_survey`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time` (`time`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ch_categories`
--
ALTER TABLE `ch_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ch_circumstances`
--
ALTER TABLE `ch_circumstances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `ch_dislikes`
--
ALTER TABLE `ch_dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `ch_fears`
--
ALTER TABLE `ch_fears`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `ch_features`
--
ALTER TABLE `ch_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=193;
--
-- AUTO_INCREMENT for table `ch_goals`
--
ALTER TABLE `ch_goals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `ch_likes`
--
ALTER TABLE `ch_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT for table `ch_physique`
--
ALTER TABLE `ch_physique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `ch_professions`
--
ALTER TABLE `ch_professions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `ch_races`
--
ALTER TABLE `ch_races`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ch_sexuality`
--
ALTER TABLE `ch_sexuality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `gn_contact`
--
ALTER TABLE `gn_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gn_survey`
--
ALTER TABLE `gn_survey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
