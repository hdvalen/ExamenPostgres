
-- 1. Un procedimiento almacenado para registrar una venta.
    CREATE OR REPLACE PROCEDURE  registrarVenta (idClientes INT)
    LANGUAGE plpgsql
    AS $$
    BEGIN
        INSERT INTO venta(cantidad, idClientes)
        VALUES
        (idclientes);
    RAISE NOTICE 'Venta Registrada Exitosamente ';
    END;
    $$;
-- 2. Validar que el cliente exista.
    CREATE OR REPLACE PROCEDURE  ValidarCliente (idClientes INT)
    LANGUAGE plpgsql
    AS $$
    DECLARE 
        idClientes int;
    BEGIN
        SELECT idClientes INTO idClientes
        FROM clientes
        WHERE idClientes=idClientes;

        IF idClientes = idClientes THEN 
            RAISE NOTICE 'El cliente con el id % si existe', idClientes;
        ELSE 
            RAISE NOTICE 'El cliente con el id % no existe', idClientes;
        END IF;
    END;
    $$;
-- 3. Verificar que el stock sea suficiente antes de procesar la venta.
CREATE OR REPLACE PROCEDURE verificarStock (
    cantidad INT,
    idProducto INT
)
LANGUAGE plpgsql
AS $$
DECLARE
    stockDisponible INT;
BEGIN

    SELECT stock INTO stockDisponible
    FROM productos
    WHERE idProducto = idProducto;


    IF stockDisponible < cantidad THEN
        RAISE NOTICE 'No hay suficiente stock para el producto %', idProducto;
    ELSE
        RAISE NOTICE 'Stock suficiente para el producto %', idProducto;
    END IF;
END;
$$;

-- 4. Si no hay stock suficiente, Notificar por medio de un mensaje en consola usando RAISE.
    RAISE NOTICE 'No hay suficiente stock para el producto %', idProducto;

-- 5. Si hay stock, se realiza el registro de la venta.
    PERFORM verificarStock(cantidad, idProducto);
    INSERT INTO venta (idClientes, cantidad, fecha_venta)
    VALUES (idClientes, cantidad, CURRENT_DATE);
