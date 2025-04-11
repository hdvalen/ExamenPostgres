
-- 1. Listar los productos con stock menor a 5 unidades.
    SELECT idProductos, nombre, stockDisponible
    FROM productos
    WHERE stockDisponible < 5;
-- 2. Calcular ventas totales de un mes específico.
    SELECT SUM(cantidad) AS total_ventas
    FROM ventas v
    INNER JOIN fecha_venta f ON v.idVentas = f.idFecha_venta
    WHERE f.fechaVenta BETWEEN '2025-04-01' AND '2025-04-30';
-- 3. Obtener el cliente con más compras realizadas.
    SELECT idClientes, COUNT(cantidad) AS total_compras
    FROM ventas
    GROUP BY idClientes
    ORDER BY total_compras DESC
    LIMIT 1;
-- 3. Listar los 5 productos más vendidos.
    SELECT p.idProductos, p.nombre, COUNT(v.cantidad) AS totalVendido 
    FROM productos p
    INNER JOIN venta_producto vp ON p.idProductos= vp.idProductos
    INNER JOIN ventas v ON vp.idVentas= v.idVentas
    GROUP BY p.idProductos
    LIMIT 5;

-- 4. Consultar ventas realizadas en un rango de fechas de tres Días y un Mes.
    SELECT v.idVentas, v.cantidad, f.fechaVenta, f.horaVenta
    FROM ventas v
    INNER JOIN fecha_venta f ON v.idVentas= f.idFecha_venta
    WHERE f.fechaVenta BETWEEN '2025-04-01' AND '2025-04-30'; 

-- 5. Identificar clientes que no han comprado en los últimos 6 meses.
    SELECT c.idClientes, c.nombre
    FROM clientes c
    LEFT JOIN ventas v ON c.idClientes = v.idClientes
    INNER JOIN fecha_venta f ON v.idVentas = f.idFecha_venta
    WHERE v.idVentas IS NULL OR f.fechaVenta < NOW() - INTERVAL '6 months';

























