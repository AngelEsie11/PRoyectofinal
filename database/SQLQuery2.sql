
use INVENTARIO_ELECTRONICO
create table ARTICULOS (
	ID INT,
	NOMBRE VARCHAR(50),
	STOCK INT,
	PRECIO INT,
	SUPLIDOR_ID INT
);
insert into ARTICULOS (ID, NOMBRE, STOCK, PRECIO, SUPLIDOR_ID) values (1, 'TELEVISOR SONIC DE 20 PULGADAS', 20, 20000, 3);
insert into ARTICULOS (ID, NOMBRE, STOCK, PRECIO, SUPLIDOR_ID) values (2, 'LATOP MSI G456 I5 DE 10MA GENERACION ', 17, 45000, 3);
insert into ARTICULOS (ID, NOMBRE, STOCK, PRECIO, SUPLIDOR_ID) values (3, 'NEVERA SAMSUNG', 18, 61, 1);
insert into ARTICULOS (ID, NOMBRE, STOCK, PRECIO, SUPLIDOR_ID) values (4, 'LATOP DELL LATITUD 3031', 1, 30000, 3);
insert into ARTICULOS (ID, NOMBRE, STOCK, PRECIO, SUPLIDOR_ID) values (5, 'Cargador de bateria de balanzas', 19, 415, 4);
insert into ARTICULOS (ID, NOMBRE, STOCK, PRECIO, SUPLIDOR_ID) values (6, 'Apple Nuevo AirTag (Paquete de 4)', 11, 95, 5);
insert into ARTICULOS (ID, NOMBRE, STOCK, PRECIO, SUPLIDOR_ID) values (7, 'Apple Nuevo AirTag (Paquete de 8)', 11, 95, 5);

SELECT * FROM ARTICULOS

UPDATE articulos 
    SET STOCK = 8 
    WHERE NOMBRE = 'NEVERA SAMSUNG'


CREATE TABLE usuarios (
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(50),
    email VARCHAR(100),
    contrase�a VARCHAR(50),
    fecha_creacion DATETIME DEFAULT GETDATE()
);



-- Insertar usuarios en la tabla
INSERT INTO usuarios (nombre, email, contrase�a, rango)VALUES ('Juan P�rez', 'juan.perez@example.com', 'password123', 'Administrador');
INSERT INTO usuarios (nombre, email, contrase�a)VALUES ('Ana Garc�a', 'ana.garcia@example.com', 'securepass456');
INSERT INTO usuarios (nombre, email, contrase�a, rango)VALUES ('Angel Sierra', 'angelestebansierragonzalez@gmail.com', 'Eren2107', 'Administrador');

-- Consultar los usuarios insertados
SELECT * FROM usuarios;

ALTER TABLE usuarios
ADD rango VARCHAR(50);

ALTER TABLE usuarios
ADD CONSTRAINT chk_rango CHECK (rango IN ('Administrador', 'Usuario', 'Invitado'));

