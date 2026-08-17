-- 1. Listar todos los productos con precio mayor a L. 100
SELECT * FROM productos WHERE precio > 100.00;

-- 2. Consultar clientes registrados con sus RTN
SELECT nombre, rtn FROM clientes;

-- 3. Ver productos con stock bajo (menos de 30 unidades)
SELECT nombre, stock FROM productos WHERE stock < 30 ORDER BY stock ASC;
