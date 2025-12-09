-- ==============================================================
-- Consultas EmpresasTEIS
-- ==============================================================

-- --------------------------------------------------------------
-- TABLA PRODUCTO
-- --------------------------------------------------------------

-- 1. Consultas Básicas
-- --------------------------------------------------------------

--		SELECT * FROM tabla
SELECT * FROM Producto;

--		SELECT atributo1,..., atributoN FROM tabla
SELECT ID_Producto, Nombre, Precio FROM Producto;

--		SELECT DISTINCT atributo1 FROM tabla
SELECT DISTINCT Precio FROM Producto;


-- 2. Consultas con filtros
-- --------------------------------------------------------------

--		WHERE atributo <filtro> valor
SELECT * FROM Producto WHERE Precio > 5;

--		WHERE atributo IN (valores)
SELECT * FROM Producto WHERE ID_Admin IN (1, 3, 7);

--		WHERE atributo BETWEEN x AND y
SELECT * FROM Producto WHERE Precio BETWEEN 2 AND 10;

--		WHERE atributo IS NULL
SELECT * FROM Producto WHERE Nombre IS NULL;

--		WHERE atributo LIKE patron
SELECT * FROM Producto WHERE Nombre LIKE 'P%';

--		WHERE atributo REGEXP expresion
SELECT * FROM Producto WHERE Nombre REGEXP '^[A-M]';

--		LIMIT desplazamiento, filas
SELECT * FROM Producto LIMIT 5, 10;


-- 3. Consultas con ordenación
-- --------------------------------------------------------------

--		ORDER BY atributo ASC|DESC
SELECT * FROM Producto ORDER BY Precio DESC;


-- 4. Consultas con resumen
-- --------------------------------------------------------------

--		GROUP BY atributo
SELECT ID_Admin, COUNT(*) AS TotalProductos
FROM Producto
GROUP BY ID_Admin;

--		GROUP BY atributo HAVING condición
SELECT ID_Admin, SUM(Precio) AS SumaPrecios
FROM Producto
GROUP BY ID_Admin
HAVING SUM(Precio) > 15;


-- 5. Consultas multitabla
-- --------------------------------------------------------------

--		INNER JOIN ... ON
SELECT *
FROM Producto INNER JOIN Administrador
ON Producto.ID_Admin = Administrador.ID_Admin;

--		LEFT JOIN ... ON
SELECT *
FROM Producto LEFT JOIN Administrador
ON Producto.ID_Admin = Administrador.ID_Admin;

--		RIGHT JOIN ... ON
SELECT *
FROM Producto RIGHT JOIN Administrador
ON Producto.ID_Admin = Administrador.ID_Admin;

--		NATURAL JOIN
SELECT * FROM Producto NATURAL JOIN Administrador;


-- 6. Subconsultas
-- --------------------------------------------------------------

--		WHERE atributo <filtro> (subconsulta)
SELECT *
FROM Producto
WHERE Precio > (SELECT AVG(Precio) FROM Producto);

--		WHERE atributo IN (subconsulta)
SELECT *
FROM Producto
WHERE ID_Admin IN (SELECT ID_Admin FROM Administrador WHERE Nombre LIKE 'A%');

--		WHERE atributo <cuantificador> (subconsulta)
SELECT *
FROM Producto
WHERE Precio >= ALL (SELECT Precio FROM Producto WHERE ID_Admin = 1);

--		WHERE EXISTS (subconsulta)
SELECT *
FROM Producto P
WHERE EXISTS (
    SELECT 1 FROM Venta V
    WHERE V.ID_Admin = P.ID_Admin
);


-- 7. Consultas reflexivas
-- --------------------------------------------------------------

--		FROM tabla t1, tabla t2 WHERE condición
SELECT P1.Nombre, P2.Nombre
FROM Producto P1, Producto P2
WHERE P1.Precio = P2.Precio
AND P1.ID_Producto <> P2.ID_Producto;

--		INNER JOIN reflexivo
SELECT P1.Nombre AS Producto1, P2.Nombre AS Producto2
FROM Producto P1
INNER JOIN Producto P2
ON P1.Precio = P2.Precio
AND P1.ID_Producto <> P2.ID_Producto;


-- 8. Consultas derivadas
-- --------------------------------------------------------------

--		SELECT * FROM (subconsulta) AS alias
SELECT X.*
FROM (
    SELECT ID_Producto, Nombre
    FROM Producto
    WHERE Precio > 3
) AS X;


-- ==============================================================
-- TABLA ADMINISTRADOR
-- ==============================================================

-- Ejemplos breves siguiendo el mismo patrón:

-- Básicas
SELECT * FROM Administrador;
SELECT Nombre, Mail FROM Administrador;
SELECT DISTINCT Telefono FROM Administrador;

-- Filtros
SELECT * FROM Administrador WHERE DNI LIKE '%A';
SELECT * FROM Administrador WHERE Telefono > '60000010';

-- Ordenación
SELECT * FROM Administrador ORDER BY Nombre ASC;

-- Resumen
SELECT Mail, COUNT(*) FROM Administrador GROUP BY Mail;

-- Multitabla
SELECT * FROM Administrador INNER JOIN Producto
ON Administrador.ID_Admin = Producto.ID_Admin;

-- Subconsulta
SELECT *
FROM Administrador
WHERE ID_Admin IN (SELECT ID_Admin FROM Producto WHERE Precio > 4);

-- Derivada
SELECT *
FROM (SELECT Nombre, DNI FROM Administrador WHERE ID_Admin < 10) AS T;


-- ==============================================================
-- TABLA USUARIO (ejemplos breves)
-- ==============================================================

SELECT * FROM Usuario;
SELECT DISTINCT DNI FROM Usuario;
SELECT * FROM Usuario WHERE Nombre LIKE 'M%';
SELECT * FROM Usuario ORDER BY Nombre ASC;
SELECT * FROM Usuario INNER JOIN Venta ON Usuario.ID_Usuario = Venta.ID_Usuario;


-- ==============================================================
-- TABLA VENTA (ejemplos breves)
-- ==============================================================

SELECT * FROM Venta;
SELECT * FROM Venta WHERE CantidadTotal > 7;
SELECT * FROM Venta ORDER BY Fecha DESC;
SELECT ID_Admin, SUM(CantidadTotal) FROM Venta GROUP BY ID_Admin;


-- ==============================================================
-- TABLA DETALLES (ejemplos breves)
-- ==============================================================

SELECT * FROM Detalles;
SELECT * FROM Detalles WHERE CantComprada > 2;
SELECT * FROM Detalles INNER JOIN Producto ON Detalles.ID_Producto = Producto.ID_Producto;


-- ==============================================================
-- TABLA ENVIO (ejemplos breves)
-- ==============================================================

SELECT * FROM Envio;
SELECT DISTINCT Estado FROM Envio;
SELECT * FROM Envio WHERE Estado LIKE 'P%';
SELECT * FROM Envio ORDER BY Estado ASC;