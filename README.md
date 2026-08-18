# Repositorio-Grupal
Tarea de Informatica   Cuentas: 06, 07, 22, 23, 29, 27, 28
# Sistema de Gestión de Base de Datos - Ferretería

Este repositorio contiene el diseño, diagrama entidad-relación y scripts de consultas SQL para el sistema de gestión de una **Ferretería**, desarrollado en **Supabase / PostgreSQL**.

---

## 📝 Descripción Detallada del Diseño

El modelo de base de datos está diseñado para gestionar las operaciones fundamentales de una ferretería: inventario, proveedores, ventas y clientes.

### Entidades y Relaciones:

1. **`categorias`**: Almacena las categorías de los productos de la ferretería (ej. Herramientas, Electricidad, Fontanería).
   * **PK**: `id`

2. **`productos`**: Mantiene el catálogo de productos disponible con su precio y stock.
   * **PK**: `id`
   * **FK**: `id_categoria` $\rightarrow$ `categorias(id)` (Relación 1:N)

3. **`proveedores`**: Registra la información de contacto de las empresas proveedoras.
   * **PK**: `id`

4. **`producto_proveedor`**: Tabla intermedia que resuelve la relación **Muchos a Muchos (M:N)** entre productos y proveedores.
   * **PK**: `id`
   * **FK**: `id_producto` $\rightarrow$ `productos(id)`
   * **FK**: `id_proveedor` $\rightarrow$ `proveedores(id)`

5. **`clientes`**: Mantiene el registro de los compradores.
   * **PK**: `id`

6. **`facturas`**: Registra los encabezados de las ventas efectuadas a los clientes.
   * **PK**: `id`
   * **FK**: `id_cliente` $\rightarrow$ `clientes(id)` (Relación 1:N)

7. **`detalle_factura`**: Tabla de detalle que conecta cada factura con los productos vendidos y la cantidad adquirida.
   * **PK**: `id`
   * **FK**: `id_factura` $\rightarrow$ `facturas(id)`
   * **FK**: `id_producto` $\rightarrow$ `productos(id)`

---

## 📁 Estructura del Proyecto SQL

Los scripts SQL están organizados en la carpeta `sql/`:

* `sql/01_creacion_tablas.sql`: Definición del esquema DDL con Primary Keys y Foreign Keys.
* `sql/02_inserciones.sql`: Datos de prueba iniciales para todas las tablas.
* `sql/03_consultas_basicas.sql`: Consultas simples de selección y filtrado.
* `sql/04_agregaciones_joins.sql`: Consultas relacionales con `JOIN`, `GROUP BY` y funciones de agregación.
* `sql/05_consultas_avanzadas.sql`: Subconsultas y análisis de datos.
