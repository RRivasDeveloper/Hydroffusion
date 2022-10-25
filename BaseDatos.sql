-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2022 a las 05:18:23
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alumnos`
--
CREATE DATABASE IF NOT EXISTS `alumnos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `alumnos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id_alumno` int(11) NOT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `aficiones` varchar(100) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id_alumno`, `nombres`, `apellidos`, `correo`, `aficiones`, `id_usuario`) VALUES
(1, 'sara', 'Gonz&aacute;lez Cajas', 'sara@gmail', 'bailar', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_cursos`
--

CREATE TABLE `alumno_cursos` (
  `id_alumno` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `anio` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno_cursos`
--

INSERT INTO `alumno_cursos` (`id_alumno`, `id_curso`, `anio`) VALUES
(1, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nombre`) VALUES
(1, 'redes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `nombres` varchar(35) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `correo`, `nombres`, `password`) VALUES
(1, 'sara@gmail', 'sara', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id_alumno`);

--
-- Indices de la tabla `alumno_cursos`
--
ALTER TABLE `alumno_cursos`
  ADD PRIMARY KEY (`id_alumno`,`id_curso`,`anio`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `dblogin`
--
CREATE DATABASE IF NOT EXISTS `dblogin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dblogin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `usuario` varchar(60) NOT NULL,
  `conrtaseña` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Base de datos: `desarrollo`
--
CREATE DATABASE IF NOT EXISTS `desarrollo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `desarrollo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `edad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `nombre`, `edad`) VALUES
(1, 'Sara Lucía', 7);
--
-- Base de datos: `hidro`
--
CREATE DATABASE IF NOT EXISTS `hidro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hidro`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hidro`
--

CREATE TABLE `hidro` (
  `id_control` int(11) NOT NULL,
  `Cantidad` int(8) NOT NULL,
  `Producto` varchar(60) NOT NULL,
  `Proveedor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `hidro`
--

INSERT INTO `hidro` (`id_control`, `Cantidad`, `Producto`, `Proveedor`) VALUES
(4, 4, 'cardamomo ', 'el  tropico'),
(5, 5, 'cardamomo2', 'Ovidio'),
(10, 78, 'cardamono oro', 'huehuetenango');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hidro`
--
ALTER TABLE `hidro`
  ADD PRIMARY KEY (`id_control`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `hidro`
--
ALTER TABLE `hidro`
  MODIFY `id_control` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Base de datos: `hydro`
--
CREATE DATABASE IF NOT EXISTS `hydro` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `hydro`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hyd_detalle_ingreso`
--

CREATE TABLE `hyd_detalle_ingreso` (
  `DEI_Detalle_Ingreso` int(11) NOT NULL,
  `IMP_Ingreso_Materia_Prima` int(11) NOT NULL,
  `PRD_Producto` int(11) NOT NULL,
  `DEI_Cantidad` int(11) NOT NULL,
  `DEI_PesoNeto` int(11) NOT NULL,
  `DEI_Pesotara` int(11) NOT NULL,
  `MED_Medida` int(11) NOT NULL,
  `DEI_Densidad` int(11) NOT NULL,
  `DEI_Humedad` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hyd_detalle_ingreso`
--

INSERT INTO `hyd_detalle_ingreso` (`DEI_Detalle_Ingreso`, `IMP_Ingreso_Materia_Prima`, `PRD_Producto`, `DEI_Cantidad`, `DEI_PesoNeto`, `DEI_Pesotara`, `MED_Medida`, `DEI_Densidad`, `DEI_Humedad`, `timestamp`) VALUES
(2, 2, 1, 9192, 0, 0, 1, 0, 0, '2021-05-15 17:56:43'),
(4, 4, 1, 182, 9275, 9192, 1, 0, 17, '2021-05-19 21:21:49'),
(5, 5, 1, 100, 4550, 155111, 1, 10, 15, '2021-05-29 20:17:47'),
(6, 6, 1, 50, 50, 49, 1, 2, 45, '2021-05-29 20:21:15'),
(7, 7, 1, 85, 4555, 787878, 1, 44, 45, '2021-05-29 20:47:21'),
(8, 8, 1, 82, 9898, 484, 1, 78, 8, '2021-05-29 21:04:20'),
(9, 9, 1, -98, -96, -96, 1, -98, -89, '2021-05-29 21:08:26'),
(10, 10, 1, 77, 77, 77, 1, 15, 6, '2021-05-29 21:16:42'),
(11, 11, 2, 3, 3, 3, 1, 3, 3, '2021-05-29 21:21:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hyd_ingreso_materia_prima`
--

CREATE TABLE `hyd_ingreso_materia_prima` (
  `IMP_Ingreso_Materia_Prima` int(11) NOT NULL,
  `PRO_Proveedor` int(11) NOT NULL,
  `IMP_Fecha` date NOT NULL,
  `IMP_Lote` int(11) NOT NULL,
  `IMP_PlacasVehiculos` varchar(45) NOT NULL,
  `USU_Usuario` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hyd_ingreso_materia_prima`
--

INSERT INTO `hyd_ingreso_materia_prima` (`IMP_Ingreso_Materia_Prima`, `PRO_Proveedor`, `IMP_Fecha`, `IMP_Lote`, `IMP_PlacasVehiculos`, `USU_Usuario`, `timestamp`) VALUES
(2, 1, '2021-05-13', 9, 'c-229bhb', 3, '2021-05-29 20:28:26'),
(4, 1, '2021-05-13', 9, 'C-229BHB', 3, '2021-05-19 21:21:49'),
(5, 1, '2021-05-29', 10, 'L-455LJJ', 3, '2021-05-29 20:28:47'),
(6, 1, '2021-05-29', 25, 'K-666HHH', 3, '2021-05-29 20:30:42'),
(7, 1, '2021-05-29', 96, 'L-454KKK', 2, '2021-05-29 20:47:21'),
(8, 1, '2021-05-29', 444, 'J-777KKK', 2, '2021-05-29 21:04:59'),
(9, 1, '2021-05-29', -47, 'L-555LLL', 2, '2021-05-29 21:08:26'),
(10, 1, '2021-05-29', 77, 'D-454FFF', 2, '2021-05-29 21:16:42'),
(11, 1, '2021-05-29', 3, 'K-111JJJ', 2, '2021-05-29 21:21:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hyd_medida`
--

CREATE TABLE `hyd_medida` (
  `MED_Medida` int(11) NOT NULL,
  `MED_Descripcion` varchar(45) NOT NULL,
  `MED_Nomenclatura` varchar(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hyd_medida`
--

INSERT INTO `hyd_medida` (`MED_Medida`, `MED_Descripcion`, `MED_Nomenclatura`, `timestamp`) VALUES
(1, 'KILOGRAMOS', 'KG', '2021-05-15 17:56:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hyd_persona`
--

CREATE TABLE `hyd_persona` (
  `PER_Persona` int(11) NOT NULL,
  `PER_PrimerNombre` varchar(45) NOT NULL,
  `PER_SegundoNombre` varchar(45) NOT NULL,
  `PER_PrimerApellido` varchar(45) NOT NULL,
  `PER_SegundoApellido` varchar(45) NOT NULL,
  `foto` varchar(254) DEFAULT NULL,
  `PER_DPI` varchar(13) NOT NULL,
  `PER_Direccion` varchar(250) NOT NULL,
  `PER_Telefono` varchar(8) NOT NULL,
  `PER_Email` varchar(100) NOT NULL,
  `PUE_Puesto` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hyd_persona`
--

INSERT INTO `hyd_persona` (`PER_Persona`, `PER_PrimerNombre`, `PER_SegundoNombre`, `PER_PrimerApellido`, `PER_SegundoApellido`, `foto`, `PER_DPI`, `PER_Direccion`, `PER_Telefono`, `PER_Email`, `PUE_Puesto`, `timestamp`) VALUES
(1, 'Prueba', 'Prueba', 'Prueba', 'Prueba', 'dist/img/developer/mlopez.jpg', '2082329230101', 'Guatemala', '12345678', 'Prueba@miumg.edu.gt', 4, '2022-10-08 14:21:17'),
(2, 'Sara', 'Lucia', 'Gonzalez', 'Cajas', 'dist/img/developer/sgonzalez.jpg', '101010101010', 'Guatemala, Villa Nueva', '12345678', 'sara@gmail.com', 4, '2021-05-15 13:53:45'),
(3, 'Willian', 'Ricardo', 'Mogollon', 'Fuentes', 'dist/img/developer/wmogollon.jpg', '001', 'Ciudad', '57471120', 'wmogollon@hidodiffusion.com', 4, '2021-05-15 13:53:45'),
(5, 'Bryan', 'Alexander', 'Gordillo', 'Morales', NULL, '2787735080115', '2dav. 4-55 \"Colonia Ulises Rojas\" zona 3 Bárcenas Villa Nueva, Guatemala', '54397937', 'bryan.gordillom@gmail.com', 8, '2021-05-19 21:15:17'),
(6, 'Rufino', 'Silvio', 'Alvarado', 'Ivañez', NULL, '2777777777777', 'Zona 15', '52038715', 'rufino.alvarado.i@gmail.com', 6, '2021-05-21 21:16:21'),
(7, 'Edgar', 'A', 'Marcos', 'A', NULL, '1111111111111', 'Frutal', '33333333', 'edgar@gmail.com', 7, '2022-10-08 15:14:27'),
(18, 'Robin', 'Yan', 'Rivas', 'R', NULL, '232323', 'Palin', '2222', 'robin@gmail.com', 6, '2022-10-08 15:13:16'),
(20, '**** ', '33333gg', 'ffffff', '333', NULL, '3434343434343', 'dddd', '34343434', 'DDDD', 6, '2022-10-19 04:13:15'),
(21, 'TEST', 'TEST', 'TEST', 'TEST', NULL, '1112222233333', 'VILLA NUEVA', '55555555', 'TEST@GMAIL.COM', 4, '2022-10-22 14:46:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hyd_producto`
--

CREATE TABLE `hyd_producto` (
  `PRD_Producto` int(11) NOT NULL,
  `PRD_Descripcion` varchar(45) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hyd_producto`
--

INSERT INTO `hyd_producto` (`PRD_Producto`, `PRD_Descripcion`, `timestamp`) VALUES
(1, 'Cardamomo', '2021-05-15 15:08:32'),
(2, 'cardamomo2', '2021-05-29 21:19:56'),
(3, 'aceite b', '2022-10-15 13:34:20'),
(4, 'aceite c', '2022-10-22 14:13:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hyd_proveedor`
--

CREATE TABLE `hyd_proveedor` (
  `PRO_Proveedor` int(11) NOT NULL,
  `PRO_Nombre` varchar(45) NOT NULL,
  `PRO_Region` varchar(45) NOT NULL,
  `PRO_Direccion` varchar(45) NOT NULL,
  `PRO_Nit` varchar(45) NOT NULL,
  `PRO_Telefono` int(8) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hyd_proveedor`
--

INSERT INTO `hyd_proveedor` (`PRO_Proveedor`, `PRO_Nombre`, `PRO_Region`, `PRO_Direccion`, `PRO_Nit`, `PRO_Telefono`, `timestamp`) VALUES
(1, 'El Tropico', 'Coban', 'Coban', 'c/f', 22075500, '2021-05-15 17:48:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hyd_puesto`
--

CREATE TABLE `hyd_puesto` (
  `PUE_Puesto` int(11) NOT NULL,
  `PUE_Descripcion` varchar(45) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hyd_puesto`
--

INSERT INTO `hyd_puesto` (`PUE_Puesto`, `PUE_Descripcion`, `timestamp`) VALUES
(1, 'Encargado de Bodega', '2021-05-15 13:57:34'),
(2, 'Digitador', '2021-05-15 14:33:17'),
(3, 'Secretaria', '2021-05-15 14:33:57'),
(4, 'Desarrollador', '2021-05-15 13:57:34'),
(5, 'Coordinador', '2021-05-15 13:57:34'),
(6, 'Ingeniero', '2021-05-15 14:34:11'),
(7, 'Soporte', '2021-05-15 14:34:22'),
(8, 'Auxiliar de Bodega', '2021-05-15 14:34:31'),
(9, 'Soporte2', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hyd_rol`
--

CREATE TABLE `hyd_rol` (
  `ROL_Rol` int(11) NOT NULL,
  `ROL_Descripcion` varchar(45) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hyd_rol`
--

INSERT INTO `hyd_rol` (`ROL_Rol`, `ROL_Descripcion`, `timestamp`) VALUES
(1, 'Administrador', '2021-05-15 13:58:51'),
(2, 'Ventas', '2021-05-15 13:58:51'),
(3, 'Consulta', '2021-05-15 14:04:50'),
(4, 'Supervisor de Materia Prima', '2021-05-15 14:20:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hyd_usuario`
--

CREATE TABLE `hyd_usuario` (
  `USU_Usuario` int(11) NOT NULL,
  `USU_Nombre` varchar(45) NOT NULL,
  `USU_Contrasenia` varchar(45) NOT NULL,
  `PER_Persona` int(11) NOT NULL,
  `ROL_Rol` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hyd_usuario`
--

INSERT INTO `hyd_usuario` (`USU_Usuario`, `USU_Nombre`, `USU_Contrasenia`, `PER_Persona`, `ROL_Rol`, `timestamp`) VALUES
(1, 'mlopez', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 1, 1, '2022-10-07 05:26:32'),
(2, 'sara', 'dea04453c249149b5fc772d9528fe61afaf7441c', 2, 1, '2022-10-07 05:30:55'),
(3, 'bgordillo', '[1234]', 5, 1, '2022-10-07 01:31:36'),
(4, 'Ralvarado', '[1234]', 6, 1, '2022-10-07 01:31:36'),
(5, 'bgiron', '[1234]', 7, 3, '2022-10-07 01:31:36'),
(6, 'wmogo', '[1234]', 3, 1, '2022-10-07 01:31:36'),
(18, 'ssss', 'sara', 18, 1, '2022-10-07 01:41:24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hyd_detalle_ingreso`
--
ALTER TABLE `hyd_detalle_ingreso`
  ADD PRIMARY KEY (`DEI_Detalle_Ingreso`),
  ADD KEY `IMP_Ingreso_Materia_Prima_idx` (`IMP_Ingreso_Materia_Prima`),
  ADD KEY `PRD_Producto_idx` (`PRD_Producto`),
  ADD KEY `MED_Medida_idx` (`MED_Medida`);

--
-- Indices de la tabla `hyd_ingreso_materia_prima`
--
ALTER TABLE `hyd_ingreso_materia_prima`
  ADD PRIMARY KEY (`IMP_Ingreso_Materia_Prima`),
  ADD KEY `USU_Usuario_idx` (`USU_Usuario`),
  ADD KEY `PRO_Proveedor_idx` (`PRO_Proveedor`);

--
-- Indices de la tabla `hyd_medida`
--
ALTER TABLE `hyd_medida`
  ADD PRIMARY KEY (`MED_Medida`);

--
-- Indices de la tabla `hyd_persona`
--
ALTER TABLE `hyd_persona`
  ADD PRIMARY KEY (`PER_Persona`),
  ADD KEY `PUE_Puesto_idx` (`PUE_Puesto`);

--
-- Indices de la tabla `hyd_producto`
--
ALTER TABLE `hyd_producto`
  ADD PRIMARY KEY (`PRD_Producto`);

--
-- Indices de la tabla `hyd_proveedor`
--
ALTER TABLE `hyd_proveedor`
  ADD PRIMARY KEY (`PRO_Proveedor`);

--
-- Indices de la tabla `hyd_puesto`
--
ALTER TABLE `hyd_puesto`
  ADD PRIMARY KEY (`PUE_Puesto`);

--
-- Indices de la tabla `hyd_rol`
--
ALTER TABLE `hyd_rol`
  ADD PRIMARY KEY (`ROL_Rol`);

--
-- Indices de la tabla `hyd_usuario`
--
ALTER TABLE `hyd_usuario`
  ADD PRIMARY KEY (`USU_Usuario`),
  ADD KEY `PER_Persona_idx` (`PER_Persona`),
  ADD KEY `ROL_Rol_idx` (`ROL_Rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `hyd_detalle_ingreso`
--
ALTER TABLE `hyd_detalle_ingreso`
  MODIFY `DEI_Detalle_Ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `hyd_ingreso_materia_prima`
--
ALTER TABLE `hyd_ingreso_materia_prima`
  MODIFY `IMP_Ingreso_Materia_Prima` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `hyd_medida`
--
ALTER TABLE `hyd_medida`
  MODIFY `MED_Medida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `hyd_persona`
--
ALTER TABLE `hyd_persona`
  MODIFY `PER_Persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `hyd_producto`
--
ALTER TABLE `hyd_producto`
  MODIFY `PRD_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `hyd_proveedor`
--
ALTER TABLE `hyd_proveedor`
  MODIFY `PRO_Proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `hyd_puesto`
--
ALTER TABLE `hyd_puesto`
  MODIFY `PUE_Puesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `hyd_rol`
--
ALTER TABLE `hyd_rol`
  MODIFY `ROL_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `hyd_usuario`
--
ALTER TABLE `hyd_usuario`
  MODIFY `USU_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `hyd_detalle_ingreso`
--
ALTER TABLE `hyd_detalle_ingreso`
  ADD CONSTRAINT `IMP_Ingreso_Materia_Prima` FOREIGN KEY (`IMP_Ingreso_Materia_Prima`) REFERENCES `hyd_ingreso_materia_prima` (`IMP_Ingreso_Materia_Prima`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `MED_Medida` FOREIGN KEY (`MED_Medida`) REFERENCES `hyd_medida` (`MED_Medida`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `PRD_Producto` FOREIGN KEY (`PRD_Producto`) REFERENCES `hyd_producto` (`PRD_Producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `hyd_ingreso_materia_prima`
--
ALTER TABLE `hyd_ingreso_materia_prima`
  ADD CONSTRAINT `PRO_Proveedor` FOREIGN KEY (`PRO_Proveedor`) REFERENCES `hyd_proveedor` (`PRO_Proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `USU_Usuario` FOREIGN KEY (`USU_Usuario`) REFERENCES `hyd_usuario` (`USU_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `hyd_persona`
--
ALTER TABLE `hyd_persona`
  ADD CONSTRAINT `PUE_Puesto` FOREIGN KEY (`PUE_Puesto`) REFERENCES `hyd_puesto` (`PUE_Puesto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `hyd_usuario`
--
ALTER TABLE `hyd_usuario`
  ADD CONSTRAINT `PER_Persona` FOREIGN KEY (`PER_Persona`) REFERENCES `hyd_persona` (`PER_Persona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ROL_Rol` FOREIGN KEY (`ROL_Rol`) REFERENCES `hyd_rol` (`ROL_Rol`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Volcado de datos para la tabla `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'hydro', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"alumnos\",\"dblogin\",\"desarrollo\",\"hidro\",\"hydro\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"hydro\",\"table\":\"hyd_usuario\"},{\"db\":\"hydro\",\"table\":\"hyd_producto\"},{\"db\":\"hydro\",\"table\":\"hyd_rol\"},{\"db\":\"hydro\",\"table\":\"hyd_proveedor\"},{\"db\":\"hydro\",\"table\":\"hyd_detalle_ingreso\"},{\"db\":\"hydro\",\"table\":\"hyd_puesto\"},{\"db\":\"hydro\",\"table\":\"hyd_medida\"},{\"db\":\"hydro\",\"table\":\"hyd_ingreso_materia_prima\"},{\"db\":\"hidro\",\"table\":\"hidro\"},{\"db\":\"hydro\",\"table\":\"hyd_persona\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'hydro', 'hyd_usuario', '{\"sorted_col\":\"`USU_Contrasenia` ASC\"}', '2022-10-07 05:26:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-10-25 03:11:49', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
