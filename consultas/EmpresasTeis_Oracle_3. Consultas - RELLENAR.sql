--------------------------------------------------------------
--  1. Consultas básicas
--------------------------------------------------------------
-- Mostrar todos los productos con todos sus datos


-- Mostrar solo el ID, nombre y precio de los productos


-- Mostrar todos los administradores con todos sus datos


-- Mostrar nombre, email y teléfono de los administradores


-- Mostrar todos los detalles de las ventas


-- Mostrar ID de venta, ID de producto y cantidad comprada


-- Mostrar todas las ventas con todos sus datos


-- Mostrar ID de venta, ID de usuario y fecha de la venta


-- Mostrar todos los envíos con todos sus datos


-- Mostrar ID de envío y estado del envío


-- Mostrar todos los usuarios con todos sus datos


-- Mostrar ID, nombre y DNI de los usuarios


--------------------------------------------------------------
--  2. Consultas con conjuntos - IN
--------------------------------------------------------------
-- Mostrar productos cuyo ID_Admin sea 1, 2 ó 3


-- Mostrar de los productos su identificador, nombre y precio, cuyo precio sea 10.00, 20.50 ó 30.75


-- Mostrar la información de los administradores cuyo identificador sea 1 ó 2


-- Mostrar de los administradores su nombre, correo electrónico y teléfono si el DNI es '12345678A' o '23456789B'


-- Mostrar los detalles de las ventas cuyo identificador esté entre 1 y 3


-- Mostrar los identificador de venta y de producto y cantidad comprada de los productos cuyo identificador sea 10 ó 20


-- Mostrar las ventas realizadas por el usuario cuyo identificador esté entre 1 y 3


-- Mostrar de la venta su identificador, el del usuario y la fecha de realización de los usuarios con los códigos entre 1 y 2


-- Mostrar los datos de los envíos con cuyo código estré entre 1 y 3


-- Mostrar de los envíos su identificador y su estado siempre que sea 'Enviado','Pendiente' o 'Cancelado'


-- Mostrar los datos de los usuarios con cuyo identificador esté entre 4 y 7


-- Mostrar de los usuarios su identificador, nombre y dni siempre que su dni sea '12345678A' o '23456789B'


--------------------------------------------------------------
--  3. Consultas con operadores de rango - BETWEEN
--------------------------------------------------------------
-- Mostrar productos con ID_Producto entre 1 y 10


-- Mostrar productos con precio entre 10.00 y 50.00


-- Mostrar administradores con ID_Admin entre 1 y 5


-- Mostrar administradores con teléfono entre 60000000 y 69999999


-- Mostrar detalles con ID_Venta entre 1 y 5


-- Mostrar detalles con CantComprada entre 1 y 20


-- Mostrar ventas con ID_Venta entre 1 y 10


-- Mostrar ventas con CantidadTotal entre 5 y 50


-- Mostrar envíos con ID_Envio entre 1 y 5


-- Mostrar envíos con ID_Camion entre 100 y 200


-- Mostrar usuarios con ID_Usuario entre 1 y 10


-- Mostrar usuarios con DNI entre '10000000A' y '30000000Z'


--------------------------------------------------------------
--  4. Consultas con operadores de comparación - >, >=, <, <=, =, !=, <>
--------------------------------------------------------------
-- Mostrar productos con precio mayor a 20


-- Mostrar productos con precio menor o igual a 50


-- Mostrar administradores con ID_Admin igual a 1


-- Mostrar administradores cuyo ID_Admin no sea 2


-- Mostrar detalles con CantComprada mayor o igual a 5


-- Mostrar detalles con CantComprada distinta de 10


-- Mostrar ventas con CantidadTotal menor a 20


-- Mostrar ventas con CantidadTotal igual a 15


-- Mostrar envíos con ID_Camion mayor a 100


-- Mostrar envíos con ID_Camion menor o igual a 200


-- Mostrar usuarios con ID_Usuario mayor o igual a 3


-- Mostrar usuarios con ID_Usuario distinto de 2


--------------------------------------------------------------
--  5. Consultas de valor nulo - NULL
--------------------------------------------------------------
-- Mostrar productos cuyo ID_Admin sea NULL


-- Mostrar productos cuyo ID_Admin no sea NULL


-- Mostrar administradores cuyo teléfono sea NULL


-- Mostrar administradores cuyo teléfono no sea NULL


-- Mostrar detalles donde CantComprada sea NULL


-- Mostrar detalles donde CantComprada no sea NULL


-- Mostrar ventas donde Fecha sea NULL


-- Mostrar ventas donde Fecha no sea NULL


-- Mostrar envíos donde Estado sea NULL


-- Mostrar envíos donde Estado no sea NULL


-- Mostrar usuarios donde Telefono sea NULL


-- Mostrar usuarios donde Telefono no sea NULL


--------------------------------------------------------------
--  6. Consultas con filtros de patrón - LIKE
--------------------------------------------------------------
-- Mostrar productos cuyo nombre empiece por 'A'


-- Mostrar productos cuyo nombre contenga 'Pro' en cualquier parte


-- Mostrar administradores cuyo nombre acabe en 'ez'


-- Mostrar administradores cuya segunda letra del nombre sea 'u'


-- Mostrar detalles donde el ID_Producto convertido a texto empiece por '1'


-- Mostrar detalles donde la penúltima cifra de ID_Venta sea '2'


-- Mostrar ventas donde la cantidad total convertida a texto empiece por '1'


-- Mostrar ventas donde la fecha convertida a texto contenga '-12-' (mes diciembre)


-- Mostrar envíos cuyo estado empiece por 'E'


-- Mostrar envíos cuyo estado tenga 'd' como penúltima letra


-- Mostrar usuarios cuyo nombre empiece por 'J'


-- Mostrar usuarios cuyo DNI termine en 'A'


--------------------------------------------------------------
--  7. Consultas con límite de registros - LIMIT
--------------------------------------------------------------
-- Mostrar solo los primeros 3 productos


-- Mostrar del 6º al 8º producto


-- Mostrar solo los primeros 2 administradores


-- Mostrar del 4º al 6º administrador


-- Mostrar solo los primeros 5 detalles


-- Mostrar del 6º al 10º detalle


-- Mostrar solo las primeras 4 ventas


-- Mostrar del 5º al 7º venta


-- Mostrar solo los primeros 3 envíos


-- Mostrar del 4º al 6º envío


-- Mostrar solo los primeros 2 usuarios


-- Mostrar del 3º al 5º usuario


--------------------------------------------------------------
--  8. Consultas con expresiones regulares de patrones - REGEXP
--------------------------------------------------------------
-- Mostrar productos cuyo nombre empiece con 'A' o 'B'


-- Mostrar productos cuyo nombre contenga 'Pro' o 'Max'


-- Mostrar productos cuya segunda letra sea 'o'


-- Mostrar productos cuyo nombre termine en 'x' y tenga 'Pro' en cualquier parte


-- Mostrar administradores cuyo nombre termine en 'ez'


-- Mostrar administradores cuyo mail contenga números


-- Mostrar administradores cuya penúltima letra del nombre sea 'r'


-- Mostrar administradores cuyo mail empiece con 'a' y contenga números


-- Mostrar detalles donde ID_Producto comience con 1 o 2


-- Mostrar detalles donde CantComprada tenga al menos dos dígitos


-- Mostrar detalles donde ID_Producto comience con '1' y tenga un dígito impar como segunda cifra


-- Mostrar detalles donde CantComprada tenga exactamente 3 dígitos


-- Mostrar ventas donde CantidadTotal sea un número par


-- Mostrar ventas donde Fecha sea del año 2025


-- Mostrar ventas donde CantidadTotal sea un número par de 2 dígitos


-- Mostrar ventas donde el año de la fecha sea 2025 y el mes diciembre


-- Mostrar envíos cuyo estado empiece por 'E' o 'P'


-- Mostrar envíos cuyo estado contenga la letra 'd'


-- Mostrar envíos cuyo estado tenga una 'd' como segunda letra


-- Mostrar envíos cuyo estado termine en 'o' y contenga 'en' en cualquier parte


-- Mostrar usuarios cuyo nombre empiece por 'J' o 'M'


-- Mostrar usuarios cuyo DNI termine en letra A o B


-- Mostrar usuarios cuyo nombre tenga 'a' como tercera letra


-- Mostrar usuarios cuyo DNI termine en letra A o B y tenga números al inicio


--------------------------------------------------------------
--  9. Consultas con ordenación - ORDER BY
--------------------------------------------------------------
-- Mostrar productos ordenados por Precio de menor a mayor


-- Mostrar productos ordenados por Nombre de la Z a la A


-- Mostrar administradores ordenados por Nombre de la A a la Z


-- Mostrar administradores ordenados por ID_Admin de mayor a menor


-- Mostrar detalles ordenados por CantComprada de menor a mayor


-- Mostrar detalles ordenados por ID_Venta de mayor a menor


-- Mostrar ventas ordenadas por Fecha de más antigua a más reciente


-- Mostrar ventas ordenadas por CantidadTotal de mayor a menor


-- Mostrar envíos ordenados por Estado de la A a la Z


-- Mostrar envíos ordenados por ID_Envio de mayor a menor


-- Mostrar usuarios ordenados por Nombre de la A a la Z


-- Mostrar usuarios ordenados por ID_Usuario de mayor a menor


--------------------------------------------------------------
-- 10. Consultas multitabla con composición interna - INNER JOIN, NATURAL JOIN
--------------------------------------------------------------
-- Mostrar productos con los datos de su administrador usando INNER JOIN


-- Mostrar productos con datos de su administrador usando NATURAL JOIN
-- (requerido que las columnas con el mismo nombre coincidan, aquí ID_Admin)


-- Mostrar ventas con los datos del usuario que las realizó usando INNER JOIN


-- Mostrar ventas con datos del usuario usando NATURAL JOIN


-- Mostrar ventas con los datos del administrador que la gestionó usando INNER JOIN


-- Mostrar ventas con datos del administrador usando NATURAL JOIN


-- Mostrar ventas con sus detalles y nombres de productos usando INNER JOIN


-- Ejemplo de NATURAL JOIN (requerido coincidencia de nombres de columnas)


-- Mostrar ventas con datos de su envío usando INNER JOIN


-- Mostrar ventas con datos de envío usando NATURAL JOIN


-- Mostrar usuarios con las ventas que realizaron y los productos comprados usando INNER JOIN


-- Ejemplo NATURAL JOIN para unir automáticamente columnas comunes


--------------------------------------------------------------
-- 11. Consultas multitabla con composición externa
--------------------------------------------------------------
-- Mostrar todos los productos y su administrador (si existe) usando LEFT JOIN


-- Mostrar todos los administradores y los productos que gestionan (si existen) usando RIGHT JOIN


-- Mostrar todas las ventas con su usuario (si existe) usando LEFT JOIN


-- Mostrar todos los usuarios y sus ventas (si existen) usando RIGHT JOIN


-- Mostrar todas las ventas con su administrador (si existe) usando LEFT JOIN


-- Mostrar todos los administradores y las ventas que gestionan (si existen) usando RIGHT JOIN


-- Mostrar todas las ventas y sus detalles (si existen) usando LEFT JOIN


-- Mostrar todos los productos y los detalles de ventas (si existen) usando RIGHT JOIN


-- Mostrar todas las ventas y su envío (si existe) usando LEFT JOIN


-- Mostrar todos los envíos y las ventas asociadas (si existen) usando RIGHT JOIN


-- Mostrar todos los usuarios con sus ventas, detalles y productos (si existen) usando LEFT JOIN


-- Mostrar todos los productos con sus detalles, ventas y usuarios (si existen) usando RIGHT JOIN


--------------------------------------------------------------
-- 12. Consultas resumen - GROUP BY
--------------------------------------------------------------
-- Contar el número total de productos


-- Calcular el precio promedio, mínimo y máximo de los productos


-- Contar el número total de administradores


-- Contar administradores por cada valor de teléfono (para ver duplicados o coincidencias)


-- Contar el total de detalles de ventas


-- Sumar la cantidad comprada por cada producto


-- Contar el total de ventas


-- Sumar la cantidad total vendida por cada usuario


-- Contar el total de envíos


-- Contar envíos por estado


-- Contar el total de usuarios


-- Contar usuarios agrupados por la primera letra de su nombre


--------------------------------------------------------------
-- 13. Subconsultas (comparación, cuantificación, pertenencia a un conjunto, existencia)
--------------------------------------------------------------
------------------
-- TABLA PRODUCTO
------------------
-- Mostrar los productos cuyo precio sea mayor que el promedio de todos los productos
--
-- 1. Comparación


-- 2. Cuantificación


-- 3. Pertenencia a un conjunto


-- 4. Existencia


-- Mostrar productos cuyo nombre contenga 'Pro'
--
-- 1. Comparación


-- 2. Cuantificación


-- 3. Pertenencia a un conjunto


-- 4. Existencia


------------------
-- TABLA ADMINISTRADOR
------------------
-- Mostrar administradores que gestionan productos con precio mayor a 50
--
-- 1. Comparación


-- 2. Cuantificación


-- 3. Pertenencia a un conjunto


-- 4. Existencia


-- Mostrar administradores cuyo mail contenga 'empresa'
--
-- 1. Comparación


-- 2. Cuantificación


-- 3. Pertenencia a un conjunto


-- 4. Existencia


------------------
-- TABLA USUARIO
------------------
-- Mostrar usuarios que hayan realizado ventas con cantidad total mayor a 20
--
-- 1. Comparación


-- 2. Cuantificación


-- 3. Pertenencia a un conjunto


-- 4. Existencia


-- Mostrar usuarios cuyo nombre contenga la letra 'a'
--
-- 1. Comparación


-- 2. Cuantificación


-- 3. Pertenencia a un conjunto


-- 4. Existencia


------------------
-- TABLA VENTA
------------------
-- Mostrar ventas que incluyen productos cuyo precio sea mayor a 50
--
-- 1. Comparación


-- 2. Cuantificación


-- 3. Pertenencia a un conjunto


-- 4. Existencia


-- Mostrar ventas cuya fecha contenga '2025-12'
--
-- 1. Comparación


-- 2. Cuantificación


-- 3. Pertenencia a un conjunto


-- 4. Existencia


------------------
-- TABLA DETALLES
------------------
-- Mostrar detalles de productos comprados en cantidades mayores a 10
--
-- 1. Comparación


-- 2. Cuantificación


-- 3. Pertenencia a un conjunto


-- 4. Existencia


-- Mostrar detalles de productos cuya ID_Producto comience con '1' (cadena)
--
-- 1. Comparación


-- 2. Cuantificación


-- 3. Pertenencia a un conjunto


-- 4. Existencia


------------------
-- TABLA ENVIO
------------------
-- Mostrar envíos cuyo ID_Camion sea mayor a 100
--
-- 1. Comparación


-- 2. Cuantificación


-- 3. Pertenencia a un conjunto


-- 4. Existencia


-- Mostrar envíos cuyo estado contenga la letra 'e'
--
-- 1. Comparación


-- 2. Cuantificación


-- 3. Pertenencia a un conjunto


-- 4. Existencia

