--------------------------------------------------------------
-- Insertar datos en Administrador
--------------------------------------------------------------
INSERT INTO Administrador VALUES (1,'Ana Pérez','ana.perez@empresa.com','12345678A','pass1','60000001');
INSERT INTO Administrador VALUES (2,'Luis Gómez','luis.gomez@empresa.com','23456789B','pass2','60000002');
INSERT INTO Administrador VALUES (3,'María López','maria.lopez@empresa.com','34567890C','pass3','60000003');
INSERT INTO Administrador VALUES (4,'Jorge Díaz','jorge.diaz@empresa.com','45678901D','pass4','60000004');
INSERT INTO Administrador VALUES (5,'Lucía Fernández','lucia.fernandez@empresa.com','56789012E','pass5','60000005');
INSERT INTO Administrador VALUES (6,'Sergio Ramos','sergio.ramos@empresa.com','67890123F','pass6','60000006');
INSERT INTO Administrador VALUES (7,'Paula Suárez','paula.suarez@empresa.com','78901234G','pass7','60000007');
INSERT INTO Administrador VALUES (8,'David Martín','david.martin@empresa.com','89012345H','pass8','60000008');
INSERT INTO Administrador VALUES (9,'Elena Torres','elena.torres@empresa.com','90123456I','pass9','60000009');
INSERT INTO Administrador VALUES (10,'Miguel Castro','miguel.castro@empresa.com','01234567J','pass10','60000010');
INSERT INTO Administrador VALUES (11,'Isabel Ortiz','isabel.ortiz@empresa.com','11234567K','pass11','60000011');
INSERT INTO Administrador VALUES (12,'Antonio Ruiz','antonio.ruiz@empresa.com','21234567L','pass12','60000012');
INSERT INTO Administrador VALUES (13,'Raquel Vega','raquel.vega@empresa.com','31234567M','pass13','60000013');
INSERT INTO Administrador VALUES (14,'Fernando Gil','fernando.gil@empresa.com','41234567N','pass14','60000014');
INSERT INTO Administrador VALUES (15,'Carmen Molina','carmen.molina@empresa.com','51234567O','pass15','60000015');
INSERT INTO Administrador VALUES (16,'Javier Alonso','javier.alonso@empresa.com','61234567P','pass16','60000016');
INSERT INTO Administrador VALUES (17,'Silvia Navarro','silvia.navarro@empresa.com','71234567Q','pass17','60000017');
INSERT INTO Administrador VALUES (18,'Ricardo Bravo','ricardo.bravo@empresa.com','81234567R','pass18','60000018');
INSERT INTO Administrador VALUES (19,'Patricia León','patricia.leon@empresa.com','91234567S','pass19','60000019');
INSERT INTO Administrador VALUES (20,'Mario Blanco','mario.blanco@empresa.com','02234567T','pass20','60000020');

--------------------------------------------------------------
-- Insertar datos en Usuario
--------------------------------------------------------------
INSERT INTO Usuario VALUES (1,'Carlos Ruiz','98765432A','60000101','user1');
INSERT INTO Usuario VALUES (2,'Laura Martín','87654321B','60000102','user2');
INSERT INTO Usuario VALUES (3,'Pedro Sánchez','76543210C','60000103','user3');
INSERT INTO Usuario VALUES (4,'Marta Gómez','65432109D','60000104','user4');
INSERT INTO Usuario VALUES (5,'David Molina','54321098E','60000105','user5');
INSERT INTO Usuario VALUES (6,'Lucía Torres','43210987F','60000106','user6');
INSERT INTO Usuario VALUES (7,'Javier Díaz','32109876G','60000107','user7');
INSERT INTO Usuario VALUES (8,'Isabel García','21098765H','60000108','user8');
INSERT INTO Usuario VALUES (9,'Miguel Ruiz','10987654I','60000109','user9');
INSERT INTO Usuario VALUES (10,'Ana Castro','99876543J','60000110','user10');
INSERT INTO Usuario VALUES (11,'Fernando Moreno','88765432K','60000111','user11');
INSERT INTO Usuario VALUES (12,'Raquel Ortiz','77654321L','60000112','user12');
INSERT INTO Usuario VALUES (13,'Sergio Blanco','66543210M','60000113','user13');
INSERT INTO Usuario VALUES (14,'Patricia Vega','55432109N','60000114','user14');
INSERT INTO Usuario VALUES (15,'Ricardo Molina','44321098O','60000115','user15');
INSERT INTO Usuario VALUES (16,'Elena Bravo','33210987P','60000116','user16');
INSERT INTO Usuario VALUES (17,'Jorge Alonso','22109876Q','60000117','user17');
INSERT INTO Usuario VALUES (18,'Silvia León','11098765R','60000118','user18');
INSERT INTO Usuario VALUES (19,'Mario Gil','00987654S','60000119','user19');
INSERT INTO Usuario VALUES (20,'Carmen Navarro','99846543T','60000120','user20');

--------------------------------------------------------------
-- Insertar datos en Producto
--------------------------------------------------------------
INSERT INTO Producto VALUES (1,1,'Manzanas',1.50);
INSERT INTO Producto VALUES (2,2,'Peras',2.00);
INSERT INTO Producto VALUES (3,3,'Plátanos',1.20);
INSERT INTO Producto VALUES (4,4,'Naranjas',1.80);
INSERT INTO Producto VALUES (5,5,'Fresas',3.50);
INSERT INTO Producto VALUES (6,6,'Leche',0.95);
INSERT INTO Producto VALUES (7,7,'Pan',1.10);
INSERT INTO Producto VALUES (8,8,'Queso',2.80);
INSERT INTO Producto VALUES (9,9,'Yogur',0.90);
INSERT INTO Producto VALUES (10,10,'Arroz',1.50);
INSERT INTO Producto VALUES (11,11,'Pasta',1.30);
INSERT INTO Producto VALUES (12,12,'Aceite',4.20);
INSERT INTO Producto VALUES (13,13,'Mantequilla',2.50);
INSERT INTO Producto VALUES (14,14,'Jamón',5.00);
INSERT INTO Producto VALUES (15,15,'Pollo',6.50);
INSERT INTO Producto VALUES (16,16,'Ternera',8.00);
INSERT INTO Producto VALUES (17,17,'Pescado',7.50);
INSERT INTO Producto VALUES (18,18,'Atún',3.20);
INSERT INTO Producto VALUES (19,19,'Café',4.00);
INSERT INTO Producto VALUES (20,20,'Té',3.00);

--------------------------------------------------------------
-- Insertar datos en Envio
--------------------------------------------------------------
INSERT INTO Envio VALUES (1,101,'Pendiente');
INSERT INTO Envio VALUES (2,102,'Enviado');
INSERT INTO Envio VALUES (3,103,'Entregado');
INSERT INTO Envio VALUES (4,104,'Pendiente');
INSERT INTO Envio VALUES (5,105,'Enviado');
INSERT INTO Envio VALUES (6,106,'Entregado');
INSERT INTO Envio VALUES (7,107,'Pendiente');
INSERT INTO Envio VALUES (8,108,'Enviado');
INSERT INTO Envio VALUES (9,109,'Entregado');
INSERT INTO Envio VALUES (10,110,'Pendiente');
INSERT INTO Envio VALUES (11,111,'Enviado');
INSERT INTO Envio VALUES (12,112,'Entregado');
INSERT INTO Envio VALUES (13,113,'Pendiente');
INSERT INTO Envio VALUES (14,114,'Enviado');
INSERT INTO Envio VALUES (15,115,'Entregado');
INSERT INTO Envio VALUES (16,116,'Pendiente');
INSERT INTO Envio VALUES (17,117,'Enviado');
INSERT INTO Envio VALUES (18,118,'Entregado');
INSERT INTO Envio VALUES (19,119,'Pendiente');
INSERT INTO Envio VALUES (20,120,'Enviado');

--------------------------------------------------------------
-- Insertar datos en Venta (corregido para MySQL)
--------------------------------------------------------------
INSERT INTO Venta VALUES (1, 1, 1, 11, 5, '2025-11-01');
INSERT INTO Venta VALUES (2, 2, 2, 12, 10, '2025-11-02');
INSERT INTO Venta VALUES (3, 3, 3, 13, 2, '2025-11-03');
INSERT INTO Venta VALUES (4, 4, 4, 14, 8, '2025-11-04');
INSERT INTO Venta VALUES (5, 5, 5, 15, 6, '2025-11-05');
INSERT INTO Venta VALUES (6, 6, 6, 16, 12, '2025-11-06');
INSERT INTO Venta VALUES (7, 7, 7, 17, 4, '2025-11-07');
INSERT INTO Venta VALUES (8, 8, 8, 18, 7, '2025-11-08');
INSERT INTO Venta VALUES (9, 9, 9, 19, 9, '2025-11-09');
INSERT INTO Venta VALUES (10, 10, 10, 10, 3, '2025-11-10');
INSERT INTO Venta VALUES (11, 11, 11, 1, 5, '2025-11-11');
INSERT INTO Venta VALUES (12, 12, 12, 2, 6, '2025-11-12');
INSERT INTO Venta VALUES (13, 13, 13, 3, 8, '2025-11-13');
INSERT INTO Venta VALUES (14, 14, 14, 4, 7, '2025-11-14');
INSERT INTO Venta VALUES (15, 15, 15, 5, 4, '2025-11-15');
INSERT INTO Venta VALUES (16, 16, 16, 6, 10, '2025-11-16');
INSERT INTO Venta VALUES (17, 17, 17, 7, 9, '2025-11-17');
INSERT INTO Venta VALUES (18, 18, 18, 8, 6, '2025-11-18');
INSERT INTO Venta VALUES (19, 19, 19, 9, 5, '2025-11-19');
INSERT INTO Venta VALUES (20, 20, 20, 10, 8, '2025-11-20');
INSERT INTO Venta VALUES (21, 1, 2, 1, 7, '2025-11-21');
INSERT INTO Venta VALUES (22, 2, 3, 2, 5, '2025-11-22');
INSERT INTO Venta VALUES (23, 3, 4, 3, 8, '2025-11-23');
INSERT INTO Venta VALUES (24, 4, 5, 4, 6, '2025-11-24');
INSERT INTO Venta VALUES (25, 5, 6, 5, 9, '2025-11-25');
INSERT INTO Venta VALUES (26, 6, 7, 6, 4, '2025-11-26');
INSERT INTO Venta VALUES (27, 7, 8, 7, 10, '2025-11-27');
INSERT INTO Venta VALUES (28, 8, 9, 8, 7, '2025-11-28');
INSERT INTO Venta VALUES (29, 9, 10, 9, 5, '2025-11-29');
INSERT INTO Venta VALUES (30, 10, 11, 10, 6, '2025-11-30');
INSERT INTO Venta VALUES (31, 11, 12, 11, 8, '2025-12-01');
INSERT INTO Venta VALUES (32, 12, 13, 12, 3, '2025-12-02');
INSERT INTO Venta VALUES (33, 13, 14, 13, 9, '2025-12-03');
INSERT INTO Venta VALUES (34, 14, 15, 14, 7, '2025-12-04');
INSERT INTO Venta VALUES (35, 15, 16, 15, 6, '2025-12-05');
INSERT INTO Venta VALUES (36, 16, 17, 16, 10, '2025-12-06');
INSERT INTO Venta VALUES (37, 17, 18, 17, 4, '2025-12-07');
INSERT INTO Venta VALUES (38, 18, 19, 18, 5, '2025-12-08');
INSERT INTO Venta VALUES (39, 19, 20, 19, 7, '2025-12-09');
INSERT INTO Venta VALUES (40, 20, 1, 20, 8, '2025-12-10');

--------------------------------------------------------------
-- Insertar datos en Detalles
--------------------------------------------------------------
INSERT INTO Detalles VALUES (1,2,1);
INSERT INTO Detalles VALUES (3,1,1);
INSERT INTO Detalles VALUES (2,3,2);
INSERT INTO Detalles VALUES (5,2,2);
INSERT INTO Detalles VALUES (3,1,3);
INSERT INTO Detalles VALUES (4,2,3);
INSERT INTO Detalles VALUES (6,1,3);
INSERT INTO Detalles VALUES (4,4,4);
INSERT INTO Detalles VALUES (7,2,4);
INSERT INTO Detalles VALUES (5,2,5);
INSERT INTO Detalles VALUES (8,3,5);
INSERT INTO Detalles VALUES (6,5,6);
INSERT INTO Detalles VALUES (9,1,6);
INSERT INTO Detalles VALUES (7,2,7);
INSERT INTO Detalles VALUES (10,2,7);
INSERT INTO Detalles VALUES (8,3,8);
INSERT INTO Detalles VALUES (11,1,8);
INSERT INTO Detalles VALUES (9,1,9);
INSERT INTO Detalles VALUES (12,2,9);
INSERT INTO Detalles VALUES (10,2,10);
INSERT INTO Detalles VALUES (13,1,10);
INSERT INTO Detalles VALUES (11,3,11);
INSERT INTO Detalles VALUES (14,2,11);
INSERT INTO Detalles VALUES (12,1,12);
INSERT INTO Detalles VALUES (15,2,12);
INSERT INTO Detalles VALUES (13,4,13);
INSERT INTO Detalles VALUES (16,1,13);
INSERT INTO Detalles VALUES (17,2,13);
INSERT INTO Detalles VALUES (14,2,14);
INSERT INTO Detalles VALUES (18,3,14);
INSERT INTO Detalles VALUES (15,3,15);
INSERT INTO Detalles VALUES (19,1,15);
INSERT INTO Detalles VALUES (16,1,16);
INSERT INTO Detalles VALUES (20,2,16);
INSERT INTO Detalles VALUES (17,5,17);
INSERT INTO Detalles VALUES (1,2,17);
INSERT INTO Detalles VALUES (18,2,18);
INSERT INTO Detalles VALUES (2,1,18);
INSERT INTO Detalles VALUES (19,3,19);
INSERT INTO Detalles VALUES (3,2,19);
INSERT INTO Detalles VALUES (20,4,20);
INSERT INTO Detalles VALUES (4,1,20);
INSERT INTO Detalles VALUES (2,1,21);
INSERT INTO Detalles VALUES (5,2,21);
INSERT INTO Detalles VALUES (8,1,21);
INSERT INTO Detalles VALUES (3,1,22);
INSERT INTO Detalles VALUES (6,2,22);
INSERT INTO Detalles VALUES (7,1,22);
INSERT INTO Detalles VALUES (4,1,23);
INSERT INTO Detalles VALUES (7,3,23);
INSERT INTO Detalles VALUES (9,2,23);
INSERT INTO Detalles VALUES (5,2,24);
INSERT INTO Detalles VALUES (8,1,24);
INSERT INTO Detalles VALUES (6,3,25);
INSERT INTO Detalles VALUES (9,2,25);
INSERT INTO Detalles VALUES (10,1,25);
INSERT INTO Detalles VALUES (7,1,26);
INSERT INTO Detalles VALUES (10,2,26);
INSERT INTO Detalles VALUES (8,2,27);
INSERT INTO Detalles VALUES (11,1,27);
INSERT INTO Detalles VALUES (12,3,27);
INSERT INTO Detalles VALUES (9,3,28);
INSERT INTO Detalles VALUES (12,2,28);
INSERT INTO Detalles VALUES (10,1,29);
INSERT INTO Detalles VALUES (13,2,29);
INSERT INTO Detalles VALUES (11,2,30);
INSERT INTO Detalles VALUES (14,1,30);
INSERT INTO Detalles VALUES (12,1,31);
INSERT INTO Detalles VALUES (15,2,31);
INSERT INTO Detalles VALUES (13,2,32);
INSERT INTO Detalles VALUES (16,1,32);
INSERT INTO Detalles VALUES (17,2,32);
INSERT INTO Detalles VALUES (14,1,33);
INSERT INTO Detalles VALUES (17,2,33);
INSERT INTO Detalles VALUES (15,3,34);
INSERT INTO Detalles VALUES (18,1,34);
INSERT INTO Detalles VALUES (16,2,35);
INSERT INTO Detalles VALUES (19,1,35);
INSERT INTO Detalles VALUES (17,1,36);
INSERT INTO Detalles VALUES (20,2,36);
INSERT INTO Detalles VALUES (18,2,37);
INSERT INTO Detalles VALUES (1,1,37);
INSERT INTO Detalles VALUES (3,2,37);
INSERT INTO Detalles VALUES (19,1,38);
INSERT INTO Detalles VALUES (2,2,38);
INSERT INTO Detalles VALUES (20,3,39);
INSERT INTO Detalles VALUES (3,1,39);
INSERT INTO Detalles VALUES (1,2,40);
INSERT INTO Detalles VALUES (4,1,40);
INSERT INTO Detalles VALUES (5,1,40);