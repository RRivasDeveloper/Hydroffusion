CREATE TABLE HYD_EMPRESA(
EMP_EMPRESA INT IDENTITY,
EMP_Nombre VARCHAR (60),
EMP_Direccion VARCHAR (80),
 EMP_Telefono NUMERIC (8,0),
 EMP_EMail VARCHAR (50),
 CONSTRAINT PK_EMP_EMPRESAHYD_EMPRESA PRIMARY KEY (EMP_EMPRESA)
 );


 CREATE TABLE HYD_PUESTO(
 PUE_Puesto INT IDENTITY,
 PUE_Descripcion VARCHAR (80),
  CONSTRAINT PK_PUE_Puesto PRIMARY KEY (PUE_Puesto)
 );



 CREATE TABLE HYD_PERSONA (
 PER_Persona INT IDENTITY,
 PER_PrimerNombre VARCHAR (40),
 PER_SegundoNombre VARCHAR (40),
 PER_PrimerApellido VARCHAR (40), 
 PER_SegundoApellido VARCHAR (40), 
 PER_DPI NUMERIC (15,0),
 PER_Direccion VARCHAR (60),
 PER_Telefono NUMERIC (8,0),
 PER_EMail VARCHAR (60),
 PUE_Puesto INT,
  CONSTRAINT PK_PER_Persona PRIMARY KEY (PER_Persona),
  CONSTRAINT FK_PUE_Puesto  FOREIGN KEY ( PUE_Puesto )
  REFERENCES HYD_PUESTO (PUE_Puesto)
  );

  CREATE TABLE HYD_ROL(
  ROL_Rol INT IDENTITY,
  ROL_Descripion VARCHAR (40),
  CONSTRAINT PK_ROL_Rol PRIMARY KEY (ROL_Rol)
  );


  CREATE TABLE HYD_USUARIO(
  USU_Usuario INT IDENTITY,
  USU_Nombre VARCHAR (40),
  USU_Contrasenia  VARCHAR (40),
  PER_Persona  INT,
  CONSTRAINT PK_USU_Usuario PRIMARY KEY (USU_Usuario),
  CONSTRAINT FK_PER_Persona   FOREIGN KEY (PER_Persona  )
  REFERENCES HYD_PERSONA (PER_Persona)
  );


  CREATE TABLE HYD_PROVEEDOR(
  PRO_Proveedor INT IDENTITY,
  PRO_Nombre VARCHAR (40),
  PRO_Direccion VARCHAR (80),
  PRO_NIT VARCHAR (20),
  PRO_telefono NUMERIC (8,0),
  EMP_Empresa INT,
  CONSTRAINT PK_PRO_Proveedor PRIMARY KEY (PRO_Proveedor),
  CONSTRAINT FK_EMP_Empresa    FOREIGN KEY (EMP_Empresa)
  REFERENCES HYD_EMPRESA (EMP_Empresa)
  );

  CREATE TABLE HYD_TIPO_PRODUCTO(
  TPR_Tipo_Producto INT IDENTITY,
  TPR_Descripcion VARCHAR (40),
  TRP_Medida VARCHAR (20),
  CONSTRAINT PK_TPR_Tipo_Producto PRIMARY KEY (TPR_Tipo_Producto),
  );


  CREATE TABLE HYD_PRODUCTO(
  PRO_Producto INT IDENTITY,
  MAP_Descripcion VARCHAR (40),
  PRO_Proveedor INT,
  TPR_Tipo_Producto  INT,
   CONSTRAINT PK_PRO_Producto PRIMARY KEY (PRO_Producto),
  CONSTRAINT FK_TPR_Tipo_Producto    FOREIGN KEY (TPR_Tipo_Producto)
  REFERENCES HYD_TIPO_PRODUCTO (TPR_Tipo_Producto),
  CONSTRAINT FK_PRO_Proveedor   FOREIGN KEY (PRO_Proveedor)
  REFERENCES HYD_PROVEEDOR (PRO_Proveedor)
  );


  CREATE TABLE HYD_TIPO_MOVIMIENTO(
  TMO_Tipo_Movimiento INT IDENTITY,
  TMO_Descripcion VARCHAR (40),
   CONSTRAINT PK_TMO_Tipo_Movimiento PRIMARY KEY (TMO_Tipo_Movimiento),
   );

   CREATE TABLE HYD_MOVIMIENTO_PRODUCTO(
   MOP_Movimiento_Producto INT IDENTITY,
   MOP_Cantidad NUMERIC (10,4),
   MOP_Fecha_Movimiento DATE,
   PRO_Producto INT,
   TMO_Tipo_Movimiento INT,
  CONSTRAINT PK_MOP_Movimiento_Producto PRIMARY KEY ( MOP_Movimiento_Producto),
  CONSTRAINT FK_PRO_Producto    FOREIGN KEY (PRO_Producto )
  REFERENCES HYD_PRODUCTO (PRO_Producto ),
   CONSTRAINT FK_TMO_Tipo_Movimiento    FOREIGN KEY (TMO_Tipo_Movimiento)
  REFERENCES HYD_TIPO_MOVIMIENTO (TMO_Tipo_Movimiento)
  );