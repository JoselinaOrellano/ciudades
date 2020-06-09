-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2020 a las 03:56:25
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_ciudades`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id_ciudad` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `provincia` varchar(72) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `codpostal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id_ciudad`, `nombre`, `descripcion`, `provincia`, `imagen`, `codpostal`) VALUES
(3, 'Tandil', 'Tandil es la ciudad cabecera del partido homónimo ubicada en el centro-este de la Provincia de Buenos Aires, Argentina. Se halla sobre las sierras del sistema de Tandilia. Fue fundada por el brigadier general Martín Rodríguez, gobernador de la provincia de Buenos Aires en 1823, con el nombre de Fuerte Independencia. Su población inicial fue de 400 habitantes y debió soportar el asedio permanente de los indígenas, que trataron de impedir la consolidación del poblado. Es una ciudad con clima templado, con temperaturas medias de 13.4 °C, que cuenta con un núcleo urbano actual dividido en 33 barrios. Su economía está basada principalmente en la agricultura, la ganadería, el turismo —que ha tenido un importante crecimiento en los últimos años, especialmente en el período vacacional que corresponde con la celebración de la Semana Santa donde se desarrolla la liturgia católica alusiva a la fecha—y la actividad minera —la que está siendo cuestionada por organizaciones ecologistas—.También se han instalado, entre otras, varias empresas de desarrollo de software, a medida que crece su reciente polo tecnológico.', 'Buenos Aires', 'img/tandil.jpg', 7000),
(4, 'Rauch', 'Rauch es una ciudad argentina ubicada en el interior de la Provincia de Buenos Aires, con más exactitud en el centro-este de esta provincia. Es cabecera del partido de Rauch y está ubicada a 277 km de Buenos Aires y a 272 km de La Plata. Forma parte de la Quinta Sección Electoral de la Provincia de Buenos Aires. El clima de Rauch es templado y húmedo con una temperatura anual de 15,4 °C y humedad relativa de 74%, la humedad mínima es de 67% en verano y la máxima en invierno de 86%, mientras que la temperatura máxima alcanza en diciembre, enero y febrero llegando a 22 °C de media. Los meses restantes corresponden a temperaturas de media estación y en el final del verano y principio del otoño se corresponden a las temperaturas más estables.', 'Buenos Aires', 'img/rauch.jpg', 7203),
(5, 'Merlo', 'Merlo (cuyo nombre oficial - que permite diferenciarlo del municipio bonaerense homónimo - es Ciudad Villa de Merlo, derivado del nombre original Melo en honor a Pedro Melo de Portugal) es una ciudad argentina del departamento Junín de la provincia de San Luis.  Se caracteriza por ser uno de los microclimas del mundo,la ciudad con mejor calidad ambiental del país y la tercera ciudad con mayor población de San Luis, con más de 17.084 habitantes según el último censo nacional del año 2010.4  Desde la primera mitad del siglo XX es uno de los destinos turísticos más relevantes de la República Argentina y es también una de las ciudades con mayor crecimiento demográfico (84%) a nivel nacional durante la primera década del siglo XXI.', 'San Luis', 'img/merlo.jpg', 5881),
(6, 'Termas de Rio Hondo', 'Termas de Río Hondo es una ciudad del norte de Argentina, en la provincia de Santiago del Estero. Es cabecera del departamento Río Hondo, a orillas del río Dulce. La ciudad es el principal centro termal del país, ya que la misma se encuentra sobre una gran terma mineralizada que cubre 12 km a la redonda. Las aguas se indican especialmente como tónicas así como para la presión sanguínea y el reumatismo. Cuenta con una infraestructura hotelera de más de 170 establecimientos de distintas categorías, con 14.500 plazas, además de numerosos acampes.', 'Santiago del Estero', 'img/termas_de_rio_hondo.jpg', 4220),
(7, 'San Martin de los Andes', 'San Martín de los Andes es una ciudad, en el sudoeste de la provincia del Neuquén, enclavada en la Cordillera de los Andes, Argentina, sobre la costa este del lago Lácar, y es una localidad turística muy importante de la provincia del Neuquén.  En 1898 el general Rudecindo Roca resolvió reocupar el fuerte Maipú y fundar un pueblo a orillas del lago Lácar, con el fin de sentar soberanía sobre la región. Es así como el 4 de febrero de 1898 el coronel Celestino Pérez, acatando las órdenes de este, fundó San Martín de los Andes, la última ciudad patagónica enmarcada en la campaña al desierto.  San Martín de los Andes es la cabecera del departamento Lácar, se encuentra a 640 msnm y a 1575 km de Buenos Aires.  Es uno de los puntos turísticos más importantes de Argentina y de la región patagónica. Se accede por la Ruta Nacional 40​ y posee un aeropuerto a 21,6 km del centro.', 'Neuquen', 'img/san_martin_andes.jpg', 8370),
(8, 'Puerto Iguazu', 'Puerto Iguazú es una ciudad de la provincia de Misiones, en el extremo nordeste de la Argentina. Esta localidad se encuentra situada a 17 km de las cataratas del Iguazú, una de las Siete maravillas naturales del mundo. La actividad turística, centrada en estas cataratas, es su principal motor económico, aunque también se destaca el comercio internacional al estar unida con la ciudad brasileña de Foz do Iguaçu a través del puente internacional Tancredo Neves, el cual une las rutas Nacional 12 y la BR-469. Forma parte de la zona conocida como la Triple Frontera, en donde contacta la soberanía argentina con la del Brasil — Foz do Iguaçu —, y con la soberanía del Paraguay — Ciudad del Este y Presidente Franco.', 'Misiones', 'imagen/puerto_iguazu.jpg', 3370);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
