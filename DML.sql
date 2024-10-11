USE maquillaje;

INSERT INTO clientes (nombre, correoElectronico, direccion, numero) VALUES
('Juan Pérez', 'juan.perez@example.com', 'Calle Falsa 123', '123456789'),
('María López', 'maria.lopez@example.com', 'Avenida Siempre Viva 742', '987654321'),
('Carlos García', 'carlos.garcia@example.com', 'Paseo de la Reforma 100', '456789123'),
('Ana Torres', 'ana.torres@example.com', 'Calle de la Amargura 45', '321654987'),
('Luis Martínez', 'luis.martinez@example.com', 'Boulevard de los Sueños 25', '789123456');

INSERT INTO areas (nombre) VALUES
('Ventas'),
('Atención al Cliente'),
('Marketing'),
('Inventario'),
('Formulación de Productos');

INSERT INTO puestosTrabajos (nombre, ID_area) VALUES
('Asesor de Ventas de Maquillaje', 1),
('Representante de Atención al Cliente', 2),
('Especialista en Marketing de Belleza', 3),
('Encargado de Inventario', 4),
('Químico Cosmético', 5);

INSERT INTO empleados (nombre, fecha_contratacion, ID_puesto) VALUES
('Laura González', '2023-01-15', 1),
('Sofía Martínez', '2023-02-20', 2),
('Diego Ruiz', '2023-03-10', 3),
('Marta Pérez', '2023-04-05', 4),
('José Fernández', '2023-05-18', 5);

INSERT INTO proveedores (nombre_empresa, nombre_contacto, direccion, numero) VALUES
('Belleza S.A.', 'Ana López', 'Calle de la Cosmética 45', '555-1234'),
('Maquillaje y Más', 'Carlos Ramírez', 'Avenida de la Belleza 10', '555-5678'),
('Estilo y Glamour', 'Sofía Hernández', 'Boulevard del Make-Up 22', '555-8765'),
('Cosméticos Premium', 'Luis González', 'Paseo de la Moda 33', '555-4321'),
('Tendencias de Belleza', 'María Fernández', 'Calle del Estilo 12', '555-3456');

INSERT INTO categorias (nombre) VALUES
('Cosméticos'),
('Cuidado de la Piel'),
('Perfumes'),
('Accesorios');

INSERT INTO productos (nombre, descripcion, precio, stock, ID_categoria) VALUES
('Base Líquida', 'Base para un acabado natural', 20.99, 50, 1),
('Crema Hidratante', 'Crema para el cuidado diario de la piel', 15.49, 30, 2),
('Perfume Floral', 'Fragancia fresca y floral', 35.00, 20, 3),
('Espejo de Maquillaje', 'Espejo con luz LED', 25.00, 15, 4),
('Sombra de Ojos', 'Paleta de sombras en tonos nude', 18.75, 40, 1),
('Tónico Facial', 'Tónico para refrescar y limpiar la piel', 12.99, 25, 2),
('Perfume Oriental', 'Fragancia intensa y seductora', 40.00, 10, 3),
('Pinceles de Maquillaje', 'Set de pinceles de alta calidad', 30.50, 12, 4),
('Lápiz Labial', 'Lápiz labial hidratante y de larga duración', 15.00, 60, 1),
('Mascarilla Facial', 'Mascarilla nutritiva para todo tipo de piel', 10.50, 35, 2);

INSERT INTO proveedorProductos (ID_producto, ID_proveedor) VALUES
(1, 1),  -- Base Líquida con Belleza S.A.
(1, 2),  -- Base Líquida con Maquillaje y Más
(2, 2),  -- Crema Hidratante con Maquillaje y Más
(3, 3),  -- Perfume Floral con Estilo y Glamour
(3, 5),  -- Perfume Floral con Tendencias de Belleza
(4, 4),  -- Espejo de Maquillaje con Cosméticos Premium
(5, 1),  -- Sombra de Ojos con Belleza S.A.
(6, 2),  -- Tónico Facial con Maquillaje y Más
(7, 3),  -- Perfume Oriental con Estilo y Glamour
(8, 4),  -- Pinceles de Maquillaje con Cosméticos Premium
(9, 5),  -- Lápiz Labial con Tendencias de Belleza
(10, 1), -- Mascarilla Facial con Belleza S.A.
(10, 2); -- Mascarilla Facial con Maquillaje y Más


INSERT INTO tonos (nombre) VALUES
('Nude'),
('Rosado'),
('Rojo'),
('Marrón'),
('Coral');

INSERT INTO tiposCosmeticos (nombre) VALUES
('Labial'),
('Base'),
('Sombra');

INSERT INTO cosmeticos (fecha_expiracion, ID_tipoCosmetico, ID_producto, ID_tono) VALUES
('2025-12-31', 1, 9, 1),  -- Lápiz Labial, tipo Labial, tono Nude
('2024-05-15', 2, 1, 2),  -- Base Líquida, tipo Base, tono Rosado
('2023-08-20', 3, 5, 3),  -- Sombra de Ojos, tipo Sombra, tono Rojo
('2026-11-11', 1, 9, 4),  -- Lápiz Labial, tipo Labial, tono Marrón
('2025-01-10', 2, 1, 5),  -- Base Líquida, tipo Base, tono Coral
('2024-03-30', 3, 5, 1),  -- Sombra de Ojos, tipo Sombra, tono Nude
('2027-07-22', 1, 9, 2),  -- Lápiz Labial, tipo Labial, tono Rosado
('2026-09-01', 2, 1, 3);   -- Base Líquida, tipo Base, tono Rojo

INSERT INTO aromas (nombre) VALUES
('Floral'),
('Frutal'),
('Amaderado'),
('Oriental');

INSERT INTO perfumes (tamaño, material, ID_aroma, ID_producto) VALUES
(50, 'Vidrio', 1, 3),  -- Perfume Floral, asociado al producto "Perfume Floral"
(100, 'Vidrio', 2, 7), -- Perfume Frutal, asociado al producto "Perfume Oriental"
(30, 'Plástico', 3, 7), -- Perfume Amaderado, asociado al producto "Perfume Oriental"
(75, 'Vidrio', 4, 6);  -- Perfume Oriental, asociado al producto "Perfume Oriental"


INSERT INTO materiales (nombre) VALUES
('Plástico'),
('Metal'),
('Tela'),
('Madera'),
('Vidrio');

INSERT INTO accesorios (tamaño, ID_material, ID_producto) VALUES
(15, 1, 4),  -- Espejo de Maquillaje, material Plástico
(20, 2, 8),  -- Pinceles de Maquillaje, material Metal
(10, 3, 5),  -- Bolsa de Maquillaje, material Tela
(25, 4, 7),  -- Organizador de Cosméticos, material Madera
(5, 5, 6);   -- Botella de Perfume, material Vidrio


INSERT INTO tiposPiel (nombre) VALUES
('Normal'),
('Grasa'),
('Seca'),
('Mixta'),
('Sensible');

INSERT INTO cuidados (componentes, fecha_expiracion, ID_tipoPiel, ID_producto) VALUES
('Ácido Hialurónico, Vitamina E', '2025-06-30', 1, 2),  -- Crema Hidratante para piel normal
('Ácido Salicílico, Extracto de Té Verde', '2024-11-15', 2, 6),  -- Tónico Facial para piel grasa
('Aceite de Almendras, Manteca de Karité', '2026-02-28', 3, 10),  -- Mascarilla Facial para piel seca
('Aloe Vera, Extracto de Caléndula', '2024-09-10', 4, 5),  -- Crema para piel mixta
('Extracto de Manzanilla, Sin Fragancia', '2025-01-25', 5, 2);  -- Crema hidratante para piel sensible

INSERT INTO ventas (fecha_venta, ID_empleado, ID_cliente) VALUES
('2023-11-15', 1, 1),  -- Venta realizada por Laura González a Juan Pérez
('2023-12-01', 2, 2),  -- Venta realizada por Sofía Martínez a María López
('2023-12-05', 3, 3),  -- Venta realizada por Diego Ruiz a Carlos García
('2023-12-10', 4, 4),  -- Venta realizada por Marta Pérez a Ana Torres
('2023-12-20', 5, 5),  -- Venta realizada por José Fernández a Luis Martínez
('2024-01-15', 1, 2),  -- Venta realizada por Laura González a María López
('2024-01-20', 2, 3),  -- Venta realizada por Sofía Martínez a Carlos García
('2024-02-05', 3, 1),  -- Venta realizada por Diego Ruiz a Juan Pérez
('2024-02-10', 4, 4),  -- Venta realizada por Marta Pérez a Ana Torres
('2024-03-01', 5, 2);   -- Venta realizada por José Fernández a María López


INSERT INTO pedidosClientes (ID_producto, ID_venta, Cantidad) VALUES
(1, 1, 2),  -- 2 unidades de Base Líquida en la venta 1
(3, 2, 1),  -- 1 unidad de Perfume Floral en la venta 2
(5, 3, 3),  -- 3 unidades de Sombra de Ojos en la venta 3
(4, 4, 1),  -- 1 unidad de Espejo de Maquillaje en la venta 4
(9, 5, 2),  -- 2 unidades de Lápiz Labial en la venta 5
(6, 6, 1),  -- 1 unidad de Tónico Facial en la venta 6
(7, 7, 4),  -- 4 unidades de Perfume Oriental en la venta 7
(2, 8, 1),  -- 1 unidad de Crema Hidratante en la venta 8
(10, 9, 5), -- 5 unidades de Mascarilla Facial en la venta 9
(8, 10, 3); -- 3 unidades de Pinceles de Maquillaje en la venta 10

INSERT INTO compras (fecha_compra, ID_proveedor) VALUES
('2023-11-15', 1),  -- Compra a Belleza S.A.
('2023-11-25', 2),  -- Compra a Maquillaje y Más
('2023-12-01', 3),  -- Compra a Estilo y Glamour
('2023-12-10', 4),  -- Compra a Cosméticos Premium
('2023-12-20', 5),  -- Compra a Tendencias de Belleza
('2024-01-10', 1),  -- Nueva compra a Belleza S.A.
('2024-01-15', 2),  -- Nueva compra a Maquillaje y Más
('2024-02-05', 3),  -- Nueva compra a Estilo y Glamour
('2024-02-15', 4),  -- Nueva compra a Cosméticos Premium
('2024-03-10', 5);  -- Nueva compra a Tendencias de Belleza


INSERT INTO pedidosProveedores (ID_producto, ID_compra, Cantidad) VALUES
(1, 1, 50),  -- 50 unidades de Base Líquida en la compra 1
(3, 2, 30),  -- 30 unidades de Perfume Floral en la compra 2
(5, 3, 20),  -- 20 unidades de Sombra de Ojos en la compra 3
(4, 4, 10),  -- 10 unidades de Espejo de Maquillaje en la compra 4
(2, 5, 25),  -- 25 unidades de Crema Hidratante en la compra 5
(6, 6, 15),  -- 15 unidades de Tónico Facial en la nueva compra 1
(7, 7, 40),  -- 40 unidades de Perfume Oriental en la nueva compra 2
(10, 8, 5),  -- 5 unidades de Mascarilla Facial en la nueva compra 3
(8, 9, 12),  -- 12 unidades de Pinceles de Maquillaje en la nueva compra 4
(9, 10, 20); -- 20 unidades de Lápiz Labial en la nueva compra 5
