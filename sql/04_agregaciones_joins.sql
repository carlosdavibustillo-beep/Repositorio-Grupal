-- 1. Obtener listado de productos con el nombre de su categoría (JOIN)
SELECT p.nombre AS producto, p.precio, c.nombre AS categoria
FROM productos p
INNER JOIN categorias c ON p.id_categoria = c.id;

-- 2. Consultar facturas con el nombre del cliente que compró
SELECT f.id AS num_factura, f.fecha, cl.nombre AS cliente
FROM facturas f
INNER JOIN clientes cl ON f.id_cliente = cl.id;

-- 3. Calcular el total de stock disponible por categoría (GROUP BY / Agregación)
SELECT c.nombre AS categoria, SUM(p.stock) AS total_stock
FROM productos p
INNER JOIN categorias c ON p.id_categoria = c.id
GROUP BY c.nombre;
