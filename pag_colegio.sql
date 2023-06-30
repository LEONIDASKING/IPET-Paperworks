-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2023 a las 08:28:19
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pag_colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumnos` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dni` int(11) NOT NULL,
  `curso` varchar(3) NOT NULL,
  `turno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumnos`, `nombre`, `apellido`, `dni`, `curso`, `turno`) VALUES
(1, 'tadeo', 'cruze', 54763772, '1b', 'tarde'),
(2, 'mauro', 'lauro', 64738298, '2c', 'tarde'),
(3, 'julio', 'martinez', 65476378, '3b', 'tarde'),
(4, 'maria', 'jaurez', 64736367, '2a', 'mañana'),
(5, 'milena', 'roca', 54654678, '4a', 'mañana'),
(6, 'noelia', 'marquez', 54635367, '6a', 'mañana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunicados`
--

CREATE TABLE `comunicados` (
  `id_comunicado` int(11) NOT NULL,
  `nombre_curso` varchar(100) NOT NULL,
  `dia` varchar(100) NOT NULL,
  `hora` varchar(100) NOT NULL,
  `motivo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comunicados`
--

INSERT INTO `comunicados` (`id_comunicado`, `nombre_curso`, `dia`, `hora`, `motivo`) VALUES
(1, '1b', '20-12-23', '14:30hs', 'Falta de profe'),
(2, '2c', '02-11-23', '15:20hs', 'Falta de agua'),
(3, '4a', '06-08-23', '09hs', 'Caida de techo'),
(4, '5a', '15-07-23', '17hs', 'falta de profe'),
(5, '6a', '20-10-23', '14hs', 'fin de jornada'),
(6, '7b', '24-06-23', '14hs', 'cumpleaños messi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directivos`
--

CREATE TABLE `directivos` (
  `id_directivos` int(11) NOT NULL,
  `nombre_completo` varchar(110) NOT NULL,
  `dni` int(11) NOT NULL,
  `contraseña` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `directivos`
--

INSERT INTO `directivos` (`id_directivos`, `nombre_completo`, `dni`, `contraseña`) VALUES
(1, 'Maria Julieta Vazquez', 34526736, 'IPET363'),
(2, 'Pablo Hernandez', 37653467, 'colegioIPET23'),
(3, 'Hugo Martinez', 24356354, 'secuFACHA2323'),
(4, 'Keila Ruiz', 24534765, 'ESCUELA2023ipet'),
(5, 'Julieta Alvarez', 30876549, 'Julito23IPET'),
(6, 'Franco Mendoza', 25456789, 'PEIT336');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios_colectivos`
--

CREATE TABLE `horarios_colectivos` (
  `id_colectivo` int(11) NOT NULL,
  `ruta` varchar(100) NOT NULL,
  `dia` varchar(20) NOT NULL,
  `entra_a` varchar(100) NOT NULL,
  `horarios` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horarios_colectivos`
--

INSERT INTO `horarios_colectivos` (`id_colectivo`, `ruta`, `dia`, `entra_a`, `horarios`) VALUES
(1, '88', 'lunes', 'mi granja', '06:15\r\n06:55\r\n07:45\r\n08:30\r\n09:00\r\n09:30\r\n10:00\r\n10:35\r\n11:00\r\n11:50\r\n12:10\r\n12:30\r\n13:20\r\n13:50\r\n14:25\r\n15:20\r\n15:50\r\n16:40\r\n17:35\r\n18:50\r\n19:15'),
(2, '19', 'jueves', 'monte cristo', '09:30\r\n10:00\r\n10:35\r\n11:00\r\n11:50\r\n12:10\r\n12:30\r\n13:20\r\n13:50\r\n14:25\r\n15:20\r\n15:50\r\n16:40\r\n17:35\r\n18:50\r\n19:15\r\n19:40\r\n20:40\r\n21:15\r\n22:20\r\n23:00\r\n00:15 '),
(3, '88', 'miercoles', 'mi granja', '05:00\r\n06:05\r\n06:30\r\n07:00\r\n07:20\r\n08:15\r\n08:45'),
(4, '88', 'viernes', 'no entra', ' 05:00\r\n06:05\r\n06:30\r\n07:00\r\n07:20\r\n08:15\r\n08:45\r\n09:15\r\n09:45\r\n10:00\r\n10:30\r\n11:20\r\n12:00\r\n12:50\r\n1'),
(5, '19', 'martes', 'no entra', '45\r\n06:30\r\n07:00\r\n07:30\r\n08:00\r\n08:45\r\n09:20\r\n10:00\r\n10:45\r\n11:25\r\n12:00\r\n12:40\r\n13:00\r\n13:30\r\n14:00\r\n14:30\r\n15:00\r\n15:30\r\n16:00\r\n16:30\r\n17:00\r\n17:30\r\n18:00\r\n18:25'),
(6, '88', 'Martes', 'Mi Granja', '09:30\r\n10:00\r\n10:35\r\n11:00\r\n11:50\r\n12:10\r\n12:30\r\n13:20\r\n13:50\r\n14:25\r\n15:20\r\n15:50\r\n16:40\r\n17:35\r\n18:50\r\n19:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios_cursos`
--

CREATE TABLE `horarios_cursos` (
  `id_curso` int(11) NOT NULL,
  `nombre_curso` varchar(100) NOT NULL,
  `dia` varchar(100) NOT NULL,
  `hora` varchar(100) NOT NULL,
  `materia` varchar(100) NOT NULL,
  `profesor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horarios_cursos`
--

INSERT INTO `horarios_cursos` (`id_curso`, `nombre_curso`, `dia`, `hora`, `materia`, `profesor`) VALUES
(1, '2b', 'martes', '08-10am', 'Lengua', 'Julio Cortazar'),
(2, '6a', 'Jueves', '17-18pm', 'fisica', 'Leopoldo Miranda'),
(3, '5a', 'Lunes', '17-19pm', 'Matematicas', 'Sergio Bogado'),
(4, '1d', 'Viernes', '12-13pm', 'Geografia', 'Mariano Moreno'),
(5, '7b', 'Lunes', '10-11pm', 'Economia', 'Lauro Gonzales'),
(6, '2b', 'Lunes', '10-12am', 'Dibujo Tecnico', 'Micaela Suarez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios_tutorias`
--

CREATE TABLE `horarios_tutorias` (
  `id_tutoria` int(11) NOT NULL,
  `turno` varchar(20) NOT NULL,
  `dia` varchar(10) NOT NULL,
  `hora` varchar(7) NOT NULL,
  `materia` varchar(100) NOT NULL,
  `profesor` varchar(200) NOT NULL,
  `correo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horarios_tutorias`
--

INSERT INTO `horarios_tutorias` (`id_tutoria`, `turno`, `dia`, `hora`, `materia`, `profesor`, `correo`) VALUES
(1, 'mañana', 'lunes', '09hs', 'Fisica', 'Luanes', 'lunito@gmail.com'),
(2, 'mañana', 'martes', '08hs', 'Quimica', 'Jameson', 'jjmeson@gmail.com'),
(3, 'tarde', 'martes', '15hs', 'Matematicas', 'Carolina', 'caroro@gmail.com'),
(4, 'tarde', 'jueves', '16:20hs', 'Lengua', 'Mariela', 'marima@gmail.com'),
(5, 'mañana', 'viernes', '10hs', 'Geografia', 'Lucas', 'luquitas@gmail.com'),
(6, 'tarde', 'miercoles', '17:20hs', 'Historia', 'Hugo', 'huguitolindo@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_paicor`
--

CREATE TABLE `lista_paicor` (
  `id_paicor` int(11) NOT NULL,
  `dni` int(8) NOT NULL,
  `nombre_completo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lista_paicor`
--

INSERT INTO `lista_paicor` (`id_paicor`, `dni`, `nombre_completo`) VALUES
(1, 45738219, 'joaquin mendez'),
(2, 45738230, 'sofia perez'),
(3, 45792230, 'Domingo lopez'),
(4, 57897625, 'aylen marquez'),
(5, 45738643, 'keila ruiz'),
(6, 54678982, 'Julian vega');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `papeles`
--

CREATE TABLE `papeles` (
  `id_alumno` int(11) NOT NULL,
  `nombre_alumno` varchar(100) NOT NULL,
  `cus` tinyint(1) NOT NULL,
  `isa` tinyint(1) NOT NULL,
  `declaracion_jurada` tinyint(1) NOT NULL,
  `autorizacion` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `papeles`
--

INSERT INTO `papeles` (`id_alumno`, `nombre_alumno`, `cus`, `isa`, `declaracion_jurada`, `autorizacion`) VALUES
(1, 'Martin Lopez', 1, 0, 0, 1),
(2, 'Melanie Pucheta', 1, 1, 1, 1),
(3, 'Victoria Supol', 1, 1, 1, 0),
(4, 'Ludmila Noriam', 1, 1, 0, 0),
(5, 'Luis Borja', 1, 1, 1, 0),
(6, 'Cecilia Avellaneda', 1, 1, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumnos`);

--
-- Indices de la tabla `comunicados`
--
ALTER TABLE `comunicados`
  ADD PRIMARY KEY (`id_comunicado`);

--
-- Indices de la tabla `directivos`
--
ALTER TABLE `directivos`
  ADD PRIMARY KEY (`id_directivos`);

--
-- Indices de la tabla `horarios_colectivos`
--
ALTER TABLE `horarios_colectivos`
  ADD PRIMARY KEY (`id_colectivo`);

--
-- Indices de la tabla `horarios_cursos`
--
ALTER TABLE `horarios_cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indices de la tabla `horarios_tutorias`
--
ALTER TABLE `horarios_tutorias`
  ADD PRIMARY KEY (`id_tutoria`);

--
-- Indices de la tabla `lista_paicor`
--
ALTER TABLE `lista_paicor`
  ADD PRIMARY KEY (`id_paicor`);

--
-- Indices de la tabla `papeles`
--
ALTER TABLE `papeles`
  ADD PRIMARY KEY (`id_alumno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumnos` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `comunicados`
--
ALTER TABLE `comunicados`
  MODIFY `id_comunicado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `directivos`
--
ALTER TABLE `directivos`
  MODIFY `id_directivos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `horarios_colectivos`
--
ALTER TABLE `horarios_colectivos`
  MODIFY `id_colectivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `horarios_cursos`
--
ALTER TABLE `horarios_cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `horarios_tutorias`
--
ALTER TABLE `horarios_tutorias`
  MODIFY `id_tutoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `lista_paicor`
--
ALTER TABLE `lista_paicor`
  MODIFY `id_paicor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `papeles`
--
ALTER TABLE `papeles`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
