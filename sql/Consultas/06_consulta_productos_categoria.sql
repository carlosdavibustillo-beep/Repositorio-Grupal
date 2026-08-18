-- 1. Obtener listado de productos con el nombre de su categoría (JOIN)
SELECT p.nombre AS producto, p.precio, c.nombre AS categoria
FROM productos p
INNER JOIN categorias c ON p.id_categoria = c.id;
