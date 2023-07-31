-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2023 a las 02:08:24
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `iddetalleventa` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidadproducto` int(11) NOT NULL,
  `precioventa` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`iddetalleventa`, `idventa`, `idproducto`, `cantidadproducto`, `precioventa`) VALUES
(1, 1, 1, 1, 32000),
(2, 1, 2, 1, 70000),
(3, 2, 1, 1, 32000),
(4, 2, 2, 1, 70000),
(5, 3, 4, 1, 32213),
(6, 3, 1, 1, 32000),
(7, 4, 4, 1, 32213),
(8, 4, 1, 1, 32000),
(9, 4, 2, 5, 70000),
(10, 5, 4, 1, 32213),
(11, 5, 1, 1, 32000),
(12, 5, 2, 5, 70000),
(13, 5, 1, 1, 32000),
(14, 6, 4, 1, 32213),
(15, 6, 1, 1, 32000),
(16, 6, 2, 5, 70000),
(17, 6, 1, 1, 32000),
(18, 6, 1, 1, 32000),
(19, 7, 4, 1, 32213),
(20, 7, 1, 1, 32000),
(21, 7, 2, 5, 70000),
(22, 7, 1, 1, 32000),
(23, 7, 1, 1, 32000),
(24, 8, 4, 1, 32213),
(25, 8, 1, 1, 32000),
(26, 8, 2, 5, 70000),
(27, 8, 1, 1, 32000),
(28, 8, 1, 1, 32000),
(29, 9, 4, 1, 32213),
(30, 9, 1, 1, 32000),
(31, 9, 2, 5, 70000),
(32, 9, 1, 1, 32000),
(33, 9, 1, 1, 32000),
(34, 9, 3, 20, 10560000),
(35, 10, 4, 1, 32213),
(36, 10, 1, 1, 32000),
(37, 10, 2, 5, 70000),
(38, 10, 1, 1, 32000),
(39, 10, 1, 1, 32000),
(40, 10, 3, 20, 10560000),
(41, 10, 3, 4, 10560000),
(42, 11, 6, 5, 230000),
(43, 12, 6, 5, 230000),
(44, 12, 2, 1, 70000),
(45, 12, 6, 1, 230000),
(46, 13, 6, 5, 230000),
(47, 13, 2, 1, 70000),
(48, 13, 6, 1, 230000),
(49, 13, 6, 1, 230000),
(50, 14, 2, 1, 70000),
(51, 15, 6, 1, 230000),
(52, 16, 1, 1, 32000),
(53, 16, 6, 1, 230000),
(54, 17, 1, 3, 32000),
(55, 17, 6, 1, 230000),
(56, 17, 2, 1, 70000),
(57, 18, 1, 3, 32000),
(58, 18, 6, 1, 230000),
(59, 18, 2, 1, 70000),
(60, 19, 1, 4, 32000),
(61, 19, 2, 1, 70000),
(62, 20, 1, 5, 32000),
(63, 20, 6, 15, 230000),
(64, 21, 1, 5, 32000),
(65, 21, 6, 15, 230000),
(66, 22, 1, 1, 32000),
(67, 22, 2, 3, 70000),
(68, 22, 1, 7, 32000),
(69, 23, 1, 1, 32000),
(70, 23, 2, 3, 70000),
(71, 23, 1, 7, 32000),
(72, 23, 1, 4, 32000),
(73, 24, 1, 1, 32000),
(74, 24, 2, 3, 70000),
(75, 24, 1, 7, 32000),
(76, 24, 1, 4, 32000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`iddetalleventa`),
  ADD KEY `venta detalle venta` (`idventa`),
  ADD KEY `detalle producto` (`idproducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `iddetalleventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalle producto` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `venta detalle venta` FOREIGN KEY (`idventa`) REFERENCES `ventas` (`idventa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
