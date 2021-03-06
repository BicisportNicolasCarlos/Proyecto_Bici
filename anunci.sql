-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-10-2017 a las 17:51:46
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto1_bis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anunci`
--

CREATE TABLE `anunci` (
  `anu_id` int(4) NOT NULL,
  `anu_titol` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `anu_data_anunci` date NOT NULL,
  `anu_data_robatori` date NOT NULL,
  `anu_ubicacio_robatori` varchar(35) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `anu_descripcio_robatori` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `anu_marca` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `anu_model` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `anu_color` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `anu_antiguitat` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `anu_descripcio` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `anu_numero_serie` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `anu_foto` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `anu_compensacio` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `anunci`
--

INSERT INTO `anunci` (`anu_id`, `anu_titol`, `anu_data_anunci`, `anu_data_robatori`, `anu_ubicacio_robatori`, `anu_descripcio_robatori`, `anu_marca`, `anu_model`, `anu_color`, `anu_antiguitat`, `anu_descripcio`, `anu_numero_serie`, `anu_foto`, `anu_compensacio`) VALUES
(1, 'BICICLETA ROBADA 1', '2017-10-18', '2017-10-11', 'Plaça Catalunya, Barcelona', 'Bicicleta robada 1', 'Trek', 'Trek 1', 'Rojo', NULL, 'Bicicleta robada 1', '652963846', '<a href=\'FOTOS/foto1.jpg\'><img src=\"FOTOS/foto1.jpg\" width=\"70px\" height=\"50px\"></a>', NULL),
(2, 'BICICLETA ROBADA 2', '2017-10-17', '2017-10-03', 'Plaza Mayor, Lleida', 'Bicicleta robada 2', 'Trek', 'Trek 2', 'Azul marino', NULL, 'Bicicleta robada 2', '652962843', '<a href=\'FOTOS/foto2.jpg\'><img src=\"FOTOS/foto2.jpg\" width=\"70px\" ', NULL),
(3, 'BICICLETA ROBADA 3', '2017-10-18', '2017-10-05', 'Av. Pirineus, St. Andreu Barca', 'Bicicleta robada 3', 'Trek', 'Trek 3', 'Verde', NULL, 'Bicicleta robada 3', '652966847', '<a href=\'FOTOS/foto3.jpg\'><img src=\"FOTOS/foto3.jpg\" width=\"70px\" ', NULL),
(4, 'BICICLETA ROBADA 4', '2017-10-15', '2017-10-14', 'Plaza España, Madrid', 'Bicicleta robada 4', 'Trek ', 'Trek 4', 'Amarillo', NULL, 'Bicicleta robada 4', '634963842', '<a href=\'FOTOS/foto4.jpg\'><img src=\"FOTOS/foto4.jpg\" width=\"70px\" ', NULL),
(5, 'BICICLETA ROBADA 5', '2017-10-13', '2017-10-01', 'Sant Josep, Hospitalet', 'Bicicleta robada 5', 'Trek', 'Trek 5', 'Azul cielo', NULL, 'Bicicleta robada 5', '652933244', '<a href=\'FOTOS/foto5.jpg\'><img src=\"FOTOS/foto5.jpg\" width=\"70px\" ', NULL),
(6, 'BICICLETA ROBADA 6', '2017-10-18', '2017-10-18', 'Av. Carrilet, Hospitalet', 'Bicicleta robada 6', 'Merida', 'Merida 1', 'Rojo', NULL, 'Bicicleta robada 6', '651163841', '<a href=\'FOTOS/foto6.jpg\'><img src=\"FOTOS/foto6.jpg\" width=\"70px\" ', NULL),
(7, 'BICICLETA ROBADA 7', '2017-10-03', '2017-10-02', 'Plaza España, Barcelona', 'Bicicleta robada 7', 'Merida', 'Merida 2', 'Rojo', NULL, 'Bicicleta robada 7', '658963941', '<a href=\'FOTOS/foto7.jpg\'><img src=\"FOTOS/foto7.jpg\" width=\"70px\" ', NULL),
(8, 'BICICLETA ROBADA 8', '2017-10-15', '2017-10-05', 'La Giralda, Sevilla', 'Bicicleta robada 8', 'Merida', 'Merida 3', 'Verde', NULL, 'Bicicleta robada 8', '654563841', '<a href=\'FOTOS/foto8.jpg\'><img src=\"FOTOS/foto8.jpg\" width=\"70px\" ', NULL),
(9, 'BICICLETA ROBADA 9', '2017-10-10', '2017-10-08', 'La Segrera, Barcelona', 'Bicicleta robada 9', 'Merida ', 'Merida 4', 'Azul', NULL, 'Bicicleta robada 9', '682943844', '<a href=\'FOTOS/foto9.jpg\'><img src=\"FOTOS/foto9.jpg\" width=\"70px\" ', NULL),
(10, 'BICICLETA ROBADA 10', '2017-10-09', '2017-10-03', 'Sant Gervasi, Hospitalet', 'Bicicleta robada 10', 'Merida ', 'Merida 5', 'Amarillo', NULL, 'Bicicleta robada 10', '672923842', '<a href=\'FOTOS/foto10.jpg\'><img src=\"FOTOS/foto10.jpg\" width=\"70px\" ', NULL),
(11, 'BICICLETA ROBADA 11', '2017-10-12', '2017-10-02', 'Plaza Colon, Barcelona', 'Bicicleta robada 11', 'Scott', 'Scott 1', 'Azul marino', NULL, 'Bicicleta robada 11', '673542097', '<a href=\'FOTOS/foto11.jpg\'><img src=\"FOTOS/foto11.jpg\" width=\"70px\" ', NULL),
(12, 'BICICLETA ROBADA 12', '2017-10-17', '2017-10-14', 'Plaza Cataluña, St. Andreu Barca', 'Bicicleta robada 12', 'Scott', 'Scott 2', 'Rojo', NULL, 'Bicicleta robada 12', '673242093', '<a href=\'FOTOS/foto12.jpg\'><img src=\"FOTOS/foto12.jpg\" width=\"70px\" ', NULL),
(13, 'BICICLETA ROBADA 13', '2017-10-16', '2017-10-11', 'Calle Girasol, Extremadura', 'Bicicleta robada 13', 'Scott', 'Scott 3', 'Verde', NULL, 'Bicicleta robada 13', '671242091', '<a href=\'FOTOS/foto13.jpg\'><img src=\"FOTOS/foto13.jpg\" width=\"70px\" ', NULL),
(14, 'BICICLETA ROBADA 14', '2017-10-04', '2017-10-03', 'Carrer Madrid, Barcelona', 'Bicicleta robada 14', 'Scott', 'Scott 4', 'Verde', NULL, 'Bicicleta robada 14', '673542097', '<a href=\'FOTOS/foto14.jpg\'><img src=\"FOTOS/foto14.jpg\" width=\"70px\" ', NULL),
(15, 'BICICLETA ROBADA 15', '2017-10-07', '2017-10-02', 'Carrer Catalunya, St. Vicenç Horts', 'Bicicleta robada 15', 'Scott', 'Scott 5', 'Rojo', NULL, 'Bicicleta robada 15', '679842094', '<a href=\'FOTOS/foto15.jpg\'><img src=\"FOTOS/foto15.jpg\" width=\"70px\" ', NULL),
(16, 'BICICLETA ROBADA 16', '2017-10-10', '2017-10-09', 'Gornal, Hospitalet', 'Bicicleta robada 16', 'Giant', 'Giant 1', 'Verde', NULL, 'Bicicleta robada 16', '673932091', '<a href=\'FOTOS/foto16.jpg\'><img src=\"FOTOS/foto16.jpg\" width=\"70px\" ', NULL),
(17, 'BICICLETA ROBADA 17', '2017-10-18', '2017-10-05', 'Bellvitge, Hospitalet', 'Bicicleta robada 17', 'Giant', 'Giant 2', 'Rojo', NULL, 'Bicicleta robada 17', '679342095', '<a href=\'FOTOS/foto17.jpg\'><img src=\"FOTOS/foto17.jpg\" width=\"70px\" ', NULL),
(18, 'BICICLETA ROBADA 18', '2017-10-17', '2017-10-06', 'La Florida, Hospitalet', 'Bicicleta robada 18', 'Giant', 'Giant 3', 'Azul', NULL, 'Bicicleta robada 18', '688542092', '<a href=\'FOTOS/foto18.jpg\'><img src=\"FOTOS/foto18.jpg\" width=\"70px\" ', NULL),
(19, 'BICICLETA ROBADA 19', '2017-10-03', '2017-10-01', 'Gornal, Hospitalet', 'Bicicleta robada 19', 'Giant', 'Giant 4', 'Verde', NULL, 'Bicicleta robada 19', '676642098', '<a href=\'FOTOS/foto19.jpg\'><img src=\"FOTOS/foto19.jpg\" width=\"70px\" ', NULL),
(20, 'BICICLETA ROBADA 20', '2017-10-10', '2017-10-06', 'La Segrera, Barcelona', 'Bicicleta robada 20', 'Giant', 'Giant 5', 'Rojo', NULL, 'Bicicleta robada 20', '663542091', '<a href=\'FOTOS/foto20.jpg\'><img src=\"FOTOS/foto20.jpg\" width=\"70px\" ', NULL),
(21, 'BICICLETA ROBADA 21', '2017-10-09', '2017-10-05', 'Bellvitge, Hospitalet', 'Bicicleta robada 21', 'Cannondale', 'Cannondale 1', 'Rojo', NULL, 'Bicicleta robada 21', '606542098', '<a href=\'FOTOS/foto21.jpg\'><img src=\"FOTOS/foto21.jpg\" width=\"70px\" ', NULL),
(22, 'BICICLETA ROBADA 22', '2017-10-09', '2017-10-04', 'Plaza Cataluña, St. Andreu Barca', 'Bicicleta robada 22', 'Cannondale', 'Cannondale 2', 'Rojo', NULL, 'Bicicleta robada 22', '673442094', '<a href=\'FOTOS/foto22.jpg\'><img src=\"FOTOS/foto22.jpg\" width=\"70px\" ', NULL),
(23, 'BICICLETA ROBADA 23', '2017-10-17', '2017-10-09', 'Av. Carrilet, Hospitalet', 'Bicicleta robada 23', 'Cannondale', 'Cannondale 3', 'Verde', NULL, 'Bicicleta robada 23', '612542091', '<a href=\'FOTOS/foto23.jpg\'><img src=\"FOTOS/foto23.jpg\" width=\"70px\" ', NULL),
(24, 'BICICLETA ROBADA 24', '2017-10-16', '2017-10-15', 'Gornal, Hospitalet', 'Bicicleta robada 24', 'Cannondale', 'Cannondale 4', 'Amarillo', NULL, 'Bicicleta robada 24', '685542090', '<a href=\'FOTOS/foto24.jpg\'><img src=\"FOTOS/foto24.jpg\" width=\"70px\" ', NULL),
(25, 'BICICLETA ROBADA 25', '2017-10-18', '2017-10-17', 'La Florida, Hospitalet', 'Bicicleta robada 25', 'Cannondale', 'Cannondale 5', 'Gris', NULL, 'Bicicleta robada 25', '688542090', '<a href=\'FOTOS/foto25.jpg\'><img src=\"FOTOS/foto25.jpg\" width=\"70px\" ', NULL),
(26, 'BICICLETA ROBADA 26', '2017-10-17', '2017-10-17', 'La Segrera, Barcelona', 'Bicicleta robada 26', 'Ghost', 'Ghost 1', 'Rojo', NULL, 'Bicicleta robada 26', '628542097', '<a href=\'FOTOS/foto26.jpg\'><img src=\"FOTOS/foto26.jpg\" width=\"70px\" ', NULL),
(27, 'BICICLETA ROBADA 27', '2017-10-04', '2017-10-04', 'Plaza Cataluña, Barcelona', 'Bicicleta robada 27', 'Ghost', 'Ghost 2', 'Verde', NULL, 'Bicicleta robada 27', '698542091', '<a href=\'FOTOS/foto27.jpg\'><img src=\"FOTOS/foto27.jpg\" width=\"70px\" ', NULL),
(28, 'BICICLETA ROBADA 28', '2017-10-09', '2017-10-02', 'Plaza España, Madrid', 'Bicicleta robada 28', 'Ghost', 'Ghost 3', 'Azul', NULL, 'Bicicleta robada 28', '690542091', '<a href=\'FOTOS/foto28.jpg\'><img src=\"FOTOS/foto28.jpg\" width=\"70px\" ', NULL),
(29, 'BICICLETA ROBADA 29', '2017-10-16', '2017-10-16', 'La Giralda, Sevilla', 'Bicicleta robada 29', 'Ghost', 'Ghost 4', 'Amarillo', NULL, 'Bicicleta robada 29', '673482097', '<a href=\'FOTOS/foto29.jpg\'><img src=\"FOTOS/foto29.jpg\" width=\"70px\" ', NULL),
(30, 'BICICLETA ROBADA 30', '2017-10-02', '2017-10-01', 'La Florida, Hospitalet', 'Bicicleta robada 30', 'Ghost', 'Ghost 5', 'Verde', NULL, 'Bicicleta robada 30', '679842090', '<a href=\'FOTOS/foto30.jpg\'><img src=\"FOTOS/foto30.jpg\" width=\"70px\" ', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anunci`
--
ALTER TABLE `anunci`
  ADD PRIMARY KEY (`anu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anunci`
--
ALTER TABLE `anunci`
  MODIFY `anu_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
