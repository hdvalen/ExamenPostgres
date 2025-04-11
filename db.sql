
CREATE DATABASE tiendaTecnologia;

CREATE TABLE proveedores(
    idProveedores SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    identificacion NUMERIC UNIQUE
);

CREATE TABLE clientes(
    idClientes SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    correo VARCHAR(50),
    telefono VARCHAR(20)
);

CREATE TABLE ventas(
    idVentas SERIAL PRIMARY KEY,
    cantidad NUMERIC,
    idClientes INT,
    CONSTRAINT fk_idclientes FOREIGN KEY (idClientes) REFERENCES clientes(idclientes)
);

CREATE TABLE fecha_venta(
    idFecha_venta SERIAL PRIMARY KEY ,
    fechaVenta DATE,
    horaVenta TIME
);

CREATE TABLE categoria(
    idCategoria SERIAL PRIMARY KEY ,
    nombre VARCHAR(50)
);

CREATE TABLE productos(
    idProductos SERIAL PRIMARY KEY,
    nombre VARCHAR (50),
    precio DECIMAL(10,2),
    stockDisponible NUMERIC,
    idCategoria INT,
    CONSTRAINT fk_idCategoria FOREIGN KEY (idCategoria) REFERENCES categoria(idCategoria)
);

CREATE TABLE venta_producto(
    idVenya_producto SERIAL PRIMARY KEY,
    idProductos INT,
    idVentas INT,
    CONSTRAINT fk_idProductos FOREIGN KEY (idProductos) REFERENCES productos(idProductos),
    CONSTRAINT fk_idVentas FOREIGN KEY (idVentas) REFERENCES ventas(idVentas)
);

CREATE TABLE proveedore_producto(
    idProveedor_producto SERIAL PRIMARY KEY,
    idProveedores INT,
    idProductos INT,
    CONSTRAINT fk_idProveedores FOREIGN KEY (idProveedores) REFERENCES proveedores(idProveedores),
    CONSTRAINT fk_idProducto FOREIGN KEY (idProductos) REFERENCES productos(idProductos)
);
