-- 2. Consultar facturas con el nombre del cliente que compró
SELECT f.id AS num_factura, f.fecha, cl.nombre AS cliente
FROM facturas f
INNER JOIN clientes cl ON f.id_cliente = cl.id;
