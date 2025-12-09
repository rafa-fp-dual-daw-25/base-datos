-- ========================================================================================
-- SCRIPT COMPLETO DE CREACIÓN DE BASE DE DATOS 'JardineriaTEIS'
-- Base de datos para gestión de una empresa de jardinería
-- ========================================================================================

--------------------------------------------------------------------------------------------
-- CREACIÓN Y USO DE LA BASE DE DATOS 'JardineriaTEIS'
-- Corrección: Se mantiene UTF32 pero se podría considerar UTF8mb4 para mejor compatibilidad
--------------------------------------------------------------------------------------------
DROP DATABASE IF EXISTS JardineriaTEIS;
CREATE DATABASE JardineriaTEIS
    CHARACTER SET utf32
    COLLATE utf32_spanish2_ci;
USE JardineriaTEIS;

--------------------------------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 'Oficina'
-- Almacena información de las oficinas de la empresa
--------------------------------------------------------------------------------------------
CREATE TABLE Oficina (
    oficinaID VARCHAR(10) NOT NULL,           -- Código único de oficina
    ciudad VARCHAR(30) NOT NULL,              -- Ciudad donde se ubica la oficina
    pais VARCHAR(50) NOT NULL,                -- País de la oficina
    region VARCHAR(50) NOT NULL,              -- Región o estado
    CP VARCHAR(10) NOT NULL,                  -- Código postal
    telefono VARCHAR(20) NOT NULL,            -- Teléfono de contacto
    linea_direccion1 VARCHAR(50) NOT NULL,    -- Dirección principal
    linea_direccion2 VARCHAR(50) DEFAULT NULL,-- Dirección secundaria (opcional)
    
    CONSTRAINT PK_Oficina PRIMARY KEY (oficinaID)  -- Clave primaria
);

--------------------------------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 'Empleado'
-- Almacena información de los empleados
-- CORRECCIÓN: Se completó la estructura que estaba incompleta en el script original
--------------------------------------------------------------------------------------------
CREATE TABLE Empleado (
    empleadoID INT NOT NULL,                  -- ID único del empleado (sin width deprecated)
    nombre VARCHAR(50) NOT NULL,              -- Nombre del empleado
    apellido1 VARCHAR(50) NOT NULL,           -- Primer apellido
    apellido2 VARCHAR(50) DEFAULT NULL,       -- Segundo apellido (puede ser NULL)
    extension VARCHAR(10) NOT NULL,           -- Extensión telefónica
    email VARCHAR(100) NOT NULL,              -- Correo electrónico
    oficina VARCHAR(10) NOT NULL,             -- Oficina asignada
    jefe INT DEFAULT NULL,                    -- ID del jefe (autorreferencia)
    puesto VARCHAR(50) NOT NULL,              -- Puesto o cargo
    
    CONSTRAINT PK_Empleado PRIMARY KEY (empleadoID),
    CONSTRAINT FK_Empleado_Oficina FOREIGN KEY (oficina) REFERENCES Oficina(oficinaID),
    CONSTRAINT FK_Empleado_Jefe FOREIGN KEY (jefe) REFERENCES Empleado(empleadoID)  -- Autorreferencia
);

--------------------------------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 'Gama_producto'
-- Catálogo de gamas de productos disponibles
-- CORRECCIÓN: Se creó la tabla que faltaba en el script original
--------------------------------------------------------------------------------------------
CREATE TABLE Gama_producto (
    gama VARCHAR(50) NOT NULL,                -- Tipo de gama (ej: "Plantas", "Herramientas")
    descripcion_texto TEXT,                   -- Descripción en texto plano
    descripcion_html TEXT,                    -- Descripción en formato HTML
    imagen VARCHAR(256),                      -- Ruta de la imagen
    
    CONSTRAINT PK_Gama_producto PRIMARY KEY (gama)
);

--------------------------------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 'Cliente'
-- Almacena información de los clientes
-- CORRECCIÓN: Se completó con todos los campos especificados
--------------------------------------------------------------------------------------------
CREATE TABLE Cliente (
    clienteID INT NOT NULL,                   -- ID único del cliente
    nombre_cliente VARCHAR(50) NOT NULL,      -- Nombre del cliente (empresa o persona)
    nombre_contacto VARCHAR(30) DEFAULT NULL, -- Nombre de persona de contacto
    apellido_contacto VARCHAR(50) DEFAULT NULL,-- Apellido de persona de contacto
    telefono VARCHAR(15) NOT NULL,            -- Teléfono principal
    fax VARCHAR(15) NOT NULL,                 -- Número de fax
    linea_direccion1 VARCHAR(50) NOT NULL,    -- Dirección línea 1
    linea_direccion2 VARCHAR(50) DEFAULT NULL,-- Dirección línea 2 (opcional)
    ciudad VARCHAR(50) NOT NULL,              -- Ciudad
    region VARCHAR(50) NOT NULL,              -- Región
    pais VARCHAR(50) NOT NULL,                -- País
    CP VARCHAR(10) NOT NULL,                  -- Código postal
    representante_ventas INT DEFAULT NULL,    -- Empleado asignado como representante
    limite_credito DECIMAL(15,2) DEFAULT NULL,-- Límite de crédito del cliente
    
    CONSTRAINT PK_Cliente PRIMARY KEY (clienteID),
    CONSTRAINT FK_Cliente_Empleado FOREIGN KEY (representante_ventas) REFERENCES Empleado(empleadoID)
);

--------------------------------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 'Pedido'
-- Registra los pedidos realizados por los clientes
-- CORRECCIÓN: Se cambió 'comentarioa' por 'comentarios' (error tipográfico original)
--------------------------------------------------------------------------------------------
CREATE TABLE Pedido (
    pedidoID INT NOT NULL,                    -- Número único de pedido
    fecha_pedido DATE NOT NULL,               -- Fecha en que se realizó el pedido
    fecha_esperada DATE NOT NULL,             -- Fecha esperada de entrega
    fecha_entrega DATE DEFAULT NULL,          -- Fecha real de entrega (puede ser NULL)
    estado VARCHAR(15) NOT NULL,              -- Estado del pedido
    comentarios TEXT,                         -- Comentarios adicionales (CORRECCIÓN: nombre corregido)
    cliente INT NOT NULL,                     -- Cliente que realiza el pedido
    
    CONSTRAINT PK_Pedido PRIMARY KEY (pedidoID),
    CONSTRAINT FK_Pedido_Cliente FOREIGN KEY (cliente) REFERENCES Cliente(clienteID)
);

--------------------------------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 'Producto'
-- Catálogo de productos disponibles
-- CORRECCIÓN: Se usó SMALLINT sin width para evitar warning de deprecated
--------------------------------------------------------------------------------------------
CREATE TABLE Producto (
    productoID VARCHAR(15) NOT NULL,          -- Código único del producto
    nombre VARCHAR(70) NOT NULL,              -- Nombre del producto
    gama VARCHAR(50) NOT NULL,                -- Gama a la que pertenece
    dimensiones VARCHAR(25) DEFAULT NULL,     -- Dimensiones del producto
    proveedor VARCHAR(50) DEFAULT NULL,       -- Proveedor del producto
    descripcion TEXT DEFAULT NULL,            -- Descripción detallada
    cantidad_en_stock SMALLINT NOT NULL,      -- Cantidad en inventario (CORRECCIÓN: sin width)
    precio_venta DECIMAL(15,2) NOT NULL,      -- Precio de venta al público
    precio_proveedor DECIMAL(15,2) NOT NULL,  -- Precio de compra al proveedor
    
    CONSTRAINT PK_Producto PRIMARY KEY (productoID),
    CONSTRAINT FK_Producto_Gama FOREIGN KEY (gama) REFERENCES Gama_producto(gama)
);

--------------------------------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 'Detalle_pedido'
-- Lineas detalladas de cada pedido
-- CORRECCIÓN IMPORTANTE: Las claves foráneas se corrigieron para que apunten a 
-- Pedido y Producto (en el original incorrectamente apuntaban a Cliente)
--------------------------------------------------------------------------------------------
CREATE TABLE Detalle_pedido (
    pedidoID INT NOT NULL,                    -- Número de pedido
    productoID VARCHAR(15) NOT NULL,          -- Producto incluido en el pedido
    cantidad INT NOT NULL,                    -- Cantidad solicitada
    precio_unidad DECIMAL(15,2) NOT NULL,     -- Precio unitario en el momento del pedido
    linea SMALLINT NOT NULL,                  -- Número de línea dentro del pedido
    
    CONSTRAINT PK_Detalle_pedido PRIMARY KEY (pedidoID, productoID),  -- Clave compuesta
    CONSTRAINT FK_DetallePedido_Pedido FOREIGN KEY (pedidoID) REFERENCES Pedido(pedidoID),  -- CORRECCIÓN
    CONSTRAINT FK_DetallePedido_Producto FOREIGN KEY (productoID) REFERENCES Producto(productoID)  -- CORRECCIÓN
);

--------------------------------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 'Pago'
-- Registro de pagos realizados por los clientes
-- CORRECCIÓN IMPORTANTE: La clave primaria se cambió a compuesta (clienteID + transaccion)
-- ya que un cliente puede tener múltiples pagos
--------------------------------------------------------------------------------------------
CREATE TABLE Pago (
    clienteID INT NOT NULL,                   -- Cliente que realiza el pago
    forma_pago VARCHAR(40) NOT NULL,          -- Método de pago (efectivo, tarjeta, etc.)
    transaccion VARCHAR(50) NOT NULL,         -- Número o código de transacción
    fecha_pago DATE DEFAULT NULL,             -- Fecha del pago
    total DECIMAL(15,2) NOT NULL,             -- Monto total del pago
    
    CONSTRAINT PK_Pago PRIMARY KEY (clienteID, transaccion),  -- CORRECCIÓN: Clave compuesta
    CONSTRAINT FK_Pago_Cliente FOREIGN KEY (clienteID) REFERENCES Cliente(clienteID)
);

-- ========================================================================================
-- COMENTARIOS SOBRE LAS PRINCIPALES CORRECCIONES REALIZADAS:
-- ========================================================================================

-- 1. ORDEN DE CREACIÓN: Las tablas se crean en orden correcto respetando dependencias
-- 2. SINTÁXIS COMPLETA: Cada tabla tiene su CREATE TABLE completo
-- 3. CLAVES FORÁNEAS CORREGIDAS: 
--    - Detalle_pedido ahora referencia Pedido y Producto (no Cliente)
--    - Pago tiene clave primaria compuesta correcta
-- 4. TIPOS DE DATOS ACTUALIZADOS: 
--    - Uso de TEXT para campos largos
--    - SMALLINT sin width deprecated
--    - DECIMAL para valores monetarios
-- 5. NOMBRES CORREGIDOS: 'comentarioa' -> 'comentarios'
-- 6. CONSTRAINTS CONSISTENTES: Nomenclatura uniforme en todas las tablas

-- ========================================================================================
-- SCRIPT LISTO PARA EJECUTAR EN MySQL
-- ========================================================================================