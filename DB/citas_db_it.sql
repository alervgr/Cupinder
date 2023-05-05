-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2023 a las 04:33:59
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
(1, 1, 2),
(2, 1, 3),
(3, 3, 1),
(4, 2, 1),
(5, 5, 3),
(6, 3, 5);

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
(1, 1, 2, 0.85, '2023-04-28 12:47:05', 0, 0),
(2, 1, 3, 0.6, '2023-04-28 12:47:05', 0, 0),
(3, 2, 3, 0.8, '2023-04-28 12:47:05', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades`
--

CREATE TABLE `facultades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
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
  `nombre` varchar(50) NOT NULL
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

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id`, `remitente_id`, `destinatario_id`, `texto`, `fecha_envio`) VALUES
(1, 1, 2, 'Hola, ¿cómo estás?', '2023-04-28 12:48:27'),
(2, 2, 1, 'Bien, gracias, ¿y tú?', '2023-04-28 12:48:27'),
(3, 1, 2, 'Muy bien, gracias', '2023-04-28 12:48:27'),
(4, 1, 3, 'Hola, ¿qué tal?', '2023-04-28 12:48:27'),
(5, 3, 1, 'Todo bien, gracias, ¿y tú?', '2023-04-28 12:48:27'),
(6, 1, 3, 'Bien también, gracias', '2023-04-28 12:48:27'),
(7, 3, 1, 'Illo!', '2023-05-05 00:36:01'),
(8, 3, 1, 'Quedamos?', '2023-05-05 00:36:38'),
(9, 1, 3, 'Jei', '2023-05-05 00:37:07'),
(10, 3, 1, 'Donde', '2023-05-05 00:38:01'),
(11, 3, 1, 'En mi caza', '2023-05-05 00:39:03'),
(12, 3, 1, 'O en la tuya', '2023-05-05 00:39:18'),
(13, 1, 3, 'En la tuya mano', '2023-05-05 00:39:29'),
(14, 3, 1, 'Illo', '2023-05-05 00:39:52'),
(15, 1, 3, 'Que que', '2023-05-05 00:40:01'),
(16, 3, 1, 'Gane', '2023-05-05 01:00:15'),
(32, 3, 1, 'Gane', '2023-05-05 01:12:24'),
(33, 5, 3, 'Buenas Lagares', '2023-05-05 02:20:34'),
(34, 3, 5, 'Illo!', '2023-05-05 02:27:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personalidades`
--

CREATE TABLE `personalidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
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
  `numero_tarjeta` text NOT NULL,
  `fecha_expiracion` date NOT NULL,
  `cvv` text NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tarjetas_de_credito`
--

INSERT INTO `tarjetas_de_credito` (`id_tarjeta`, `numero_tarjeta`, `fecha_expiracion`, `cvv`, `usuario_id`) VALUES
(1, '1234567812345678', '2025-06-30', '123', 1),
(2, '8765432187654321', '2024-10-31', '456', 2),
(3, '1111222233334444', '2023-12-31', '789', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `DNI` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `biografia` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `orientacion` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `foto_perfil` varchar(500) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `facultad_id` int(11) NOT NULL,
  `idioma` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `rol` varchar(10) NOT NULL DEFAULT 'Free',
  `ocupacion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `apellidos`, `DNI`, `edad`, `correo`, `password`, `genero`, `biografia`, `orientacion`, `foto_perfil`, `fecha_registro`, `facultad_id`, `idioma`, `rol`, `ocupacion`) VALUES
(1, 'Matero', 'Fran', 'Nuñez', '12345678A', 25, 'sexmatero@gmail.com', 'matero', 'Hombre', 'Soy paraete', 'Heterosexual', '/Fotos_usuarios/materin.png', '2023-04-28 12:43:03', 1, 'Español', 'Admin', 'Estudiante'),
(2, 'user2', 'María', 'López', '87654321B', 32, 'maria.lopez@example.com', 'password2', 'Mujer', '', '', NULL, '2023-04-28 12:43:03', 2, '', 'Premium', 'Estudiante'),
(3, 'Lagarin', 'Jose Antonio', 'Lagares', '24681012C', 28, 'lagarin@gmail.com', 'lagarin', 'Hombre', 'Me gusta PA, solo PA', '', '/Fotos_usuarios/lagares.png', '2023-04-28 12:43:03', 3, '', 'Free', 'Profesor'),
(4, 'user4', 'Ana', 'Fernández', '10121416D', 49, 'ana.fernandez@example.com', 'password4', 'Mujer', '', '', NULL, '2023-04-28 12:43:03', 4, '', 'Free', 'Profesor'),
(5, 'Aeme', 'Antonio Manuel', 'Mérida Borrero', '12836728A', 22, 'anmamebo2001@gmail.com', 'aemetito', 'Hombre', 'No he sabido hacer una biografía nunca no va a ser este el caso ;), busco amistad y lo que surja jeje. Salir a tomar una cervecita lo mejor y si es contigo ya ni te cuento.', 'Heterosexual', '/Fotos_usuarios/aeme.png', '2023-05-05 01:48:44', 41, 'Español', 'Premium', 'Estudiante');

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
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 2),
(5, 2, 4),
(6, 2, 5),
(7, 3, 3),
(8, 3, 5),
(9, 3, 6),
(10, 4, 1),
(11, 4, 3),
(12, 4, 5);

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
(1, 1, 1),
(2, 2, 4),
(3, 3, 2),
(4, 4, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `coincidencias`
--
ALTER TABLE `coincidencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `personalidades`
--
ALTER TABLE `personalidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tarjetas_de_credito`
--
ALTER TABLE `tarjetas_de_credito`
  MODIFY `id_tarjeta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario_intereses`
--
ALTER TABLE `usuario_intereses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuario_personalidades`
--
ALTER TABLE `usuario_personalidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
