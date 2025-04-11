-- Insertar proveedores
INSERT INTO proveedores (nombre, identificacion) VALUES 
('Juan Pérez', 123456789),
('María González', 987654321),
('Carlos López', 112233445),
('Ana Torres', 223344556),
('Pedro Díaz', 334455667),
('Luisa Fernández', 445566778),
('José Martínez', 556677889),
('Marta Sánchez', 667788990),
('Francisco Ruiz', 778899001),
('Laura García', 889900112);

-- Insertar clientes
INSERT INTO clientes (nombre, correo, telefono) VALUES 
('David García', 'david.garcia@mail.com', '123456789'),
('Laura Gómez', 'laura.gomez@mail.com', '234567890'),
('Miguel Hernández', 'miguel.hernandez@mail.com', '345678901'),
('Sofia Rodríguez', 'sofia.rodriguez@mail.com', '456789012'),
('Daniela Pérez', 'daniela.perez@mail.com', '567890123'),
('Pablo Martínez', 'pablo.martinez@mail.com', '678901234'),
('Raquel López', 'raquel.lopez@mail.com', '789012345'),
('Javier Sánchez', 'javier.sanchez@mail.com', '890123456'),
('Beatriz Díaz', 'beatriz.diaz@mail.com', '901234567'),
('Carlos Torres', 'carlos.torres@mail.com', '012345678');

-- Insertar categorías
INSERT INTO categoria (nombre) VALUES 
('Computadoras'),
('Celulares'),
('Accesorios'),
('Audio'),
('Videojuegos');

-- Insertar productos
INSERT INTO productos (nombre, precio, stockDisponible, idCategoria) VALUES 
('Laptop Dell', 799.99, 50, 1),
('Smartphone Samsung Galaxy', 499.99, 100, 2),
('Auriculares JBL', 89.99, 200, 3),
('Consola PlayStation 5', 499.99, 30, 4),
('Teclado mecánico Logitech', 129.99, 150, 3),
('Ratón inalámbrico HP', 19.99, 300, 3),
('Monitor 24" Acer', 179.99, 70, 1),
('Cámara de seguridad Nest', 129.99, 40, 5),
('Smartwatch Apple', 299.99, 80, 2),
('Cable HDMI 4K', 14.99, 250, 3)
('Smartphone Samsung ', 499.99, 1, 2),
('Smartwatch Huawei', 299.99, 4, 2),
('Monitor 15" Acer', 179.99, 2, 1);

-- Insertar ventas
INSERT INTO ventas (cantidad, idClientes) VALUES 
(1, 1),
(2, 2),
(3, 3),
(1, 4),
(4, 5),
(1, 6),
(2, 7),
(1, 8),
(5, 9),
(3, 10);

-- Insertar fecha_venta
INSERT INTO fecha_venta (fechaVenta, horaVenta) VALUES 
('2025-04-01', '10:30:00'),
('2025-04-02', '11:15:00'),
('2025-04-03', '12:00:00'),
('2025-04-04', '09:45:00'),
('2025-04-05', '14:20:00'),
('2025-04-06', '16:05:00'),
('2025-04-07', '17:50:00'),
('2025-04-08', '13:00:00'),
('2025-04-09', '18:30:00'),
('2025-04-10', '19:00:00');

-- Insertar venta_producto
INSERT INTO venta_producto(idProductos,idVentas) VALUES
(1, 1),
(2, 2),
(3, 3),
(1, 4),
(4, 5),
(1, 6),
(2, 5),
(10,8),
(9, 5),
(8, 4);

-- Insertar proveedore_producto
INSERT INTO proveedore_producto(idProveedores,idProductos) VALUES
(1, 1),
(2, 2),
(3, 3),
(1, 4),
(4, 6),
(8, 7),
(1, 5),
(10,8),
(3, 5),
(8, 4);