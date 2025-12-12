/*
   EMPRESAS TEIS - Script de Consultas (MySQL)
   Basado en la estructura de tablas y datos proporcionados.
*/

USE EmpresasTEIS;

--------------------------------------------------------------
--  1. Consultas básicas
--------------------------------------------------------------
-- Mostrar todos los productos con todos sus datos
SELECT * FROM Producto;

-- Mostrar solo el ID, nombre y precio de los productos
SELECT ID_Producto, Nombre, Precio FROM Producto;

-- Mostrar todos los administradores con todos sus datos
SELECT * FROM Administrador;

-- Mostrar nombre, email y teléfono de los administradores
SELECT Nombre, Mail, Telefono FROM Administrador;

-- Mostrar todos los detalles de las ventas
SELECT * FROM Detalles;

-- Mostrar ID de venta, ID de producto y cantidad comprada
SELECT ID_Venta, ID_Producto, CantComprada FROM Detalles;

-- Mostrar todas las ventas con todos sus datos
SELECT * FROM Venta;

-- Mostrar ID de venta, ID de usuario y fecha de la venta
SELECT ID_Venta, ID_Usuario, Fecha FROM Venta;

-- Mostrar todos los envíos con todos sus datos
SELECT * FROM Envio;

-- Mostrar ID de envío y estado del envío
SELECT ID_Envio, Estado FROM Envio;

-- Mostrar todos los usuarios con todos sus datos
SELECT * FROM Usuario;

-- Mostrar ID, nombre y DNI de los usuarios
SELECT ID_Usuario, Nombre, DNI FROM Usuario;


--------------------------------------------------------------
--  2. Consultas con conjuntos - IN
--------------------------------------------------------------
-- Mostrar productos cuyo ID_Admin sea 1, 2 ó 3
SELECT * FROM Producto WHERE ID_Admin IN (1, 2, 3);

-- Mostrar de los productos su identificador, nombre y precio, cuyo precio sea 10.00, 20.50 ó 30.75
SELECT ID_Producto, Nombre, Precio FROM Producto WHERE Precio IN (10.00, 20.50, 30.75);

-- Mostrar la información de los administradores cuyo identificador sea 1 ó 2
SELECT * FROM Administrador WHERE ID_Admin IN (1, 2);

-- Mostrar de los administradores su nombre, correo electrónico y teléfono si el DNI es '12345678A' o '23456789B'
SELECT Nombre, Mail, Telefono FROM Administrador WHERE DNI IN ('12345678A', '23456789B');

-- Mostrar los detalles de las ventas cuyo identificador esté entre 1 y 3
SELECT * FROM Detalles WHERE ID_Venta IN (1, 2, 3);

-- Mostrar los identificador de venta y de producto y cantidad comprada de los productos cuyo identificador sea 10 ó 20
SELECT ID_Venta, ID_Producto, CantComprada FROM Detalles WHERE ID_Producto IN (10, 20);

-- Mostrar las ventas realizadas por el usuario cuyo identificador esté entre 1 y 3
SELECT * FROM Venta WHERE ID_Usuario IN (1, 2, 3);

-- Mostrar de la venta su identificador, el del usuario y la fecha de realización de los usuarios con los códigos entre 1 y 2
SELECT ID_Venta, ID_Usuario, Fecha FROM Venta WHERE ID_Usuario IN (1, 2);

-- Mostrar los datos de los envíos con cuyo código estré entre 1 y 3
SELECT * FROM Envio WHERE ID_Envio IN (1, 2, 3);

-- Mostrar de los envíos su identificador y su estado siempre que sea 'Enviado','Pendiente' o 'Cancelado'
SELECT ID_Envio, Estado FROM Envio WHERE Estado IN ('Enviado', 'Pendiente', 'Cancelado');

-- Mostrar los datos de los usuarios con cuyo identificador esté entre 4 y 7
SELECT * FROM Usuario WHERE ID_Usuario IN (4, 5, 6, 7);

-- Mostrar de los usuarios su identificador, nombre y dni siempre que su dni sea '12345678A' o '23456789B'
SELECT ID_Usuario, Nombre, DNI FROM Usuario WHERE DNI IN ('12345678A', '23456789B');


--------------------------------------------------------------
--  3. Consultas con operadores de rango - BETWEEN
--------------------------------------------------------------
-- Mostrar productos con ID_Producto entre 1 y 10
SELECT * FROM Producto WHERE ID_Producto BETWEEN 1 AND 10;

-- Mostrar productos con precio entre 10.00 y 50.00
SELECT * FROM Producto WHERE Precio BETWEEN 10.00 AND 50.00;

-- Mostrar administradores con ID_Admin entre 1 y 5
SELECT * FROM Administrador WHERE ID_Admin BETWEEN 1 AND 5;

-- Mostrar administradores con teléfono entre 60000000 y 69999999
SELECT * FROM Administrador WHERE Telefono BETWEEN '60000000' AND '69999999';

-- Mostrar detalles con ID_Venta entre 1 y 5
SELECT * FROM Detalles WHERE ID_Venta BETWEEN 1 AND 5;

-- Mostrar detalles con CantComprada entre 1 y 20
SELECT * FROM Detalles WHERE CantComprada BETWEEN 1 AND 20;

-- Mostrar ventas con ID_Venta entre 1 y 10
SELECT * FROM Venta WHERE ID_Venta BETWEEN 1 AND 10;

-- Mostrar ventas con CantidadTotal entre 5 y 50
SELECT * FROM Venta WHERE CantidadTotal BETWEEN 5 AND 50;

-- Mostrar envíos con ID_Envio entre 1 y 5
SELECT * FROM Envio WHERE ID_Envio BETWEEN 1 AND 5;

-- Mostrar envíos con ID_Camion entre 100 y 200
SELECT * FROM Envio WHERE ID_Camion BETWEEN 100 AND 200;

-- Mostrar usuarios con ID_Usuario entre 1 y 10
SELECT * FROM Usuario WHERE ID_Usuario BETWEEN 1 AND 10;

-- Mostrar usuarios con DNI entre '10000000A' y '30000000Z'
SELECT * FROM Usuario WHERE DNI BETWEEN '10000000A' AND '30000000Z';


--------------------------------------------------------------
--  4. Consultas con operadores de comparación - >, >=, <, <=, =, !=, <>
--------------------------------------------------------------
-- Mostrar productos con precio mayor a 20
SELECT * FROM Producto WHERE Precio > 20;

-- Mostrar productos con precio menor o igual a 50
SELECT * FROM Producto WHERE Precio <= 50;

-- Mostrar administradores con ID_Admin igual a 1
SELECT * FROM Administrador WHERE ID_Admin = 1;

-- Mostrar administradores cuyo ID_Admin no sea 2
SELECT * FROM Administrador WHERE ID_Admin <> 2;

-- Mostrar detalles con CantComprada mayor o igual a 5
SELECT * FROM Detalles WHERE CantComprada >= 5;

-- Mostrar detalles con CantComprada distinta de 10
SELECT * FROM Detalles WHERE CantComprada != 10;

-- Mostrar ventas con CantidadTotal menor a 20
SELECT * FROM Venta WHERE CantidadTotal < 20;

-- Mostrar ventas con CantidadTotal igual a 15
SELECT * FROM Venta WHERE CantidadTotal = 15;

-- Mostrar envíos con ID_Camion mayor a 100
SELECT * FROM Envio WHERE ID_Camion > 100;

-- Mostrar envíos con ID_Camion menor o igual a 200
SELECT * FROM Envio WHERE ID_Camion <= 200;

-- Mostrar usuarios con ID_Usuario mayor o igual a 3
SELECT * FROM Usuario WHERE ID_Usuario >= 3;

-- Mostrar usuarios con ID_Usuario distinto de 2
SELECT * FROM Usuario WHERE ID_Usuario <> 2;


--------------------------------------------------------------
--  5. Consultas de valor nulo - NULL
--------------------------------------------------------------
-- Mostrar productos cuyo ID_Admin sea NULL
SELECT * FROM Producto WHERE ID_Admin IS NULL;

-- Mostrar productos cuyo ID_Admin no sea NULL
SELECT * FROM Producto WHERE ID_Admin IS NOT NULL;

-- Mostrar administradores cuyo teléfono sea NULL
SELECT * FROM Administrador WHERE Telefono IS NULL;

-- Mostrar administradores cuyo teléfono no sea NULL
SELECT * FROM Administrador WHERE Telefono IS NOT NULL;

-- Mostrar detalles donde CantComprada sea NULL
SELECT * FROM Detalles WHERE CantComprada IS NULL;

-- Mostrar detalles donde CantComprada no sea NULL
SELECT * FROM Detalles WHERE CantComprada IS NOT NULL;

-- Mostrar ventas donde Fecha sea NULL
SELECT * FROM Venta WHERE Fecha IS NULL;

-- Mostrar ventas donde Fecha no sea NULL
SELECT * FROM Venta WHERE Fecha IS NOT NULL;

-- Mostrar envíos donde Estado sea NULL
SELECT * FROM Envio WHERE Estado IS NULL;

-- Mostrar envíos donde Estado no sea NULL
SELECT * FROM Envio WHERE Estado IS NOT NULL;

-- Mostrar usuarios donde Telefono sea NULL
SELECT * FROM Usuario WHERE Telefono IS NULL;

-- Mostrar usuarios donde Telefono no sea NULL
SELECT * FROM Usuario WHERE Telefono IS NOT NULL;


--------------------------------------------------------------
--  6. Consultas con filtros de patrón - LIKE
--------------------------------------------------------------
-- Mostrar productos cuyo nombre empiece por 'A'
SELECT * FROM Producto WHERE Nombre LIKE 'A%';

-- Mostrar productos cuyo nombre contenga 'Pro' en cualquier parte
SELECT * FROM Producto WHERE Nombre LIKE '%Pro%';

-- Mostrar administradores cuyo nombre acabe en 'ez'
SELECT * FROM Administrador WHERE Nombre LIKE '%ez';

-- Mostrar administradores cuya segunda letra del nombre sea 'u'
SELECT * FROM Administrador WHERE Nombre LIKE '_u%';

-- Mostrar detalles donde el ID_Producto convertido a texto empiece por '1'
SELECT * FROM Detalles WHERE CAST(ID_Producto AS CHAR) LIKE '1%';

-- Mostrar detalles donde la penúltima cifra de ID_Venta sea '2'
SELECT * FROM Detalles WHERE CAST(ID_Venta AS CHAR) LIKE '%2_';

-- Mostrar ventas donde la cantidad total convertida a texto empiece por '1'
SELECT * FROM Venta WHERE CAST(CantidadTotal AS CHAR) LIKE '1%';

-- Mostrar ventas donde la fecha convertida a texto contenga '-12-' (mes diciembre)
SELECT * FROM Venta WHERE CAST(Fecha AS CHAR) LIKE '%-12-%';

-- Mostrar envíos cuyo estado empiece por 'E'
SELECT * FROM Envio WHERE Estado LIKE 'E%';

-- Mostrar envíos cuyo estado tenga 'd' como penúltima letra
SELECT * FROM Envio WHERE Estado LIKE '%d_';

-- Mostrar usuarios cuyo nombre empiece por 'J'
SELECT * FROM Usuario WHERE Nombre LIKE 'J%';

-- Mostrar usuarios cuyo DNI termine en 'A'
SELECT * FROM Usuario WHERE DNI LIKE '%A';


--------------------------------------------------------------
--  7. Consultas con límite de registros - LIMIT
--------------------------------------------------------------
-- Mostrar solo los primeros 3 productos
SELECT * FROM Producto LIMIT 3;

-- Mostrar del 6º al 8º producto (Salta 5, toma 3)
SELECT * FROM Producto LIMIT 3 OFFSET 5;

-- Mostrar solo los primeros 2 administradores
SELECT * FROM Administrador LIMIT 2;

-- Mostrar del 4º al 6º administrador
SELECT * FROM Administrador LIMIT 3 OFFSET 3;

-- Mostrar solo los primeros 5 detalles
SELECT * FROM Detalles LIMIT 5;

-- Mostrar del 6º al 10º detalle
SELECT * FROM Detalles LIMIT 5 OFFSET 5;

-- Mostrar solo las primeras 4 ventas
SELECT * FROM Venta LIMIT 4;

-- Mostrar del 5º al 7º venta
SELECT * FROM Venta LIMIT 3 OFFSET 4;

-- Mostrar solo los primeros 3 envíos
SELECT * FROM Envio LIMIT 3;

-- Mostrar del 4º al 6º envío
SELECT * FROM Envio LIMIT 3 OFFSET 3;

-- Mostrar solo los primeros 2 usuarios
SELECT * FROM Usuario LIMIT 2;

-- Mostrar del 3º al 5º usuario
SELECT * FROM Usuario LIMIT 3 OFFSET 2;


--------------------------------------------------------------
--  8. Consultas con expresiones regulares de patrones - REGEXP
--------------------------------------------------------------
-- Mostrar productos cuyo nombre empiece con 'A' o 'B'
SELECT * FROM Producto WHERE Nombre REGEXP '^[AB]';

-- Mostrar productos cuyo nombre contenga 'Pro' o 'Max'
SELECT * FROM Producto WHERE Nombre REGEXP 'Pro|Max';

-- Mostrar productos cuya segunda letra sea 'o'
SELECT * FROM Producto WHERE Nombre REGEXP '^.o';

-- Mostrar productos cuyo nombre termine en 'x' y tenga 'Pro' en cualquier parte
SELECT * FROM Producto WHERE Nombre REGEXP 'x$' AND Nombre LIKE '%Pro%';

-- Mostrar administradores cuyo nombre termine en 'ez'
SELECT * FROM Administrador WHERE Nombre REGEXP 'ez$';

-- Mostrar administradores cuyo mail contenga números
SELECT * FROM Administrador WHERE Mail REGEXP '[0-9]';

-- Mostrar administradores cuya penúltima letra del nombre sea 'r'
SELECT * FROM Administrador WHERE Nombre REGEXP 'r.$';

-- Mostrar administradores cuyo mail empiece con 'a' y contenga números
SELECT * FROM Administrador WHERE Mail REGEXP '^a.*[0-9]';

-- Mostrar detalles donde ID_Producto comience con 1 o 2
SELECT * FROM Detalles WHERE ID_Producto REGEXP '^[12]';

-- Mostrar detalles donde CantComprada tenga al menos dos dígitos
SELECT * FROM Detalles WHERE CantComprada REGEXP '[0-9]{2,}';

-- Mostrar detalles donde ID_Producto comience con '1' y tenga un dígito impar como segunda cifra
SELECT * FROM Detalles WHERE ID_Producto REGEXP '^1[13579]';

-- Mostrar detalles donde CantComprada tenga exactamente 3 dígitos
SELECT * FROM Detalles WHERE CantComprada REGEXP '^[0-9]{3}$';

-- Mostrar ventas donde CantidadTotal sea un número par (termina en 0,2,4,6,8)
SELECT * FROM Venta WHERE CantidadTotal REGEXP '[02468]$';

-- Mostrar ventas donde Fecha sea del año 2025
SELECT * FROM Venta WHERE Fecha REGEXP '^2025';

-- Mostrar ventas donde CantidadTotal sea un número par de 2 dígitos
SELECT * FROM Venta WHERE CantidadTotal REGEXP '^[0-9][02468]$';

-- Mostrar ventas donde el año de la fecha sea 2025 y el mes diciembre
SELECT * FROM Venta WHERE Fecha REGEXP '^2025-12';

-- Mostrar envíos cuyo estado empiece por 'E' o 'P'
SELECT * FROM Envio WHERE Estado REGEXP '^[EP]';

-- Mostrar envíos cuyo estado contenga la letra 'd'
SELECT * FROM Envio WHERE Estado REGEXP 'd';

-- Mostrar envíos cuyo estado tenga una 'd' como segunda letra
SELECT * FROM Envio WHERE Estado REGEXP '^.d';

-- Mostrar envíos cuyo estado termine en 'o' y contenga 'en' en cualquier parte
SELECT * FROM Envio WHERE Estado REGEXP 'o$' AND Estado REGEXP 'en';

-- Mostrar usuarios cuyo nombre empiece por 'J' o 'M'
SELECT * FROM Usuario WHERE Nombre REGEXP '^[JM]';

-- Mostrar usuarios cuyo DNI termine en letra A o B
SELECT * FROM Usuario WHERE DNI REGEXP '[AB]$';

-- Mostrar usuarios cuyo nombre tenga 'a' como tercera letra
SELECT * FROM Usuario WHERE Nombre REGEXP '^..a';

-- Mostrar usuarios cuyo DNI termine en letra A o B y tenga números al inicio
SELECT * FROM Usuario WHERE DNI REGEXP '^[0-9].*[AB]$';


--------------------------------------------------------------
--  9. Consultas con ordenación - ORDER BY
--------------------------------------------------------------
-- Mostrar productos ordenados por Precio de menor a mayor
SELECT * FROM Producto ORDER BY Precio ASC;

-- Mostrar productos ordenados por Nombre de la Z a la A
SELECT * FROM Producto ORDER BY Nombre DESC;
-- PUEDE SER CON EL NUMERO INDEX DE LA COLUMNA
-- SELECT * FROM Producto ORDER BY 3 DESC;

-- Mostrar administradores ordenados por Nombre de la A a la Z
SELECT * FROM Administrador ORDER BY Nombre ASC;

-- Mostrar administradores ordenados por ID_Admin de mayor a menor
SELECT * FROM Administrador ORDER BY ID_Admin DESC;

-- Mostrar detalles ordenados por CantComprada de menor a mayor
SELECT * FROM Detalles ORDER BY CantComprada ASC;

-- Mostrar detalles ordenados por ID_Venta de mayor a menor
SELECT * FROM Detalles ORDER BY ID_Venta DESC;

-- Mostrar ventas ordenadas por Fecha de más antigua a más reciente
SELECT * FROM Venta ORDER BY Fecha ASC;

-- POR CADA USUARIO, MOSTRAR NUMERO DE ENVIOS AGRUPADOS POR ESTADO
SELECT Estado, count(ID_Envio) AS "Envios" FROM Envio GROUP BY Estado;

-- Mostrar ventas ordenadas por CantidadTotal de mayor a menor
SELECT * FROM Venta ORDER BY CantidadTotal DESC;

-- Mostrar envíos ordenados por Estado de la A a la Z
SELECT * FROM Envio ORDER BY Estado ASC;

-- Mostrar envíos ordenados por ID_Envio de mayor a menor
SELECT * FROM Envio ORDER BY ID_Envio DESC;

-- Mostrar usuarios ordenados por Nombre de la A a la Z
SELECT * FROM Usuario ORDER BY Nombre ASC;

-- Mostrar usuarios ordenados por ID_Usuario de mayor a menor
SELECT * FROM Usuario ORDER BY ID_Usuario DESC;


--------------------------------------------------------------
-- 10. Consultas multitabla con composición interna - INNER JOIN, NATURAL JOIN
--------------------------------------------------------------
-- Mostrar productos con los datos de su administrador usando INNER JOIN
SELECT * FROM Producto P INNER JOIN Administrador A ON P.ID_Admin = A.ID_Admin;

-- Mostrar productos con datos de su administrador usando NATURAL JOIN
SELECT * FROM Producto NATURAL JOIN Administrador;

-- Mostrar ventas con los datos del usuario que las realizó usando INNER JOIN
SELECT * FROM Venta V INNER JOIN Usuario U ON V.ID_Usuario = U.ID_Usuario;

-- Mostrar ventas con datos del usuario usando NATURAL JOIN
SELECT * FROM Venta NATURAL JOIN Usuario;

-- Mostrar ventas con los datos del administrador que la gestionó usando INNER JOIN
SELECT * FROM Venta V INNER JOIN Administrador A ON V.ID_Admin = A.ID_Admin;

-- Mostrar ventas con datos del administrador usando NATURAL JOIN
SELECT * FROM Venta NATURAL JOIN Administrador;

-- Mostrar ventas con sus detalles y nombres de productos usando INNER JOIN
SELECT V.ID_Venta, P.Nombre, D.CantComprada 
FROM Venta V 
INNER JOIN Detalles D ON V.ID_Venta = D.ID_Venta 
INNER JOIN Producto P ON D.ID_Producto = P.ID_Producto;

-- Ejemplo de NATURAL JOIN (requerido coincidencia de nombres de columnas)
SELECT * FROM Venta NATURAL JOIN Detalles NATURAL JOIN Producto;

-- Mostrar ventas con datos de su envío usando INNER JOIN
SELECT * FROM Venta V INNER JOIN Envio E ON V.ID_Envio = E.ID_Envio;

-- Mostrar ventas con datos de envío usando NATURAL JOIN
SELECT * FROM Venta NATURAL JOIN Envio;

-- Mostrar usuarios con las ventas que realizaron y los productos comprados usando INNER JOIN
SELECT U.Nombre AS Usuario, V.Fecha, P.Nombre AS Producto 
FROM Usuario U 
INNER JOIN Venta V ON U.ID_Usuario = V.ID_Usuario
INNER JOIN Detalles D ON V.ID_Venta = D.ID_Venta
INNER JOIN Producto P ON D.ID_Producto = P.ID_Producto;

-- Ejemplo NATURAL JOIN para unir automáticamente columnas comunes
SELECT * FROM Usuario NATURAL JOIN Venta NATURAL JOIN Detalles NATURAL JOIN Producto;


--------------------------------------------------------------
-- 11. Consultas multitabla con composición externa
--------------------------------------------------------------
-- Mostrar todos los productos y su administrador (si existe) usando LEFT JOIN
SELECT * FROM Producto P LEFT JOIN Administrador A ON P.ID_Admin = A.ID_Admin;

-- Mostrar todos los administradores y los productos que gestionan (si existen) usando RIGHT JOIN
SELECT * FROM Producto P RIGHT JOIN Administrador A ON P.ID_Admin = A.ID_Admin;

-- Mostrar todas las ventas con su usuario (si existe) usando LEFT JOIN
SELECT * FROM Venta V LEFT JOIN Usuario U ON V.ID_Usuario = U.ID_Usuario;

-- Mostrar todos los usuarios y sus ventas (si existen) usando RIGHT JOIN
SELECT * FROM Venta V RIGHT JOIN Usuario U ON V.ID_Usuario = U.ID_Usuario;

-- Mostrar todas las ventas con su administrador (si existe) usando LEFT JOIN
SELECT * FROM Venta V LEFT JOIN Administrador A ON V.ID_Admin = A.ID_Admin;

-- Mostrar todos los administradores y las ventas que gestionan (si existen) usando RIGHT JOIN
SELECT * FROM Venta V RIGHT JOIN Administrador A ON V.ID_Admin = A.ID_Admin;

-- Mostrar todas las ventas y sus detalles (si existen) usando LEFT JOIN
SELECT * FROM Venta V LEFT JOIN Detalles D ON V.ID_Venta = D.ID_Venta;

-- Mostrar todos los productos y los detalles de ventas (si existen) usando RIGHT JOIN
SELECT * FROM Detalles D RIGHT JOIN Producto P ON D.ID_Producto = P.ID_Producto;

-- Mostrar todas las ventas y su envío (si existe) usando LEFT JOIN
SELECT * FROM Venta V LEFT JOIN Envio E ON V.ID_Envio = E.ID_Envio;

-- Mostrar todos los envíos y las ventas asociadas (si existen) usando RIGHT JOIN
SELECT * FROM Venta V RIGHT JOIN Envio E ON V.ID_Envio = E.ID_Envio;

-- Mostrar todos los usuarios con sus ventas, detalles y productos (si existen) usando LEFT JOIN
SELECT * FROM Usuario U 
LEFT JOIN Venta V ON U.ID_Usuario = V.ID_Usuario
LEFT JOIN Detalles D ON V.ID_Venta = D.ID_Venta
LEFT JOIN Producto P ON D.ID_Producto = P.ID_Producto;

-- Mostrar todos los productos con sus detalles, ventas y usuarios (si existen) usando RIGHT JOIN
SELECT * FROM Usuario U 
RIGHT JOIN Venta V ON U.ID_Usuario = V.ID_Usuario
RIGHT JOIN Detalles D ON V.ID_Venta = D.ID_Venta
RIGHT JOIN Producto P ON D.ID_Producto = P.ID_Producto;


--------------------------------------------------------------
-- 12. Consultas resumen - GROUP BY
--------------------------------------------------------------
-- Contar el número total de productos
SELECT COUNT(*) FROM Producto;

-- Calcular el precio promedio, mínimo y máximo de los productos
SELECT AVG(Precio), MIN(Precio), MAX(Precio) FROM Producto;

-- Contar el número total de administradores
SELECT COUNT(*) FROM Administrador;

-- Contar administradores por cada valor de teléfono (para ver duplicados o coincidencias)
SELECT Telefono, COUNT(*) FROM Administrador GROUP BY Telefono;

-- Contar el total de detalles de ventas
SELECT COUNT(*) FROM Detalles;

-- Sumar la cantidad comprada por cada producto
SELECT ID_Producto, SUM(CantComprada) FROM Detalles GROUP BY ID_Producto;

-- Contar el total de ventas
SELECT COUNT(*) FROM Venta;

-- Sumar la cantidad total vendida por cada usuario
SELECT ID_Usuario, SUM(CantidadTotal) FROM Venta GROUP BY ID_Usuario;

-- Contar el total de envíos
SELECT COUNT(*) FROM Envio;

-- Contar envíos por estado
SELECT Estado, COUNT(*) FROM Envio GROUP BY Estado;

-- Contar el total de usuarios
SELECT COUNT(*) FROM Usuario;

-- Contar usuarios agrupados por la primera letra de su nombre
SELECT LEFT(Nombre, 1), COUNT(*) FROM Usuario GROUP BY LEFT(Nombre, 1);


--------------------------------------------------------------
-- 13. Subconsultas
--------------------------------------------------------------
------------------
-- TABLA PRODUCTO
------------------
-- Mostrar los productos cuyo precio sea mayor que el promedio de todos los productos
--
-- 1. Comparación (Scalar Subquery)
SELECT * FROM Producto WHERE Precio > (SELECT AVG(Precio) FROM Producto);

-- 2. Cuantificación (ALL)
SELECT * FROM Producto WHERE Precio > ALL (SELECT AVG(Precio) FROM Producto);

-- 3. Pertenencia a un conjunto (IN - Indirecto, seleccionando IDs que cumplan la condición)
SELECT * FROM Producto WHERE ID_Producto IN (SELECT ID_Producto FROM Producto WHERE Precio > (SELECT AVG(Precio) FROM Producto));

-- 4. Existencia (EXISTS)
SELECT * FROM Producto P WHERE EXISTS (SELECT 1 FROM (SELECT AVG(Precio) as avg_p FROM Producto) as sub WHERE P.Precio > sub.avg_p);

-- Mostrar productos cuyo nombre contenga 'Pro'
--
-- 1. Comparación (Scalar - Limitado a 1 para evitar error de subconsulta con múltiples filas)
SELECT * FROM Producto WHERE Nombre = (SELECT Nombre FROM Producto WHERE Nombre LIKE '%Pro%' LIMIT 1);

-- 2. Cuantificación (ANY)
SELECT * FROM Producto WHERE Nombre = ANY (SELECT Nombre FROM Producto WHERE Nombre LIKE '%Pro%');

-- 3. Pertenencia a un conjunto (IN)
SELECT * FROM Producto WHERE ID_Producto IN (SELECT ID_Producto FROM Producto WHERE Nombre LIKE '%Pro%');

-- 4. Existencia (EXISTS)
SELECT * FROM Producto P WHERE EXISTS (SELECT 1 FROM Producto P2 WHERE P2.ID_Producto = P.ID_Producto AND P2.Nombre LIKE '%Pro%');


------------------
-- TABLA ADMINISTRADOR
------------------
-- Mostrar administradores que gestionan productos con precio mayor a 50
--
-- 1. Comparación (Funciona si solo hay 1 resultado, o usando LIMIT 1 para demostración)
SELECT * FROM Administrador WHERE ID_Admin = (SELECT DISTINCT ID_Admin FROM Producto WHERE Precio > 50 LIMIT 1);

-- 2. Cuantificación (ANY)
SELECT * FROM Administrador WHERE ID_Admin = ANY (SELECT ID_Admin FROM Producto WHERE Precio > 50);

-- 3. Pertenencia a un conjunto (IN)
SELECT * FROM Administrador WHERE ID_Admin IN (SELECT ID_Admin FROM Producto WHERE Precio > 50);

-- 4. Existencia (EXISTS)
SELECT * FROM Administrador A WHERE EXISTS (SELECT 1 FROM Producto P WHERE P.ID_Admin = A.ID_Admin AND P.Precio > 50);

-- Mostrar administradores cuyo mail contenga 'empresa'
--
-- 1. Comparación
SELECT * FROM Administrador WHERE Mail = (SELECT Mail FROM Administrador WHERE Mail LIKE '%empresa%' LIMIT 1);

-- 2. Cuantificación
SELECT * FROM Administrador WHERE Mail = ANY (SELECT Mail FROM Administrador WHERE Mail LIKE '%empresa%');

-- 3. Pertenencia a un conjunto
SELECT * FROM Administrador WHERE ID_Admin IN (SELECT ID_Admin FROM Administrador WHERE Mail LIKE '%empresa%');

-- 4. Existencia
SELECT * FROM Administrador A WHERE EXISTS (SELECT 1 FROM Administrador A2 WHERE A2.ID_Admin = A.ID_Admin AND A2.Mail LIKE '%empresa%');


------------------
-- TABLA USUARIO
------------------
-- Mostrar usuarios que hayan realizado ventas con cantidad total mayor a 20
--
-- 1. Comparación
SELECT * FROM Usuario WHERE ID_Usuario = (SELECT DISTINCT ID_Usuario FROM Venta WHERE CantidadTotal > 20 LIMIT 1);

-- 2. Cuantificación
SELECT * FROM Usuario WHERE ID_Usuario = ANY (SELECT ID_Usuario FROM Venta WHERE CantidadTotal > 20);

-- 3. Pertenencia a un conjunto
SELECT * FROM Usuario WHERE ID_Usuario IN (SELECT ID_Usuario FROM Venta WHERE CantidadTotal > 20);

-- 4. Existencia
SELECT * FROM Usuario U WHERE EXISTS (SELECT 1 FROM Venta V WHERE V.ID_Usuario = U.ID_Usuario AND V.CantidadTotal > 20);

-- Mostrar usuarios cuyo nombre contenga la letra 'a'
--
-- 1. Comparación
SELECT * FROM Usuario WHERE Nombre = (SELECT Nombre FROM Usuario WHERE Nombre LIKE '%a%' LIMIT 1);

-- 2. Cuantificación
SELECT * FROM Usuario WHERE Nombre = ANY (SELECT Nombre FROM Usuario WHERE Nombre LIKE '%a%');

-- 3. Pertenencia a un conjunto
SELECT * FROM Usuario WHERE ID_Usuario IN (SELECT ID_Usuario FROM Usuario WHERE Nombre LIKE '%a%');

-- 4. Existencia
SELECT * FROM Usuario U WHERE EXISTS (SELECT 1 FROM Usuario U2 WHERE U2.ID_Usuario = U.ID_Usuario AND U2.Nombre LIKE '%a%');


------------------
-- TABLA VENTA
------------------
-- Mostrar ventas que incluyen productos cuyo precio sea mayor a 50
--
-- 1. Comparación
SELECT * FROM Venta WHERE ID_Venta = (SELECT DISTINCT ID_Venta FROM Detalles NATURAL JOIN Producto WHERE Precio > 50 LIMIT 1);

-- 2. Cuantificación
SELECT * FROM Venta WHERE ID_Venta = ANY (SELECT DISTINCT ID_Venta FROM Detalles NATURAL JOIN Producto WHERE Precio > 50);

-- 3. Pertenencia a un conjunto
SELECT * FROM Venta WHERE ID_Venta IN (SELECT DISTINCT ID_Venta FROM Detalles NATURAL JOIN Producto WHERE Precio > 50);

-- 4. Existencia
SELECT * FROM Venta V WHERE EXISTS (SELECT 1 FROM Detalles D JOIN Producto P ON D.ID_Producto = P.ID_Producto WHERE D.ID_Venta = V.ID_Venta AND P.Precio > 50);

-- Mostrar ventas cuya fecha contenga '2025-12'
--
-- 1. Comparación
SELECT * FROM Venta WHERE Fecha = (SELECT Fecha FROM Venta WHERE Fecha LIKE '2025-12%' LIMIT 1);

-- 2. Cuantificación
SELECT * FROM Venta WHERE Fecha = ANY (SELECT Fecha FROM Venta WHERE Fecha LIKE '2025-12%');

-- 3. Pertenencia a un conjunto
SELECT * FROM Venta WHERE ID_Venta IN (SELECT ID_Venta FROM Venta WHERE Fecha LIKE '2025-12%');

-- 4. Existencia
SELECT * FROM Venta V1 WHERE EXISTS (SELECT 1 FROM Venta V2 WHERE V2.ID_Venta = V1.ID_Venta AND V2.Fecha LIKE '2025-12%');


------------------
-- TABLA DETALLES
------------------
-- Mostrar detalles de productos comprados en cantidades mayores a 10
--
-- 1. Comparación
SELECT * FROM Detalles WHERE CantComprada > (SELECT 10);

-- 2. Cuantificación
SELECT * FROM Detalles WHERE CantComprada > ALL (SELECT 10);

-- 3. Pertenencia a un conjunto
SELECT * FROM Detalles WHERE (ID_Venta, ID_Producto) IN (SELECT ID_Venta, ID_Producto FROM Detalles WHERE CantComprada > 10);

-- 4. Existencia
SELECT * FROM Detalles D1 WHERE EXISTS (SELECT 1 FROM Detalles D2 WHERE D1.ID_Venta = D2.ID_Venta AND D1.ID_Producto = D2.ID_Producto AND D2.CantComprada > 10);

-- Mostrar detalles de productos cuya ID_Producto comience con '1' (cadena)
--
-- 1. Comparación
SELECT * FROM Detalles WHERE ID_Producto = (SELECT ID_Producto FROM Detalles WHERE CAST(ID_Producto AS CHAR) LIKE '1%' LIMIT 1);

-- 2. Cuantificación
SELECT * FROM Detalles WHERE ID_Producto = ANY (SELECT ID_Producto FROM Detalles WHERE CAST(ID_Producto AS CHAR) LIKE '1%');

-- 3. Pertenencia a un conjunto
SELECT * FROM Detalles WHERE ID_Producto IN (SELECT ID_Producto FROM Detalles WHERE CAST(ID_Producto AS CHAR) LIKE '1%');

-- 4. Existencia
SELECT * FROM Detalles D WHERE EXISTS (SELECT 1 FROM Detalles D2 WHERE D2.ID_Producto = D.ID_Producto AND CAST(D2.ID_Producto AS CHAR) LIKE '1%');


------------------
-- TABLA ENVIO
------------------
-- Mostrar envíos cuyo ID_Camion sea mayor a 100
--
-- 1. Comparación
SELECT * FROM Envio WHERE ID_Camion > (SELECT 100);

-- 2. Cuantificación
SELECT * FROM Envio WHERE ID_Camion > ALL (SELECT 100);

-- 3. Pertenencia a un conjunto
SELECT * FROM Envio WHERE ID_Envio IN (SELECT ID_Envio FROM Envio WHERE ID_Camion > 100);

-- 4. Existencia
SELECT * FROM Envio E WHERE EXISTS (SELECT 1 FROM Envio E2 WHERE E2.ID_Envio = E.ID_Envio AND E2.ID_Camion > 100);

-- Mostrar envíos cuyo estado contenga la letra 'e'
--
-- 1. Comparación
SELECT * FROM Envio WHERE Estado = (SELECT Estado FROM Envio WHERE Estado LIKE '%e%' LIMIT 1);

-- 2. Cuantificación
SELECT * FROM Envio WHERE Estado = ANY (SELECT Estado FROM Envio WHERE Estado LIKE '%e%');

-- 3. Pertenencia a un conjunto
SELECT * FROM Envio WHERE ID_Envio IN (SELECT ID_Envio FROM Envio WHERE Estado LIKE '%e%');

-- 4. Existencia
SELECT * FROM Envio E WHERE EXISTS (SELECT 1 FROM Envio E2 WHERE E2.ID_Envio = E.ID_Envio AND E2.Estado LIKE '%e%');