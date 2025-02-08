-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 02:14:31
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
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(0, 'Emiliano', 'Ojeda Quintero', '23325061070702', '2008-04-28', 1, 'emiliano.ojeda23@cetis107.edu.mx', '6671016955'),
(1, 'Lizeth Abigail', 'Salcido Ramirez ', '23325061070721', '2008-03-13', 0, 'lizeth.salcido23@ceti107.edu.mx', '6671987119'),
(3, 'Juan Alberto ', 'Trejo Alvarado', '23325061070715', '2008-08-22', 1, 'juan.trejo23@cetis107.edu.mx', '6674911079'),
(4, 'Ever Yuriel', 'Torres Landeros ', '23325061070614', '2008-04-04', 1, 'ever.torres23cetis107.edu.mx', '6677309261'),
(5, 'Isaac', 'Salomon Rendon', '2332506170610', '2008-06-08', 1, 'isaac.salomon23@cetis107.edu.mx', '6677910586'),
(6, 'Ramon Esteban ', 'Valenzuela Zavala', '23325061070716', '2008-09-06', 1, 'ramon.valenzuela23@cetis107.edu.mx', '6672298375'),
(7, 'Victor Mamuel ', 'Diaz Gastelum', '23325061070728', '2008-09-28', 1, 'victor.diaz23@cetis107.edu.mx', '6677911274'),
(8, 'Santiago', 'Lopez Aispuro', '23325061070386', '2008-04-20', 1, 'lopezaispurosantiago@gmail.com', '6673309322'),
(9, 'Bayron Uriel', 'Estrada Camacho', '23325061070375', '2008-08-13', 1, 'bayron.estrada23@cetis107.edu.mx', '+1(909)5160134'),
(10, 'Paolo Nicholas ', 'Valdez Bernal', '233250610703260', '2008-10-30', 1, 'paolo.valdez23@cetis107.edu.mx', '6675412714'),
(11, 'Frida Sofia ', 'Sanches Valenzula', '23325061070611', '2008-01-10', 0, 'frida.sanchez23@cetis107.edu.mx', '6674087474'),
(12, 'Ryhanna Patricia ', 'Ramirez Montiel ', 'nulo', '2008-05-31', 0, 'ryhannaramirez7@gmail.com', '6672326904');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
