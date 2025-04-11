
-- 1. Listar los productos con stock menor a 5 unidades.
    SELECT idProductos, nombre, stockDisponible
    FROM productos
    WHERE stockDisponible < 5;
-- 2. Calcular ventas totales de un mes específico.

-- 3. Obtener el cliente con más compras realizadas.
    SELECT idClientes, COUNT(*) AS total_compras
    FROM ventas
    GROUP BY idClientes
    ORDER BY total_compras DESC
    LIMIT 1;
-- 3. Listar los 5 productos más vendidos.
    SELECT idProductos, COUNT(cantidad) AS total_vendido
    FROM ventas
    INNER JOIN venta_producto ON ventas(idVentas)=venta_producto(idVentas)
    INNER JOIN productos ON venta_producto(idProductos)=productos(idProductos)
    GROUP BY idProductos
    ORDER BY total_vendido DESC
    LIMIT 5;

-- 4. Consultar ventas realizadas en un rango de fechas de tres Días y un Mes.
    SELECT idClientes 
    FROM ventas
    WHERE fecha_venta BETWEEN '2025-03-01' AND '2025-03-03';  

-- 5. Identificar clientes que no han comprado en los últimos 6 meses.
SELECT cliente_id
FROM clientes
WHERE cliente_id NOT IN (
  SELECT DISTINCT cliente_id
  FROM ventas
  WHERE fecha_venta > NOW() - INTERVAL 6 MONTH
);

























