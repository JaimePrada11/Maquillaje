CREATE DATABASE IF NOT EXISTS maquillaje;
USE maquillaje;

CREATE TABLE IF NOT EXISTS clientes(
	ID_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correoElectronico VARCHAR(100) UNIQUE,
    direccion VARCHAR(100),
    numero VARCHAR(100) UNIQUE
);

CREATE TABLE IF NOT EXISTS areas(
	ID_area INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS puestosTrabajos(
	ID_puesto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ID_area INT NOT NULL,
    FOREIGN KEY (ID_area) REFERENCES areas(ID_area) 
);

CREATE TABLE IF NOT EXISTS empleados(
	ID_empleado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_contratacion DATE NOT NULL,
    ID_puesto INT NOT NULL,
    FOREIGN KEY (ID_puesto) REFERENCES puestosTrabajos(ID_puesto)
);

CREATE TABLE IF NOT EXISTS proveedores(
	ID_proveedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_empresa VARCHAR(100) UNIQUE NOT NULL,
    nombre_contacto VARCHAR(100) UNIQUE NOT NULL,
    direccion VARCHAR(100),
    numero VARCHAR(100) UNIQUE
);

CREATE TABLE IF NOT EXISTS categorias(
	ID_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS productos(
	ID_producto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    ID_categoria INT NOT NULL,
    FOREIGN KEY (ID_categoria) REFERENCES categorias(ID_categoria)
);

CREATE TABLE IF NOT EXISTS proveedorProductos(
	ID_producto  INT NOT NULL,
	ID_proveedor INT NOT NULL,
    PRIMARY KEY(ID_producto,ID_proveedor),
    FOREIGN KEY (ID_producto) REFERENCES productos(ID_producto),
    FOREIGN KEY (ID_proveedor) REFERENCES proveedores(ID_proveedor)
);

CREATE TABLE IF NOT EXISTS tonos(
	ID_tono INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS tiposCosmeticos(
	ID_tipoCosmetico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS cosmeticos(
	ID_cosmetico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha_expiracion DATE NOT NULL,
    ID_tipoCosmetico INT NOT NULL,
	ID_producto INT NOT NULL,
    ID_tono INT NOT NULL,
    FOREIGN KEY (ID_tipoCosmetico) REFERENCES tiposCosmeticos(ID_tipoCosmetico),
    FOREIGN KEY (ID_tono) REFERENCES tonos(ID_tono),
    FOREIGN KEY (ID_producto) REFERENCES productos(ID_producto)
);

CREATE TABLE IF NOT EXISTS aromas(
	ID_aroma INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS perfumes(
	ID_perfume INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tamaño INT NOT NULL,
    material VARCHAR(100) NOT NULL,
    ID_aroma INT NOT NULL,
    FOREIGN KEY (ID_aroma) REFERENCES aromas(ID_aroma),
    ID_producto INT NOT NULL,
    FOREIGN KEY (ID_producto) REFERENCES productos(ID_producto)
);

CREATE TABLE IF NOT EXISTS materiales(
	ID_material INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS accesorios(
	ID_accesorio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tamaño INT NOT NULL,
    ID_material INT NOT NULL,
    FOREIGN KEY (ID_material) REFERENCES materiales(ID_material),
    ID_producto INT NOT NULL,
    FOREIGN KEY (ID_producto) REFERENCES productos(ID_producto)
);

CREATE TABLE IF NOT EXISTS tiposPiel(
	ID_tipoPiel INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS cuidados(
	ID_cuidado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    componentes VARCHAR(100) NOT NULL,
    fecha_expiracion DATE NOT NULL,
    ID_tipoPiel INT NOT NULL,
    FOREIGN KEY (ID_tipoPiel) REFERENCES tiposPiel(ID_tipoPiel),
    ID_producto INT NOT NULL,
    FOREIGN KEY (ID_producto) REFERENCES productos(ID_producto)
);

CREATE TABLE IF NOT EXISTS ventas (
	ID_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha_venta DATE NOT NULL,
    ID_empleado INT NOT NULL,
    FOREIGN KEY (ID_empleado) REFERENCES empleados(ID_empleado),
    ID_cliente INT NOT NULL,
    FOREIGN KEY (ID_cliente) REFERENCES clientes(ID_cliente)
);

CREATE TABLE IF NOT EXISTS pedidosClientes(
	ID_producto  INT NOT NULL,
	ID_venta INT NOT NULL,
    PRIMARY KEY(ID_producto,ID_venta),
    FOREIGN KEY (ID_producto) REFERENCES productos(ID_producto),
    FOREIGN KEY (ID_venta) REFERENCES ventas(ID_venta)
);

CREATE TABLE IF NOT EXISTS compras(
	ID_compra INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha_compra DATE NOT NULL,
    ID_proveedor INT NOT NULL,
    FOREIGN KEY (ID_proveedor) REFERENCES proveedores(ID_proveedor)
);

CREATE TABLE IF NOT EXISTS pedidosProveedores(
	ID_producto  INT NOT NULL,
	ID_compra INT NOT NULL,
    PRIMARY KEY(ID_producto,ID_compra),
    FOREIGN KEY (ID_producto) REFERENCES productos(ID_producto),
    FOREIGN KEY (ID_compra) REFERENCES compras(ID_compra)
);











