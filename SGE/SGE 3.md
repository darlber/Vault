# Organización y consulta de la información
Los principales objetos son: **Modelos** (tablas), **Vistas** (formularios XML), **Menús** (navegación) y **Acciones** (abrir vistas o ejecutar tareas). 

Una tabla guarda datos en filas y columnas; una **vista (SQL)** es una "tabla virtual" basada en otras tablas (no almacena datos físicos).  
Para manejar la base de datos de Odoo (PostgreSQL), es útil usar PgAdmin 4.  
La conexión a PostgreSQL en PgAdmin necesita:
- IP/servidor 
- Puerto (5432) 
- Base de datos inicial
- Usuario y contraseña.  
  
==Las vistas no almacenan datos físicamente. Se basan en otras tablas.==  
🛠️Pasos para conectarte en [[pgAdmin4]]
  
Las consultas de acceso a datos sirven para recuperar información de tablas o vistas (sql) en la base de datos.  
  
1. Selecciona las tablas o [[pgAdmin4#Vistas en Base de Datos|vista]] (sql).  
2. Relaciona las tablas si es necesario.  
3. Elige los campos que quieres ver.  
4. Ejecuta la consulta.  
  
Las consultas pueden ser simples o combinar varias tablas, se pueden guardar, y se hacen normalmente en SQL.  
En PgAdmin 4 puedes ver consultas gráficamente, pero no crearlas de forma gráfica (eso sí se podía en pgAdmin III).  
# Visualización de la información
En Odoo, los objetos (como Empresas o Facturas) se muestran al usuario mediante interfaces.  
Las interfaces pueden ser:  
- Estáticas (no modificables, escritas directamente en código).  
- Dinámicas (modificables, descritas en XML).  
  
XML es un lenguaje sencillo que sirve para describir datos, no para programar.  
# Formularios y Gráficos
1. Formulario: muestra un solo registro (ordenado de izquierda a derecha y arriba abajo).    
2. Árbol: muestra varios registros en lista.  
3. Gráficos: muestra los datos de forma visual (gráficas de barras, líneas, etc.).    
[[Personalizar Vistas]] en Odoo se puede hacer:    
- Escribiendo XML (en Ajustes → Técnico → Interfaz de usuario → Vistas).  
- Modificando archivos XML en la carpeta de addons.  
- Después de cambiar una vista, actualiza la app para ver los cambios.  

En caso de hacerse desde un entorno gráfico, debemos activar el [[Modo Desarrollador de Odoo]], con activos para para incluir también vistas heredadas y campos ocultos.

En Odoo, los objetos están definidos en archivos XML y formados por campos.  
# Definición de campos
Cada campo se describe con **field** <field name="nombre_campo"/>.  
Hay campos especiales como one2many que representan relaciones de "uno a muchos" (ej.: una empresa tiene muchas direcciones).  
1. mode: tipo de vista (formulario, lista...).  
2. separator: línea divisoria con título en el formulario.  
3. notebook: organiza campos en pestañas.  
 
Además, los atributos de los campos (colspan, readonly, invisible, password, string) modifican su comportamiento o apariencia.  
# Menús
Ir a: Ajustes > Técnico > Interfaz de usuario > Elementos de Menú.  
Desde ahí puedes:  
- Editar menús existentes.  
- Crear nuevos menús.  
- Crear menús secundarios, indicando el menú padre.  
 
Tipos de acciones asociadas a los menús:  
- ir.actions.act_window ➔ Abre una vista (formulario, árbol, etc.) en una nueva ventana.  
- ir.actions.report ➔ Lanza la impresión de un informe.  
  
Al crear una acción debes definir:   
- Nombre de la acción.  
- Tipo de acción (por ejemplo, ir.actions.act_window).  
- Datos de la vista (tipo de vista y nombre de la vista).  
# Búsqueda de información  
Búsquedas **Básicas**: Permiten buscar por los campos principales de los registros.  
Búsquedas **Avanzadas**: Permiten afinar la búsqueda para localizar registros por campos más específicos.  

Características de la búsqueda en Odoo:  
1. Ubicación: La búsqueda está disponible en la parte superior de la ventana.  
2. Vista de tipo árbol: Los resultados se muestran en una vista de lista con los registros del objeto.  
3. Filtros: Se pueden aplicar filtros para refinar la búsqueda.  
4. Selección de registros: Al seleccionar un registro, se puede cambiar a la vista de formulario para ver y editar todos los detalles de dicho registro.  
5. Los informes y listados en una aplicación ERP son fundamentales para mostrar y analizar datos de manera efectiva. Estos permiten una visualización clara y estructurada de la información almacenada en el sistema.  
# Informes y listados de la aplicación
- Informes contables  
- Albaranes  
- Pedidos  
- Recibos  
- Reclamaciones a proveedores/clientes  
- Informes estadísticos  
- Generación de etiquetas para registros    
- Informes de agrupamiento: Permiten ver registros agrupados por el valor de un campo.  
- Impresión de documentos del sistema  
  
Estos informes pueden usarse tal como están disponibles en el sistema o adaptarse para que coincidan con la imagen corporativa de la empresa.
# Tratamiento de la información
Antes de usar una aplicación empresarial, es necesario introducir datos básicos de la compañía (clientes, proveedores, productos, cuentas contables, impuestos, etc.).  

En Odoo, al instalar el perfil mínimo, hay que asegurarse de que existen o introducir los datos esenciales: 
- Títulos (Empresa/Contacto)
- Funciones (cargos)
- Provincias
  
Estos datos se gestionan en Ajustes → Usuarios y Compañías → Compañías.  
# Cálculos en ERP
**[[SGE 2#Módulo de Gestión Contable y Financiera en un ERP|Contabilidad]]**: Registra operaciones económicas, costes y presupuestos, usando asientos predefinidos para facilitar la entrada de datos.  
**[[SGE 2#Módulo de Compras, Ventas y Almacén|Compras]]**: Crear pedidos, recibir bienes, gestionar facturas y registrar pagos a proveedores.  
**Ventas**: Crear pedidos de venta, gestionar entregas (albaranes), facturar y registrar cobros de clientes.  
**Trazabilidad**: Seguir el recorrido del producto desde su entrada hasta su salida.  
# Procedimientos almacenados de servidor
Se usan para automatizar tareas en respuesta a eventos (ej. enviar correos o registrar pedidos automáticamente).  
  
Hay dos formas principales:  
- [[Procedimientos almacenados]]: Programas guardados en la base de datos, ejecutados manualmente o mediante disparadores.  
- Eventos de servidor: Detectan acciones en la app y reaccionan automáticamente, creados desde los menús (no directamente en la base de datos).  
  
En PostgreSQL, los procedimientos se crean con CREATE FUNCTION y se ejecutan con SELECT nombre_funcion();.  

==Evento de servidor: Acción definida en la aplicación.==  
==Procedimiento almacenado: Programa almacenado en la base de datos.==  
# Extracción de datos en ERP-CRM y almacenes de datos
Métodos:  
- Herramientas ofimáticas conectadas directamente a la base de datos.  
- Business Intelligence (BI): transforma datos, genera indicadores y crea gráficos avanzados.  
 
Tipos de extracción:  
1. Consultas e informes: extracción desde una sola base de datos usando SQL o herramientas como Jasper Reports.  
2. Almacenes de datos: integran datos de múltiples sistemas y bases de datos.  
3. Cubos multidimensionales: organizan datos en varios ejes para análisis avanzado.  
  
Nota: A veces los datos no se actualizan en tiempo real para no afectar el rendimiento del sistema.  

El formato más usado es ==CSV== (datos separados por comas o punto y coma).  
# Importar y exportar datos
La herramienta de importación permite:  
- Seleccionar campos.
- Importar a una o varias tablas (con separadores).  

Para exportar: desde el objeto deseado → opción Exportar.  
  
En Odoo, exportar desde vista formulario permite acceder a más campos que desde la vista árbol.  
Monitorización y evaluación del rendimiento:  
# Evaluación del rendimiento
En servidores Linux se usa sar (incluido en el paquete sysstat) para medir rendimiento.  
`sudo apt-get install sysstat`

Ejemplo de uso:  
`sar 1 3` (toma 3 mediciones cada 1 segundo).  
  
Parámetros útiles de sar:   

	Procesador: sar -P ALL
	Memoria: sar -r
	Red: sar -n DEV
	Disco: sar -d
# Auditorías de control de acceso a los datos y logs:  
**Logs** = Archivos que registran actividad del sistema y programas.  
Ubicación habitual: /var/log (por ejemplo, syslog).  

Necesitas permisos de root o estar en un grupo autorizado para verlos.  
syslog: mensajes de sistema, demonios, cron, errores, etc.  
Para hacer que **sar** capture información periódica debemos editar el fichero `/etc/default/sysstat` y la línea que empieza por `ENABLED` ponerla con el valor `ENABLED="true"` 
Una vez hecho, reiniciamos el servidor de `sysstat`

Los datos se guardan en: ==/var/log/sysstat/saXX== (XX = día del mes).  

Herramienta gráfica para logs de sar: Isag (puedes instalarla vía Synaptic).  
Un demonio ("daemon") es un proceso que corre en segundo plano para ofrecer servicios.  
# Incidencias: identificación y resolución  
Los logs del sistema almacenan eventos y errores que ayudan a diagnosticar problemas.  
En Ubuntu, los logs se guardan en /var/log.  
  
Para ver la actividad de Odoo, por ejemplo, puedes usar:  
`sudo head /var/log/odoo/odoo-server.log`
