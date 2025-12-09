-- ================================================================
-- CONCELLO DE TEIS - Script completo ConcelloTEIS.sql (MySQL)
-- ================================================================


-- ================================================================
-- EJERCICIO 1: CREAR BASE DE DATOS Y TABLAS
-- ================================================================

-- Borra la base de datos si ya existe
DROP DATABASE IF EXISTS ConcelloTEIS;
-- crea la base de datos
CREATE DATABASE ConcelloTEIS;
-- utiliza la base de datos
USE ConcelloTEIS;

-- Crear tabla de departamentos
CREATE TABLE depto (
-- Número del código del Departamento
  Depto INT(4),
  -- Sigla del departamento
  Sigla VARCHAR(4),
  -- Nombre del departamento
  Nome VARCHAR(20),
  -- Ciudad en la que está el departamento
  Ciudad VARCHAR(30),
  -- País en el que está el departamento
  Pais VARCHAR(30),
  -- Teléfono del departamento
  Tf VARCHAR(15),
  -- Departamento superior jerárquico
  SupJer INT(4)
);

-- Crear tabla de empleados
CREATE TABLE Emple (
  -- Número del código del Empleado
  Emp INT(3),
  -- Nombre del empleado
  Nome VARCHAR(30),
  -- Primer apellido del empleado
  Apel1 VARCHAR(30),
  -- Segundo apellido del empleado
  Apel2 VARCHAR(30),
  -- Sueldo del empleado (4 dígitos + 2 decimales)
  Sal DECIMAL(6,2),
  -- Fecha de incorporación a la empresa
  FecInc DATE
);

-- Crear tabla de asignaciones
CREATE TABLE Asign (
-- Número del código de Asignación
  CodAsi INT(4),
  -- Identificador del Empleado
  Emp INT(3),
  -- Identificador del Departamento
  Dpto INT(4),
  -- Fecha de asignación
  FecAsi DATE,
  -- Fecha de despido
  FecCan DATE
);


-- ================================================================
-- EJERCICIO 2
-- ================================================================


-- ----------------------------------------------------------------
-- CREAR CLAVES PRIMARIAS:
-- ----------------------------------------------------------------

-- En la tabla depto: depto
ALTER TABLE depto
ADD PRIMARY KEY (Depto);

-- En la tabla emple: emp  
ALTER TABLE emple
ADD PRIMARY KEY (Emp);

-- En la tabla asign: codAsi
ALTER TABLE asign
ADD PRIMARY KEY (CodAsi);


-- ----------------------------------------------------------------
-- CREAR CLAVES FORÁNEAS:
-- ----------------------------------------------------------------

-- En la tabla depto: supJer a la tabla Depto
ALTER TABLE depto
ADD CONSTRAINT fk_depto_supjer FOREIGN KEY (SupJer) REFERENCES depto(Depto);

-- En la tabla asign: emp a la tabla Emple
ALTER TABLE asign
ADD CONSTRAINT fk_asign_emp FOREIGN KEY (Emp) REFERENCES emple(Emp);

-- En la tabla asign: dpto a la tabla Depto
ALTER TABLE asign
ADD CONSTRAINT fk_asign_dpto FOREIGN KEY (Dpto) REFERENCES depto(Depto);


-- ----------------------------------------------------------------
-- CREAR RESTRICCIONES DE VALORES NO NULOS:
-- ----------------------------------------------------------------

-- En la tabla depto: sigla, nome, pais
ALTER TABLE depto
MODIFY Sigla VARCHAR(4) NOT NULL,
MODIFY Nome VARCHAR(20) NOT NULL,
MODIFY Pais VARCHAR(30) NOT NULL;

-- En la tabla emple: nome, Apel1, FecInc
ALTER TABLE emple
MODIFY Nome VARCHAR(30) NOT NULL,
MODIFY Apel1 VARCHAR(30) NOT NULL,
MODIFY FecInc DATE NOT NULL;

-- En la tabla Asign: emp, dpto, FecAsi
ALTER TABLE asign
MODIFY Emp INT(3) NOT NULL,
MODIFY Dpto INT(4) NOT NULL,
MODIFY FecAsi DATE NOT NULL;


-- ----------------------------------------------------------------
-- MODIFICAR TIPO DE DATOS:
-- ----------------------------------------------------------------

-- En la tabla emple: cambia el tipo de datos de Sal a entero de 5 dígitos
ALTER TABLE emple MODIFY Sal INT(5);


-- ----------------------------------------------------------------
-- CREAR RESTRICCIONES DE COMPARACIÓN:
-- ----------------------------------------------------------------

-- En la tabla depto: sigla, nome, ciudad, pais No pueden quedar vacíos
ALTER TABLE depto
ADD CONSTRAINT chk_depto_sigla CHECK (Sigla != ''),
ADD CONSTRAINT chk_depto_nome CHECK (Nome != ''),
ADD CONSTRAINT chk_depto_ciudad CHECK (Ciudad != ''),
ADD CONSTRAINT chk_depto_pais CHECK (Pais != '');

-- En la tabla emple: nome, Apel1 No pueden quedar vacíos
ALTER TABLE emple
ADD CONSTRAINT chk_emple_nome CHECK (Nome != ''),
ADD CONSTRAINT chk_emple_apel1 CHECK (Apel1 != '');

-- sal No puede quedar vacío, ser negativo ni nulo
ALTER TABLE emple
ADD CONSTRAINT chk_emple_sal CHECK (Sal != '' IS NOT NULL AND Sal >= 0);


-- ----------------------------------------------------------------
-- CAMBIAR UN ATRIBUTO DE TABLA:
-- ----------------------------------------------------------------

-- Mueve el atributo Sal a la tabla Asig para que sea más significativo.

-- Primero añadir la columna Sal en la tabla asign
ALTER TABLE asign
ADD Sal INT(5);

-- Luego eliminar la columna Sal de la tabla emple
ALTER TABLE emple
DROP COLUMN Sal;


-- ----------------------------------------------------------------
-- CREAR RESTRICCIONES DE CAMBIO DE NOMBRE:
-- ----------------------------------------------------------------

-- Cambia el nombre de la tabla depto por Departamento, emple por Empleado, y, asign por Asignacion.
RENAME TABLE depto TO Departamento;
RENAME TABLE emple TO Empleado;
RENAME TABLE asign TO Asignacion;

-- Cambia el nombre de la clave primaria de la tabla Departamento por Dpto.
-- Primero eliminamos las claves foráneas que referencian Departamento
ALTER TABLE Departamento
DROP FOREIGN KEY fk_depto_supjer;

ALTER TABLE Asignacion
DROP FOREIGN KEY fk_asign_dpto;

-- Eliminar y recrear la primary key con nuevo nombre
ALTER TABLE Departamento
DROP PRIMARY KEY,
ADD CONSTRAINT Dpto PRIMARY KEY (Depto);

-- Recrear las claves foráneas
ALTER TABLE Departamento
ADD CONSTRAINT fk_departamento_supjer FOREIGN KEY (SupJer) REFERENCES Departamento(Depto);

ALTER TABLE Asignacion
ADD CONSTRAINT fk_asignacion_dpto FOREIGN KEY (Dpto) REFERENCES Departamento(Depto);

-- Cambia el nombre de la clave foránea de la tabla Asignacion por Empleado.
ALTER TABLE Asignacion
DROP FOREIGN KEY fk_asign_emp;

ALTER TABLE Asignacion
ADD CONSTRAINT Empleado FOREIGN KEY (Emp) REFERENCES Empleado(Emp);


-- ----------------------------------------------------------------
-- CREAR RESTRICCIONES DE ACCESO RÁPIDO:
-- ----------------------------------------------------------------

-- Crea restricciones de acceso rápido a todas las tablas en función de algún atributo no primo.

-- Índice en Departamento para búsquedas por nombre
CREATE INDEX idx_departamento_nome ON Departamento (Nome);

-- Índice en Empleado para búsquedas por primer apellido
CREATE INDEX idx_empleado_apel1 ON Empleado (Apel1);

-- Índice en Asignacion para búsquedas por fecha de asignación
CREATE INDEX idx_asignacion_fecasi ON Asignacion (FecAsi);


-- ================================================================
-- FIN DEL SCRIPT
-- ================================================================