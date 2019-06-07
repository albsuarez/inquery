-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 04-06-2019 a las 20:40:41
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eleccion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE `encuesta` (
  `email` varchar(30) NOT NULL,
  `codigo` varchar(6) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `voto_publi_anonimo` int(1) NOT NULL,
  `una_o_mas_seleccion` int(1) NOT NULL,
  `permitir_comentarios` int(1) NOT NULL,
  `participantes` int(3) NOT NULL,
  `acceso` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `encuesta`
--

INSERT INTO `encuesta` (`email`, `codigo`, `titulo`, `descripcion`, `voto_publi_anonimo`, `una_o_mas_seleccion`, `permitir_comentarios`, `participantes`, `acceso`) VALUES
('alb-suarez@outlook.com', '004954', 'Prueba de correo electrÃ³nico', 'Si', 0, 0, 1, 4, 0),
('alb-suarez@outlook.com', '186632', 'mejor votacion', 'Mejor votacion', 0, 0, 1, 8, 0),
('alb-suarez@outlook.com', '196795', 'mi persona odiada', 'Persona especial', 0, 0, 1, 3, 0),
('alb-suarez@outlook.com', '203355', 'Â¿Funciona el botÃ³n de whatsapp?', 'No', 0, 0, 1, 3, 0),
('alb-suarez@outlook.com', '264242', 'inquery nos gusta', 'Es mejorable?', 0, 0, 1, 6, 0),
('alb-suarez@outlook.com', '276718', 'prueba de botÃ³n', 'Eso', 0, 0, 1, 5, 0),
('alb-suarez@outlook.com', '310778', 'Â¿Festival de verano?', 'Eso', 0, 0, 1, 5, 0),
('alb-suarez@outlook.com', '328008', 'cuarta votacion', 'Cuarta votaciÃ³n', 0, 0, 1, 6, 0),
('alb-suarez@outlook.com', '403771', 'Â¿DÃ³nde celebramos el cumpleaÃ±os de Ana?', 'Vota por tu lugar preferido', 0, 0, 1, 4, 0),
('alb-suarez@outlook.com', '405288', 'Mi primera votaciÃ³n', 'Mi primera votaciÃ³n de relleno ', 0, 0, 1, 5, 0),
('alb-suarez@outlook.com', '417208', 'Â¿te gusta las pipas?', 'Te gustan o no', 0, 0, 1, 6, 0),
('alb-suarez@outlook.com', '419870', 'Â¿Grupo favorito o cantante?', 'Selecciona tu grupo preferido', 0, 0, 1, 0, 0),
('alb-suarez@outlook.com', '469997', '-5 votacion especial', 'Albert', 0, 0, 1, 65, 0),
('alb-suarez@outlook.com', '528880', 'Â¿Festival de verano?', 'Eso', 0, 0, 1, 5, 0),
('alb-suarez@outlook.com', '543693', 'Â¿Restaurante de la cena de empresa?', 'Selecciona el restaurante de la cena de empresa', 1, 1, 1, 1, 0),
('alb-suarez@outlook.com', '551810', 'sexta votaciÃ³n', 'Sexta votaciÃ³n', 0, 0, 1, 7, 0),
('alb-suarez@outlook.com', '589161', 'Votacion de prueba', 'Descripcion', 1, 1, 1, 5, 0),
('alb-suarez@outlook.com', '727854', 'Â¿Funciona el botÃ³n de whatsapp2222', 'Pues eso', 0, 0, 1, 3, 0),
('alb-suarez@outlook.com', '765283', 'segunda votaciÃ³n', 'Segunda votaciÃ³n', 0, 0, 1, 5, 0),
('alb-suarez@outlook.com', '840404', 'Â¿Funciona el botÃ³n de whatsapp?', 'Pues eso', 0, 0, 1, 3, 0),
('alb-suarez@outlook.com', '913416', 'Â¿CuÃ¡l es tu vengador preferido?', 'Selecciona tu vengador favorito', 1, 0, 1, 1, 0),
('alb-suarez@outlook.com', '945612', 'Votacion de prueba', 'Descripcion', 1, 0, 1, 6, 0),
('alb-suarez@outlook.com', '983896', 'Â¿Festival de verano?', 'Eso', 0, 0, 1, 5, 0),
('alb-suarez@outlook.com', '986799', 'prueba de botÃ³n', 'Eso', 0, 0, 1, 5, 0),
('alb-suarez@outlook.com', '996243', 'tercera votaciÃ³n!', 'Tercera y paginaciÃ³n', 0, 0, 1, 5, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `cod_usu` int(10) UNSIGNED NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(6) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`cod_usu`, `email`, `pass`, `nombre`) VALUES
(44, 'alb-suarez@outlook.com', '315891', 'alberto');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD UNIQUE KEY `codigo_unico` (`codigo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `cod_usu` (`cod_usu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cod_usu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
