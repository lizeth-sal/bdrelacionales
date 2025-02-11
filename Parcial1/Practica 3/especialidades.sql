-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2025 a las 02:13:12
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Programacion ', 'Es el arte del proceso por el cual se limpia, codifica, traza y protege el código fuente de programas computacionales, en otras palabras, es indicarle a la computadora lo que tiene que hacer.'),
(2, 'Contabilidad', 'Proceso de registrar, clasificar, analizar, interpretar y comunicar la información financiera de una empresa.'),
(3, 'Electronica', 'Trata con circuitos eléctricos que involucran componentes eléctricos activos como tubos de vacío, transistores, diodos, circuitos integrados, optoelectrónica y sensores, asociados con componentes eléctricos pasivos y tecnologías de interconexión.'),
(4, 'Ofimatica', 'Conjunto de aplicaciones y herramientas informáticas diseñadas para facilitar y mejorar las tareas relacionadas con la creación, edición, almacenamiento y distribución de información en el entorno de una oficina o empresa.'),
(5, 'Diseño Grafico', 'Crean imágenes y diseños para algunos de los siguientes elementos: Identidad de marca de la empresa (logotipos, tipografía y paletas de colores) Interfaces de usuario en aplicaciones y sitios web. '),
(6, 'Construccion', 'Hacer obras duraderas, especialmente edificaciones, empleando para ello los saberes de la ingeniería, la arquitectura y el diseño');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
