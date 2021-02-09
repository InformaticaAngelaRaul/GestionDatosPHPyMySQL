-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-02-2021 a las 08:33:20
-- Versión del servidor: 10.5.8-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clase`
--
CREATE DATABASE IF NOT EXISTS `clase` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `clase`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(2) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(250) NOT NULL,
  `nota` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES
(4, 'asda', 'asd', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `index0`
--

CREATE TABLE `index0` (
  `ID` int(11) NOT NULL,
  `texto1` varchar(250) NOT NULL,
  `texto2` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `index0`
--

INSERT INTO `index0` (`ID`, `texto1`, `texto2`) VALUES
(1, '                                            ', '                                            ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `index1`
--

CREATE TABLE `index1` (
  `ID` int(9) NOT NULL,
  `texto_html1` varchar(250) NOT NULL,
  `texto_html2` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logins`
--

CREATE TABLE `logins` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `logins`
--

INSERT INTO `logins` (`id`, `user`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'raul', '1234', 'admin'),
(3, 'asd', '$2y$10$36dbT4S9TkC9MAQXLXvWdOyEQexcQ.XpBHnn8dcHRtMd1L.CO/Aqm', 'admin'),
(4, 'asd', '$2y$10$u3ClmSEc6zCj3gu3WNpXveSsYNkRRimftQhz/mzTSkpX4ryB7.ZT2', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logins1`
--

CREATE TABLE `logins1` (
  `id` int(11) NOT NULL,
  `user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `logins1`
--

INSERT INTO `logins1` (`id`, `user`, `password`, `role`) VALUES
(1, 'asdasd', 'asdasd', 'admin'),
(2, 'asd', 'asd', 'admin'),
(3, 'asd', 'asd', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `index0`
--
ALTER TABLE `index0`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `index1`
--
ALTER TABLE `index1`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logins1`
--
ALTER TABLE `logins1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `index0`
--
ALTER TABLE `index0`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `index1`
--
ALTER TABLE `index1`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `logins`
--
ALTER TABLE `logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `logins1`
--
ALTER TABLE `logins1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
