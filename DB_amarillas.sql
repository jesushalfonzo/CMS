-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-04-2016 a las 16:45:04
-- Versión del servidor: 5.5.38-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `DB_amarillas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora_acceso`
--

CREATE TABLE IF NOT EXISTS `bitacora_acceso` (
  `b_acceso_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_acceso_usuario` varchar(200) NOT NULL,
  `b_acceso_accion` varchar(200) NOT NULL,
  `b_acceso_ip` varchar(200) NOT NULL,
  `b_acceso_fecha` datetime NOT NULL,
  PRIMARY KEY (`b_acceso_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Volcado de datos para la tabla `bitacora_acceso`
--

INSERT INTO `bitacora_acceso` (`b_acceso_id`, `b_acceso_usuario`, `b_acceso_accion`, `b_acceso_ip`, `b_acceso_fecha`) VALUES
(1, 'jalfonzo', 'ACCESO PERMITIDO', '', '0000-00-00 00:00:00'),
(2, 'jalfonzo', 'ACCESO PERMITIDO', '', '0000-00-00 00:00:00'),
(3, 'jalfonzo', 'ACCESO PERMITIDO', '', '0000-00-00 00:00:00'),
(4, 'jalfonzo', 'ACCESO PERMITIDO', '', '0000-00-00 00:00:00'),
(5, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:28:00'),
(6, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:28:31'),
(7, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:31:02'),
(8, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:31:28'),
(9, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:31:40'),
(10, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:33:06'),
(11, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:35:14'),
(12, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:35:29'),
(13, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:46:45'),
(14, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:53:07'),
(15, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:53:28'),
(16, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:53:49'),
(17, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:54:08'),
(18, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:55:11'),
(19, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:56:35'),
(20, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:56:53'),
(21, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:57:02'),
(22, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:59:05'),
(23, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:59:22'),
(24, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 12:59:40'),
(25, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 13:01:09'),
(26, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 14:16:33'),
(27, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 14:33:01'),
(28, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 14:33:50'),
(29, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 14:35:03'),
(30, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 14:35:43'),
(31, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 16:46:52'),
(32, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 17:01:59'),
(33, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 17:03:37'),
(34, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-28 17:06:03'),
(35, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-29 09:26:29'),
(36, 'jalfonzo', 'ACCESO PERMITIDO', '127.0.0.1', '2016-04-29 14:27:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_acciones`
--

CREATE TABLE IF NOT EXISTS `m_acciones` (
  `m_acciones_id` int(4) NOT NULL AUTO_INCREMENT,
  `m_acciones_nombre` varchar(100) NOT NULL,
  `m_acciones_descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`m_acciones_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `m_acciones`
--

INSERT INTO `m_acciones` (`m_acciones_id`, `m_acciones_nombre`, `m_acciones_descripcion`) VALUES
(1, 'Agregar', 'Para cargar nuevos pacientes'),
(2, 'Ver', 'Para listar'),
(3, 'Editar', 'Permite hacer ediciones'),
(4, 'Eliminar', 'Permite eliminar de la base de datos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_clientes`
--

CREATE TABLE IF NOT EXISTS `m_clientes` (
  `m_cliente_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_cliente_razonSocial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `m_cliente_rif` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `m_cliente_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `m_cliente_telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `m_cliente_nombreContacto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `m_cliente_telefonoContacto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `m_cliente_estatus` int(11) NOT NULL,
  `m_cliente_verificado` int(11) NOT NULL,
  PRIMARY KEY (`m_cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_grupo`
--

CREATE TABLE IF NOT EXISTS `m_grupo` (
  `m_grupo_id` int(4) NOT NULL AUTO_INCREMENT,
  `m_grupo_nombre` varchar(100) NOT NULL,
  `m_grupo_descripcion` varchar(255) NOT NULL,
  `m_grupo_status` varchar(3) NOT NULL,
  PRIMARY KEY (`m_grupo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `m_grupo`
--

INSERT INTO `m_grupo` (`m_grupo_id`, `m_grupo_nombre`, `m_grupo_descripcion`, `m_grupo_status`) VALUES
(1, 'Super Admin', 'El super administrador del sistema, para privilegios de administración de modulos', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_permiso`
--

CREATE TABLE IF NOT EXISTS `m_permiso` (
  `m_permiso_id` int(4) NOT NULL AUTO_INCREMENT,
  `m_grupo_id` int(4) NOT NULL,
  `m_seccion_id` int(4) NOT NULL,
  `m_accion_id` int(100) NOT NULL,
  `m_permiso_status` varchar(2) NOT NULL,
  PRIMARY KEY (`m_permiso_id`),
  KEY `grupoid` (`m_grupo_id`),
  KEY `accionid` (`m_accion_id`),
  KEY `seccionid` (`m_seccion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `m_permiso`
--

INSERT INTO `m_permiso` (`m_permiso_id`, `m_grupo_id`, `m_seccion_id`, `m_accion_id`, `m_permiso_status`) VALUES
(1, 1, 1, 1, 'SI'),
(2, 1, 1, 2, 'SI'),
(3, 1, 1, 4, 'SI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_seccion`
--

CREATE TABLE IF NOT EXISTS `m_seccion` (
  `m_seccion_id` int(4) NOT NULL AUTO_INCREMENT,
  `m_seccion_nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `m_seccion_descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`m_seccion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `m_seccion`
--

INSERT INTO `m_seccion` (`m_seccion_id`, `m_seccion_nombre`, `m_seccion_descripcion`) VALUES
(1, 'Clientes', 'Para la gestión y registro de clientes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_usuario`
--

CREATE TABLE IF NOT EXISTS `m_usuario` (
  `m_usuario_id` int(4) NOT NULL AUTO_INCREMENT,
  `m_usuario_login` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `m_usuario_password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `m_usuario_nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `m_usuario_apellido` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `m_grupo_id` int(4) NOT NULL,
  `m_usuario_status` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `m_usuario_correo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`m_usuario_id`),
  KEY `idgrupo` (`m_grupo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `m_usuario`
--

INSERT INTO `m_usuario` (`m_usuario_id`, `m_usuario_login`, `m_usuario_password`, `m_usuario_nombre`, `m_usuario_apellido`, `m_grupo_id`, `m_usuario_status`, `m_usuario_correo`) VALUES
(1, 'jalfonzo', 'a35400f5d75488e299037db1895d2ee8', 'Jesús', 'Alfonzo', 1, 'A', 'jesushalfonzo@gmail.com');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `m_permiso`
--
ALTER TABLE `m_permiso`
  ADD CONSTRAINT `seccionid` FOREIGN KEY (`m_seccion_id`) REFERENCES `m_seccion` (`m_seccion_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `accionid` FOREIGN KEY (`m_accion_id`) REFERENCES `m_acciones` (`m_acciones_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `grupoid` FOREIGN KEY (`m_grupo_id`) REFERENCES `m_grupo` (`m_grupo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `m_usuario`
--
ALTER TABLE `m_usuario`
  ADD CONSTRAINT `idgrupo` FOREIGN KEY (`m_grupo_id`) REFERENCES `m_grupo` (`m_grupo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
