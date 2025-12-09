--------------------------------------------------------------------------------------------
-- CREACION Y USO DE LA BASE DE DATOS 'EnvioProductosTEIS'

DROP DATABASE IF EXISTS EnvioProductosTEIS;
	CREATE DATABASE 		EnvioProductosTEIS
				character set	utf32
				collate			utf32_spanish2_ci;
 	USE 			EnvioProductosTEIS;

--------------------------------------------------------------------------------------------
-- Borra las tablas por si existiesen.
--------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS Administrador, Detalles, Envio, Producto, Usuario, Venta;
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
-- Creación de las tablas con atributos y tipos de datos asociados
--------------------------------------------------------------------------------------------
CREATE TABLE Administrador (
    id_admin INT(4),
    nombre VARCHAR(200),
    email VARCHAR(50),
    dni VARCHAR(8),
    contrasena VARCHAR(255),
    telefono VARCHAR(15),
    
    CONSTRAINT PK_id_admin PRIMARY KEY (id_admin),
    CONSTRAINT UK_Administrador_dni UNIQUE KEY (dni)
);
--------------------------------------------------------------------------------------------

CREATE TABLE Detalles (
    id_producto INT(4),
    cant_comprada INT(4),
    id_venta INT(4),
    
    CONSTRAINT PK_id_producto PRIMARY KEY (id_producto)
);
--------------------------------------------------------------------------------------------

CREATE TABLE Envio (
    id_envio INT(4),
    id_camion INT(4),
    estado VARCHAR(40),
    
	CONSTRAINT PK_id_envio PRIMARY KEY (id_envio),
    CONSTRAINT UK_Envio_id_venta UNIQUE KEY (id_venta)
);
--------------------------------------------------------------------------------------------

CREATE TABLE Producto (
    id_producto INT(4),
    id_admin INT(4),
    nombre VARCHAR(200),
    precio DECIMAL(7,2),
    stock INT(4),
    
	CONSTRAINT PK_id_producto PRIMARY KEY (id_producto)
);
--------------------------------------------------------------------------------------------

CREATE TABLE Usuario (
    id_usuario INT(4),
    nombre VARCHAR(50),
    dni VARCHAR(8),
    telefono VARCHAR(15),
    contrasena VARCHAR(255),
    
    CONSTRAINT PK_id_usuario PRIMARY KEY (id_usuario),
    CONSTRAINT UK_Usuario_dni UNIQUE KEY (dni)
);
--------------------------------------------------------------------------------------------

CREATE TABLE Venta (
    id_venta INT(4),
    id_usuario INT(4),
	id_admin INT(4),
	id_envio INT(4),
    cantidad_total INT(4),
    fecha DATE,
    
    CONSTRAINT PK_id_venta PRIMARY KEY (id_venta),
    CONSTRAINT UK_Venta_id_envio UNIQUE KEY (id_envio)
);

--------------------------------------------------------------------------------------------
-- Creación de las claves foráneas
--------------------------------------------------------------------------------------------
ALTER TABLE Producto
ADD FOREIGN KEY (id_admin) REFERENCES Administrador (id_admin);

ALTER TABLE Detalles
ADD FOREIGN KEY (id_producto) REFERENCES Producto (id_producto),
ADD FOREIGN KEY (id_venta) REFERENCES Venta (id_venta);

ALTER TABLE Venta
ADD FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario),
ADD FOREIGN KEY (id_admin) REFERENCES Administrador (id_admin),
ADD FOREIGN KEY (id_envio) REFERENCES Envio (id_envio);

ALTER TABLE Usuario
ADD FOREIGN KEY (dni) REFERENCES Administrador (dni);