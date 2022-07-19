/* DML */
USE SuperMercado;
/*Utilizar CRUD (Create, Read, Update y Delete)*/
/*insertar datos*/
/*podemos ingreso nustros datos a la tabla clietes */
INSERT INTO Cliente (nombre,apellido,dpi,telefono)
VALUES ('alan','de la cruz',123456789,45464765);
INSERT INTO Cliente (nombre,apellido,dpi,telefono)
VALUES ('pablo','west',345323456,12345678);
INSERT INTO Cliente (nombre,apellido,dpi,telefono)
VALUES ('maria','janson',124634679,32453676);
/*datos de la tabla de producto */
INSERT INTO Producto(nombredeproducto,fechadeven,tipodeproducto,precioendolar)
VALUES ('cocacola','07/02/2022','refresco','7.00$');
INSERT INTO Producto(nombredeproducto,fechadeven,tipodeproducto,precioendolar)
VALUES ('pepsi','04/01/2023','refresco','4.00$');
INSERT INTO Producto(nombredeproducto,fechadeven,tipodeproducto,precioendolar)
VALUES ('perijil','05/03/2024','especia','2.00$');
/*datos de la tabla factura*/
INSERT INTO Factura(fecha,nombretienda,empresaimpuesto,cliente,producto)
VALUES ('02/09/2020','PAIZ','SAT',1,1);
INSERT INTO Factura(fecha,nombretienda,empresaimpuesto,cliente,producto)
VALUES ('03/09/2020','MAXIDESPENSA','SAT',2,2);
INSERT INTO Factura(fecha,nombretienda,empresaimpuesto,cliente,producto)
VALUES ('04/09/2020','MIRAFLORES','SAT',3,3);
/*ver tablas*/
SELECT * FROM Cliente;
SELECT * FROM Producto;
SELECT * FROM Factura;
/*ATUALIZAR UN DATO DE UNA TABLA */
UPDATE Cliente SET nombre = 'pancho' ,apellido = 'villa',
dpi = 132456768, telefono = 09875467 WHERE id_cliente = 1;
UPDATE Producto SET nombredeproducto = 'bimbo' ,fechadeven = 2022,
tipodeproducto = 'pan',precioendolar = '7.00$' WHERE id_producto = 2;
UPDATE Factura SET fecha ='03/12=2025',nombretienda ='WALMART',
empresaimpuesto ='GOBIERNO' WHERE id_factura = 3;
/*ELIMINAR DATOS DE UNA TABLA*/
DELETE FROM Cliente WHERE id_cliente = 2;
DELETE FROM Producto WHERE id_producto = 1;
DELETE FROM Factura WHERE id_factura =3;

