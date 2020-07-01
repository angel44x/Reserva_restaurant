-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-07-2020 a las 01:17:34
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce-ult`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `img` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `estilo` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `ruta`, `img`, `titulo1`, `titulo2`, `titulo3`, `estilo`, `fecha`) VALUES
(1, 'sin-categoria', 'vistas/img/banner/default.jpg', '{\r\n	\"texto\": \"OFERTAS ESPECIALES\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n	\"texto\": \"50% off\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n	\"texto\": \"Termina el 31 de Octubre\",\r\n	\"color\": \"#fff\"\r\n}', 'textoDer', '2017-10-12 18:14:41'),
(2, 'articulos-gratis', 'vistas/img/banner/ropa.jpg', '{\r\n	\"texto\": \"ARTÍCULOS GRATIS\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n\r\n	\"texto\": \"¡Entrega inmediata!\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', '{\r\n	\"texto\": \"Disfrútalo\",\r\n	\"color\": \"#fff\"\r\n}', 'textoIzq', '2017-10-12 18:05:43'),
(3, 'desarrollo-web', 'vistas/img/banner/web.jpg', '{\r\n	\"texto\": \"OFERTAS ESPECIALES\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n\r\n	\"texto\": \"50% off\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', '{\r\n	\"texto\": \"Termina el 31 de Octubre\",\r\n	\"color\": \"#fff\"\r\n}', 'textoCentro', '2017-10-12 18:05:43'),
(4, 'ropa-para-hombre', 'vistas/img/banner/ropaHombre.jpg', '{\r\n	\"texto\": \"OFERTAS ESPECIALES\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n\r\n	\"texto\": \"50% off\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', '{\r\n	\"texto\": \"Termina el 31 de Octubre\",\r\n	\"color\": \"#fff\"\r\n}', 'textoDer', '2017-10-12 18:06:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `fecha`) VALUES
(1, 'MENU', 'menu', '2020-06-30 04:40:20'),
(2, 'EXTRAS', 'extras', '2020-06-30 04:40:49'),
(3, 'PIZZAS', 'pizzas', '2020-06-30 04:41:10'),
(4, 'BEBIDAS', 'bebidas', '2020-06-30 04:41:42'),
(5, 'POSTRES', 'postres', '2020-06-30 04:42:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `calificacion` float NOT NULL,
  `comentario` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_usuario`, `id_producto`, `calificacion`, `comentario`, `fecha`) VALUES
(1, 2, 500, 0, '', '2018-06-14 16:50:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercio`
--

CREATE TABLE `comercio` (
  `id` int(11) NOT NULL,
  `impuesto` float NOT NULL,
  `envioNacional` float NOT NULL,
  `envioInternacional` float NOT NULL,
  `tasaMinimaNal` float NOT NULL,
  `tasaMinimaInt` float NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `clienteIdPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `llaveSecretaPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPayu` text COLLATE utf8_spanish_ci NOT NULL,
  `merchantIdPayu` int(11) NOT NULL,
  `accountIdPayu` int(11) NOT NULL,
  `apiKeyPayu` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comercio`
--

INSERT INTO `comercio` (`id`, `impuesto`, `envioNacional`, `envioInternacional`, `tasaMinimaNal`, `tasaMinimaInt`, `pais`, `modoPaypal`, `clienteIdPaypal`, `llaveSecretaPaypal`, `modoPayu`, `merchantIdPayu`, `accountIdPayu`, `apiKeyPayu`) VALUES
(1, 19, 1, 2, 10, 15, 'CO', 'sandbox', 'AecffvSZfOgj6g1MkrVmz12ACMES2-InggmWCpU5CblR-z5WwkYBYjmLsh9yPRLuRape1ahjqpcJet4N', 'EAx1SVMHGV6MJKwl-pnOSzaJASlAINZdYRdS--wkgaPYLevcGw88V0PU_W_rg00xLkBknybCjsO_xzA0', 'sandbox', 508029, 512321, '4Vj8eK4rloUd272L48hsrarnUA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `envio` int(11) NOT NULL,
  `metodo` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `detalle` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `pago` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `id_usuario`, `id_producto`, `envio`, `metodo`, `email`, `direccion`, `pais`, `cantidad`, `detalle`, `pago`, `fecha`) VALUES
(12, 2, 496, 0, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, '', '', '2017-11-02 20:46:59'),
(13, 2, 464, 0, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, '', '', '2017-11-02 20:47:00'),
(14, 2, 497, 0, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, '', '', '2017-11-02 21:34:05'),
(15, 2, 500, 0, 'payu', 'correo@test.com', '', '', 0, '', '', '2017-11-03 19:33:54'),
(16, 2, 184, 0, 'payu', 'correo@test.com', '', '', 0, '', '', '2017-11-03 19:33:54'),
(17, 2, 499, 0, 'payu', 'ejemplo@test.com', '', '', 0, '', '', '2017-11-03 20:00:52'),
(18, 2, 500, 0, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, '', '', '2018-06-14 16:50:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deseos`
--

CREATE TABLE `deseos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `deseos`
--

INSERT INTO `deseos` (`id`, `id_usuario`, `id_producto`, `fecha`) VALUES
(1, 9, 3, '2020-06-30 05:44:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `fecha`) VALUES
(1, '#000000', '#ffffff', '#47bac1', '#ffffff', 'vistas/img/plantilla/logito.png', 'vistas/img/plantilla/iconon.png', '[{\r\n		\"red\": \"fa-facebook\",\r\n		\"estilo\": \"facebookBlanco\",\r\n		\"url\": \"http://facebook.com/\"\r\n	}, {\r\n		\"red\": \"fa-youtube\",\r\n		\"estilo\": \"youtubeBlanco\",\r\n		\"url\": \"http://youtube.com/\"\r\n	}, {\r\n		\"red\": \"fa-twitter\",\r\n		\"estilo\": \"twitterBlanco\",\r\n		\"url\": \"http://twitter.com/\"\r\n	},{\r\n		\"red\": \"fa-google-plus\",\r\n		\"estilo\": \"googleBlanco\",\r\n		\"url\": \"http://google.com/\"\r\n	}, {\r\n		\"red\": \"fa-instagram\",\r\n		\"estilo\": \"instagramBlanco\",\r\n		\"url\": \"http://instagram.com/\"\r\n	}\r\n\r\n]', '2020-06-30 04:43:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `titular` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `multimedia` text COLLATE utf8_spanish_ci NOT NULL,
  `detalles` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `vistas` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `vistasGratis` int(11) NOT NULL,
  `ventasGratis` int(11) NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `ofertadoPorSubCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `nuevo` int(11) NOT NULL,
  `peso` float NOT NULL,
  `entrega` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `id_subcategoria`, `tipo`, `ruta`, `titulo`, `titular`, `descripcion`, `multimedia`, `detalles`, `precio`, `portada`, `vistas`, `ventas`, `vistasGratis`, `ventasGratis`, `ofertadoPorCategoria`, `ofertadoPorSubCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `nuevo`, `peso`, `entrega`, `fecha`) VALUES
(1, 1, 1, 'fisico', 'arroz-con-pollo-1', 'Arroz con pollo', 'Ven y disfruta los mejores menus al rinconcito , el delicoso arroz con pollo', 'Ven y disfruta los mejores menus al rinconcito , el delicoso arroz con pollo', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-01.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-02.jpg\"}, 	{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-03.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-04.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-05.jpg\"}]', '{\"Cuanto\": [1,2,3,4,5],\"Servicio\": [\"reserva\",\"recojo\"],\"Restaurante\":\"\"}', 29, 'vistas/img/productos/menu/menu01.jpg', 0, 404, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/arrozpollo.png', '0000-00-00 00:00:00', 1, 1, 10, '2020-06-30 20:53:04'),
(2, 1, 1, 'fisico', 'lomo-saltado-1', 'Lomo saltado', 'El mejor lomo saltado lo encuentras aqui, realiza tu reserva', 'El mejor lomo saltado lo encuentras aqui, realiza tu reserva', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-01.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-02.jpg\"}, 	{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-03.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-04.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-05.jpg\"}]', '{\"Cuanto\": [1,2,3,4,5],\"Servicio\": [\"reserva\",\"recojo\"],\"Restaurante\":\"\"}', 29, 'vistas/img/productos/menu/menu02.jpg', 2, 403, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/menu02.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-06-24 17:11:08'),
(3, 2, 1, 'fisico', 'ceviche-de-trucha-1', 'Ceviche de trucha', 'Ven y disfruta los mejores jugos a la fuente de soda de fruta', 'Ven y disfruta los mejores jugos a la fuente de soda de fruta', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-01.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-02.jpg\"}, 	{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-03.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-04.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-05.jpg\"}]', '{\"Cuanto\": [1,2,3,4,5],\"Servicio\": [\"reserva\",\"recojo\"],\"Restaurante\":\"\"}', 29, 'vistas/img/productos/extras/extra01.jpg', 17, 402, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/extra01.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-06-30 18:05:51'),
(4, 2, 3, 'fisico', 'chicharron-de-trucha-1', 'Chicharron de trucha', 'No hay nada mejor que disfrutar de un delicioso de trucha', 'No hay nada mejor que disfrutar de un delicioso de trucha', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-01.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-02.jpg\"}, 	{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-03.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-04.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-05.jpg\"}]', '{\"Cuanto\": [1,2,3,4,5],\"Servicio\": [\"reserva\",\"recojo\"],\"Restaurante\":\"\"}', 29, 'vistas/img/productos/extras/extra02.jpg', 5, 401, 0, 0, 0, 0, 0, 0, 0, 'vistas/img/ofertas/extra02.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-06-25 00:27:28'),
(5, 3, 6, 'fisico', 'pizza-peperoni-1', 'Pizza-peperoni', 'en a a disfrutar las mejores pizzas , prueba la deliciosa pizza peperoni.', 'Ven a a disfrutar las mejores pizzas , prueba la deliciosa pizza peperoni.', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-01.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-02.jpg\"}, 	{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-03.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-04.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-05.jpg\"}]', '{\"Cuanto\": [1,2,3,4,5],\"Servicio\": [\"reserva\",\"recojo\"],\"Restaurante\":\"\"}', 45, 'vistas/img/productos/pizzas/pizza01.jpg', 7, 400, 0, 0, 0, 1, 1, 22, 50, 'vistas/img/ofertas/pizza01.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-06-24 17:12:02'),
(6, 3, 7, 'fisico', 'pizza-americana-1', 'Pizza-americana', 'disfrute la delicios pizza america', 'disfrute la delicios pizza america', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-01.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-02.jpg\"}, 	{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-03.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-04.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-05.jpg\"}]', '{\"Cuanto\": [1,2,3,4,5],\"Servicio\": [\"reserva\",\"recojo\"],\"Restaurante\":\"\"}', 55, 'vistas/img/productos/pizzas/pizza02.jpg', 7, 399, 0, 0, 0, 0, 0, 0, 0, 'vistas/img/ofertas/pizza02.jpg', '0000-00-00 00:00:00', 1, 1, 10, '2020-06-24 18:44:47'),
(7, 4, 6, 'fisico', 'malteada-de-chocolate-1', 'Malteada de chocolate', 'Deliciosa malteada de chocolate con crema de chantilli, disfrutelo ', 'Deliciosa malteada de chocolate con crema de chantilli, disfrutelo , nos encuentras en la jugueria frutti frutta', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-01.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-02.jpg\"}, 	{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-03.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-04.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-05.jpg\"}]', '{\"Cuanto\": [1,2,3,4,5],\"Servicio\": [\"reserva\",\"recojo\"],\"Restaurante\":\"\"}', 8, 'vistas/img/productos/bebidas/bebida01.jpg', 0, 0, 0, 0, 0, 1, 1, 10, 2, 'vistas/img/ofertas/bebida01.jpg', '0000-00-00 00:00:00', 0, 1, 1, '2020-06-30 18:14:03'),
(8, 4, 7, 'fisico', 'jugo-de-fresa-1', 'Jugo de fresa', 'Delicioso jugo de fresa  con leche ', 'Delicioso jugo de fresa  con leche ', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-01.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-02.jpg\"}, 	{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-03.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-04.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-05.jpg\"}]', '{\"Cuanto\": [1,2,3,4,5],\"Servicio\": [\"reserva\",\"recojo\"],\"Restaurante\":\"\"}', 55, 'vistas/img/productos/bebidas/bebida02.jpg', 0, 397, 0, 0, 0, 0, 0, 0, 0, 'vistas/img/ofertas/bebida02.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-06-30 19:24:36'),
(9, 5, 7, 'fisico', 'ensalada-de-frutas-1', 'Ensalada de frutas', 'Deliciosa ensalada de fruta con yogurt y helados', 'Deliciosa ensalada de fruta con yogurt y helados', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-01.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-02.jpg\"}, 	{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-03.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-04.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-05.jpg\"}]', '{\"Cuanto\": [1,2,3,4,5],\"Servicio\": [\"reserva\",\"recojo\"],\"Restaurante\":\"\"}', 55, 'vistas/img/productos/postres/postre10.jpg', 10, 396, 0, 0, 0, 0, 0, 0, 0, 'vistas/img/ofertas/postre01.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-06-24 18:44:40'),
(10, 5, 7, 'fisico', 'crema-volteada-1', 'Crema-volteada', 'Deliciosa crema volteada en en la cafeteria te y canela', 'Deliciosa crema volteada en en la cafeteria te y canela', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-01.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-02.jpg\"}, 	{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-03.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-04.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-05.jpg\"}]', '{\"Cuanto\": [1,2,3,4,5],\"Servicio\": [\"reserva\",\"recojo\"],\"Restaurante\":\"\"}', 55, 'vistas/img/productos/postres/postre02.jpg', 21, 395, 0, 0, 0, 0, 0, 0, 0, 'vistas/img/ofertas/postre02.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-06-30 05:57:43'),
(11, 4, 4, 'fisico', 'jugo-de-papaya-1', 'Jugo de papaya', 'Ven y disfruta los mejores jugos a la fuente de soda de fruta', 'Ven y disfruta los mejores jugos a la fuente de soda de fruta', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-01.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-02.jpg\"}, 	{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-03.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-04.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-05.jpg\"}]', '{\"Cuanto\": [1,2,3,4,5],\"Servicio\": [\"reserva\",\"recojo\"],\"Restaurante\":\"\"}', 55, 'vistas/img/productos/bebidas/bebida03.jpg', 0, 397, 0, 0, 0, 0, 0, 0, 0, 'vistas/img/ofertas/bebida03.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-06-30 20:53:51'),
(12, 1, 1, 'fisico', 'seco-de-pollo-1', 'Seco de Pollo', 'Delicioso rico seco de pollo ven y disfruta con tus migos tenemos los mejores decuentos para ti ', 'Delicioso rico seco de pollo ven y disfruta con tus migos tenemos los mejores decuentos para ti ', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-01.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-02.jpg\"}, 	{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-03.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-04.jpg\"},{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-05.jpg\"}]', '{\"Cuanto\": [1,2,3,4,5],\"Servicio\": [\"reserva\",\"recojo\"],\"Restaurante\":\"\"}', 29, 'vistas/img/productos/menu/menu03.jpg', 3, 404, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/menu03.jpg', '0000-00-00 00:00:00', 1, 1, 10, '2020-06-24 18:44:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `imgFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `tipoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `imgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloImgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloTextoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `boton` text COLLATE utf8_spanish_ci NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `imgFondo`, `tipoSlide`, `imgProducto`, `estiloImgProducto`, `estiloTextoSlide`, `titulo1`, `titulo2`, `titulo3`, `boton`, `url`, `fecha`) VALUES
(1, 'vistas/img/slide/slide1/fondo1.jpg', 'slideOpcion1', 'vistas/img/slide/slide1/menu.jpg', '{\"top\": \"15%\" ,\"right\": \"10%\" ,\"width\": \"45%\", \"left\":\"\"}', '{\"top\": \"20%\" ,\"right\": \"\" ,\"width\": \"40%\", \"left\":\"10%\"}', '{\"texto\": \"RESTAURANTE\" ,\"color\": \"#333\"}', '{\"texto\": \"RESERVA\" ,\"color\": \"#00FFFF\"}', '{\"texto\": \"LOS MEJORES MENUS\" ,\"color\": \"#888\"}', '<button class=\"btn btn-default backColor text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2020-06-24 03:24:22'),
(2, 'vistas/img/slide/slide2/fondo2.jpg', 'slideOpcion2', 'vistas/img/slide/slide2/pizzapeperoni.jpg', '{\r\n	\"width\": \"30%\",\r\n	\"top\": \"5%\",\r\n	\"left\": \"15%\", \"right\":\"\"\r\n}', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"15%\",\r\n	\"left\": \"\",\r\n	\"right\": \"15%\"\r\n}', '{\"texto\": \"PIZZAS\" ,\"color\": \"#333\"}', '{\"texto\": \"LAS MEJORES PIZZAS\" ,\"color\": \"#777\"}', '{\"texto\": \"LO ENCUENTRAS AQUI\" ,\"color\": \"#888\"}', '<button class=\"btn btn-default backColor text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2020-06-24 03:25:23'),
(3, 'vistas/img/slide/slide3/fondo3.jpg', 'slideOpcion2', 'vistas/img/slide/slide3/pollito.jpg', '{\r\n	\"width\": \"35%\",\r\n	\"top\": \"5%\",\r\n	\"left\": \"15%\",\r\n	\"right\": \"\"\r\n}', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"15%\",\r\n	\"left\": \"\",\r\n	\"right\": \"15%\"\r\n}', '{\"texto\": \"EL MEJOR POLLO\" ,\"color\": \"#808080\"}', '{\"texto\": \"LO ENCUENTRAS\" ,\"color\": \"#ccc\"}', '{\"texto\": \"AQUI\" ,\"color\": \"#aaa\"}', '<button class=\"btn btn-default backColor text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2020-06-24 03:31:43'),
(4, 'vistas/img/slide/slide4/fondo4.jpg', 'slideOpcion1', '', '', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"20%\",\r\n	\"left\": \"10%\",\r\n	\"right\": \"\"\r\n}', '{\"texto\": \"TAMBIEN OFRECEMOS\" ,\"color\": \"#333\"}', '{\"texto\": \"DELICIOSOS\" ,\"color\": \"#777\"}', '{\"texto\": \"POSTRES\" ,\"color\": \"#888\"}', '', '', '2020-06-24 03:33:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `fecha`) VALUES
(1, 'Menu ejecutivo', 1, 'menu-ejecutivo', '2020-06-24 00:12:31'),
(2, 'Menu especial', 1, 'menu-especial', '2020-06-24 00:12:58'),
(3, 'Platos tipicos', 1, 'platos-tipicos', '2020-06-24 00:13:26'),
(4, 'Platos de fondo', 1, 'platos-de-fondo', '2020-06-24 00:13:53'),
(5, 'Platos con trucha', 2, 'platos-con-trucha', '2020-06-24 00:14:42'),
(6, 'Platos con pescado', 2, 'platos-con-pescado', '2020-06-24 00:15:21'),
(7, 'Menu marino', 2, 'menu-marino', '2020-06-24 00:16:23'),
(8, 'Parrillas', 2, 'parrillas', '2020-06-24 00:16:45'),
(9, 'Pizza familiar', 3, 'pizza-familiar', '2020-06-24 00:17:18'),
(10, 'Pizza grande', 3, 'pizza-grande', '2020-06-24 00:18:04'),
(11, 'Pizza mediana', 3, 'pizza-mediana', '2020-06-24 00:18:39'),
(12, 'Pizza personal', 3, 'pizza-personal', '2020-06-24 00:19:08'),
(13, 'Gaseosas', 4, 'gaseosas', '2020-06-24 00:31:05'),
(14, 'Infuciones', 4, 'infuciones', '2020-06-24 00:20:16'),
(15, 'Malteadas', 4, 'malteadas', '2020-06-24 00:20:42'),
(16, 'Jugos', 4, 'jugos', '2020-06-24 00:21:12'),
(17, 'Batidos', 4, 'batidos', '2020-06-24 00:21:40'),
(18, 'Mazamorras', 5, 'mazamorras', '2020-06-24 00:22:05'),
(19, 'Frapuccinos', 5, 'frapuccinos', '2020-06-24 00:22:40'),
(20, 'Cupcakes', 5, 'cupcakes', '2020-06-24 00:26:18'),
(21, 'Kekes', 5, 'kekes', '2020-06-24 00:27:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `modo` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `verificacion` int(11) NOT NULL,
  `emailEncriptado` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`, `email`, `modo`, `foto`, `verificacion`, `emailEncriptado`, `fecha`) VALUES
(2, 'Francisco gomez', '$2a$07$asxx54ahjppf45sd87a5auxq/SS293XhTEeizKWMnfhnpfay0AALe', 'pepe@gmail.com', 'directo', 'vistas/img/usuarios/2/104.jpg', 0, '6b0becddecd5a06042b3f8078c97f2e0', '2017-10-27 15:55:02'),
(3, 'Juan Fernando Urrego Alvarez', 'null', 'juanustudio@hotmail.com', 'facebook', 'http://graph.facebook.com/10215085853809464/picture?type=large', 0, 'null', '2017-10-27 15:55:12'),
(4, 'Tutoriales a tu Alcance', 'null', 'correo.tutorialesatualcance@gmail.com', 'google', 'https://lh4.googleusercontent.com/-80gqeIg_Gq8/AAAAAAAAAAI/AAAAAAAAAF4/0_8JQ_8Gffk/s96-c/photo.jpg', 0, 'null', '2017-10-27 15:55:25'),
(9, 'nayelli meza muñoz', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 'nmeza@gmail.com', 'directo', '', 0, '890e96fa66606918a4bef64567bff6a5', '2020-06-30 05:01:12'),
(11, 'nayelli meza muñoz', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 'nayemeza@gmail.com', 'directo', '', 0, '2d7f8b7a89a6bcbcb4e7d49febaae7fe', '2020-06-30 20:48:43'),
(12, 'nayelli mireya meza mUñoz', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 'nayellimeza@gmail.com', 'directo', '', 0, '0dcb9662561b8fb77abe5e5b3d1810f9', '2020-06-30 20:52:30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comercio`
--
ALTER TABLE `comercio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deseos`
--
ALTER TABLE `deseos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `comercio`
--
ALTER TABLE `comercio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `deseos`
--
ALTER TABLE `deseos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
