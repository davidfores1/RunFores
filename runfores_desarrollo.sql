-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-07-2021 a las 19:53:10
-- Versión del servidor: 5.6.32-78.1
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `runfores_runforesprod`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Equipos Electromecánicos', '2017-12-21 20:53:29'),
(2, 'Taladros', '2017-12-21 20:53:29'),
(3, 'Andamios', '2017-12-21 20:53:29'),
(4, 'Generadores de energía', '2017-12-21 20:53:29'),
(5, 'Equipos para construcción', '2017-12-21 20:53:29'),
(6, 'Martillos mecánicos', '2017-12-21 23:06:40'),
(10, 'element', '2020-11-17 15:02:39'),
(11, 'Brocas para maderas  ', '2020-11-17 19:24:11'),
(12, 'pruebas', '2021-05-29 19:36:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(3, 'Juan Villegas', 2147483647, 'juan@hotmail.com', '(300) 341-2345', 'Calle 23 # 45 - 56', '1980-11-02', 10, '2021-03-23 12:05:58', '2021-03-23 17:05:58'),
(4, 'Pedro Pérez', 2147483647, 'pedro@gmail.com', '(399) 876-5432', 'Calle 34 N33 -56', '1970-08-07', 127, '2021-02-03 16:46:40', '2021-02-03 21:46:40'),
(5, 'Miguel Murillo', 325235235, 'miguel@hotmail.com', '(254) 545-3446', 'calle 34 # 34 - 23', '1976-03-04', 0, '0000-00-00 00:00:00', '2020-09-15 13:33:10'),
(7, 'ricardo ', 2147483647, 'dforero@centronetcali.com', '(646) 546-5465', 'Calle 83b # 21-51', '2079-08-07', 0, '0000-00-00 00:00:00', '2021-02-03 21:38:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'Aspiradora Industrial ', 'vistas/img/productos/101/105.png', 11, 1000, 1200, 4, '2021-03-23 17:05:57'),
(2, 1, '102', 'Plato Flotante para Allanadora', 'vistas/img/productos/102/940.jpg', 5, 4500, 6300, 4, '2021-03-23 17:05:57'),
(3, 1, '103', 'Compresor de Aire para pintura', 'vistas/img/productos/103/763.jpg', 13, 3000, 4200, 7, '2021-02-03 21:46:40'),
(4, 1, '104', 'Cortadora de Adobe sin Disco ', 'vistas/img/productos/104/957.jpg', 11, 4000, 5600, 9, '2021-02-03 21:46:40'),
(5, 1, '105', 'Cortadora de Piso sin Disco ', 'vistas/img/productos/105/630.jpg', 19, 1540, 2156, 1, '2020-09-15 16:28:08'),
(6, 1, '106', 'Disco Punta Diamante ', 'vistas/img/productos/106/635.jpg', 20, 1100, 1540, 0, '2017-12-24 00:26:37'),
(7, 1, '107', 'Extractor de Aire ', 'vistas/img/productos/107/848.jpg', 20, 1540, 2156, 0, '2020-09-15 13:33:15'),
(8, 1, '108', 'Guadañadora ', 'vistas/img/productos/108/163.jpg', 20, 1540, 2156, 0, '2017-12-23 23:25:51'),
(9, 1, '109', 'Hidrolavadora Eléctrica ', 'vistas/img/productos/109/769.jpg', 20, 2600, 3640, 0, '2017-12-23 23:25:51'),
(10, 1, '110', 'Hidrolavadora Gasolina', 'vistas/img/productos/110/582.jpg', 20, 2210, 3094, 0, '2017-12-23 23:27:27'),
(11, 1, '111', 'Motobomba a Gasolina', 'vistas/img/productos/default/anonymous.png', 20, 2860, 4004, 0, '2017-12-21 21:56:28'),
(12, 1, '112', 'Motobomba El?ctrica', 'vistas/img/productos/default/anonymous.png', 20, 2400, 3360, 0, '2017-12-21 21:56:28'),
(13, 1, '113', 'Sierra Circular ', 'vistas/img/productos/default/anonymous.png', 20, 1100, 1540, 0, '2017-12-21 21:56:28'),
(14, 1, '114', 'Disco de tugsteno para Sierra circular', 'vistas/img/productos/default/anonymous.png', 20, 4500, 6300, 0, '2017-12-21 21:56:28'),
(15, 1, '115', 'Soldador Electrico ', 'vistas/img/productos/default/anonymous.png', 20, 1980, 2772, 0, '2017-12-21 21:56:28'),
(16, 1, '116', 'Careta para Soldador', 'vistas/img/productos/default/anonymous.png', 20, 4200, 5880, 0, '2017-12-21 21:56:28'),
(17, 1, '117', 'Torre de iluminacion ', 'vistas/img/productos/default/anonymous.png', 20, 1800, 2520, 0, '2017-12-21 21:56:28'),
(18, 2, '201', 'Martillo Demoledor de Piso 110V', 'vistas/img/productos/default/anonymous.png', 20, 5600, 7840, 0, '2017-12-21 21:56:28'),
(19, 2, '202', 'Muela o cincel martillo demoledor piso', 'vistas/img/productos/default/anonymous.png', 20, 9600, 13440, 0, '2017-12-21 21:56:28'),
(20, 2, '203', 'Taladro Demoledor de muro 110V', 'vistas/img/productos/default/anonymous.png', 20, 3850, 5390, 0, '2017-12-21 21:56:28'),
(21, 2, '204', 'Muela o cincel martillo demoledor muro', 'vistas/img/productos/default/anonymous.png', 20, 9600, 13440, 0, '2017-12-21 21:56:28'),
(22, 2, '205', 'Taladro Percutor de 1/2 Madera y Metal', 'vistas/img/productos/default/anonymous.png', 20, 8000, 11200, 0, '2017-12-21 22:28:24'),
(23, 2, '206', 'Taladro Percutor SDS Plus 110V', 'vistas/img/productos/default/anonymous.png', 20, 3900, 5460, 0, '2017-12-21 21:56:28'),
(24, 2, '207', 'Taladro Percutor SDS Max 110V (Mineria)', 'vistas/img/productos/default/anonymous.png', 20, 4600, 6440, 0, '2017-12-21 21:56:28'),
(25, 3, '301', 'Andamio colgante', 'vistas/img/productos/default/anonymous.png', 20, 1440, 2016, 0, '2017-12-21 21:56:28'),
(26, 3, '302', 'Distanciador andamio colgante', 'vistas/img/productos/default/anonymous.png', 20, 1600, 2240, 0, '2017-12-21 21:56:28'),
(27, 3, '303', 'Marco andamio modular ', 'vistas/img/productos/default/anonymous.png', 20, 900, 1260, 0, '2017-12-21 21:56:28'),
(28, 3, '304', 'Marco andamio tijera', 'vistas/img/productos/default/anonymous.png', 20, 100, 140, 0, '2017-12-21 21:56:28'),
(29, 3, '305', 'Tijera para andamio', 'vistas/img/productos/default/anonymous.png', 20, 162, 226, 0, '2017-12-21 21:56:28'),
(30, 3, '306', 'Escalera interna para andamio', 'vistas/img/productos/default/anonymous.png', 20, 270, 378, 0, '2017-12-21 21:56:28'),
(31, 3, '307', 'Pasamanos de seguridad', 'vistas/img/productos/default/anonymous.png', 20, 75, 105, 0, '2017-12-21 21:56:28'),
(32, 3, '308', 'Rueda giratoria para andamio', 'vistas/img/productos/default/anonymous.png', 20, 168, 235, 0, '2017-12-21 21:56:28'),
(33, 3, '309', 'Arnes de seguridad', 'vistas/img/productos/default/anonymous.png', 20, 1750, 2450, 0, '2017-12-21 21:56:28'),
(34, 3, '310', 'Eslinga para arnes', 'vistas/img/productos/default/anonymous.png', 20, 175, 245, 0, '2017-12-21 21:56:28'),
(35, 3, '311', 'Plataforma Met?lica', 'vistas/img/productos/default/anonymous.png', 20, 420, 588, 0, '2017-12-21 21:56:28'),
(36, 4, '401', 'Planta Electrica Diesel 6 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3500, 4900, 0, '2017-12-21 21:56:28'),
(37, 4, '402', 'Planta Electrica Diesel 10 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3550, 4970, 0, '2017-12-21 21:56:28'),
(38, 4, '403', 'Planta Electrica Diesel 20 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3600, 5040, 0, '2017-12-21 21:56:28'),
(39, 4, '404', 'Planta Electrica Diesel 30 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3650, 5110, 0, '2017-12-21 21:56:28'),
(40, 4, '405', 'Planta Electrica Diesel 60 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3700, 5180, 0, '2017-12-21 21:56:28'),
(41, 4, '406', 'Planta Electrica Diesel 75 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3750, 5250, 0, '2017-12-21 21:56:28'),
(42, 4, '407', 'Planta Electrica Diesel 100 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3800, 5320, 0, '2017-12-21 21:56:28'),
(43, 4, '408', 'Planta Electrica Diesel 120 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3850, 5390, 0, '2017-12-21 21:56:28'),
(44, 5, '501', 'Escalera de Tijera Aluminio ', 'vistas/img/productos/default/anonymous.png', 20, 350, 490, 0, '2017-12-21 21:56:28'),
(45, 5, '502', 'Extension Electrica ', 'vistas/img/productos/default/anonymous.png', 20, 370, 518, 0, '2017-12-21 21:56:28'),
(46, 5, '503', 'Gato tensor', 'vistas/img/productos/default/anonymous.png', 20, 380, 532, 0, '2017-12-21 21:56:28'),
(47, 5, '504', 'Lamina Cubre Brecha ', 'vistas/img/productos/default/anonymous.png', 20, 380, 532, 0, '2017-12-21 21:56:28'),
(48, 5, '505', 'Llave de Tubo', 'vistas/img/productos/default/anonymous.png', 20, 480, 672, 0, '2017-12-21 21:56:28'),
(49, 5, '506', 'Manila por Metro', 'vistas/img/productos/default/anonymous.png', 20, 600, 840, 0, '2017-12-21 21:56:28'),
(50, 5, '507', 'Polea 2 canales', 'vistas/img/productos/default/anonymous.png', 20, 900, 1260, 0, '2017-12-21 21:56:28'),
(51, 5, '508', 'Tensor', 'vistas/img/productos/default/anonymous.png', 20, 100, 140, 0, '2017-12-21 21:56:28'),
(52, 5, '509', 'Bascula ', 'vistas/img/productos/default/anonymous.png', 20, 130, 182, 0, '2017-12-21 21:56:28'),
(53, 5, '510', 'Bomba Hidrostatica', 'vistas/img/productos/default/anonymous.png', 20, 770, 1078, 0, '2017-12-21 21:56:28'),
(54, 5, '511', 'Chapeta', 'vistas/img/productos/default/anonymous.png', 20, 660, 924, 0, '2017-12-21 21:56:28'),
(55, 5, '512', 'Cilindro muestra de concreto', 'vistas/img/productos/default/anonymous.png', 20, 400, 560, 0, '2017-12-21 21:56:28'),
(56, 5, '513', 'Cizalla de Palanca', 'vistas/img/productos/default/anonymous.png', 20, 450, 630, 0, '2017-12-21 21:56:28'),
(57, 5, '514', 'Cizalla de Tijera', 'vistas/img/productos/default/anonymous.png', 20, 580, 812, 0, '2017-12-21 21:56:28'),
(58, 5, '515', 'Coche llanta neumatica', 'vistas/img/productos/default/anonymous.png', 20, 420, 588, 0, '2017-12-21 21:56:28'),
(59, 5, '516', 'Cono slump', 'vistas/img/productos/default/anonymous.png', 20, 140, 196, 0, '2017-12-21 21:56:28'),
(60, 5, '517', 'Cortadora de Baldosin', 'vistas/img/productos/default/anonymous.png', 20, 930, 1302, 0, '2017-12-21 21:56:28'),
(62, 2, '208', 'TALA', 'vistas/img/productos/default/anonymous.png', 1598, 1499990, 1649990, 2, '2020-09-24 15:15:25'),
(64, 1, '119', '7702057340445', 'vistas/img/productos/default/anonymous.png', 25, 52525, 73535, 0, '2020-10-05 17:06:20'),
(65, 10, '1001', 'getElement', 'vistas/img/productos/default/anonymous.png', 560, 50000, 70000, 100, '2020-11-17 15:09:44'),
(66, 11, '1101', 'maderaxx', 'vistas/img/productos/default/anonymous.png', 90, 5000, 7000, 10, '2020-12-14 18:10:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(58, 'Julio Gómez', 'julio', '$2a$07$asxx54ahjppf45sd87a5auBxWKi32TyN7LTmhz0ONBYdcwSQJ0lWO', 'Especial', 'vistas/img/usuarios/julio/100.png', 1, '2021-03-31 22:59:06', '2021-04-01 03:59:06'),
(59, 'Ana Gonzalez', 'ana Maria', '$2a$07$asxx54ahjppf45sd87a5auLd2AxYsA/2BbmGKNk2kMChC3oj7V0Ca', 'Vendedor', 'vistas/img/usuarios/ana/260.png', 0, '2017-12-23 15:28:37', '2020-12-21 21:39:23'),
(60, 'David Forero', 'Davidf', '$2a$07$asxx54ahjppf45sd87a5auF7cmCvp6OqNdctcaEbltIptqbaHP/Gu', 'Administrador', 'vistas/img/usuarios/Davidf/376.jpg', 1, '2021-07-07 15:57:41', '2021-07-07 20:57:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(18, 10002, 3, 60, '[{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"2\",\"stock\":\"17\",\"precio\":\"4200\",\"total\":\"8400\"}]', 1596, 8400, 9996, 'TC-566464654', '2020-09-15 12:22:15'),
(21, 10003, 4, 60, '[{\"id\":\"62\",\"descripcion\":\"OXIDs\",\"cantidad\":\"2\",\"stock\":\"1598\",\"precio\":\"1649990\",\"total\":\"3299980\"}]', 758995, 3299980, 4058980, 'Efectivo', '2020-11-17 15:07:12'),
(22, 10004, 4, 60, '[{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"4200\",\"total\":\"4200\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"5600\",\"total\":\"5600\"},{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2156\",\"total\":\"2156\"}]', 2271.64, 11956, 14227.6, 'TC-64564564564456', '2020-11-16 16:38:49'),
(23, 10005, 3, 60, '[{\"id\":\"1\",\"descripcion\":\"Aspiradora Industrial \",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"1200\",\"total\":\"1200\"},{\"id\":\"2\",\"descripcion\":\"Plato Flotante para Allanadora\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"6300\",\"total\":\"6300\"},{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"4200\",\"total\":\"4200\"}]', 1287, 11700, 12987, 'Efectivo', '2020-09-15 16:32:13'),
(24, 10006, 3, 60, '[{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"2\",\"stock\":\"14\",\"precio\":\"4200\",\"total\":\"8400\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"5600\",\"total\":\"5600\"}]', 2660, 14000, 16660, 'Efectivo', '2020-09-24 15:13:15'),
(25, 10007, 4, 60, '[{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"6\",\"stock\":\"12\",\"precio\":\"5600\",\"total\":\"33600\"}]', 0, 33600, 33600, 'Efectivo', '2020-10-05 14:10:56'),
(26, 10008, 4, 58, '[{\"id\":\"1\",\"descripcion\":\"Aspiradora Industrial \",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"1200\",\"total\":\"1200\"},{\"id\":\"2\",\"descripcion\":\"Plato Flotante para Allanadora\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"6300\",\"total\":\"6300\"},{\"id\":\"65\",\"descripcion\":\"getElement\",\"cantidad\":\"100\",\"stock\":\"560\",\"precio\":\"70000\",\"total\":\"7000000\"}]', 1331420, 7007500, 8338920, 'Efectivo', '2020-11-17 15:09:44'),
(27, 10009, 4, 58, '[{\"id\":\"66\",\"descripcion\":\"maderaxx\",\"cantidad\":\"10\",\"stock\":\"90\",\"precio\":\"7000\",\"total\":\"70000\"}]', 13300, 70000, 83300, 'Efectivo', '2020-12-14 18:10:20'),
(28, 10010, 4, 58, '[{\"id\":\"1\",\"descripcion\":\"Aspiradora Industrial \",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"1200\",\"total\":\"1200\"},{\"id\":\"2\",\"descripcion\":\"Plato Flotante para Allanadora\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"6300\",\"total\":\"6300\"},{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"4200\",\"total\":\"4200\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"11\",\"precio\":\"5600\",\"total\":\"5600\"}]', 3287, 17300, 20587, 'Efectivo', '2021-02-03 21:46:40'),
(29, 10011, 3, 58, '[{\"id\":\"1\",\"descripcion\":\"Aspiradora Industrial \",\"cantidad\":\"1\",\"stock\":\"11\",\"precio\":\"1200\",\"total\":\"1200\"},{\"id\":\"2\",\"descripcion\":\"Plato Flotante para Allanadora\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"6300\",\"total\":\"6300\"}]', 75, 7500, 7575, 'Efectivo', '2021-03-23 17:05:58');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
