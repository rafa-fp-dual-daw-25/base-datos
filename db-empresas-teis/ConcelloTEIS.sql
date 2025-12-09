DROP DATABASE IF EXISTS ConcelloTEIS;
CREATE DATABASE ConcelloTEIS; 		-- CREACION DE LA BASE DE DATOS
USE ConcelloTEIS;					-- UTILIZAR LA BASE DE DATOS

-- Tabla DEPARTAMENTOS: Contiene información de los departamentos de la empresa
CREATE TABLE depto (
    Depto    INT (4),  				-- Número del código del Departamento
    Sigla    VARCHAR(4),      		-- Sigla del departamento
    Nome   	 VARCHAR(20),  	 		-- Nombre del departamento
    Ciudad   VARCHAR(30),    		-- Ciudad en la que está el departamento
    Pais     VARCHAR(30),     		-- País en el que está el departamento
    Tf	     VARCHAR(15),           -- Teléfono del departamento
    Supler   INT(4)         	    -- Departamento superior jerarquico
);

-- Tabla EMPLEADOS: Contiene información de los empleados
CREATE TABLE Emple (
    
    Emp      INT(3),      			 -- Número del código del Empleado
    Nome     VARCHAR(30),    		 -- Nombre del empleado
    Apel1    VARCHAR(30),   		 -- Primer apellido del empleado
    Apel2    VARCHAR(30),            -- Segundo apellido del empleado
    Sal      DECIMAL(6,2),       	 -- Sueldo del empleado (4 dígitos + 2 decimales)
    FecInc    DATE       	 		 -- Fecha de incorporación a la empresa
);

-- Tabla ASIGN: Contiene información de cada asignación de un empleado a un departamento
CREATE TABLE Asign (
    codAsi	 INT(4),    			 -- Número del código de Asignación
    Emp      INT(3),      		     -- Identificador del Empleado
    Dpto     INT(4),       			 -- Identificador del Departamento
    fecAsi   DATE,      	     	 -- Fecha de asignación
    fecCan   DATE              		 -- Fecha de elegido
);

ALTER TABLE depto
MODIFY  depto INT PRIMARY KEY;		-- 	creación de clave primária en la tabla depto

ALTER TABLE Emple
MODIFY  Emp INT PRIMARY KEY;		-- 	creación de clave primária en la tabla Emple

ALTER TABLE Asign
MODIFY  codAsi INT PRIMARY KEY;		-- 	creación de clave primária en la tabla Asign

ALTER TABLE depto
ADD FOREIGN KEY (Supler) REFERENCES depto(Supler);		-- 	creación de clave foránea Supler en la tabla depto

ALTER TABLE Asign
ADD FOREIGN KEY (Emp) REFERENCES Emple(Emp),		-- 	creación de clave foránea Emp en la tabla Emple
ADD FOREIGN KEY (Dpto) REFERENCES Depto(Emp);		-- 	creación de clave foránea Emp en la tabla Emple

