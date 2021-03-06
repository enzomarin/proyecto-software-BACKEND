-- phpMyAdmin SQL Dump
-- version 5.0.4deb2ubuntu5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 03-12-2021 a las 16:17:05
-- Versión del servidor: 8.0.27-0ubuntu0.21.10.1
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `valrepuestos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cat` varchar(255) DEFAULT NULL,
  `fab` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `ver` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `critic` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ubicacion` varchar(255) DEFAULT NULL,
  `origen` varchar(255) DEFAULT NULL,
  `nota` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `cat`, `fab`, `model`, `ver`, `year`, `price`, `critic`, `stock`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `ubicacion`, `origen`, `nota`) VALUES
(1, '1405', 'Fuelle Homocinetica  CIB BT-2047', 'Fuelles', 'Daihatsu', 'Charade', 'Todos', '1995-2000', 500, 1, 16, '2021-11-25 19:39:09', 1, 1, '2021-11-24 20:50:50', '2021-12-01 17:28:26', 'Mostrador', 'China', 'Se recomienda comparar con la muestra del cliente'),
(2, '1406', 'Fuelle Homocinetica  VW-1-1003 1845', 'Fuelles', 'Volkswagen', 'Golf Vento', 'Golf A4', '1991-2005', 1000, 1, 6, '2021-11-25 19:39:38', 1, 1, '2021-11-24 20:52:42', '2021-12-01 17:28:26', 'Mostrador', 'China', 'Para modelos Golf, Vento y Golf A4'),
(3, '4888', 'Empaquetadura Culata KGK 11141-71C00', 'Empaquetadura Culata', 'Suzuki', 'Fronte Maruti', 'Todos', '1984-2005', 8990, 1, 1, '2021-11-25 19:41:31', 1, 1, '2021-11-24 20:54:36', '2021-12-01 17:28:26', 'Bodega', 'India', 'Para los Maruti es a partir de 1995  y el Fronte se dejó de fabricar en 1990'),
(4, '4923', 'Empaquetadura Culata KP 11141-79F10', 'Empaquetadura Culata', 'Suzuki', 'Alto', 'Todos', '2005-2010', 5990, 1, 3, '2021-11-25 19:41:42', 1, 1, '2021-11-24 20:55:41', '2021-11-25 22:56:13', 'Mostrador', 'China', 'Modelo 2011 usa una empaquetadura muy diferente'),
(5, '4001', 'Empaquetadura Válvulas GOMA emptapaved000', 'Empaquetadura Válvulas', 'Nissan', '', '', NULL, 2990, 1, 5, '2021-11-25 19:41:58', 1, 1, '2021-11-24 20:58:58', '2021-11-25 22:41:58', 'Bodega', 'Japon', NULL),
(6, '4002', 'Empaquetadura Válvulas GOMA emptapav13700', 'Empaquetadura Válvulas', 'Hyundai', NULL, NULL, NULL, 19990, 1, 10, '2021-11-25 19:42:10', 1, 1, '2021-11-24 21:01:13', '2021-11-25 22:42:10', 'Mostrador', 'China', NULL),
(7, '5005', 'Carbones Alternador 08x18x5 mm', 'Electrico', 'Genérico', NULL, NULL, NULL, 790, 1, 8, '2021-11-25 19:42:23', 1, 1, '2021-11-24 21:03:04', '2021-12-01 17:30:29', 'Mostrador', 'China', NULL),
(8, '6001', 'Bomba de Agua GMB GWSU12A', 'Refrigeración', 'Subaru', 'Todos', 'Todos', '1990-2013', 23990, 1, 8, '2021-11-25 19:42:43', 1, 1, '2021-11-24 21:05:28', '2021-11-25 22:49:30', 'Bodega', 'Japon', 'En algunos legacy 2014 igual es compatible si traen el motor EJ204'),
(9, '6002', 'Bomba de Agua DGP GWD32A', 'Refrigeración', 'Daihatsu', 'Todos', 'Todos', NULL, 16990, 1, 4, '2021-11-25 19:43:23', 1, 1, '2021-11-24 21:07:02', '2021-11-25 22:43:23', 'Bodega', 'China', NULL),
(10, '7023', 'Espejo Derecho', 'Espejos', 'Hyundai', 'Porter H100', 'Todos', '2004-2005', 24990, 1, 1, '2021-11-25 19:43:38', 1, 1, '2021-11-24 21:09:09', '2021-11-25 22:43:38', 'Vitrina', 'China', NULL),
(11, '7024', 'Espejo Izquierdo', 'Espejos', 'Kia', 'Rio', 'Todos', '2005-2012', 15990, 1, 2, '2021-11-25 19:43:55', 1, 1, '2021-11-24 21:10:20', '2021-11-25 22:43:55', 'Bodega', 'Corea', NULL),
(12, '7025', 'Espejo Izquierdo', 'Espejos', 'Chevrolet', 'Sail', 'Todos', '2011-2012', 31990, 1, 2, '2021-11-25 19:44:08', 1, 1, '2021-11-24 21:11:27', '2021-11-25 22:44:08', 'Mostrador', 'China', NULL),
(13, '7026', 'Espejo Derecho', 'Espejos', 'Chevrolet', 'Sail', 'Todos', '2011-2012', 31990, 1, 2, '2021-11-25 19:44:16', 1, 1, '2021-11-24 21:12:10', '2021-11-25 22:44:16', 'Mostrador', 'China', NULL),
(14, '8050', 'Optico Delantero Derecho', 'Opticos', 'Samsung', 'SM3', 'Todos', '2006-2014', 69990, 1, 3, '2021-11-25 19:44:37', 1, 1, '2021-11-24 21:15:17', '2021-11-25 22:44:37', 'Bodega', 'Corea', NULL),
(15, '8051', 'Optico Delantero Izquierdo', 'Opticos', 'Samsung', 'SM3', 'Todos', '2006-2014', 69990, 1, 3, '2021-11-25 19:44:45', 1, 1, '2021-11-24 21:15:53', '2021-11-25 22:44:45', 'Bodega', 'Corea', NULL),
(16, '3050', 'Piola Acelerador', 'Alimentación', 'Suzuki', 'Super Carry', 'Todos', '1986', 2006, 1, 10, '2021-11-25 19:44:56', 1, 1, '2021-11-24 21:16:54', '2021-11-25 22:44:56', 'Bodega', 'India', NULL),
(17, '2071', 'Varilla Nivel Aceite', 'Aceite', 'JAC', '137-S3', 'Todos', '2010-2019', 5990, 1, 4, '2021-11-25 19:45:20', 1, 1, '2021-11-24 21:18:27', '2021-11-25 22:45:20', 'Mostrador', 'China', NULL),
(18, '2068', 'Filtro Aceite DGP 26300-35504', 'Aceite', 'DGP', NULL, NULL, NULL, 2990, 1, 15, '2021-11-25 19:45:32', 1, 1, '2021-11-24 21:20:11', '2021-11-25 22:45:32', 'Vitrina', 'China', NULL),
(19, '2072', 'Filtro Aceite TROOP 26300-02500', 'Aceite', 'TROOP', NULL, NULL, NULL, 1990, 1, 14, '2021-11-25 19:45:42', 1, 1, '2021-11-24 21:20:34', '2021-11-25 22:45:42', 'Mostrador', 'China', NULL),
(20, '1512', 'Balatas de Frenos Trasera 53200M68KK00', 'Balatas Traseras', 'Suzuki', 'Celerio', 'Todos', '2009-2015', 29990, 1, 8, '2021-11-25 19:46:05', 1, 1, '2021-11-24 21:23:37', '2021-11-25 22:46:05', 'Mostrador', 'India', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
