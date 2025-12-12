------------------------------------------------------------------------------------------------------
--  BASE DE DATOS EmpresasTEIS
------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- PREGUNTAS NIVEL FÁCIL
--------------------------------------------------------------------------------------------------------
-- Sobre 1 tabla
--------------------------------------------------------------------------------------------------------
--  1. Obtén todos los productos.
SELECT * FROM producto;

--  2. Muestra los nombres de todos los administradores.
SELECT * FROM administrador;

--  3. Lista todos los usuarios registrados.
SELECT * FROM usuario;

--  4. Muestra los envíos y su estado.
SELECT ID_Envio, Estado FROM envio;

--  5. Obtén todas las ventas realizadas.
SELECT * FROM venta;

--  6. Lista los productos cuyo precio sea mayor de 10€.
SELECT * FROM producto WHERE Precio > 10;

--  7. Muestra los usuarios cuyo número de teléfono empieza por “6”.
SELECT * FROM usuario WHERE Telefono LIKE "6%";

--  8. Lista los nombres y correos de los administradores.
SELECT Nombre, Mail FROM administrador;

--  9. Obtén todas las ventas hechas en el año 2025.
SELECT * FROM venta WHERE fecha BETWEEN "2025-01-01" AND "2025-12-31";
SELECT * FROM venta WHERE year(fecha) = 2025;

-- 10. Muestra los productos ordenados por precio ascendente.
SELECT * FROM producto ORDER BY precio ASC;

--------------------------------------------------------------------------------------------------------
-- Sobre 2 tablas
--------------------------------------------------------------------------------------------------------
--  1. Muestra el nombre del producto y el nombre del administrador que lo gestiona.
SELECT p.Nombre, a.Nombre FROM producto p JOIN administrador a ON p.ID_Admin = a.ID_Admin;

--  2. Lista las ventas junto con el nombre del usuario que la realizó.
SELECT a.Nombre, v.* FROM venta v JOIN administrador a ON v.ID_Admin = a.ID_Admin; 

--  3. Lista las ventas y muestra el estado del envío asociado.
SELECT v.*, e.Estado FROM venta v JOIN envio e ON v.ID_Envio = e.ID_Envio;

--  4. Muestra el nombre del administrador y los productos que administra.
SELECT a.Nombre AS "Administrador", p.Nombre AS "Producto" FROM administrador a JOIN producto p ON a.ID_Admin = p.ID_Admin;

--  5. Lista los nombres de los usuarios y el total de ventas que hicieron (sin agrupar).
SELECT u.Nombre, v.CantidadTotal FROM usuario u JOIN venta v ON u.ID_Usuario = v.ID_Usuario;

--  6. Muestra cada venta junto con el ID del producto comprado.
SELECT p.ID_Producto AS "ID Producto", v.* FROM venta v JOIN producto p ON p.ID_admin = v.ID_Admin;

--  7. Muestra todos los productos incluidos en alguna venta.
SELECT d.ID_Venta, p.Nombre AS "Productos en esta venta" FROM producto p JOIN detalles d ON p.ID_Producto = p.ID_Producto LIMIT 1;
SELECT d.ID_Venta, p.Nombre AS "Productos en esta venta" FROM producto p JOIN detalles d ON d.ID_Producto = p.ID_Producto;
SELECT * from detalles;

--  8. Muestra las ventas y el teléfono del usuario.

--  9. Obtén el nombre del administrador asociado a cada venta.

-- 10. Muestra los envíos vinculados a ventas realizadas por el usuario 1.


--------------------------------------------------------------------------------------------------------
-- Sobre 3 tablas
--------------------------------------------------------------------------------------------------------
--  1. Muestra el nombre del producto, cantidad comprada y fecha de venta.

--  2. Lista el usuario, el producto comprado y su cantidad.

--  3. Muestra administrador, venta y estado del envío.

--  4. Lista usuario, fecha de venta y producto comprado.

--  5. Muestra producto, administrador responsable y usuario comprador.

--  6. Obtén usuario, venta e información del envío.

--  7. Muestra producto, venta y cantidad comprada.

--  8. Lista administrador, producto y ventas relacionadas.

--  9. Muestra usuario, venta y producto ordenado por fecha.

-- 10. Muestra producto, cantidad total y estado del envío.


--------------------------------------------------------------------------------------------------------
-- Sobre 4 tablas
--------------------------------------------------------------------------------------------------------
--  1. Muestra en cada venta: usuario, producto, cantidad y fecha de venta.

--  2. Lista administrador, usuario, producto y fecha.

--  3. Muestra venta, producto, envío y administrador asociado.

--  4. Lista usuario, venta, producto y estado del envío.

--  5. Obtén administrador, producto, venta y cantidad comprada.

--  6. Muestra usuario, venta, envío y estado.

--  7. Lista administrador, venta, envío y producto comprado.

--  8. Muestra usuario, producto, administrador y teléfono del usuario.

--  9. Lista producto, usuario, venta y camion utilizado.

-- 10. Muestra todo el detalle posible de una venta: usuario, producto, administrador y envío.



--------------------------------------------------------------------------------------------------------
-- PREGUNTAS NIVEL MEDIO
--------------------------------------------------------------------------------------------------------
-- Sobre 1 tabla
--------------------------------------------------------------------------------------------------------
--  1. Obtén los productos cuyo precio esté entre 10 y 50€.

--  2. Muestra los usuarios cuyo DNI contenga la letra "T".

--  3. Lista las ventas realizadas en los últimos 30 días.

--  4. Muestra productos con nombre que contenga “a” o “o”.

--  5. Encuentra administradores cuyo email termine en “.es”.

--  6. Lista usuarios ordenados por nombre descendente.

--  7. Obtén los productos cuyo precio sea superior al precio medio.

--  8. Busca ventas cuya cantidad total sea mayor de 2 unidades.

--  9. Muestra productos cuyo nombre tenga más de 8 caracteres.

-- 10. Encuentra usuarios con teléfono de 9 cifras.


--------------------------------------------------------------------------------------------------------
-- Sobre 2 tablas
--------------------------------------------------------------------------------------------------------
--  1. Muestra productos y administradores solo si el precio supera 20€.

--  2. Lista ventas con nombre del usuario cuyo nombre empiece por “M”.

--  3. Obtén ventas y estado del envío filtrando solo estado “Entregado”.

--  4. Muestra administrador y productos administrados cuyo precio sea > 30€.

--  5. Lista usuarios que hayan realizado alguna venta.

--  6. Muestra ventas y productos asociados con cantidad total > 2.

--  7. Lista productos que nunca han sido vendidos.

--  8. Muestra usuarios sin número de teléfono registrado.

--  9. Lista administradores que gestionan más de 2 productos.

-- 10. Obtén ventas cuyos usuarios tengan DNI que termine en “X”.


--------------------------------------------------------------------------------------------------------
-- Sobre 3 tablas
--------------------------------------------------------------------------------------------------------
--  1. Muestra usuario, producto y fecha de venta realizadas en 2024.

--  2. Lista productos vendidos por cada administrador.

--  3. Muestra usuario, venta y estado del envío cuando la cantidad total sea > 1.

--  4. Lista producto, administrador y cantidad comprada ordenados por cantidad.

--  5. Obtén usuarios que hayan comprado más de un producto en la misma venta.

--  6. Muestra ventas gestionadas por cada administrador con envío “En camino”.

--  7. Lista productos vendidos a usuarios cuyo nombre empiece por “C”.

--  8. Muestra administrador, venta y productos de ventas posteriores a 2023.

--  9. Lista ventas con productos cuyo precio sea mayor que 35€.

-- 10. Muestra usuario, venta y producto ordenados por fecha de forma ascendente.


--------------------------------------------------------------------------------------------------------
-- Sobre 4 tablas
--------------------------------------------------------------------------------------------------------
--  1. Muestra usuario, producto, venta y envío de ventas del administrador 1.

--  2. Lista administrador, usuario, producto y cantidad para ventas > 1 unidad.

--  3. Obtén todas las ventas completas cuya fecha sea de 2023.

--  4. Muestra administrador, venta, estado del envío y producto comprado.

--  5. Lista usuario, envío, administrador y productos con precio > 40€.

--  6. Obtén ventas donde intervengan productos administrados por el administrador 3.

--  7. Muestra usuario, envío, producto y administrador ordenados por nombre del usuario.

--  8. Lista productos, ventas, envíos y administradores solo si la cantidad total supera 2.

--  9. Muestra información completa de ventas hechas por usuarios cuyo DNI contenga “F”.

-- 10. Obtén ventas completas donde el camión del envío sea 2.


--------------------------------------------------------------------------------------------------------
-- PREGUNTAS NIVEL DIFÍCIL
--------------------------------------------------------------------------------------------------------
-- Sobre 1 tabla
--------------------------------------------------------------------------------------------------------
--  1. Obtén el producto más caro.

--  2. Calcula el precio medio, mínimo y máximo de los productos.

--  3. Lista administradores cuyo email sea único dentro de la tabla.

--  4. Muestra usuarios cuyo DNI siga el patrón “^[0-9]{8}[A-Z]$”.

--  5. Obtén las 3 ventas más recientes.

--  6. Muestra productos cuyo precio sea superior al 75% del precio máximo.

--  7. Encuentra usuarios con nombres duplicados.

--  8. Muestra productos cuyo nombre tenga exactamente 5 caracteres.

--  9. Lista ventas cuyo día de la semana sea lunes.

-- 10. Obtén productos cuyo precio supere la media + desviación estándar.

--------------------------------------------------------------------------------------------------------
-- Sobre 2 tablas
--------------------------------------------------------------------------------------------------------
--  1. Lista administradores que no gestionan ningún producto.

--  2. Obtén usuarios que han realizado ventas pero solo una vez.

--  3. Encuentra productos vendidos a través de envíos “Cancelado”.

--  4. Lista todos los usuarios que han comprado productos administrados por el administrador 2.

--  5. Obtén la venta de mayor importe (cantidad × precio).

--  6. Muestra administradores cuyos productos nunca han sido vendidos.

--  7. Lista usuarios con más de una venta asociada.

--  8. Obtén ventas cuyo administrador no coincide con el del producto comprado.

--  9. Lista productos vendidos por usuarios cuyo DNI sea letra par (A–Z pares).

-- 10. Obtén envíos que fueron usados en más de 2 ventas.


--------------------------------------------------------------------------------------------------------
-- Sobre 3 tablas
--------------------------------------------------------------------------------------------------------
--  1. Calcula la facturación total por administrador.

--  2. Lista el usuario que más productos compró en total.

--  3. Encuentra el administrador cuyos productos fueron más vendidos.

--  4. Muestra usuarios que compraron productos de al menos 2 administradores diferentes.

--  5. Lista productos vendidos en envíos cuyo camión termine en número par.

--  6. Calcula ventas por mes mostrando usuario, total y número de productos.

--  7. Obtén el producto con mayor cantidad total vendida.

--  8. Muestra ventas donde el precio total (precio×cantidad) supere la media general.

--  9. Lista usuarios que realizaron ventas en distintos años.

-- 10. Encuentra administradores cuyos usuarios compraron más de 4 productos en total.

--------------------------------------------------------------------------------------------------------
-- Sobre 4 tablas
--------------------------------------------------------------------------------------------------------
--  1. Calcula facturación total (precio × cantidad) por usuario.

--  2. Calcula facturación total por administrador y estado de envío.

--  3. Encuentra ventas donde el usuario compró más de 2 productos distintos.

--  4. Muestra la venta más grande incluyendo todos sus detalles (producto, usuario, admin, envío).

--  5. Encuentra el producto más rentable según cantidad total vendida.

--  6. Lista usuarios que hayan comprado productos administrados por más de 2 administradores.

--  7. Obtén las ventas cuyo envío esté “En camino” y tengan más de un producto.

--  8. Lista ventas con detalles completos cuyo precio total supere el máximo de 2023.

--  9. Calcula ranking de productos más vendidos mostrando usuario, administrador y cantidad total.

-- 10. Muestra ventas completas donde el camión coincida con el número del día de la venta.
