> [!NOTE]
> No se deben realizar modificaciones directamente desde el navegador
en la versión de producción. El modo desarrollador se debe usar con
precaución, sabiendo qué y cómo hacer los cambios requeridos
1. En la parte superior izquierda, en el menú principal, hacer clic en Ajustes y desplazarse hacia la parte inferior de la pantalla. Buscar la opción “Activar modo desarrollador (con ativos)” para incluir también vistas heredadas y campos ocultos.
2. En la parte superior derecha, en el icono de usuario, desplegar el menú para realizar la misma acción de forma más rápida. El modo desarrollador, cuando está activado, muestra el icono de un escarabajo en la parte superior de la pantalla, a la izquierda de los elementos junto al icono del usuario. Haciendo clic sobre el insecto se puede acceder a:
- Vista de modelos (estructura de datos)
- Edición de vistas (XML directamente desde el navegador)
- Creación y modificación de menús
- Disponer de la acción “Ver campos” para cada vista/formulario
- Exportación/importación técnica de datos
- Registro de depuración


En Odoo no es lo mismo una “Compañía” que una “Empresa” tipo partner. Las “Empresas” son entes con los que se trabajan los productos o servicios, por ejemplo, las empresas proveedoras o clientes. Las “Compañías” son entes que forman parte de la propia corporación empresarial.
Es importante no confundirlas para evitar importar productos, por ejemplo, asociados a una compañía en lugar de asociarlos a una empresa
proveedora.
Por último, una compañía del grupo pasa también a ser un partner de forma automática al crearla


No es posible realizar consultas SQL desde la propia interfaz de Odoo, por motivos de seguridad y aislamiento. Odoo trabaja sobre un ORM (Object Relational Mapping), lo que significa que todo acceso a la base de datos se hace a través de objetos Python, no mediante SQL plano.

| Elemento en<br>Odoo | Modelo<br>(Python) | Tabla en<br>PostgreSQL | Vista Xml            |
| ------------------- | ------------------ | ---------------------- | -------------------- |
| Cliente             | res.partner        | res_partner            | res.partner.form     |
| Factura             | account.move       | account_move           | account.invoice.tree |
| Factura             | account.move       | account_move           | account.invoice.tree |

Esta tabla ayuda a entender la conexión entre capas:

interfaz → controlador (acción) → modelo → tabla