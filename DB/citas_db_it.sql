-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2023 a las 18:50:57
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `citas_db_it`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `usuario1_id` int(11) NOT NULL,
  `usuario2_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `chats`
--

INSERT INTO `chats` (`id`, `usuario1_id`, `usuario2_id`) VALUES
(25, 16, 20),
(26, 20, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coincidencias`
--

CREATE TABLE `coincidencias` (
  `id` int(11) NOT NULL,
  `usuario1_id` int(11) NOT NULL,
  `usuario2_id` int(11) NOT NULL,
  `compatibilidad` double NOT NULL,
  `fecha_coincidencia` timestamp NOT NULL DEFAULT current_timestamp(),
  `like_usuario_1` tinyint(1) NOT NULL DEFAULT 0,
  `like_usuario_2` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `coincidencias`
--

INSERT INTO `coincidencias` (`id`, `usuario1_id`, `usuario2_id`, `compatibilidad`, `fecha_coincidencia`, `like_usuario_1`, `like_usuario_2`) VALUES
(2, 1, 3, 0.6, '2023-04-28 12:47:05', 0, 0),
(4, 9, 1, 0.40444444444444444, '2023-05-31 19:51:58', 0, 0),
(5, 9, 3, 0.3822222222222222, '2023-05-31 19:51:58', 0, 0),
(6, 9, 5, 0.42666666666666664, '2023-05-31 19:51:58', 0, 0),
(11, 10, 1, 0.22666666666666668, '2023-05-31 20:16:48', 0, 0),
(12, 10, 3, 0.6, '2023-05-31 20:16:48', 0, 0),
(13, 10, 5, 0.6285714285714286, '2023-05-31 20:16:48', 0, 0),
(17, 10, 9, 0.44, '2023-05-31 20:16:48', 0, 0),
(27, 1, 5, 0.4057142857142857, '2023-05-31 21:23:29', 0, 0),
(28, 5, 3, 0.5485714285714286, '2023-05-31 21:23:29', 0, 0),
(29, 11, 1, 0.62, '2023-05-31 21:24:43', 0, 1),
(30, 11, 3, 0.53, '2023-05-31 21:24:43', 0, 0),
(31, 11, 5, 0.5942857142857143, '2023-05-31 21:24:43', 0, 0),
(32, 11, 9, 0.38666666666666666, '2023-05-31 21:24:43', 0, 0),
(33, 11, 10, 0.56, '2023-05-31 21:24:43', 0, 0),
(34, 12, 1, 0.43000000000000005, '2023-05-31 21:28:29', 0, 0),
(35, 12, 3, 0.53, '2023-05-31 21:28:29', 0, 0),
(36, 12, 5, 0.5942857142857143, '2023-05-31 21:28:29', 0, 0),
(37, 12, 9, 0.36444444444444446, '2023-05-31 21:28:29', 0, 0),
(38, 12, 10, 0.37, '2023-05-31 21:28:29', 0, 0),
(39, 12, 11, 0.8300000000000001, '2023-05-31 21:28:29', 0, 0),
(40, 13, 1, 0.30000000000000004, '2023-05-31 21:35:16', 0, 0),
(41, 13, 3, 0.45, '2023-05-31 21:35:16', 0, 0),
(42, 13, 5, 0.5142857142857143, '2023-05-31 21:35:16', 0, 0),
(43, 13, 9, 0.30666666666666664, '2023-05-31 21:35:16', 0, 0),
(44, 13, 10, 0.24, '2023-05-31 21:35:16', 0, 0),
(45, 13, 11, 0.8, '2023-05-31 21:35:16', 0, 0),
(46, 13, 12, 0.51, '2023-05-31 21:35:16', 0, 0),
(47, 14, 1, 0.58, '2023-05-31 21:36:49', 1, 0),
(48, 14, 3, 0.48, '2023-05-31 21:36:49', 0, 0),
(49, 14, 5, 0.5942857142857143, '2023-05-31 21:36:49', 0, 0),
(50, 14, 9, 0.5422222222222223, '2023-05-31 21:36:49', 0, 0),
(51, 14, 10, 0.37, '2023-05-31 21:36:49', 0, 0),
(52, 14, 11, 0.7300000000000001, '2023-05-31 21:36:49', 0, 0),
(53, 14, 12, 0.54, '2023-05-31 21:36:49', 0, 0),
(54, 14, 13, 0.41, '2023-05-31 21:36:49', 0, 0),
(55, 15, 1, 0.56, '2023-06-01 18:56:01', 0, 0),
(56, 15, 3, 0.44000000000000006, '2023-06-01 18:56:01', 0, 0),
(57, 15, 5, 0.5428571428571429, '2023-06-01 18:56:01', 0, 0),
(58, 15, 9, 0.30666666666666664, '2023-06-01 18:56:01', 0, 0),
(59, 15, 10, 0.52, '2023-06-01 18:56:01', 0, 0),
(60, 15, 11, 0.76, '2023-06-01 18:56:01', 0, 0),
(61, 15, 12, 0.76, '2023-06-01 18:56:01', 0, 0),
(62, 15, 13, 0.68, '2023-06-01 18:56:01', 0, 0),
(63, 15, 14, 0.6799999999999999, '2023-06-01 18:56:01', 0, 0),
(64, 16, 1, 0.12000000000000001, '2023-06-04 15:12:12', 1, 0),
(65, 16, 3, 0.52, '2023-06-04 15:12:12', 0, 0),
(66, 16, 5, 0.6628571428571429, '2023-06-04 15:12:12', 1, 0),
(67, 16, 9, 0.40444444444444444, '2023-06-04 15:12:12', 0, 0),
(68, 16, 10, 0.36, '2023-06-04 15:12:12', 0, 0),
(69, 16, 11, 0.6, '2023-06-04 15:12:12', 0, 0),
(70, 16, 12, 0.32, '2023-06-04 15:12:12', 0, 0),
(71, 16, 13, 0.28, '2023-06-04 15:12:12', 0, 0),
(72, 16, 14, 0.36, '2023-06-04 15:12:12', 0, 0),
(73, 16, 15, 0.52, '2023-06-04 15:12:12', 0, 0),
(74, 17, 1, 0.2857142857142857, '2023-06-04 15:16:36', 0, 0),
(75, 17, 3, 0.4685714285714286, '2023-06-04 15:16:36', 0, 0),
(76, 17, 5, 0.64, '2023-06-04 15:16:36', 0, 0),
(77, 17, 9, 0.5466666666666666, '2023-06-04 15:16:36', 0, 0),
(78, 17, 10, 0.3085714285714286, '2023-06-04 15:16:36', 0, 0),
(79, 17, 11, 0.5142857142857143, '2023-06-04 15:16:36', 0, 0),
(80, 17, 12, 0.2742857142857143, '2023-06-04 15:16:36', 0, 0),
(81, 17, 13, 0.19428571428571428, '2023-06-04 15:16:36', 0, 0),
(82, 17, 14, 0.47428571428571425, '2023-06-04 15:16:36', 0, 0),
(83, 17, 15, 0.46285714285714286, '2023-06-04 15:16:36', 0, 0),
(84, 17, 16, 0.34285714285714286, '2023-06-04 15:16:36', 0, 0),
(85, 18, 1, 0.49, '2023-06-04 15:18:52', 0, 1),
(86, 18, 3, 0.4, '2023-06-04 15:18:52', 0, 0),
(87, 18, 5, 0.5142857142857143, '2023-06-04 15:18:52', 0, 0),
(88, 18, 9, 0.28444444444444444, '2023-06-04 15:18:52', 0, 0),
(89, 18, 10, 0.48, '2023-06-04 15:18:52', 0, 0),
(90, 18, 11, 0.75, '2023-06-04 15:18:52', 0, 0),
(91, 18, 12, 0.7, '2023-06-04 15:18:52', 0, 0),
(92, 18, 13, 0.67, '2023-06-04 15:18:52', 0, 0),
(93, 18, 14, 0.7, '2023-06-04 15:18:52', 0, 0),
(94, 18, 15, 0.64, '2023-06-04 15:18:52', 0, 0),
(95, 18, 16, 0.56, '2023-06-04 15:18:52', 0, 0),
(96, 18, 17, 0.4342857142857143, '2023-06-04 15:18:52', 0, 0),
(97, 19, 1, 0.12000000000000001, '2023-06-04 15:20:42', 0, 0),
(98, 19, 3, 0.56, '2023-06-04 15:20:42', 0, 0),
(99, 19, 5, 0.6628571428571429, '2023-06-04 15:20:42', 0, 0),
(100, 19, 9, 0.40444444444444444, '2023-06-04 15:20:42', 0, 0),
(101, 19, 10, 0.36, '2023-06-04 15:20:42', 0, 0),
(102, 19, 11, 0.6, '2023-06-04 15:20:42', 0, 0),
(103, 19, 12, 0.32, '2023-06-04 15:20:42', 0, 0),
(104, 19, 13, 0.28, '2023-06-04 15:20:42', 0, 0),
(105, 19, 14, 0.32, '2023-06-04 15:20:42', 0, 0),
(106, 19, 15, 0.52, '2023-06-04 15:20:42', 0, 0),
(107, 19, 16, 0.44000000000000006, '2023-06-04 15:20:42', 0, 0),
(108, 19, 17, 0.34285714285714286, '2023-06-04 15:20:42', 0, 0),
(109, 19, 18, 0.52, '2023-06-04 15:20:42', 0, 0),
(110, 20, 1, 0.6400000000000001, '2023-06-04 15:22:15', 0, 0),
(111, 20, 3, 0.36, '2023-06-04 15:22:15', 0, 0),
(112, 20, 5, 0.46285714285714286, '2023-06-04 15:22:15', 0, 0),
(113, 20, 9, 0.40444444444444444, '2023-06-04 15:22:15', 0, 0),
(114, 20, 10, 0.44000000000000006, '2023-06-04 15:22:15', 0, 0),
(115, 20, 11, 0.64, '2023-06-04 15:22:15', 0, 0),
(116, 20, 12, 0.64, '2023-06-04 15:22:15', 0, 0),
(117, 20, 13, 0.56, '2023-06-04 15:22:15', 0, 0),
(118, 20, 14, 0.8, '2023-06-04 15:22:15', 0, 0),
(119, 20, 15, 0.6000000000000001, '2023-06-04 15:22:15', 0, 0),
(120, 20, 16, 0.44, '2023-06-04 15:22:15', 1, 1),
(121, 20, 17, 0.5828571428571429, '2023-06-04 15:22:15', 0, 0),
(122, 20, 18, 0.52, '2023-06-04 15:22:15', 0, 0),
(123, 20, 19, 0.48000000000000004, '2023-06-04 15:22:15', 0, 0),
(124, 21, 1, 0.4, '2023-06-04 15:24:25', 0, 0),
(125, 21, 3, 0.56, '2023-06-04 15:24:25', 0, 0),
(126, 21, 5, 0.6628571428571429, '2023-06-04 15:24:26', 0, 0),
(127, 21, 9, 0.40444444444444444, '2023-06-04 15:24:26', 0, 0),
(128, 21, 10, 0.64, '2023-06-04 15:24:26', 0, 0),
(129, 21, 11, 0.6, '2023-06-04 15:24:26', 0, 0),
(130, 21, 12, 0.6, '2023-06-04 15:24:26', 0, 0),
(131, 21, 13, 0.52, '2023-06-04 15:24:26', 0, 0),
(132, 21, 14, 0.56, '2023-06-04 15:24:26', 0, 0),
(133, 21, 15, 0.56, '2023-06-04 15:24:26', 0, 0),
(134, 21, 16, 0.64, '2023-06-04 15:24:26', 0, 0),
(135, 21, 17, 0.5828571428571429, '2023-06-04 15:24:26', 0, 0),
(136, 21, 18, 0.48000000000000004, '2023-06-04 15:24:26', 0, 0),
(137, 21, 19, 0.68, '2023-06-04 15:24:26', 0, 0),
(138, 21, 20, 0.52, '2023-06-04 15:24:26', 0, 0),
(139, 22, 1, 0.6057142857142858, '2023-06-04 15:33:29', 0, 0),
(140, 22, 3, 0.5085714285714286, '2023-06-04 15:33:29', 0, 0),
(141, 22, 5, 0.6799999999999999, '2023-06-04 15:33:29', 0, 0),
(142, 22, 9, 0.38666666666666666, '2023-06-04 15:33:29', 0, 0),
(143, 22, 10, 0.5885714285714286, '2023-06-04 15:33:29', 0, 0),
(144, 22, 11, 0.7942857142857144, '2023-06-04 15:33:29', 0, 0),
(145, 22, 12, 0.7942857142857144, '2023-06-04 15:33:29', 0, 0),
(146, 22, 13, 0.7142857142857143, '2023-06-04 15:33:29', 0, 0),
(147, 22, 14, 0.7942857142857144, '2023-06-04 15:33:29', 0, 0),
(148, 22, 15, 0.7428571428571429, '2023-06-04 15:33:29', 0, 0),
(149, 22, 16, 0.6228571428571429, '2023-06-04 15:33:29', 0, 1),
(150, 22, 17, 0.6000000000000001, '2023-06-04 15:33:29', 0, 0),
(151, 22, 18, 0.7142857142857143, '2023-06-04 15:33:29', 0, 0),
(152, 22, 19, 0.6228571428571429, '2023-06-04 15:33:29', 0, 0),
(153, 22, 20, 0.6628571428571429, '2023-06-04 15:33:29', 0, 0),
(154, 22, 21, 0.6228571428571429, '2023-06-04 15:33:29', 0, 0),
(155, 23, 1, 0.52, '2023-06-04 15:37:02', 0, 0),
(156, 23, 3, 0.44000000000000006, '2023-06-04 15:37:02', 0, 0),
(157, 23, 5, 0.5428571428571429, '2023-06-04 15:37:02', 0, 0),
(158, 23, 9, 0.30666666666666664, '2023-06-04 15:37:02', 0, 0),
(159, 23, 10, 0.48, '2023-06-04 15:37:02', 0, 0),
(160, 23, 11, 0.76, '2023-06-04 15:37:02', 0, 0),
(161, 23, 12, 0.72, '2023-06-04 15:37:02', 0, 0),
(162, 23, 13, 0.68, '2023-06-04 15:37:02', 0, 0),
(163, 23, 14, 0.6799999999999999, '2023-06-04 15:37:02', 0, 0),
(164, 23, 15, 0.68, '2023-06-04 15:37:02', 0, 0),
(165, 23, 16, 0.56, '2023-06-04 15:37:02', 0, 0),
(166, 23, 17, 0.46285714285714286, '2023-06-04 15:37:02', 0, 0),
(167, 23, 18, 0.68, '2023-06-04 15:37:02', 0, 0),
(168, 23, 19, 0.56, '2023-06-04 15:37:02', 0, 0),
(169, 23, 20, 0.56, '2023-06-04 15:37:02', 0, 0),
(170, 23, 21, 0.52, '2023-06-04 15:37:02', 0, 0),
(171, 23, 22, 0.7428571428571429, '2023-06-04 15:37:02', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades`
--

CREATE TABLE `facultades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facultades`
--

INSERT INTO `facultades` (`id`, `nombre`) VALUES
(1, 'Geografía e Historia'),
(2, 'Geografía e Historia + Relaciones Internacionales'),
(3, 'Humanidades'),
(4, 'Humanidades + Traducción e Interpretación (Inglés)'),
(5, 'Traducción e Interpretación (Francés - Alemán) + R'),
(6, 'Traducción e Interpretación (Inglés - Francés - Al'),
(7, 'Administración y Dirección de Empresas'),
(8, 'Administración y Dirección de Empresas (centro ads'),
(9, 'Administración y Dirección de Empresas en inglés'),
(10, 'Análisis Económico'),
(11, 'Ciencias Políticas y de la Administración'),
(12, 'Ciencias Políticas y de la Administración + Sociol'),
(13, 'Ciencias de la Actividad Física y del Deporte'),
(14, 'Ciencias de la Actividad Física y del Deporte (cen'),
(15, 'Comunicación (centro adscrito)'),
(16, 'Comunicación + Comunicación Digital (centro adscri'),
(17, 'Comunicación Digital (centro adscrito)'),
(18, 'Criminología'),
(19, 'Derecho'),
(20, 'Derecho (centro adscrito)'),
(21, 'Derecho + Administración y Dirección de Empresas'),
(22, 'Derecho + Administración y Dirección de Empresas e'),
(23, 'Derecho + Ciencias Políticas y de la Administració'),
(24, 'Derecho + Criminología'),
(25, 'Derecho + Finanzas y Contabilidad'),
(26, 'Derecho + Relaciones Laborales y Recursos Humanos'),
(27, 'Derecho hispano-alemán con la Universidad de Bayre'),
(28, 'Educación Social'),
(29, 'Finanzas y Contabilidad'),
(30, 'Relaciones Internacionales'),
(31, 'Relaciones Internacionales + Ciencias Políticas y '),
(32, 'Relaciones Internacionales + Derecho'),
(33, 'Relaciones Laborales y Recursos Humanos'),
(34, 'Sociología'),
(35, 'Trabajo Social'),
(36, 'Trabajo Social + Educación Social'),
(37, 'Trabajo Social + Sociología'),
(38, 'Fisioterapia (centro adscrito)'),
(39, 'Nutrición Humana y Dietética'),
(40, 'Ingeniería Agrícola + Ciencias Ambientales (US-UPO'),
(41, 'Ingeniería Informática en Sistemas de Información'),
(42, 'Biotecnología'),
(43, 'Ciencias Ambientales'),
(44, 'Ciencias Ambientales + Geografía e Historia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intereses`
--

CREATE TABLE `intereses` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `intereses`
--

INSERT INTO `intereses` (`id`, `nombre`) VALUES
(1, 'Cine'),
(2, 'Música'),
(3, 'Deportes'),
(4, 'Lectura'),
(5, 'Viajes'),
(6, 'Cocina'),
(7, 'Tecnología');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL,
  `remitente_id` int(11) NOT NULL,
  `destinatario_id` int(11) NOT NULL,
  `texto` varchar(1000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personalidades`
--

CREATE TABLE `personalidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personalidades`
--

INSERT INTO `personalidades` (`id`, `nombre`) VALUES
(1, 'Introvertido'),
(2, 'Extrovertido'),
(3, 'Alegre'),
(4, 'Serio'),
(5, 'Responsable'),
(6, 'Creativo'),
(7, 'Seguro'),
(8, 'Dubitativo'),
(9, 'Dominante'),
(10, 'Sumiso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas_de_credito`
--

CREATE TABLE `tarjetas_de_credito` (
  `id_tarjeta` int(11) NOT NULL,
  `titular` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `numero_tarjeta` text NOT NULL,
  `mes` varchar(2) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `anio` varchar(4) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cvv` text NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tarjetas_de_credito`
--

INSERT INTO `tarjetas_de_credito` (`id_tarjeta`, `titular`, `numero_tarjeta`, `mes`, `anio`, `cvv`, `usuario_id`) VALUES
(7, 'Alejandro Rivas Garcia', '1234 1234 4321 4321', '04', '2027', '324', 13),
(8, 'Ana Rodriguez', '4535 2423 4134 3523', '10', '2028', '432', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `DNI` varchar(50) DEFAULT NULL,
  `edad` int(11) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `biografia` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `orientacion` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `foto_perfil` varchar(500) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `facultad_id` int(11) DEFAULT NULL,
  `idioma` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `rol` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Free',
  `ocupacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `apellidos`, `DNI`, `edad`, `correo`, `password`, `genero`, `biografia`, `orientacion`, `foto_perfil`, `fecha_registro`, `facultad_id`, `idioma`, `rol`, `ocupacion`) VALUES
(1, 'Matero', 'Fran', 'Nuñez', '12345678A', 25, 'sexmatero@gmail.com', 'matero', 'Hombre', 'Soy paraete', 'Heterosexual', '/Fotos_usuarios/materin.png', '2023-04-28 12:43:03', 1, 'Español', 'Admin', 'Estudiante'),
(3, 'Lagarin', 'Jose Antonio', 'Lagares', NULL, 28, 'lagarin@gmail.com', 'lagarin', 'Hombre', 'Me gusta PA, solo PA', 'Bisexual', '/Fotos_usuarios/lagares.png', '2023-04-28 12:43:03', 3, 'Español', 'Free', 'Profesor'),
(5, 'Aeme', 'Antonio Manuel', 'Mérida Borrero', '12836728A', 22, 'anmamebo2001@gmail.com', 'aemetito', 'Hombre', 'No he sabido hacer una biografía nunca no va a ser este el caso ;), busco amistad y lo que surja jeje. Salir a tomar una cervecita lo mejor y si es contigo ya ni te cuento.', 'Heterosexual', '/Fotos_usuarios/aeme.png', '2023-05-05 01:48:44', 41, 'Español', 'Premium', 'Estudiante'),
(9, 'Pepe69', 'Pepe', 'Torres', NULL, 30, 'pepetorres@gmail.com', 'pepe', 'Hombre', 'Me gustan los drones', 'Heterosexual', '/Fotos_usuarios/7cdafd0d4d9f47a081713ec4460add0f.png', '2023-05-31 19:44:31', 41, 'Español', 'Free', 'Profesor'),
(10, 'juano', 'Juan', 'Moreno', NULL, 18, 'juan@upo.com', 'juan', 'Hombre', 'Soy el guapo de mis amigos, asique si eres fea, tu match debe ser Carlos.', 'Heterosexual', '/Fotos_usuarios/79d61c789b214bf4ad83ff39a49825ff.PNG', '2023-05-31 20:16:27', 41, 'Español', 'Free', 'Estudiante'),
(11, 'lauramelgar', 'Laura', 'Melgar', NULL, 28, 'lauramelgar@gmail.com', 'laura', 'Mujer', 'Buscando compañía para crear recuerdos inolvidables :)', 'Heterosexual', '/Fotos_usuarios/862742aa2f344232ae2814abeb636e9e.jpg', '2023-05-31 20:46:09', 41, 'Español', 'Free', 'Profesor'),
(12, 'victoryisus', 'Victor', 'Reina Lopez', NULL, 22, 'victor@gmail.com', 'victor', 'Hombre', 'Soy un entusiasta de los coches desde que aprendí a decir \"V8\". Me encanta el olor a gasolina, el sonido de un motor rugiendo y la emoción de una buena carrera. A veces mi coche y yo tenemos discusiones, pero al final siempre llegamos a un acuerdo: yo lo limpio y él me lleva a donde quiero ir.', 'Heterosexual', '/Fotos_usuarios/d4687dc13adc47fdb09599ead9f8c86a.JPG', '2023-05-31 21:28:01', 41, 'Español', 'Free', 'Estudiante'),
(13, 'alervgr', 'Alejandro', 'Rivas García', '87656787N', 22, 'alervgr@gmail.com', 'alesito', 'Hombre', 'Busco moza con tierras y un mercedes', 'Heterosexual', '/Fotos_usuarios/fff11bfa9a1e4c5098479e05e14548b0.jpg', '2023-05-31 21:34:31', 41, 'Español', 'Free', 'Estudiante'),
(14, 'laura', 'Laura', 'Gómez', '87656783K', 25, 'laugv4@gmail.com', 'laura', 'Mujer', 'Hola :)', 'Heterosexual', '/Fotos_usuarios/f12c98462b4648a49b5e95e5784cab85.jpg', '2023-05-31 21:36:31', 41, 'Español', 'Free', 'Estudiante'),
(15, 'pablosg', 'Pablo', 'Sánchez Gómez', NULL, 22, 'pablosg@gmail.com', 'pablosg', 'Hombre', 'Hola', 'Heterosexual', '/Fotos_usuarios/5db3f4db427642a39753635cd9d87b25.png', '2023-06-01 18:54:53', 41, 'Español', 'Free', 'Estudiante'),
(16, 'anarodriguez', 'Ana', 'Rodriguez', NULL, 25, 'anarodriguez@gmail.com', 'ana', 'Mujer', 'Busco una pareja estable, con ganas de pasarlo bien :)', 'Bisexual', '/Fotos_usuarios/492b5fabfea34fefb1b3a472d9e8e979.png', '2023-06-04 15:11:55', 18, 'Español', 'Free', 'Estudiante'),
(17, 'valeriacolorado', 'Valeria', 'Colorado', NULL, 24, 'valeriacol@gmail.com', 'valeria', 'Mujer', 'Amante de las aventuras al aire libre, buscando a alguien con quien explorar el mundo y compartir risas interminables', 'Bisexual', '/Fotos_usuarios/20e5c880db5f4cdc9c455cf028ae3beb.png', '2023-06-04 15:16:22', 40, 'Español', 'Free', 'Estudiante'),
(18, 'rebecruz', 'Rebeca', 'Cruz', NULL, 24, 'rebecacruz@gmail.com', 'rebeca', 'Mujer', 'Entusiasta de los animales y protectora de la naturaleza, buscando a alguien que comparta mi pasión por el medio ambiente y los seres vivos', 'Heterosexual', '/Fotos_usuarios/69e8f321ab4a4b9abb57737aacfa8b37.png', '2023-06-04 15:18:30', 17, 'Español', 'Free', 'Estudiante'),
(19, 'luciacaballero', 'Lucia', 'Caballero', NULL, 24, 'luciacaballero@gmail.com', 'lucia', 'Mujer', 'Amante de las series y los maratones de Netflix, buscando a alguien con quien compartir sofá, mantas y risas en las noches de maratón', 'Heterosexual', '/Fotos_usuarios/24cf45ca07e94c7397b2c00c12d4c75a.png', '2023-06-04 15:20:22', 39, 'Español', 'Free', 'Estudiante'),
(20, 'sergiochacon', 'Sergio', 'Chacón', NULL, 24, 'sergiochacon@gmail.com', 'sergio', 'Hombre', 'Fanático de la música en vivo y los festivales, buscando a alguien que quiera bailar sin parar y crear recuerdos inolvidables juntos', 'Bisexual', '/Fotos_usuarios/b0cad14bd45b4540b3fff02ef87d74ad.png', '2023-06-04 15:22:01', 19, 'Español', 'Free', 'Estudiante'),
(21, 'joaorocha', 'Joao', 'Rocha', NULL, 26, 'joao11@gmail.com', 'joao', 'Hombre', 'Apasionado por el arte y la fotografía, buscando a alguien que quiera ser mi musa y capturar momentos hermosos juntos', 'Homosexual', '/Fotos_usuarios/0da2868d324f42a797c8fc84cedbdbd7.png', '2023-06-04 15:24:14', 7, 'Español, Brasileño', 'Free', 'Estudiante'),
(22, 'mjflores', 'Manuel Jesús', 'Flores', '47356783L', 23, 'mjflomon@alu.upo.es', 'mjflores', 'Hombre', 'Vendo Opel Corsa', 'Heterosexual', '/Fotos_usuarios/1414910181f645119f9b26af6428b937.png', '2023-06-04 15:32:57', 41, 'Español', 'Free', 'Estudiante'),
(23, 'pacomartinez', 'Francisco', 'Martínez Álvarez', NULL, 43, 'paquito@gmail.com', 'paco', 'Hombre', 'Busco chica que le mole la feria y el cachondeo', 'Heterosexual', '/Fotos_usuarios/f6b97d85fe824eb884ccd65e53f0cb66.png', '2023-06-04 15:36:45', 41, 'Español', 'Free', 'Profesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_intereses`
--

CREATE TABLE `usuario_intereses` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `interes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_intereses`
--

INSERT INTO `usuario_intereses` (`id`, `usuario_id`, `interes_id`) VALUES
(38, 1, 3),
(39, 1, 5),
(40, 1, 7),
(44, 3, 7),
(45, 9, 1),
(46, 9, 5),
(47, 9, 7),
(48, 9, 1),
(49, 9, 5),
(50, 9, 7),
(51, 9, 1),
(52, 9, 5),
(53, 9, 7),
(54, 10, 3),
(55, 11, 1),
(56, 11, 2),
(57, 11, 5),
(58, 11, 7),
(70, 12, 2),
(71, 12, 3),
(72, 12, 5),
(73, 12, 7),
(74, 13, 1),
(75, 13, 2),
(76, 13, 5),
(77, 13, 7),
(78, 14, 3),
(79, 14, 4),
(80, 14, 5),
(81, 14, 6),
(82, 5, 1),
(83, 5, 2),
(84, 5, 3),
(85, 5, 4),
(86, 5, 5),
(87, 5, 6),
(88, 5, 7),
(89, 15, 1),
(90, 15, 2),
(91, 15, 3),
(92, 15, 5),
(93, 15, 7),
(94, 16, 1),
(95, 16, 2),
(96, 16, 4),
(97, 16, 5),
(98, 16, 6),
(99, 17, 1),
(100, 17, 2),
(101, 17, 3),
(102, 17, 4),
(103, 17, 5),
(104, 17, 6),
(105, 17, 7),
(106, 18, 1),
(107, 18, 2),
(108, 18, 4),
(109, 18, 5),
(110, 19, 1),
(111, 19, 2),
(112, 19, 4),
(113, 19, 6),
(114, 19, 7),
(115, 20, 1),
(116, 20, 2),
(117, 20, 3),
(118, 20, 6),
(119, 20, 7),
(120, 21, 1),
(121, 21, 2),
(122, 21, 3),
(123, 21, 6),
(124, 21, 7),
(125, 22, 1),
(126, 22, 2),
(127, 22, 3),
(128, 22, 4),
(129, 22, 5),
(130, 22, 6),
(131, 22, 7),
(132, 23, 1),
(133, 23, 2),
(134, 23, 4),
(135, 23, 5),
(136, 23, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_personalidades`
--

CREATE TABLE `usuario_personalidades` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `personalidad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_personalidades`
--

INSERT INTO `usuario_personalidades` (`id`, `usuario_id`, `personalidad_id`) VALUES
(30, 1, 4),
(31, 1, 9),
(32, 1, 6),
(33, 1, 1),
(34, 1, 8),
(40, 3, 3),
(41, 3, 10),
(42, 3, 5),
(43, 3, 1),
(44, 3, 7),
(45, 9, 3),
(46, 9, 10),
(47, 9, 6),
(48, 9, 1),
(49, 9, 8),
(50, 9, 3),
(51, 9, 10),
(52, 9, 6),
(53, 9, 1),
(54, 9, 8),
(55, 9, 3),
(56, 9, 10),
(57, 9, 6),
(58, 9, 1),
(59, 9, 8),
(60, 10, 3),
(61, 10, 9),
(62, 10, 5),
(63, 10, 2),
(64, 10, 8),
(65, 11, 4),
(66, 11, 10),
(67, 11, 5),
(68, 11, 2),
(69, 11, 7),
(80, 12, 4),
(81, 12, 9),
(82, 12, 5),
(83, 12, 1),
(84, 12, 7),
(85, 13, 4),
(86, 13, 9),
(87, 13, 5),
(88, 13, 1),
(89, 13, 8),
(90, 14, 4),
(91, 14, 9),
(92, 14, 6),
(93, 14, 2),
(94, 14, 7),
(95, 5, 3),
(96, 5, 10),
(97, 5, 5),
(98, 5, 2),
(99, 5, 8),
(100, 15, 4),
(101, 15, 10),
(102, 15, 5),
(103, 15, 2),
(104, 15, 8),
(105, 16, 3),
(106, 16, 9),
(107, 16, 5),
(108, 16, 1),
(109, 16, 8),
(110, 17, 3),
(111, 17, 9),
(112, 17, 6),
(113, 17, 1),
(114, 17, 8),
(115, 18, 4),
(116, 18, 10),
(117, 18, 5),
(118, 18, 1),
(119, 18, 7),
(120, 19, 3),
(121, 19, 9),
(122, 19, 5),
(123, 19, 1),
(124, 19, 8),
(125, 20, 4),
(126, 20, 10),
(127, 20, 6),
(128, 20, 2),
(129, 20, 8),
(130, 21, 3),
(131, 21, 10),
(132, 21, 5),
(133, 21, 1),
(134, 21, 7),
(135, 22, 4),
(136, 22, 10),
(137, 22, 5),
(138, 22, 2),
(139, 22, 7),
(140, 23, 4),
(141, 23, 10),
(142, 23, 5),
(143, 23, 2),
(144, 23, 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario1_id` (`usuario1_id`),
  ADD KEY `usuario2_id` (`usuario2_id`);

--
-- Indices de la tabla `coincidencias`
--
ALTER TABLE `coincidencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario1_id` (`usuario1_id`),
  ADD KEY `usuario2_id` (`usuario2_id`);

--
-- Indices de la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `intereses`
--
ALTER TABLE `intereses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `remitente_id` (`remitente_id`),
  ADD KEY `destinatario_id` (`destinatario_id`);

--
-- Indices de la tabla `personalidades`
--
ALTER TABLE `personalidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tarjetas_de_credito`
--
ALTER TABLE `tarjetas_de_credito`
  ADD PRIMARY KEY (`id_tarjeta`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facultad_id` (`facultad_id`);

--
-- Indices de la tabla `usuario_intereses`
--
ALTER TABLE `usuario_intereses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `interes_id` (`interes_id`);

--
-- Indices de la tabla `usuario_personalidades`
--
ALTER TABLE `usuario_personalidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `personalidad_id` (`personalidad_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `coincidencias`
--
ALTER TABLE `coincidencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT de la tabla `facultades`
--
ALTER TABLE `facultades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `intereses`
--
ALTER TABLE `intereses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `personalidades`
--
ALTER TABLE `personalidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tarjetas_de_credito`
--
ALTER TABLE `tarjetas_de_credito`
  MODIFY `id_tarjeta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `usuario_intereses`
--
ALTER TABLE `usuario_intereses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de la tabla `usuario_personalidades`
--
ALTER TABLE `usuario_personalidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_ibfk_1` FOREIGN KEY (`usuario1_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `chats_ibfk_2` FOREIGN KEY (`usuario2_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `coincidencias`
--
ALTER TABLE `coincidencias`
  ADD CONSTRAINT `coincidencias_ibfk_1` FOREIGN KEY (`usuario1_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `coincidencias_ibfk_2` FOREIGN KEY (`usuario2_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `mensajes_ibfk_2` FOREIGN KEY (`remitente_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `mensajes_ibfk_3` FOREIGN KEY (`destinatario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `tarjetas_de_credito`
--
ALTER TABLE `tarjetas_de_credito`
  ADD CONSTRAINT `tarjetas_de_credito_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`facultad_id`) REFERENCES `facultades` (`id`);

--
-- Filtros para la tabla `usuario_intereses`
--
ALTER TABLE `usuario_intereses`
  ADD CONSTRAINT `usuario_intereses_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `usuario_intereses_ibfk_2` FOREIGN KEY (`interes_id`) REFERENCES `intereses` (`id`);

--
-- Filtros para la tabla `usuario_personalidades`
--
ALTER TABLE `usuario_personalidades`
  ADD CONSTRAINT `usuario_personalidades_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `usuario_personalidades_ibfk_2` FOREIGN KEY (`personalidad_id`) REFERENCES `personalidades` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
