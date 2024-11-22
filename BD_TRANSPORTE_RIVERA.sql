-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2024 a las 05:08:03
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_transporte_rivera`
--
CREATE DATABASE IF NOT EXISTS `bd_transporte_rivera` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `bd_transporte_rivera`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE `asignacion` (
  `id_conductor` int(75) DEFAULT NULL,
  `id_solicitud_acarreo` int(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario_conductor`
--

CREATE TABLE `comentario_conductor` (
  `id_comentario_conductor` int(75) NOT NULL,
  `comentario_conductor` varchar(500) DEFAULT NULL,
  `id_conductor` int(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario_usuario`
--

CREATE TABLE `comentario_usuario` (
  `id_comentario_usuario` int(75) DEFAULT NULL,
  `comentario_usuario` varchar(500) DEFAULT NULL,
  `id_usuario` int(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductor`
--

CREATE TABLE `conductor` (
  `id_conductor` int(75) NOT NULL,
  `nombre_conductor` varchar(57) DEFAULT NULL,
  `apellido_conductor` varchar(57) DEFAULT NULL,
  `telefono` int(10) DEFAULT NULL,
  `direccion` varchar(63) DEFAULT NULL,
  `localidad_ubica` int(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_conductor`
--

CREATE TABLE `estado_conductor` (
  `id_conductor` int(75) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `id_localidad` int(75) NOT NULL,
  `localidad` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id_factura` int(75) NOT NULL,
  `num_factura` int(75) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `precio` bigint(20) DEFAULT NULL,
  `id_usuario` int(75) DEFAULT NULL,
  `id_solicitud_acarreo` int(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_acarreo`
--

CREATE TABLE `solicitud_acarreo` (
  `id_solicitud_acarreo` int(75) NOT NULL,
  `direccion_origen` varchar(63) DEFAULT NULL,
  `direccion_destino` varchar(63) DEFAULT NULL,
  `localidad_origen` int(75) DEFAULT NULL,
  `localidad_destino` int(75) DEFAULT NULL,
  `fecha_acarreo` date DEFAULT NULL,
  `hora_acarreo` time DEFAULT NULL,
  `descripcion_origen` varchar(100) DEFAULT NULL,
  `descripcion_destino` varchar(100) DEFAULT NULL,
  `fecha_llegada` date DEFAULT NULL,
  `hora_llegada` time DEFAULT NULL,
  `tipo_vehiculo` varchar(50) DEFAULT NULL,
  `id_usuario` int(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(75) NOT NULL,
  `nombre` varchar(57) DEFAULT NULL,
  `apellido` varchar(57) DEFAULT NULL,
  `telefono` int(10) DEFAULT NULL,
  `direccion` varchar(63) DEFAULT NULL,
  `numero_documento` int(12) DEFAULT NULL,
  `correo` varchar(70) DEFAULT NULL,
  `contraseña` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id_vehiculo` int(75) NOT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `marca` varchar(30) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `id_conductor` int(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario_conductor`
--
ALTER TABLE `comentario_conductor`
  ADD PRIMARY KEY (`id_comentario_conductor`);

--
-- Indices de la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`id_conductor`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`id_localidad`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id_factura`);

--
-- Indices de la tabla `solicitud_acarreo`
--
ALTER TABLE `solicitud_acarreo`
  ADD PRIMARY KEY (`id_solicitud_acarreo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id_vehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario_conductor`
--
ALTER TABLE `comentario_conductor`
  MODIFY `id_comentario_conductor` int(75) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `id_factura` int(75) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id_vehiculo` int(75) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
