# Maquillaje




## 📊 Entidades Principales

  - **Clientes**: Esta entidad gestiona la información de los usuarios registrados en el sistema, incluyendo su nombre, dirección y datos de contacto. 

  - **Empleados**: Esta entidad gestiona la información de los empleados registrados en el sistema, incluyendo su nombre, el puesto y su fecha de contratacion. 


  - **Productos**: Esta entidad almacena detalles sobre los productos ofrecidos, incluyendo descripciones, precios y características. 


  - **Ventas**: Maneja la información sobre las pedidos de compra realizadas por los usuarios. Incluye detalles como la fecha de la venta, el empleado y el usuario que realizó la compra.


- **Proveedores**: Esta entidad gestiona la información sobre los proveedores que suministran productos. Incluye detalles como el nombre de la empresa, el número de contacto y otros datos relevantes.


## 🌐 Relaciones entre las entidades


1. **Ventas** a **Empleados**: **Uno a Muchos**  
   Un empleado puede ser realizado por varias ventas pero Una venta depende de un empleado.

2. **Ventas** a **Clientes**: **Uno a Muchos**  
   Un cliente puede ser realizado por varias ventas pero Una venta depende de un cliente.

3.  **Proveedores** a **Productos**: **Muchos a Muchos**  
Un proveedor puede ofrecer múltiples productos.Un producto puede ser suministrado por múltiples proveedores.Se representa con la tabla intermedia de ProveedorProducto


4. **Ventas** a **Productos**: **Muchos a Muchos**  
   Una venta puede incluir múltiples productos.Un producto puede ser parte de múltiples ventas. La relacion se representa en la tabla intermedia de PedidosClientes

5. **Proveedores** a **Compras**: **Uno a Muchos**  
    Un proveedor puede dar o suminstrar muchas compras, pero cada compra está vinculado a un único proveedor.

6. **Compras** a **Productos**: **Muchos a Mucos**  
   Una compra puede incluir múltiples productos.Un producto puede ser parte de múltiples compras. La relacion se representa en la tabla intermedia de PedidosProveedores

Estas relaciones estructuran la base de datos y facilitan la gestión de información, asegurando un flujo coherente y organizado de datos.


## 🗺️ Diagrama UML

![Diagrama UML](image.png)