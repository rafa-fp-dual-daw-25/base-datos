--------------------------------------------------------------------------------------------
--	1. CREACION Y USO DE LA BASE DE DATOS 'ReptilesTEIS'

DROP DATABASE IF EXISTS ReptilesTEIS;
	CREATE DATABASE 		ReptilesTEIS
				character set	utf32
				collate			utf32_spanish2_ci;
 	USE 			ReptilesTEIS;

--------------------------------------------------------------------------------------------
-- 2. Borra las tablas por si existiesen.
--------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS Especie, Habitat, Dieta, Cuidador, Reptil, Observacion, DietaReptil;
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
-- 3. Creación de las tablas con atributos y tipos de datos asociados
--------------------------------------------------------------------------------------------
CREATE TABLE Especie (
    id_especie INT(4),
    nombre_cientifico VARCHAR(200),
    nombre_comun VARCHAR(200),
    familia VARCHAR(50),
    region_procedencia VARCHAR(50),
    estado_conservacion VARCHAR(50),
    tamano DECIMAL(5,2),
    peso DECIMAL(5,2)
);
--------------------------------------------------------------------------------------------

CREATE TABLE Habitat (

    id_habitat INT(4),
    tipo VARCHAR(50),
    temperatura DECIMAL(5,2),
    humedad DECIMAL(5,2),
    descripcion_habitat VARCHAR(500),
    superficie DECIMAL(5,2),
    ubicacion VARCHAR(50)
);
--------------------------------------------------------------------------------------------

CREATE TABLE Dieta (
    id_dieta INT(4),
    tipo_alimento VARCHAR(50),
    frecuencia_consumo INT(2),
    descripcion_dieta VARCHAR(500),
    cantidad_consumo INT(5),
    tipo_nutricion VARCHAR(50)
);
--------------------------------------------------------------------------------------------

CREATE TABLE Cuidador (

    id_cuidador INT(4),
    nombre VARCHAR(200),
    telefono VARCHAR(15),
    especialidad_cuidador VARCHAR(50),
    correo_electronico VARCHAR(50),
    fecha_contratacion DATE
);
--------------------------------------------------------------------------------------------

CREATE TABLE Reptil (
    id_reptil INT(4),
    nombre VARCHAR(50),
    sexo VARCHAR(50),
    fecha_nacimiento DATE,
    id_especie INT(4),
    id_habitat INT(4),
    id_cuidador INT(4),
    peso DECIMAL(5,2),
    longitud DECIMAL(5,2),
    estado_salud VARCHAR(200)
);
--------------------------------------------------------------------------------------------

CREATE TABLE Observacion (
    id_observacion INT(4),
    id_reptil INT(4),
    fecha DATE,
    descripcion VARCHAR(200),
    estado_salud VARCHAR(200),
    anotaciones VARCHAR(200),
    temperatura DECIMAL(5,2),
    humedad DECIMAL(5,2)
);
--------------------------------------------------------------------------------------------

CREATE TABLE DietaReptil (

    id_reptil INT(4),
    id_dieta INT(4),
    cantidad_consumo_real INT(5),
    hora DATETIME,
    observaciones VARCHAR(200)
);
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
-- 4. Creación de las claves primarias
--------------------------------------------------------------------------------------------
ALTER TABLE Especie
ADD CONSTRAINT PK_id_especie PRIMARY KEY (id_especie);

ALTER TABLE Habitat
ADD CONSTRAINT PK_id_habitat PRIMARY KEY (id_habitat);

ALTER TABLE Dieta
ADD CONSTRAINT PK_id_dieta PRIMARY KEY (id_dieta);

ALTER TABLE Cuidador
ADD CONSTRAINT PK_id_cuidador PRIMARY KEY (id_cuidador);

ALTER TABLE Reptil
ADD CONSTRAINT PK_id_reptil PRIMARY KEY (id_reptil);

ALTER TABLE Observacion
ADD CONSTRAINT PK_id_observacion PRIMARY KEY (id_observacion);

ALTER TABLE DietaReptil
ADD CONSTRAINT PK_id_dietaReptil PRIMARY KEY (id_dieta, id_reptil);

--------------------------------------------------------------------------------------------
-- 5. Creación de las claves foráneas
--------------------------------------------------------------------------------------------
ALTER TABLE Reptil
ADD CONSTRAINT FK_id_especie FOREIGN KEY (id_especie) REFERENCES Especie (id_especie),
ADD CONSTRAINT FK_id_habitat FOREIGN KEY (id_habitat) REFERENCES Habitat (id_habitat),
ADD CONSTRAINT FK_id_cuidador FOREIGN KEY (id_cuidador) REFERENCES Cuidador (id_cuidador);

ALTER TABLE Observacion
ADD CONSTRAINT FK_id_reptil FOREIGN KEY (id_reptil) REFERENCES Reptil (id_reptil);

ALTER TABLE DietaReptil
ADD CONSTRAINT FK_dietaReptil_id_reptil FOREIGN KEY (id_reptil) REFERENCES Reptil (id_reptil),
ADD CONSTRAINT FK_dietaReptil_id_dieta FOREIGN KEY (id_dieta) REFERENCES Dieta (id_dieta);
--------------------------------------------------------------------------------------------
-- 6. Creación de las claves de valores únicos
--------------------------------------------------------------------------------------------
ALTER TABLE Especie
MODIFY COLUMN nombre_cientifico VARCHAR(200) UNIQUE;

ALTER TABLE Cuidador
MODIFY COLUMN correo_electronico VARCHAR(50) UNIQUE;

ALTER TABLE Dieta
MODIFY COLUMN tipo_alimento VARCHAR(50) UNIQUE,
MODIFY COLUMN tipo_nutricion VARCHAR(50) UNIQUE;
--------------------------------------------------------------------------------------------
-- 7. Creación de restricciones de valores no nulos
--------------------------------------------------------------------------------------------
ALTER TABLE Especie
MODIFY COLUMN nombre_cientifico VARCHAR(200) NOT NULL;

ALTER TABLE Habitat
MODIFY COLUMN tipo VARCHAR(50) NOT NULL;

ALTER TABLE Dieta
MODIFY COLUMN tipo_alimento VARCHAR(50) NOT NULL;

ALTER TABLE Cuidador
MODIFY COLUMN nombre VARCHAR(200) NOT NULL,
MODIFY COLUMN fecha_contratacion DATE NOT NULL;

ALTER TABLE Reptil
MODIFY COLUMN nombre VARCHAR(50) NOT NULL,
MODIFY COLUMN sexo VARCHAR(50) NOT NULL,
MODIFY COLUMN fecha_nacimiento DATE NOT NULL;
--------------------------------------------------------------------------------------------
-- 8. Creación de restricicones de valores por defecto
--------------------------------------------------------------------------------------------
ALTER TABLE Especie
MODIFY COLUMN nombre_cientifico VARCHAR(200) DEFAULT 'Nombre vacio';

ALTER TABLE Habitat
MODIFY COLUMN tipo VARCHAR(50) DEFAULT 'Local desconocido';

ALTER TABLE Dieta
MODIFY COLUMN tipo_alimento VARCHAR(50) DEFAULT 'Huevos';

ALTER TABLE Cuidador
MODIFY COLUMN telefono VARCHAR(15) DEFAULT 'Sin teléfono';

ALTER TABLE Reptil
MODIFY COLUMN estado_salud VARCHAR(200) DEFAULT 'Regular';

--------------------------------------------------------------------------------------------
-- 9. Creación de restricciones de comparación 
--------------------------------------------------------------------------------------------
ALTER TABLE Especie 
ADD CONSTRAINT chk__ya_medido CHECK (tamano >= 0);

ALTER TABLE Habitat
ADD CONSTRAINT chk_humedad_ideal CHECK (humedad > 50);

ALTER TABLE Dieta
ADD CONSTRAINT chk_alimento_correcto CHECK (tipo_alimento IN ('huevos', 'vegetales', 'carne'));

ALTER TABLE Cuidador
ADD CONSTRAINT chk_email_valido CHECK (correo_electronico LIKE '%@%');

ALTER TABLE Reptil
ADD CONSTRAINT chk_peso_ideal CHECK (peso BETWEEN 30 AND 35);

--------------------------------------------------------------------------------------------
-- 10. Añadir primary key a la tabla DietaReptil
--------------------------------------------------------------------------------------------
ALTER TABLE DietaReptil
DROP PRIMARY KEY,
ADD CONSTRAINT PK_id_dietaReptil PRIMARY KEY (id_dieta, id_reptil);