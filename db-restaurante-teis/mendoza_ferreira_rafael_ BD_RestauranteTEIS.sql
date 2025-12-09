--------------------------------------------------------------------------------------------
--	CREACION Y USO DE LA BASE DE DATOS 'RestauranteTEIS'

DROP DATABASE IF EXISTS RestauranteTEIS;
	CREATE DATABASE 		RestauranteTEIS
				character set	utf32
				collate			utf32_spanish2_ci;
 	USE 			RestauranteTEIS;
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
--	ELIMINACIÓN DE LAS TABLAS POR SI EXISTIESEN Y PUDIESEN GENERAR ERRORES
--------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS Restaurante, Cliente, Mesa, Pedido, DetallePedido, Plato, Reserva;
--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA Restaurante
--
--      id_restaurante          valor numérico de 4 dígitos
--      nombre        		cadena de texto de  50 caracteres, no nulo
--      direccion             	cadena de texto de 100 caracteres, no nula
--      telefono       		cadena de texto de  15 caracteres
--
--      Clave primaria          id_restaurante

CREATE TABLE Restaurante (
    -- Identificador del restaurante
    id_restaurante INT(4),
    
    -- Nombre del restaurante
    nombre VARCHAR(50),
    
    -- Dirección del restaurante
    direccion VARCHAR(100),
    
    -- Teléfono del restaurante
    telefono VARCHAR(15)
);
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA Cliente
--
--      id_cliente          	valor numérico de 4 dígitos
--      nombre        		cadena de texto de  50 caracteres, no nulo
--      email             	cadena de texto de  50 caracteres, no nula
--      telefono       		cadena de texto de  15 caracteres
--
--      Clave primaria          id_cliente

CREATE TABLE Cliente (
    -- Identificador del cliente
    id_cliente INT(4),
    
    -- Nombre del cliente
    nombre VARCHAR(50),
    
    -- Email del cliente
    email VARCHAR(50),
    
    -- Teléfono del cliente
    telefono VARCHAR(15)
);
--------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA Mesa
--
--      id_mesa          	valor numérico de 4 dígitos
--      capacidad      		valor numérico de 2 dígitos
--      ubicacion           cadena de texto de  50 caracteres
--		restaurante			valor numérico de 4 digitos
--
--      Clave primaria          id_mesa
--		Clave foránoa

CREATE TABLE Mesa (
    -- Identificador de la mesa
    id_mesa INT(4),
    
    -- Capacidad de la mesa
    capacidad INT(2),
    
    -- Ubicación de la mesa
    ubicacion VARCHAR(50),
    
    restaurante INT(4)
);

--------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA Pedido
--
--      id_pedido          	valor numérico de 6 dígitos
--      id_cliente      	valor numérico de 4 dígitos
--      fecha_pedido           	fecha
--      estado 			cadena de texto de  20 caracteres
--
--      Clave primaria          id_pedido
--		Clave foranea		id_cliente	a Cliente( id_cliente )

CREATE TABLE Pedido (
    -- Identificador del pedido
    id_pedido INT(6),
    
    -- Identificador del cliente
    id_cliente INT(4),
    
    -- Fecha del pedido
    fecha_pedido DATE,
    
    -- Estado del pedido
    estado VARCHAR(20)
    
);
--------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA DetallePedido
--
--      id_detalle          valor numérico de 8 dígitos
--      id_pedido      		valor numérico de 6 dígitos
--      id_plato            valor numérico de 2 dígitos
--      cantidad       		valor numérico de 3 dígitos
--
--      Clave primaria      id_detalle
--		Clave foránea		id_pedido	a Pedido( id_pedido )
--  	Clave foranea		id_plato	a Plato ( id_plato )

CREATE TABLE DetallePedido (
    -- Identificador del detalle
    id_detalle INT(8),
    
    -- Identificador del pedido
    id_pedido INT(6),
    
    -- Identificador del plato
    id_plato INT(2),
    
    -- Cantidad del plato
    cantidad INT(3)
);
--------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA Plato
--
--      id_plato          	valor numérico de 2 dígitos
--      nombre      		cadena de texto de  50 caracteres
--      tipo             	cadena de texto de  30 caracteres
--      cantidad       		valor numérico de 6 dígitos, siendo 2 la parte decimal
--
--      Clave primaria          id_plato

CREATE TABLE Plato (
    -- Identificador del plato
    id_plato INT(2),
    
    -- Nombre del plato
    nombre VARCHAR(50),
    
    -- Tipo de plato
    tipo VARCHAR(30),
    
    -- Precio del plato
    precio DECIMAL(6,2)
);
--------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA Reserva
--
--      id_reserva          	valor numérico de 7 dígitos
--      id_cliente      	valor numérico de 4 dígitos
--      fecha_reserva            fecha
--      cantidad_personas	valor numérico de 3 dígitos
--	mesa_preferida		valor numérico de 3 dígitos
--	observaciones		cadena de texto de 200 caracteres
--
--      Clave primaria          id_cliente
--	Clave foránea		id_pedido	a Pedido( id_pedido )

CREATE TABLE Reserva (
    -- Identificador de la reserva
    id_reserva INT(7),
    
    -- Identificador del cliente
    id_cliente INT(4),
    
    -- Fecha de la reserva
    fecha_reserva DATE,
    
    -- Cantidad de personas
    cantidad_personas INT(3),
    
    -- Mesa preferida
    mesa_preferida INT(4),
    
    -- Observaciones de la reserva
    observaciones VARCHAR(200)
);
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
-- 0. Añadir nuevas columnas
--------------------------------------------------------------------------------------------
ALTER TABLE Cliente 
ADD COLUMN id_cliente_referencia INT(4);

ALTER TABLE Mesa 
ADD COLUMN masInformacion VARCHAR(200);

ALTER TABLE Pedido 
ADD COLUMN masInformacion VARCHAR(200);

--------------------------------------------------------------------------------------------
-- 1. Creación de las claves primarias
--------------------------------------------------------------------------------------------
ALTER TABLE Restaurante
ADD CONSTRAINT PK_id_restaurante PRIMARY KEY (id_restaurante);

ALTER TABLE Cliente
ADD CONSTRAINT PK_id_cliente PRIMARY KEY (id_cliente);

ALTER TABLE Mesa
ADD CONSTRAINT PK_id_mesa PRIMARY KEY (id_mesa);

ALTER TABLE Pedido
ADD CONSTRAINT PK_id_pedido PRIMARY KEY (id_pedido);

ALTER TABLE DetallePedido
ADD CONSTRAINT PK_id_detalle PRIMARY KEY (id_detalle);

ALTER TABLE Plato
ADD CONSTRAINT PK_id_plato PRIMARY KEY (id_plato);

ALTER TABLE Reserva
ADD CONSTRAINT PK_id_reserva PRIMARY KEY (id_reserva);

--------------------------------------------------------------------------------------------
-- 2. Creación de las claves foráneas
--------------------------------------------------------------------------------------------
ALTER TABLE Mesa
ADD CONSTRAINT FK_restaurante FOREIGN KEY (restaurante) REFERENCES Restaurante (id_restaurante);

ALTER TABLE Pedido
ADD CONSTRAINT FK_pedido_id_cliente FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente);

ALTER TABLE DetallePedido
ADD CONSTRAINT FK_id_pedido FOREIGN KEY (id_pedido) REFERENCES Pedido (id_pedido),
ADD CONSTRAINT FK_id_plato FOREIGN KEY (id_plato) REFERENCES Plato (id_plato);

ALTER TABLE Reserva
ADD CONSTRAINT FK_reserva_id_cliente FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente);
--------------------------------------------------------------------------------------------
-- 3. Creación de las claves de valores únicos
--------------------------------------------------------------------------------------------
ALTER TABLE Cliente
MODIFY COLUMN nombre VARCHAR(50) UNIQUE,
MODIFY COLUMN email VARCHAR(50) UNIQUE;

ALTER TABLE Plato
MODIFY COLUMN nombre VARCHAR(50) UNIQUE;
--------------------------------------------------------------------------------------------
-- 4. Creación de restricciones de valores no nulos
--------------------------------------------------------------------------------------------
ALTER TABLE Restaurante
MODIFY COLUMN nombre VARCHAR(50) NOT NULL,
MODIFY COLUMN direccion VARCHAR(100) NOT NULL;

ALTER TABLE Cliente
MODIFY COLUMN nombre VARCHAR(50) NOT NULL,
MODIFY COLUMN email VARCHAR(50) NOT NULL;

ALTER TABLE Restaurante
MODIFY COLUMN nombre VARCHAR(50) NOT NULL,
MODIFY COLUMN direccion VARCHAR(100) NOT NULL;
--------------------------------------------------------------------------------------------
-- 5. Creación de restricicones de valores por defecto
--------------------------------------------------------------------------------------------
ALTER TABLE Restaurante 
MODIFY COLUMN direccion VARCHAR(100) DEFAULT 'Dirección no especificada';

ALTER TABLE Cliente 
MODIFY COLUMN telefono VARCHAR(15) DEFAULT 'Sin teléfono';

--------------------------------------------------------------------------------------------
-- 6. Creación de restricciones de comparación 
--------------------------------------------------------------------------------------------
ALTER TABLE Restaurante 
ADD CONSTRAINT chk_telefono_longitud CHECK (telefono IS NULL);

ALTER TABLE Cliente 
ADD CONSTRAINT chk_email_valido CHECK (email LIKE '%@%');

ALTER TABLE Mesa 
ADD CONSTRAINT chk_capacidad_valida CHECK (capacidad BETWEEN 1 AND 20);

ALTER TABLE Pedido 
ADD CONSTRAINT chk_estado_valido CHECK (estado IN ('pendiente', 'confirmado', 'en preparación', 'listo', 'entregado', 'cancelado'));

ALTER TABLE Plato 
ADD CONSTRAINT chk_precio_positivo CHECK (precio >= 0);

ALTER TABLE DetallePedido 
ADD CONSTRAINT chk_cantidad_positiva CHECK (cantidad > 0);

ALTER TABLE Reserva 
ADD CONSTRAINT chk_personas_valida CHECK (cantidad_personas BETWEEN 1 AND 50);
--------------------------------------------------------------------------------------------
-- 7. Cambio de nombres de las claves primarias (sin '_')
--------------------------------------------------------------------------------------------
ALTER TABLE Restaurante RENAME COLUMN id_restaurante TO idrestaurante;

ALTER TABLE Cliente RENAME COLUMN id_cliente TO idcliente;

ALTER TABLE Mesa RENAME COLUMN id_mesa TO idmesa;

ALTER TABLE Pedido RENAME COLUMN id_pedido TO idpedido;

ALTER TABLE DetallePedido RENAME COLUMN id_detalle TO iddetalle;

ALTER TABLE Plato RENAME COLUMN id_plato TO idplato;

ALTER TABLE Reserva RENAME COLUMN id_reserva TO idreserva;
--------------------------------------------------------------------------------------------
-- 8. Añadir un campo masInformación a las tablas Mesa y Pedido
--------------------------------------------------------------------------------------------
