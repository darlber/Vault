Estructura básica de un módulo en Odoo.
Para desarrollar componentes propios, se trabaja en un módulo que tiene esta estructura típica de carpetas y archivos:
```
mi_modulo/
├── __init__.py
├── __manifest__.py
├── models/
│ └── modelo_personalizado.py
├── views/
│ └── vista_personalizada.xml
├── security/
│ └── ir.model.access.csv
├── report/
│ └── informe_qweb.xml (opcional)
```
Esta estructura ya se vio (con la ejecución del subcomando “scaffold”) en el apartado de la UT4 en el que se explicaba cómo crear un informe personalizado para ser ejecutado desde la interfaz de Odoo. [[Scaffold]]

Ejemplo:
Con el siguiente código generamos una nueva tabla con la correspondiente vinculación a un nuevo modelo de datos alternativo al de contactos (el código estaría en un archivo, por ejemplo, mi_modelo.py, en la carpeta models/ del componente personalizado).
```python
from odoo import models, fields
class MiCliente(models.Model):
_name = 'mi_modulo.cliente'
_description = 'Cliente personalizado'
nombre = fields.Char(string='Nombre')
correo = fields.Char(string='Correo electrónico')
```
ORM en Odoo
El ORM permite convertir automáticamente una clase de Python en una tabla de la base de datos. Cada campo se corresponde con una columna, y cada instancia de la clase, con una fila.
```python
from odoo import models, fields
class ProductoPersonalizado(models.Model):
_name = 'mi_modulo.producto'
_description = 'Producto personalizado'
nombre = fields.Char(string="Nombre del producto")
precio = fields.Float(string="Precio")
Con esta clase, se genera automáticamente una tabla en la base de datos llamada
mi_modulo_producto.
```
Operaciones básicas
```python
#Crear un registro
self.env['mi_modulo.producto'].create({
'nombre': 'Teclado mecánico',
'precio': 79.95
})
#Leer registros (buscar)
productos = self.env['mi_modulo.producto'].search([('precio',
'>', 50)])
for prod in productos:
print(prod.nombre, prod.precio)
#Modificar registros
producto = self.env['mi_modulo.producto'].browse(5)
producto.precio = 69.95
#Eliminar registros
producto = self.env['mi_modulo.producto'].browse(5)
producto.unlink()
```
## Permisos y seguridad
>Todo acceso a los datos en Odoo pasa por el sistema de permisos definido en `ir.model.access.csv`. Si un usuario no tiene permisos para un modelo, aunque el código esté bien generado, recibirá un error
