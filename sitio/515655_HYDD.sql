-- CREADO POR @MILTONTEDDIE

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `HYD_DETALLE_INGRESO` (
  `DEI_Detalle_Ingreso` int(11) NOT NULL,
  `IMP_Ingreso_Materia_Prima` int(11) NOT NULL,
  `PRD_Producto` int(11) NOT NULL,
  `DEI_Cantidad` int(11) NOT NULL,
  `DEI_PesoNeto` int(11) NOT NULL,
  `DEI_Pesotara` int(11) NOT NULL,
  `MED_Medida` int(11) NOT NULL,
  `DEI_Densidad` int(11) NOT NULL,
  `DEI_Humedad` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `HYD_DETALLE_INGRESO`
--

INSERT INTO `HYD_DETALLE_INGRESO` (`DEI_Detalle_Ingreso`, `IMP_Ingreso_Materia_Prima`, `PRD_Producto`, `DEI_Cantidad`, `DEI_PesoNeto`, `DEI_Pesotara`, `MED_Medida`, `DEI_Densidad`, `DEI_Humedad`, `timestamp`) VALUES
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
-- Estructura de tabla para la tabla `HYD_INGRESO_MATERIA_PRIMA`
--

CREATE TABLE `HYD_INGRESO_MATERIA_PRIMA` (
  `IMP_Ingreso_Materia_Prima` int(11) NOT NULL,
  `PRO_Proveedor` int(11) NOT NULL,
  `IMP_Fecha` date NOT NULL,
  `IMP_Lote` int(11) NOT NULL,
  `IMP_PlacasVehiculos` varchar(45) NOT NULL,
  `USU_Usuario` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `HYD_INGRESO_MATERIA_PRIMA`
--

INSERT INTO `HYD_INGRESO_MATERIA_PRIMA` (`IMP_Ingreso_Materia_Prima`, `PRO_Proveedor`, `IMP_Fecha`, `IMP_Lote`, `IMP_PlacasVehiculos`, `USU_Usuario`, `timestamp`) VALUES
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
-- Estructura de tabla para la tabla `HYD_MEDIDA`
--

CREATE TABLE `HYD_MEDIDA` (
  `MED_Medida` int(11) NOT NULL,
  `MED_Descripcion` varchar(45) NOT NULL,
  `MED_Nomenclatura` varchar(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `HYD_MEDIDA`
--

INSERT INTO `HYD_MEDIDA` (`MED_Medida`, `MED_Descripcion`, `MED_Nomenclatura`, `timestamp`) VALUES
(1, 'KILOGRAMOS', 'KG', '2021-05-15 17:56:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HYD_PERSONA`
--

CREATE TABLE `HYD_PERSONA` (
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
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `HYD_PERSONA`
--

INSERT INTO `HYD_PERSONA` (`PER_Persona`, `PER_PrimerNombre`, `PER_SegundoNombre`, `PER_PrimerApellido`, `PER_SegundoApellido`, `foto`, `PER_DPI`, `PER_Direccion`, `PER_Telefono`, `PER_Email`, `PUE_Puesto`, `timestamp`) VALUES
(1, 'Milton', 'Osvaldo', 'Lopez', 'Vasquez', 'dist/img/developer/mlopez.jpg', '2082329230101', 'Guatemala', '12345678', 'mlopezv11@miumg.edu.gt', 4, '2021-05-15 13:53:45'),
(2, 'Sara', 'Lucia', 'Gonzalez', 'Cajas', 'dist/img/developer/sgonzalez.jpg', '101010101010', 'Guatemala, Villa Nueva', '12345678', 'sara@gmail.com', 4, '2021-05-15 13:53:45'),
(3, 'Willian', 'Ricardo', 'Mogollon', 'Fuentes', 'dist/img/developer/wmogollon.jpg', '001', 'Ciudad', '57471120', 'wmogollon@hidodiffusion.com', 4, '2021-05-15 13:53:45'),
(4, 'bryan', 'ernesto', 'gordillo', 'lopez', NULL, '8982858585858', 'barcenas', '52565665', 'duu@gmail.com', 1, '2021-05-15 19:17:50'),
(5, 'Bryan', 'Alexander', 'Gordillo', 'Morales', NULL, '2787735080115', '2dav. 4-55 \"Colonia Ulises Rojas\" zona 3 Bárcenas Villa Nueva, Guatemala', '54397937', 'bryan.gordillom@gmail.com', 8, '2021-05-19 21:15:17'),
(6, 'Rufino', 'Silvio', 'Alvarado', 'Ivañez', NULL, '2777777777777', 'Zona 15', '52038715', 'rufino.alvarado.i@gmail.com', 6, '2021-05-21 21:16:21'),
(7, 'Beathris', 'Beathris', 'Giron', 'Giron', NULL, '1111111111111', 'Ciudad', '33333333', 'bmgiron@gmail.com', 7, '2021-05-24 14:56:17'),
(8, 'prueba', 'prueba', 'prueba', 'PRUEBA', NULL, '1221212121212', 'villa nueva', '66666666', 'prueba@gmail.com', 2, '2021-05-29 20:22:55'),
(9, 'Willian', 'Ricardo', 'Mogollon', 'Fuentes', NULL, '1956912300101', 'ciudad', '57471120', 'wmogollon@hidodiffusion.com', 6, '2021-05-29 21:20:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HYD_PRODUCTO`
--

CREATE TABLE `HYD_PRODUCTO` (
  `PRD_Producto` int(11) NOT NULL,
  `PRD_Descripcion` varchar(45) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `HYD_PRODUCTO`
--

INSERT INTO `HYD_PRODUCTO` (`PRD_Producto`, `PRD_Descripcion`, `timestamp`) VALUES
(1, 'Cardamomo', '2021-05-15 15:08:32'),
(2, 'cardamomo2', '2021-05-29 21:19:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HYD_PROVEEDOR`
--

CREATE TABLE `HYD_PROVEEDOR` (
  `PRO_Proveedor` int(11) NOT NULL,
  `PRO_Nombre` varchar(45) NOT NULL,
  `PRO_Region` varchar(45) NOT NULL,
  `PRO_Direccion` varchar(45) NOT NULL,
  `PRO_Nit` varchar(45) NOT NULL,
  `PRO_Telefono` int(8) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `HYD_PROVEEDOR`
--

INSERT INTO `HYD_PROVEEDOR` (`PRO_Proveedor`, `PRO_Nombre`, `PRO_Region`, `PRO_Direccion`, `PRO_Nit`, `PRO_Telefono`, `timestamp`) VALUES
(1, 'El Tropico', 'Coban', 'Coban', 'c/f', 22075500, '2021-05-15 17:48:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HYD_PUESTO`
--

CREATE TABLE `HYD_PUESTO` (
  `PUE_Puesto` int(11) NOT NULL,
  `PUE_Descripcion` varchar(45) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `HYD_PUESTO`
--

INSERT INTO `HYD_PUESTO` (`PUE_Puesto`, `PUE_Descripcion`, `timestamp`) VALUES
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
-- Estructura de tabla para la tabla `HYD_ROL`
--

CREATE TABLE `HYD_ROL` (
  `ROL_Rol` int(11) NOT NULL,
  `ROL_Descripcion` varchar(45) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `HYD_ROL`
--

INSERT INTO `HYD_ROL` (`ROL_Rol`, `ROL_Descripcion`, `timestamp`) VALUES
(1, 'Administrador', '2021-05-15 13:58:51'),
(2, 'Ventas', '2021-05-15 13:58:51'),
(3, 'Consulta', '2021-05-15 14:04:50'),
(4, 'Supervisor de Materia Prima', '2021-05-15 14:20:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HYD_USUARIO`
--

CREATE TABLE `HYD_USUARIO` (
  `USU_Usuario` int(11) NOT NULL,
  `USU_Nombre` varchar(45) NOT NULL,
  `USU_Contrasenia` varchar(45) NOT NULL,
  `PER_Persona` int(11) NOT NULL,
  `ROL_Rol` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `HYD_USUARIO`
--

INSERT INTO `HYD_USUARIO` (`USU_Usuario`, `USU_Nombre`, `USU_Contrasenia`, `PER_Persona`, `ROL_Rol`, `timestamp`) VALUES
(1, 'mlopez', '99800b85d3383e3a2fb45eb7d0066a4879a9dad0', 1, 1, '2021-05-15 14:00:14'),
(2, 'sara', 'dea04453c249149b5fc772d9528fe61afaf7441c', 2, 3, '2021-05-29 20:35:58'),
(3, 'bgordillo', '4c7f70849a57ce8c9c54e91bbbe0ef10ea04fb20', 5, 1, '2021-05-19 21:16:21'),
(4, 'Ralvarado', '8cb2237d0679ca88db6464eac60da96345513964', 6, 1, '2021-05-21 21:16:55'),
(5, 'bgiron', '7c4a8d09ca3762af61e59520943dc26494f8941b', 7, 3, '2021-05-24 14:56:42'),
(6, 'wmogo', '99800b85d3383e3a2fb45eb7d0066a4879a9dad0', 3, 1, '2021-05-29 21:20:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HYD_DETALLE_INGRESO`
--
ALTER TABLE `HYD_DETALLE_INGRESO`
  ADD PRIMARY KEY (`DEI_Detalle_Ingreso`),
  ADD KEY `IMP_Ingreso_Materia_Prima_idx` (`IMP_Ingreso_Materia_Prima`),
  ADD KEY `PRD_Producto_idx` (`PRD_Producto`),
  ADD KEY `MED_Medida_idx` (`MED_Medida`);

--
-- Indices de la tabla `HYD_INGRESO_MATERIA_PRIMA`
--
ALTER TABLE `HYD_INGRESO_MATERIA_PRIMA`
  ADD PRIMARY KEY (`IMP_Ingreso_Materia_Prima`),
  ADD KEY `USU_Usuario_idx` (`USU_Usuario`),
  ADD KEY `PRO_Proveedor_idx` (`PRO_Proveedor`);

--
-- Indices de la tabla `HYD_MEDIDA`
--
ALTER TABLE `HYD_MEDIDA`
  ADD PRIMARY KEY (`MED_Medida`);

--
-- Indices de la tabla `HYD_PERSONA`
--
ALTER TABLE `HYD_PERSONA`
  ADD PRIMARY KEY (`PER_Persona`),
  ADD KEY `PUE_Puesto_idx` (`PUE_Puesto`);

--
-- Indices de la tabla `HYD_PRODUCTO`
--
ALTER TABLE `HYD_PRODUCTO`
  ADD PRIMARY KEY (`PRD_Producto`);

--
-- Indices de la tabla `HYD_PROVEEDOR`
--
ALTER TABLE `HYD_PROVEEDOR`
  ADD PRIMARY KEY (`PRO_Proveedor`);

--
-- Indices de la tabla `HYD_PUESTO`
--
ALTER TABLE `HYD_PUESTO`
  ADD PRIMARY KEY (`PUE_Puesto`);

--
-- Indices de la tabla `HYD_ROL`
--
ALTER TABLE `HYD_ROL`
  ADD PRIMARY KEY (`ROL_Rol`);

--
-- Indices de la tabla `HYD_USUARIO`
--
ALTER TABLE `HYD_USUARIO`
  ADD PRIMARY KEY (`USU_Usuario`),
  ADD KEY `PER_Persona_idx` (`PER_Persona`),
  ADD KEY `ROL_Rol_idx` (`ROL_Rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `HYD_DETALLE_INGRESO`
--
ALTER TABLE `HYD_DETALLE_INGRESO`
  MODIFY `DEI_Detalle_Ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `HYD_INGRESO_MATERIA_PRIMA`
--
ALTER TABLE `HYD_INGRESO_MATERIA_PRIMA`
  MODIFY `IMP_Ingreso_Materia_Prima` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `HYD_MEDIDA`
--
ALTER TABLE `HYD_MEDIDA`
  MODIFY `MED_Medida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `HYD_PERSONA`
--
ALTER TABLE `HYD_PERSONA`
  MODIFY `PER_Persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `HYD_PRODUCTO`
--
ALTER TABLE `HYD_PRODUCTO`
  MODIFY `PRD_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `HYD_PROVEEDOR`
--
ALTER TABLE `HYD_PROVEEDOR`
  MODIFY `PRO_Proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `HYD_PUESTO`
--
ALTER TABLE `HYD_PUESTO`
  MODIFY `PUE_Puesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `HYD_ROL`
--
ALTER TABLE `HYD_ROL`
  MODIFY `ROL_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `HYD_USUARIO`
--
ALTER TABLE `HYD_USUARIO`
  MODIFY `USU_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `HYD_DETALLE_INGRESO`
--
ALTER TABLE `HYD_DETALLE_INGRESO`
  ADD CONSTRAINT `IMP_Ingreso_Materia_Prima` FOREIGN KEY (`IMP_Ingreso_Materia_Prima`) REFERENCES `HYD_INGRESO_MATERIA_PRIMA` (`IMP_Ingreso_Materia_Prima`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `MED_Medida` FOREIGN KEY (`MED_Medida`) REFERENCES `HYD_MEDIDA` (`MED_Medida`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `PRD_Producto` FOREIGN KEY (`PRD_Producto`) REFERENCES `HYD_PRODUCTO` (`PRD_Producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `HYD_INGRESO_MATERIA_PRIMA`
--
ALTER TABLE `HYD_INGRESO_MATERIA_PRIMA`
  ADD CONSTRAINT `PRO_Proveedor` FOREIGN KEY (`PRO_Proveedor`) REFERENCES `HYD_PROVEEDOR` (`PRO_Proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `USU_Usuario` FOREIGN KEY (`USU_Usuario`) REFERENCES `HYD_USUARIO` (`USU_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `HYD_PERSONA`
--
ALTER TABLE `HYD_PERSONA`
  ADD CONSTRAINT `PUE_Puesto` FOREIGN KEY (`PUE_Puesto`) REFERENCES `HYD_PUESTO` (`PUE_Puesto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `HYD_USUARIO`
--
ALTER TABLE `HYD_USUARIO`
  ADD CONSTRAINT `PER_Persona` FOREIGN KEY (`PER_Persona`) REFERENCES `HYD_PERSONA` (`PER_Persona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ROL_Rol` FOREIGN KEY (`ROL_Rol`) REFERENCES `HYD_ROL` (`ROL_Rol`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
