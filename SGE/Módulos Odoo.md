Estructura básica de un módulo en Odoo.
Para desarrollar componentes propios, se trabaja en un módulo que tiene esta estructura típica de carpetas y archivos:
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
	
Esta estructura ya se vio (con la ejecución del subcomando “scaffold”) en el apartado de la UT4 en el que se explicaba cómo crear un informe personalizado para ser ejecutado desde la interfaz de Odoo.
