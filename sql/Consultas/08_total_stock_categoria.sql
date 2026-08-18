-- 3. Calcular el total de stock disponible por categoría (GROUP BY / Agregación)
SELECT c.nombre AS categoria, SUM(p.stock) AS total_stock
FROM productos p
INNER JOIN categorias c ON p.id_categoria = c.id
GROUP BY c.nombre;
