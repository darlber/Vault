# Técnicas y estándares. Modelo-Vista-Controlador
El MVC divide una aplicación en tres componentes:
- Los datos de la aplicación (**modelo**).
- La interfaz del usuario (**vista**).
- El **controlador**, el cual define la forma en que la interfaz reacciona a la entrada del usuario.

# Especificaciones técnicas para el desarrollo de componentes
Odoo utiliza los protocolos XML-RPC o Net-RPC para comunicación entre cliente y servidor.
En el caso de XML-RPC, la función llamada, sus argumentos y el resultado se envían por HTTP y son codificadas usando XML.
ODOO funciona sobre un marco de trabajo llamado OpenObject. Este framework permite el desarrollo rápido de aplicaciones (RAD), siendo sus principales elementos los siguientes:
- ORM: mapeo de bases de datos relacionales a objetos Python.
- Arquitectura MVC (Modelo Vista Controlador).
- Diseñador de informes.
- Herramientas de Business Intelligence y cubos multidimensionales.
- Cliente web.

# Especificaciones funcionales para el desarrollo de componentes
### 🔧 **Estructura básica de Odoo**

- **Núcleo + Módulos**
- Módulos principales:
    - `base`: objetos base (usuarios, empresas, monedas)
    - `account`: contabilidad
    - `product`: productos/tarifas
    - `purchase`: compras
    - `sale`: ventas
    - `mrp`: fabricación
    - `crm`: clientes/proveedores
---
### 📁 **Estructura de un módulo**

1. Carpeta en `addons/` con nombre del módulo
2. Archivos obligatorios:
    - `__init__.py` → inicia el módulo
    - `__manifest__.py` → metadatos del módulo
    - `nombre_modulo.py` → modelos/controladores (clases Python)
    - `nombre_modulo_nombre_objeto.xml` → vistas
3. Subcarpetas posibles:
    - `report/`, `wizard/`, `test/`
[[Personalizar Vistas]]
---
# Técnicas de optimización de consultas y acceso a grandes volúmenes de información

### 🧠 Concepto clave
- **Optimizar = mejorar rendimiento y uso de recursos.**
- Especialmente importante con **grandes volúmenes de datos**.
### 🔍 Técnicas de optimización
1. **Diseño de tablas**
   - Evitar duplicidades.
   - Estructura eficiente.
2. **Ajuste de campos**
   - Usar tamaños adecuados.
   - Ahorro de espacio.
3. **Índices**
   - Mejoran la velocidad de búsqueda.
   - Usar en:
     - Campos de búsqueda frecuentes.
     - Claves externas (foreign keys).
   - ⚠️ Demasiados índices = más espacio y lentitud en actualizaciones.
4. **Optimización de SQL**
   - Aplicar buenas prácticas en:
     - `SELECT`
     - `INSERT`
     - `UPDATE`
     - `DELETE`
5. **Optimización directa de BD**
   - Uso de comandos SQL (modo consola).
   - Ejecución de herramientas de mantenimiento (VACUUM, ANALYZE, etc.).

### 🛠️ Operaciones de consulta y herramientas en PostgreSQL

Para optimizar la base de datos, conectarse en modo comando:

1. Cambiar al usuario `postgres`:
```
sudo su postgres
```
