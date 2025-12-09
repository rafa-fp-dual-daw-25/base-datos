--------------------------------------------------------------------------------------------
--	CREACION Y USO DE LA BASE DE DATOS 'RestauranteTEIS'
--------------------------------------------------------------------------------------------
-- Nos conectamos como Administradores

-- Creamos al usuario c##RestauranteTEIS y le concedemos los permisos

-- Nos conectamos con el nombre del nuevo usuario

--------------------------------------------------------------------------------------------
--	ELIMINACIÓN DE LAS TABLAS POR SI EXISTIESEN Y PUDIESEN GENERAR ERRORES
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA Restaurante
--
--      id_restaurante          valor numérico de 4 dígitos
--      nombre        		cadena de texto de  50 caracteres, no nulo
--      direccion             	cadena de texto de 100 caracteres, no nula
--      telefono       		cadena de texto de  15 caracteres
--
--      Clave primaria          id_restaurante
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
--------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA Mesa
--
--      id_mesa          	valor numérico de 4 dígitos
--      capacidad      		valor numérico de 2 dígitos
--      ubicacion             	cadena de texto de  50 caracteres
--
--      Clave primaria          id_mesa
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
--	Clave foranea		id_cliente	a Cliente( id_cliente )
--------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA DetallePedido
--
--      id_detalle          	valor numérico de 8 dígitos
--      id_pedido      		valor numérico de 6 dígitos
--      id_plato             	valor numérico de 2 dígitos
--      cantidad       		valor numérico de 3 dígitos
--
--      Clave primaria          id_cliente
--	Clave foránea		id_pedido	a Pedido( id_pedido )
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
--------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------
--	CREACIÓN DE LA TABLA Reserva
--
--      id_reserva          	valor numérico de 7 dígitos
--      id_cliente      	valor numérico de 4 dígitos
--      fecha_reerva            fecha
--      cantidad_personas	valor numérico de 3 dígitos
--	mesa_preferida		valor numérico de 3 dígitos
--	observaciones		cadena de texto de 200 caracteres
--
--      Clave primaria          id_cliente
--	Clave foránea		id_pedido	a Pedido( id_pedido )
--------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------
-- 1. Creación de las claves primarias
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
-- 2. Creación de las claves foráneas
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
-- 3. Creación de las claves de valores únicos
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
-- 4. Creación de restricciones de valores no nulos
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
-- 5. Creación de restricicones de valores por defecto
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
-- 6. Creación de restricciones de comparación 
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
-- 7. Cambio de nombres de las claves primarias (sin '_')
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
-- 8. Añadir un campo masInformación a las tablas Mesa y Pedido
--------------------------------------------------------------------------------------------
