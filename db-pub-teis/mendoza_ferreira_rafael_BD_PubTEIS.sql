-- ------------------------------------------------------------------------------------------
--	CREACIÓN Y USO DE LA BASE DE DATOS 'PubTEIS'
-- ------------------------------------------------------------------------------------------
	DROP DATABASE IF EXISTS PubTEIS;
	CREATE DATABASE 		PubTEIS
				character set	utf32
				collate			utf32_spanish2_ci;
 	USE 			PubTEIS;

-- ------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA UBICACION
--
--	cod_ubicacion		valor numérico de 5 dígitos que identifica cada ubicación
--	calle				nombre de la calle o dirección donde se ubica el Pub
--
--	Clave primaria		cod_ubicacion

CREATE TABLE UBICACION (
	-- Código que identifica cada Ubicación
    cod_ubicacion INT(5) PRIMARY KEY,
    
    -- Dirección completa del Pub
    calle VARCHAR(60) NOT NULL
);
-- ------------------------------------------------------------------------------------------


INSERT INTO UBICACION (COD_UBICACION, CALLE) VALUES ( 10001, 'Calle La real 14'			);
INSERT INTO UBICACION (COD_UBICACION, CALLE) VALUES ( 10002, 'Calle La real 19'			);
INSERT INTO UBICACION (COD_UBICACION, CALLE) VALUES ( 10003, 'Calle El grande 4'		);
INSERT INTO UBICACION (COD_UBICACION, CALLE) VALUES ( 10004, 'Calle El grande 6'		);
INSERT INTO UBICACION (COD_UBICACION, CALLE) VALUES ( 10005, 'Calle El cid 25'			);
INSERT INTO UBICACION (COD_UBICACION, CALLE) VALUES ( 10006, 'Calle La maestranza 2'	);
INSERT INTO UBICACION (COD_UBICACION, CALLE) VALUES ( 10007, 'Calle La maestranza 4'	);
INSERT INTO UBICACION (COD_UBICACION, CALLE) VALUES ( 10008, 'Calle La maestranza 7'	);
INSERT INTO UBICACION (COD_UBICACION, CALLE) VALUES ( 10009, 'Calle La maestranza 13'	);
INSERT INTO UBICACION (COD_UBICACION, CALLE) VALUES ( 10010, 'Calle Mayor 10'			);

--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA PUB
--
--	cod_pub				código que identifica cada Pub
--	nombre				denominación comercial del Pub
--	licencia_fiscal		licencia fiscal asignada al Pub
--	fecha_apertura		fecha en la que se inauguró el Pub
--	horario				horario habitual de apertura y cierre
--	cod_ubicacion		código de la ubicación donde se encuentra el Pub
--
--	Clave primaria		cod_pub
--	Clave ajena			cod_ubicacion referencia a la tabla UBICACION

CREATE TABLE PUB (
	-- Código que identifica cada Pub
    cod_pub VARCHAR(5) PRIMARY KEY,
    
    -- Denominación comercial del Pub
    nombre VARCHAR(60) NOT NULL,
    
    -- Licencia fiscal del pub
    licencia_Fiscal VARCHAR(60) NOT NULL,
    
    -- Fecha en que se abrió el pub
    fecha_Apertura DATE NOT NULL,
    
    -- Horario habitual de apertura y cierre
    horario VARCHAR(60) NOT NULL,
    
    -- Identificador de Ubicacion
    cod_ubicacion INT,
    
    -- clave foránea
    FOREIGN KEY (cod_ubicacion) REFERENCES UBICACION (cod_ubicacion)
);
--------------------------------------------------------------------------------------------


INSERT INTO PUB (COD_PUB, NOMBRE, LICENCIA_FISCAL, FECHA_APERTURA, HORARIO, COD_UBICACION)  VALUES ( 'P001', 'Pub Central',   'LF001', '2022-01-10', '18:00-03:00', 10001 );
INSERT INTO PUB (COD_PUB, NOMBRE, LICENCIA_FISCAL, FECHA_APERTURA, HORARIO, COD_UBICACION)  VALUES ( 'P002', 'Pub Norte', 	  'LF002', '2021-06-15', '17:00-02:00', 10002 );
INSERT INTO PUB (COD_PUB, NOMBRE, LICENCIA_FISCAL, FECHA_APERTURA, HORARIO, COD_UBICACION)  VALUES ( 'P003', 'Pub Sur', 	  'LF003', '2020-09-20', '19:00-04:00', 10003 );
INSERT INTO PUB (COD_PUB, NOMBRE, LICENCIA_FISCAL, FECHA_APERTURA, HORARIO, COD_UBICACION)  VALUES ( 'P004', 'Pub Este', 	  'LF004', '2019-12-05', '18:00-03:00', 10004 );
INSERT INTO PUB (COD_PUB, NOMBRE, LICENCIA_FISCAL, FECHA_APERTURA, HORARIO, COD_UBICACION)  VALUES ( 'P005', 'Pub Oeste', 	  'LF005', '2023-03-12', '20:00-02:00', 10005 );
INSERT INTO PUB (COD_PUB, NOMBRE, LICENCIA_FISCAL, FECHA_APERTURA, HORARIO, COD_UBICACION)  VALUES ( 'P006', 'Pub Central 2', 'LF006', '2022-08-18', '18:00-03:00', 10006 );
INSERT INTO PUB (COD_PUB, NOMBRE, LICENCIA_FISCAL, FECHA_APERTURA, HORARIO, COD_UBICACION)  VALUES ( 'P007', 'Pub Vintage',   'LF007', '2021-11-11', '17:00-01:00', 10007 );
INSERT INTO PUB (COD_PUB, NOMBRE, LICENCIA_FISCAL, FECHA_APERTURA, HORARIO, COD_UBICACION)  VALUES ( 'P008', 'Pub Moderno',   'LF008', '2020-05-21', '19:00-04:00', 10008 );
INSERT INTO PUB (COD_PUB, NOMBRE, LICENCIA_FISCAL, FECHA_APERTURA, HORARIO, COD_UBICACION)  VALUES ( 'P009', 'Pub Lounge', 	  'LF009', '2019-07-07', '20:00-03:00', 10009 );
INSERT INTO PUB (COD_PUB, NOMBRE, LICENCIA_FISCAL, FECHA_APERTURA, HORARIO, COD_UBICACION)  VALUES ( 'P010', 'Pub Retro', 	  'LF010', '2023-01-01', '18:00-02:00', 10010 );

--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA TITULAR
--
--	dni_titular			documento nacional de identidad del titular
--	nombre				nombre completo del titular
--	domicilio			dirección de residencia del titular
--	cod_pub				identificador del Pub del que es propietario
--
--	Clave primaria		dni_titular
--	Clave ajena			cod_pub referencia a la tabla PUB

CREATE TABLE TITULAR (
	-- Dni del titular
    dni_titular VARCHAR(9) PRIMARY KEY,
    
    -- Nombre completo del titular
    nombre VARCHAR(60) NOT NULL,
    
    -- Dirección de residencia del titular
    domicilio VARCHAR(60),
    
    -- Identificador del Pub del que es titular
    cod_pub VARCHAR (5),
    
    -- Clave foránea
    FOREIGN KEY (cod_pub) REFERENCES PUB(cod_pub)
);
--------------------------------------------------------------------------------------------


INSERT INTO TITULAR (DNI_TITULAR, NOMBRE, DOMICILIO, COD_PUB)   VALUES ( '56237647A', 'Juan Pérez', 	'Calle Mayor 1', 'P001' );
INSERT INTO TITULAR (DNI_TITULAR, NOMBRE, DOMICILIO, COD_PUB)   VALUES ( '47654765B', 'María López', 	'Calle Menor 2', 'P002' );
INSERT INTO TITULAR (DNI_TITULAR, NOMBRE, DOMICILIO, COD_PUB)   VALUES ( '45463565C', 'Carlos Ruiz', 	'Calle Media 3', 'P003' );
INSERT INTO TITULAR (DNI_TITULAR, NOMBRE, DOMICILIO, COD_PUB)   VALUES ( '56734537D', 'Ana Torres', 	'Calle Mayor 4', 'P004' );
INSERT INTO TITULAR (DNI_TITULAR, NOMBRE, DOMICILIO, COD_PUB)   VALUES ( '34765343E', 'Luis Fernández',	'Calle Media 5', 'P005' );
INSERT INTO TITULAR (DNI_TITULAR, NOMBRE, DOMICILIO, COD_PUB)   VALUES ( '56443463F', 'Elena Martín', 	'Calle Media 6', 'P006' );

--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA EMPLEADO
--
--	dni_empleado		documento nacional de identidad del empleado
--	nombre			nombre completo del empleado, no nulo
--	domicilio		dirección de residencia del empleado
--
--	Clave primaria		dni_empleado

CREATE TABLE EMPLEADO (
-- Dni del empleado
dni_empleado VARCHAR(9) PRIMARY KEY,

-- Nombre completo del empleado
nombre VARCHAR(60) NOT NULL,

-- Dirección de residencia del empleado
domicilio VARCHAR(60)
);
--------------------------------------------------------------------------------------------


INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '58646543A', 'Pedro Gómez',    'Avda. Libertad 13'	);
INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '85684564B', 'Laura Díaz', 	   'Avda. Esperanza 12'	);
INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '47346562C', 'Jorge Sánchez',  'Avda. Morriña 4'	);
INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '23265634D', 'Marta Blanco',   'Avda. Libertad 4'	);
INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '78458458E', 'Raúl Moreno',    'Avda. Libertad 3'	);
INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '56478567F', 'Sofía Jiménez',  'Avda. Esperanza 2'	);
INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '68456784G', 'Iván Herrera',   'Avda. Esperanza 8'	);
INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '84644656H', 'Clara Ruiz', 	   'Avda. Esperanza 9'	);
INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '84657547I', 'David Torres',   'Avda. Morriña 9'	);
INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '67345734J', 'Paula Ortega',   'Avda. Libertad 7'	);
INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '74536345K', 'Mario Castro',   'Avda. Morriña 5'	);
INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '64334563L', 'Nuria Vega', 	   'Avda. Libertad 2'	);
INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '56435364M', 'Alberto Molina', 'Avda. Morriña 4'	);
INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '64764566N', 'Sandra Gil', 	   'Avda. Morriña 2'	);
INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '64563543O', 'Fernando León',  'Avda. Morriña 3'	);
INSERT INTO EMPLEADO (DNI_EMPLEADO, NOMBRE, DOMICILIO) VALUES ( '65345565P', 'Raquel Navarro', 'Avda. Libertad 3'	);

--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA EXISTENCIAS
--
--	cod_articulo		código que identifica cada artículo o producto
--	nombre			nombre o descripción del artículo
--	cantidad		cantidad disponible del artículo
--	precio			precio unitario del artículo
--	cod_pub			identificador del Pub al que pertenece el artículo
--
--	Clave primaria		cod_articulo
--	Clave ajena		cod_pub referencia a la tabla PUB

CREATE TABLE EXISTENCIAS (
    -- Código que identifica cada Existencia
    cod_Articulo VARCHAR(10) PRIMARY KEY,
    
    -- Nombre descriptivo de la existencia
    nombre VARCHAR(60) NOT NULL,
    
    -- Cantidad disponible de la existencia
    cantidad INTEGER NOT NULL,
    
    -- Precio unitario de la existencia
    precio DECIMAL NOT NULL,
    
    -- Identificador del Pub que tiene la existencia
    cod_Pub VARCHAR(5),
    
    -- Clave ajena con la tabla Pub
    FOREIGN KEY (cod_Pub) REFERENCES PUB(cod_Pub)
);
--------------------------------------------------------------------------------------------


INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A001', 'Cerveza Rubia', 	100, 2.50, 'P001' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A002', 'Cerveza Negra',		 80, 3.00, 'P001' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A003', 'Vino Tinto',		 50, 4.50, 'P002' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A004', 'Vino Blanco',		 60, 4.00, 'P002' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A005', 'Whisky',			 30, 6.50, 'P003' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A006', 'Ron',				 40, 5.50, 'P003' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A007', 'Tequila',			 25, 5.00, 'P004' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A008', 'Ginebra',			 35, 6.00, 'P004' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A009', 'Vodka',				 45, 5.50, 'P005' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A010', 'Copa de vino',		 70, 3.50, 'P005' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A011', 'Cerveza Artesana',	 60, 4.00, 'P006' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A012', 'Sidra',				 50, 3.50, 'P006' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A013', 'Cerveza Rubia',		 80, 2.50, 'P007' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A014', 'Cerveza Negra',		 60, 3.00, 'P007' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A015', 'Vino Rosado',		 40, 4.00, 'P008' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A016', 'Vino Blanco',		 50, 4.50, 'P008' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A017', 'Whisky',			 20, 6.50, 'P009' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A018', 'Ron',				 25, 5.50, 'P009' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A019', 'Ginebra',			 30, 6.00, 'P010' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A020', 'Tequila',			 20, 5.00, 'P010' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A021', 'Copa de vino',		 50, 3.50, 'P010' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A022', 'Cerveza Rubia',		 60, 2.50, 'P009' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A023', 'Vino Tinto',		 45, 4.50, 'P008' );
INSERT INTO EXISTENCIAS (COD_ARTICULO, NOMBRE, CANTIDAD, PRECIO, COD_PUB) VALUES ( 'A024', 'Vino Blanco',		 55, 4.00, 'P007' );

--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA PUB_EMPLEADO
--
--	cod_pub			código del Pub donde trabaja el empleado
--	dni_empleado		documento nacional de identidad del empleado
--	funcion			cargo o tarea desempeñada en el Pub (Camarero, Seguridad, etc.)
--
--	Clave primaria		(cod_pub, dni_empleado)
--	Claves ajenas		cod_pub referencia a la tabla PUB
--				dni_empleado referencia a la tabla EMPLEADO

CREATE TABLE PUB_EMPLEADO (
    -- Código que identifica el Pub
    cod_Pub VARCHAR(5),
    
    -- Código que identifica el Empleado
    dni_Empleado VARCHAR(9),
    
    -- Código que identifica el cargo desempeñado en el Pub: Camarero, Seguridad, Limpieza
    funcion VARCHAR(9),
    
    -- Clave primaria compuesta
    PRIMARY KEY (cod_Pub, dni_Empleado, funcion),
    
    -- Clave ajena con la tabla Pub
    FOREIGN KEY (cod_Pub) REFERENCES PUB(cod_Pub),
    
    -- Clave ajena con la tabla Empleado
    FOREIGN KEY (dni_Empleado) REFERENCES EMPLEADO(dni_empleado)
);
--------------------------------------------------------------------------------------------


INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P001', '58646543A', 'Camarero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P001', '85684564B', 'Seguridad'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P001', '47346562C', 'Cocinero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P002', '23265634D', 'Camarero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P002', '78458458E', 'Seguridad'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P002', '56478567F', 'Cocinero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P003', '68456784G', 'Camarero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P003', '84644656H', 'Seguridad'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P003', '58646543A', 'Cocinero'	); 
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P004', '84657547I', 'Camarero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P004', '67345734J', 'Cocinero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P005', '74536345K', 'Camarero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P005', '64334563L', 'Seguridad'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P005', '56435364M', 'Cocinero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P006', '64764566N', 'Camarero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P006', '64563543O', 'Cocinero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P007', '65345565P', 'Camarero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P007', '58646543A', 'Seguridad'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P008', '85684564B', 'Camarero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P008', '47346562C', 'Cocinero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P009', '23265634D', 'Camarero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P009', '78458458E', 'Seguridad'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P010', '56478567F', 'Camarero'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P010', '68456784G', 'Seguridad'	);
INSERT INTO PUB_EMPLEADO (COD_PUB, DNI_EMPLEADO, FUNCION) VALUES ( 'P010', '84644656H', 'Cocinero'	);

--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
