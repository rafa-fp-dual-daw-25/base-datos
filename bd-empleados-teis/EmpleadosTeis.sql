--------------------------------------------------------------------------------------------
-- CREACION Y USO DE LA BASE DE DATOS 'EmpleadosTEIS'

DROP DATABASE IF EXISTS EmpleadosTEIS;
	CREATE DATABASE 		EmpleadosTEIS
				character set	utf32
				collate			utf32_spanish2_ci;
 	USE 			EmpleadosTEIS;

--------------------------------------------------------------------------------------------
-- Borra las tablas por si existiesen.
--------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS Contribuicion, Empleado, Carga_familiar, Departamento, Proyecto, Tiene, Realiza, Pertenece, Dirige, Trabaja;
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
-- Creación de las tablas con atributos y tipos de datos asociados
--------------------------------------------------------------------------------------------

CREATE TABLE Contribucion (
id_contribucion INT(4),
Area VARCHAR(50),
Descripcion VARCHAR(100),
Asignacion DECIMAL(8,2),
OtrosDatosContribucion VARCHAR(500),

CONSTRAINT PK_id_contribucion PRIMARY KEY (id_contribucion)
);

--------------------------------------------------------------------------------------------

CREATE TABLE Empleado (
id_empleado INT(4),
nombre VARCHAR(50),
apellidos VARCHAR(100),
domicilio VARCHAR(200),
telefono VARCHAR(15),
otros_datos_empleado VARCHAR(500),

CONSTRAINT PK_id_empleado PRIMARY KEY (id_empleado)
);

--------------------------------------------------------------------------------------------

CREATE TABLE Carga_familiar (
id_carga_familiar INT(4),
nombre VARCHAR(50),
apellidos VARCHAR(100),
otros_datos_carga_familiar VARCHAR(500),

CONSTRAINT PK_id_carga_familiar PRIMARY KEY (id_carga_familiar)
);

--------------------------------------------------------------------------------------------

CREATE TABLE Departamento (
id_departamento INT(4),
nombre VARCHAR(50),
presupuesto DECIMAL(7,2),
mas_info VARCHAR(500),

CONSTRAINT PK_id_departamento PRIMARY KEY (id_departamento)
);

--------------------------------------------------------------------------------------------

CREATE TABLE Proyecto (
id_proyecto INT(4),
descripcion VARCHAR(50),
fecha_inicio DATE,
fecha_fin DATE,
otros_datos VARCHAR(500),

CONSTRAINT PK_id_proyecto PRIMARY KEY (id_proyecto)
);

--------------------------------------------------------------------------------------------

CREATE TABLE Tiene (
id_empleado INT(4),
id_carga_familiar INT(4),
parentesco VARCHAR(50),

CONSTRAINT PK_tiene PRIMARY KEY (id_empleado, id_carga_familiar)
);

--------------------------------------------------------------------------------------------

CREATE TABLE Realiza (
id_contribucion INT(4),
id_empleado INT(4),
fecha DATE,

CONSTRAINT PK_Realiza PRIMARY KEY (id_contribucion, id_empleado)
);

--------------------------------------------------------------------------------------------

CREATE TABLE Pertenece (
id_empleado INT(4),
id_departamento INT(4),
fecha_contratacion DATE,
cargo VARCHAR(50),

CONSTRAINT PK_Pertenece PRIMARY KEY (id_empleado, id_departamento)
);

--------------------------------------------------------------------------------------------

CREATE TABLE Dirige (
id_departamento INT(4),
id_empleado INT(4),
inicio_direccion DATE,

CONSTRAINT PK_Dirige PRIMARY KEY (id_departamento, id_empleado)
);

--------------------------------------------------------------------------------------------

CREATE TABLE Trabaja (
id_proyecto INT(4),
id_empleado INT(4),
fecha_contratacion DATE,

CONSTRAINT PK_Trabaja PRIMARY KEY (id_proyecto, id_empleado)
);

--------------------------------------------------------------------------------------------
-- Creación de las claves foráneas
--------------------------------------------------------------------------------------------

ALTER TABLE Tiene
ADD FOREIGN KEY (id_empleado) REFERENCES Empleado (id_empleado),
ADD FOREIGN KEY (id_carga_familiar) REFERENCES Carga_familiar (id_carga_familiar);

ALTER TABLE Realiza
ADD FOREIGN KEY (id_contribucion) REFERENCES Contribucion (id_contribucion),
ADD FOREIGN KEY (id_empleado) REFERENCES Empleado (id_empleado);

ALTER TABLE Pertenece
ADD FOREIGN KEY (id_empleado) REFERENCES Empleado (id_empleado),
ADD FOREIGN KEY (id_departamento) REFERENCES Departamento (id_departamento);

ALTER TABLE Dirige
ADD FOREIGN KEY (id_departamento) REFERENCES Departamento (id_departamento),
ADD FOREIGN KEY (id_empleado) REFERENCES Empleado (id_empleado);

ALTER TABLE Trabaja
ADD FOREIGN KEY (id_proyecto) REFERENCES Proyecto (id_proyecto),
ADD FOREIGN KEY (id_empleado) REFERENCES Empleado (id_empleado);


