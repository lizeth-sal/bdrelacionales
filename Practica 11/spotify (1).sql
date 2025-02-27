-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-02-2025 a las 20:35:01
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artisacanciones`
--

CREATE TABLE `artisacanciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `artisacanciones`
--

INSERT INTO `artisacanciones` (`id`, `artista_id`, `canciones_id`) VALUES
(1, 3, 81),
(2, 2, 11),
(3, 9, 50),
(4, 6, 23),
(5, 7, 51),
(6, 1, 74),
(7, 5, 67),
(8, 4, 31),
(9, 8, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Alfredo Olivas', 'Es un cantautor regional mexicano , especializado en los estilos de banda ,'),
(2, 'La adictiva', 'Es una de las bandas más representativas del género sinaloense.'),
(3, 'Benson Boone', 'Es una estrella en ascenso que actualmente disfruta del éxito en las listas oficiales de singles con su último tema,\"Beautiful Things\"'),
(4, 'Julión Álvarez y su Norteño Banda', 'PRESENTE es el más reciente álbum de Julión Álvarez y su Norteño Banda, lanzado en noviembre de 2023. Este disco consta de 12 melodías que exploran temas de amor, desamor y sacrificio.\r\n'),
(5, ' Cornelio Vega y su Dinastía ', 'Es una agrupación del regional mexicano originaria de Ciudad Obregón, Sonora liderada por Cornelio Vega.'),
(6, 'Milo j', 'Es un rapero, cantante y compositor argentino. Logró reconocimiento internacional en 2023 con la canción \" Milo J: Bzrp Music Sessions, Vol.'),
(7, 'Eminem', 'Es un cantante y compositor norteamericano, una de las principales estrellas de la historia del rap. '),
(8, 'Tate McRae', 'Tatum Rosner McRae, ​ conocida artísticamente como Tate McRae, es una cantante, compositora, bailarina y actriz de voz canadiense.'),
(9, 'Young Miko', 'María Victoria Ramírez de Arellano Cardona conocida artísticamente como Young Miko, es una cantante y compositora puertorriqueña.\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(4) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'One Day', 8, '00:03:22', '2017-12-24', 1, 'One_Day.png'),
(2, 'Teenage Mind', 8, '00:02:35', '2018-08-17', 1, 'Teenage_Mind.png'),
(3, 'hate myself', 8, '00:02:53', '2022-05-27', 1, 'hate_myself.png'),
(4, 'feel like shit', 8, '00:03:23', '2021-11-11', 1, 'feel_like_shit.png'),
(5, 'exes', 8, '00:02:39', '2023-11-17', 1, 'exes.png'),
(6, 'rubberband', 8, '00:02:27', '2021-01-20', 1, 'rubberband.png'),
(7, 'you broke me first', 8, '00:02:50', '2020-04-03', 1, 'you_broke_me_first.png'),
(8, 'uh oh', 8, '00:02:49', '2022-09-30', 1, 'uh_oh.png'),
(9, 'that way', 8, '00:02:55', '2020-04-17', 1, 'that_way.png'),
(10, 'greedy', 8, '00:02:11', '2023-09-15', 1, 'greedy.png'),
(11, 'Disfruté Engañarte', 4, '00:02:21', '2014-01-01', 1, 'Disfruté_Engñarte.png'),
(12, 'Un Fin en Culiacán', 4, '00:02:34', '2014-01-01', 1, 'Un_Fin_en_Culiacán.png'),
(13, 'El Viejón', 4, '00:02:53', '2016-09-18', 1, 'El_Viejón.png'),
(14, 'JGL', 4, '00:02:38', '2022-02-18', 1, 'JGL.png'),
(15, 'La Pelinegra', 4, '00:02:35', '2023-07-26', 1, 'La_Pelinegra.png'),
(16, 'Después de Ti ¿Quién?', 4, '00:03:54', '2014-01-01', 1, 'Después_de_Ti_¿Quién?.png'),
(17, 'Gente Corriente', 4, '00:02:13', '2023-03-10', 1, 'Gente_Corriente.png'),
(18, 'Si Ya Lo Sabe Dios', 4, '00:02:44', '2014-12-17', 1, 'Si_Ya_Lo_Sabe_Dios.png'),
(19, 'Te Dirán', 4, '00:03:15', '2016-11-18', 1, 'Te_Dirán.png'),
(20, 'Hombre Libre', 4, '00:03:16', '2014-12-17', 1, 'Hombre_Libre.png'),
(21, '3 PECADOS DESPUES...', 11, '00:01:58', '2024-07-11', 1, '3_PECADOS_DESPUES....png'),
(22, 'MORNING', 11, '00:02:03', '2024-01-11', 1, 'MORNING.png'),
(23, 'M.A.I', 5, '00:03:04', '2023-09-30', 1, 'M.A.I.png'),
(24, 'Milo J: Bzrp Music Sessions, Vol. 57', 5, '00:03:09', '2023-08-04', 1, 'Milo J: Bzrp Music Sessions, Vol. 57.png'),
(25, 'AL BORDE ', 5, '00:02:28', '2023-05-11', 1, 'AL_BORDE.png'),
(26, 'Penas de Antaño', 5, '00:03:21', '2024-10-04', 1, 'Penas_de_Antaño.png'),
(27, 'Toy en el Mic', 5, '00:02:17', '2023-10-04', 1, 'Toy_en_el_Mic.png'),
(28, 'No soy Eterno', 5, '00:02:31', '2023-10-04', 1, 'No_soy_Eterno.png'),
(29, 'Fruto', 5, '00:02:12', '2023-10-04', 1, 'Fruto.png'),
(30, 'Rara Vez', 5, '00:02:08', '2023-02-09', 1, 'Rara_Vez.png'),
(31, 'Rey Sin Reyna', 4, '00:02:30', '2024-09-10', 1, 'Rey_Sin_Reyna.png'),
(32, 'Regalo De Dios', 4, '00:03:05', '2023-11-17', 1, 'Regalo_De_Dios.png'),
(33, 'Ojos Verdes', 4, '00:03:57', '2013-09-17', 1, 'Ojos_Verdes.png'),
(34, 'Y Me Da Vergüenza', 4, '00:03:02', '2013-10-17', 1, 'Y_Me_Da_Vergüenza.png'),
(35, 'Corazón Mágico', 4, '00:03:13', '2008-01-01', 1, 'Corazón_Mágico.png'),
(36, 'Fuentes De Ortiz', 4, '00:03:33', '2023-01-01', 1, 'Fuentes_De_Ortiz.png'),
(37, 'Que Te Vaya Bien ', 4, '00:02:31', '2022-08-19', 1, 'Que_Te_Vaya_Bien.png'),
(38, 'Aquí Algo Cambió', 4, '00:02:45', '2022-11-11', 1, 'Aquí_Algo_Cambió.png'),
(39, 'Pongámonos De Acuerdo', 4, '00:02:41', '2015-03-23', 1, 'Pongámonos_De_Acuerdo.png'),
(40, 'El Amor De Su Vida', 4, '00:03:39', '2015-03-23', 1, 'El_Amor_De_Su_Vida.png'),
(41, 'CLASSY 101', 10, '00:03:15', '2023-03-31', 1, 'CLASSY_101.png'),
(42, 'En Esta Boca', 6, '00:02:50', '2024-02-23', 1, 'En_Esta_Boca.png'),
(43, 'Lisa', 5, '00:02:39', '2023-03-01', 1, 'Lisa.png'),
(44, 'ID', 5, '00:03:33', '2023-06-02', 1, 'ID.png'),
(45, 'Rookie of the Year', 5, '00:02:49', '2024-04-05', 1, 'Rookie_of_the_Year.png'),
(46, 'Vendetta', 5, '00:02:56', '2021-08-06', 1, 'Vendetta.png'),
(47, 'Bi', 5, '00:03:05', '2021-07-16', 1, 'Bi.png'),
(48, 'Riri', 5, '00:02:14', '2022-07-08', 1, 'Riri.png'),
(49, 'Sale el Sol', 5, '00:03:08', '2022-12-05', 1, 'Sale_el_Sol.png'),
(50, 'Young Miko: Bzrp Music Sessions, Vol. 58', 5, '00:03:07', '2024-01-10', 1, 'Young Miko: Bzrp Music Sessions, Vol. 58.png'),
(51, 'Somebody Save Me', 2, '00:03:50', '2024-07-19', 1, 'Somebody_Save_Me.png'),
(52, 'Mockingbird', 2, '00:04:10', '2004-12-14', 1, 'Mockingbird.png'),
(53, 'Houdini', 2, '00:03:47', '2020-01-17', 1, 'Houdini.png'),
(54, 'Love The Way You Lie', 11, '00:04:23', '2010-08-09', 1, 'Love_The_Way_You_Lie.png'),
(55, 'Louse Yourself ', 11, '00:05:22', '2002-10-28', 1, 'Louse_Yourself.png'),
(56, 'Superman', 2, '00:05:50', '2002-05-22', 1, 'Superman.png'),
(57, 'River', 11, '00:03:41', '2017-11-15', 1, 'River.png'),
(58, 'The Real Slim Shady', 11, '00:04:44', '2000-05-23', 1, 'The_Real_Slim_Shady.png'),
(59, 'Stan', 11, '00:06:44', '0200-11-25', 1, 'Stan.png'),
(60, 'Spend Some Time', 11, '00:05:10', '2004-12-06', 1, 'Spend_Some_Time.png'),
(61, 'No Me Hubiera Enamorado ', 7, '00:03:27', '2021-02-05', 1, 'No_Me_Hubiera_Enamorado.png\r\n'),
(62, 'Ven', 7, '00:02:47', '2019-07-28', 1, 'Ven.png'),
(63, 'Fue un Error Amarte', 7, '00:02:44', '2018-08-17', 1, 'Fue_un_Error_Amarte.png'),
(64, '15 Besos', 7, '00:03:21', '2021-05-28', 1, '15_Besos.png'),
(65, 'El Problema', 7, '00:03:04', '2020-12-03', 1, 'El_Problema.png'),
(66, 'El Primero', 7, '00:02:42', '2021-09-10', 1, 'El_Primero.png'),
(67, 'Cambio de Papeles ', 7, '00:02:25', '2021-03-18', 1, 'Cambio_de_Papeles.png'),
(68, 'Como Le Explicó', 7, '00:02:55', '2021-09-02', 1, 'Como_Le_Explicó.png'),
(69, 'Ven Conmigo', 7, '00:02:27', '2021-08-05', 1, 'Ven_Conmigo.png'),
(70, 'Estoy Enamorado', 7, '00:02:44', '2021-05-14', 1, 'Estoy_Enamorado.png'),
(71, 'El Precio De La Soledad', 7, '00:03:06', '2016-08-19', 1, 'El_Precio_De_La_Soledad.png'),
(72, 'Vete', 7, '00:03:05', '2016-08-19', 1, 'Vete.png'),
(73, 'En Definitiva', 7, '00:03:36', '2017-10-19', 1, 'En_Definitiva.png'),
(74, 'El Paciente', 7, '00:03:31', '2016-11-11', 1, 'El_Paciente.png'),
(75, 'Yo Todo Lo Doy', 7, '00:03:22', '2019-02-27', 1, 'Yo_Todo_Lo_Doy.png'),
(76, 'El Vals del Olvido', 7, '00:03:29', '2015-11-08', 1, 'El_Vals_del_Olvido.png'),
(77, 'El Malo De Culiacán', 7, '00:03:35', '2016-05-06', 1, 'El_Malo_De_Culiacán.png'),
(78, 'El Sillón', 7, '00:03:19', '2017-03-30', 1, 'El_Sillón.png'),
(79, 'Vaivén', 7, '00:03:12', '2019-03-14', 1, 'Vaivén.png'),
(80, 'No', 7, '00:03:07', '2016-08-04', 1, 'No.png'),
(81, 'Beautiful Things', 8, '00:03:00', '2024-01-19', 1, 'Beautiful_Things.png'),
(82, 'Ghost Town', 12, '00:03:13', '2021-10-15', 1, 'Ghost_Town.png'),
(83, 'Lovely Darling', 8, '00:02:52', '2023-05-05', 1, 'Lovely_Darling.png'),
(84, 'Cry', 12, '00:03:06', '2024-04-04', 1, 'Cry.png'),
(85, 'Nights Like These', 8, '00:02:52', '2022-07-29', 1, 'Nights_Like_These.png'),
(86, 'Before You', 8, '00:03:07', '2022-10-22', 1, 'Before_You.png'),
(87, 'In the Stars', 12, '00:03:36', '2022-04-29', 1, 'In_the_Stars.png'),
(88, 'Work of Art', 12, '00:02:49', '2024-04-05', 1, 'Work_of_Art.png'),
(89, 'Suggar Sweet', 8, '00:02:49', '2023-03-03', 1, 'Suggar_Sweet.png'),
(90, 'Pretty Slowly', 3, '00:04:21', '2024-08-15', 1, 'Pretty_Slowly.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario_id`, `canciones_id`) VALUES
(1, 4, 81),
(2, 4, 50),
(29, 4, 7),
(30, 4, 67);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'Clasica'),
(2, 'Hip Hop\r\n'),
(3, 'Folk Rock'),
(4, 'Banda Sinaloense '),
(5, 'Latin trap\r\n'),
(6, 'Bachata'),
(7, 'Banda'),
(8, 'Pop'),
(9, 'Corridos'),
(10, 'Reggaetón'),
(11, 'Rap'),
(12, 'Pop Rock');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'INDIVIDUAL\r\n1 cuenta Premium\r\nCancela en cualquier momento\r\nPago por suscripción o pago único', 129),
(2, 'ESTUDIANTES\r\n1 cuenta Premium verificada\r\nDescuento para estudiantes que cumplen con los requisitos\r', 69),
(3, 'DUO\r\n2 cuentas Premium\r\nCancela en cualquier momento\r\nPago por suscripción o pago único', 169),
(4, 'FAMILIAR\r\nHasta 6 cuentas Kids o Premium\r\nControla el contenido marcado como explícito.\r\nAcceso a Sp', 199),
(5, 'La versión gratuita de Spotify cuenta con anuncios, algo que no ocurre en ninguno de los planes de p', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcaciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `usuario_id`, `duracion`, `totalcaciones`, `descripcion`, `publico`) VALUES
(1, 'tvd', 4, '08:58:00', 142, 'i will always choose you', 1),
(2, 'RDA', 4, '02:28:00', 46, '+', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `playlistcanciones`
--

INSERT INTO `playlistcanciones` (`id`, `playlist_id`, `canciones_id`, `usuario_id`) VALUES
(1, 1, 86, 4),
(2, 2, 50, 4),
(3, 1, 31, 4),
(4, 1, 51, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Juan Trejo', 'juan.trejo23@cetis107.edu.mx', 2),
(2, 'Yuriel  Torres', 'yuriel.torres23@cetis107.edu.mx', 3),
(3, 'Esteban Zavala', 'esteban.valenzuela23@cetis107.edu.mx', 3),
(4, 'Lizeth Salcido', 'lizeth.salcido23@cetis107.edu.mx', 1),
(5, 'Isaac Salomon', 'isaac.salomon23@cetis107.edu.mx', 1),
(6, 'Ethan Torres', 'Ethan.torres@gmail.com', 4),
(7, 'Luis Vega', 'luis.vega23@cetis107.edu.mx', 3),
(8, 'Hanny Garcia', 'hanny.garcia23@cetis107.edu.mx', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD CONSTRAINT `artisacanciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artisacanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
