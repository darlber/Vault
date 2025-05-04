# ERP: Elección e Implantación  
Selección del ERP:  
	→ Identificar procesos clave  
	→ Determinar tareas a automatizar  
	→ Elegir módulos adecuados  
  
Implantación:  
	→ Adaptaciones necesarias  
	→ Planificación estricta  
	
Puesta en marcha:  
	→ Instalación en entorno real  
	→ Resolver fallos iniciales  
  
Cierre del proyecto:  
	→ Revisión final del sistema  
  
Criterio de elección:  
	→ ERP debe ajustarse a procesos clave  
	→ Ej.: empresa telefónica → ERP con buen CRM  
  
SaaS (Software como Servicio):  
	→ Suscripción mensual  
	→ Incluye servidores, soporte y mantenimiento  
	→ Ideal para pequeñas empresas  
# Tipos de empresa y necesidades
PyMES:  
	→ Gestión de clientes, proveedores, productos, compras, ventas, almacén.  
Sector servicios:  
	→ Módulo de gestión por proyectos.  
Tiendas y restaurantes:  
	→ Punto de venta (TPV): interfaz táctil, categorías de productos, múltiples pedidos y pagos.  
Ayuntamientos:  
	→ Gestión de proyectos y contabilidad  
	→ Compras y stocks  
	→ RRHH  
	→ CRM + portales ciudadanos  
	→ Padrón municipal  
	→ Tasas municipales  
Venta telefónica:  
	→ CRM esencial → registra info de cada llamada  
# Tipos de módulos ERP:  
Módulo base:  
	→ Mínimo para funcionar  
Módulos precargados:  
	→ Instalables desde el sistema directamente  
Módulos no precargados:  
	→ Requieren carga manual previa  
Módulos especiales para España:  
	→ Archivos de localización española. Necesarios para:
		Ventas  
		Compras  
		Productos  
		Almacén  
		Contabilidad  
		Facturación  
		Plan contable  
# Análisis inicial  
Objetivo:  
→ Estudiar el funcionamiento actual de la empresa antes de elegir ERP. 
Áreas clave a analizar:  
	Compras  
	Ventas  
	Marketing / CRM  
	Logística  
	Recursos Humanos  

Aspectos a cubrir:  
Datos maestros:  
	→ ¿Qué datos necesita el ERP?  
Procesos de negocio:  
	→ Tareas por área  
	→ Herramientas actuales  
	→ ¿Se adaptan al ERP?  
Informes necesarios:  
	→ Estándar del ERP o personalizados  
Traspaso de información (crítico):  
	→ Migración automática o manual  
	→ Revisar estructura y campos necesarios  
	→ Asegurar datos completos en ERP  
Planificación del proyecto:  
	→ Gestión organizada desde el inicio hasta el final  

Resumen final:  
	→ Reflejar procesos actuales y futuros  
	→ Organizar implantación como proyecto empresarial estructurado  
  
Idea principal:  
	→ Tras el análisis inicial, se seleccionan e instalan los módulos necesarios.  
# Carga de módulos
Precargados:  
→ Ya están en el sistema → se instalan directamente  
(Ej.: base_report_creator)  
No precargados:  
→ Requieren descarga e instalación manual  

Instalación manual en Odoo:    
Descargar módulo desde la web de Odoo → sección Apps  
Filtrar por: categoría, pago, versión, nombre  
Descomprimir ZIP en carpeta addons  
`Windows: C:\Program Files (x86)\Odoo...\addons`
`Linux: /usr/lib/python3/dist-packages/odoo/addons`
Actualizar lista de apps en Odoo (menú Aplicaciones)  
# Implantación en la empresa
Adaptación del ERP según análisis previo  
[[SGE 2#Proceso instalación/configuración ERP]]

Riesgos comunes:  
	Retrasos en plazos  
	Superar presupuesto  
	Fallos funcionales  
	Eventos imprevistos  
  
Resistencia al cambio → clave del fracaso  
# Consultas necesarias  
  
Responsabilidad del proveedor ERP en implantación:  
	Diseño y adaptación del sistema  
	Puesta en marcha  
	Soporte final  
  
Importancia del análisis inicial:  
→ Proporciona requisitos clave para la implantación  
  
Consultas mínimas comunes a casi todas las empresas:  
	Datos de la empresa    
	Clientes  
	Proveedores  
	Productos  
	Almacén  
	Información de compras y ventas  
	Información financiera  
  
# Crear objetos
Paso previo:  
→ Estudiar qué datos se deben introducir.  
  
Opciones:  
	Añadir campos a objetos existentes  
	Crear objetos nuevos  
  
Usar bases de datos diferentes (una por empresa)  
Creación de base de datos:  
	→ Desde menú Base de Datos (antes de conectarse)  
Crear objetos en Odoo:  
	→ Menú: Ajustes > Técnicos > Estructura de la base > Objetos  
Datos a introducir:  
	Nombre del objeto (en app)  
	Nombre interno (en BBDD)  
	Lista de campos  
	Tipo de datos (texto, fecha, etc.)  
	Permisos de acceso (si no se asignan: acceso libre)  

Crear un objeto = crear una tabla en la BBDD  
# Creación de formularios personalizados
Formulario = interfaz para ver/introducir datos  
[[SGE 3#Formularios y Gráficos|Tipos de vistas]] en Odoo:  
	Formulario  
	Árbol (lista)  
	Gráficos  
  
Modificar [[Personalizar Vistas|vistas]] (2 formas):  
XML directamente:  
	→ Ajustes > Técnico > Interfaz de usuario > Vistas  
Administrador de vistas:  
	→ Ir al objeto → Menú contextual:  
	Personalizar > Gestionar Vistas  
  
# Informes y gráficos personalizados en Odoo  
  
Tipos de informes en Odoo:  
- Informes estadísticos:  
	Gráficos y datos dinámicos  
	Usan el módulo base_report_creator  
	Propósito: visualización en pantalla  
-  Documentos imprimibles:  
	Informes en PDF  
	Modificables con OpenOffice.org antes de imprimir
	
Crear documentos imprimibles (3 opciones):  
 1. Programación directa  
2. Herramientas ofimáticas:  
	Descargar informe → modificar → cargar al servidor  
3. Motor de informes gráfico:  
	Ejemplo: Jasper Reports  
	Exportar objeto → construir informe  
# Manejo de plantillas de documentos
Pasos para manejar plantillas:    
En OpenOffice.org, se activa el menú Odoo Report Designer y barra de herramientas.  
Funciones principales:    
	Conectar al servidor  
	Abrir informes existentes  
	Añadir campos nuevos  
	Crear nuevos informes  
	Enviar informes al servidor  
  
Flujo de trabajo:  
	Abrir informe:  
		Documento con texto estático y campos en gris  
	Modificar informe:  
		Añadir texto, cambiar formato, campos, colores, etc.  
	Enviar informe al servidor:  
		Se convierte automáticamente a RML  
Campos son sustituidos por sus valores al generar el informe  
	Convertir entre formatos:  
	Nuevo formato a antiguo:  
		Menú: Odoo Report Designer > Conversion Brackets → Fields  
	Antiguo a nuevo formato:  
		Menú: Odoo Report Designer > Conversion Fields → Brackets  
# Exportación de datos
RML (Report Markup Language):  
Descripción: Formato descriptor para la generación de documentos impresos, basado en XML similar al HTML. 

Estructura de un documento RML:  
Zona de plantilla. Etiqueta: `<pageTemplate>` 
	Define formato de páginas, contenidos comunes y espacios de documento.  

Zona de estilos  Etiqueta: `<style>` 
	Define estilos de elementos como colores y tipografías (por ejemplo, para tablas).  

Zona de documento. Etiqueta:`<story>`
	Contiene el contenido del documento.  
	

Pasos para exportar a RML:  
	Acceder al menú:
	Odoo Report Designer > Export to RML  
	Guardar archivo RML:  
	Ubicar en el directorio addons del servidor, dentro del directorio report del módulo correspondiente.  
# Traspaso de datos
Objetivo:  
Importar datos del sistema antiguo al nuevo ERP, garantizando la integridad y precisión de la información.  
  
Pasos clave del proceso:  
1. Unificar formato y contenido de los datos  
	Reunir información relacionada dispersa en varias aplicaciones en un único archivo.  
2. Eliminar duplicidad de datos  
	Identificar y eliminar datos repetidos.  
3. Mejorar codificación de la información  
	Corregir datos mal almacenados (ej. códigos postales mal guardados) para mejorar la calidad.  
4. Guardar datos en el formato de exportación  
	Preparar los datos para la importación (ej. CSV).  
5. Introducción de datos en tablas secundarias  
	Asegurar que las tablas secundarias estén completas antes de la importación.  
	Realizar proceso de importación  
6. Importar los datos al ERP.  

Formato CSV:  
Separadores de campo: ; (punto y coma).  
Separador de texto: " (comillas dobles).  
Primera fila: Nombres de los ==campos== deben coincidir con el idioma configurado en las preferencias.  
Revisar tablas secundarias:  Asegurarse de que las categorías o campos necesarios existan en las tablas (ej. res.partner.category).  
# Planificación de la implantación
Objetivo:  
Asegurar que la implantación del ERP se realice de manera organizada, con tareas detalladas, responsabilidades definidas y tiempos establecidos.  
Figuras clave en el proyecto:  
Dirección o Responsables de la empresa  
	Rol: Tomar decisiones clave, asegurando su implicación y compromiso en el proyecto.  
Jefe de Proyecto  
	Rol: Coordinador, validando y verificando las tareas del equipo, sirviendo de intermediario entre las diferentes partes.  
Responsable de Migración de Datos  
	Rol: Encargado de la migración de la información desde el sistema antiguo al ERP. Conoce ambos sistemas y las necesidades del nuevo.  
Equipo de Consultoría  
	Rol: Realiza el análisis de procesos y requisitos, propone soluciones, instala y configura el sistema, y forma a los usuarios.  
  
Etapas clave en la implantación [[SGE 2#Proceso instalación/configuración ERP]]:  
1. Análisis de procesos y enfoque de la solución  
Acción: Especificar las necesidades cubiertas por el ERP y los módulos requeridos. Identificar los procesos adicionales que necesitan personalización.  
2. Planificación del proyecto  
Acción: Estimar tiempos, costos y recursos necesarios para cada fase del proyecto.  
3. Fase de instalación  
Acción: Instalar el ERP, realizar el traspaso de datos, comenzar con la programación a medida y formar a los responsables de áreas.  
4. Fase de consultoría  
Acción: Formación de usuarios y ajuste de módulos a medida según las necesidades específicas de la empresa.  
5. Fase de pruebas  
Acción: Mantener el sistema antiguo en funcionamiento mientras se realizan pruebas exhaustivas con el nuevo ERP.  
6. Puesta en marcha  
Acción: Transición completa al nuevo ERP con todos los módulos funcionales.    
7. Revisión de funcionalidades y ajustes  
Acción: Revisar el funcionamiento del sistema y realizar ajustes en base al *feedback* de los usuarios.  
8. Finalización del proyecto  
Acción: Evaluar el éxito del proyecto, documentar lecciones aprendidas y formalizar la conclusión del proceso de implantación.  
# Configuración del sistema
Objetivo: Ajustar el ERP a las necesidades de la empresa, gestionando usuarios, permisos y accesos.  
Asignación de Usuarios y Permisos:  
	Crear usuarios según roles (administradores, ventas, finanzas, etc.).  
	Asignar permisos adecuados según las necesidades de cada rol.  
Pantallas de Bienvenida:  
	Personalizar pantallas para cada grupo de usuarios con funciones relevantes.  
Accesos a Tablas de la Base de Datos:  
	Definir qué tablas pueden consultar o modificar los usuarios (clientes, productos, ventas, inventarios, etc.).  
Ajustes Generales del Sistema:  
	Personalizar la apariencia del sistema y herramientas de análisis.  
Seguridad y Control de Accesos:  
	Establecer roles y permisos específicos para evitar accesos no autorizados.  
Seguridad: Evitar cambios no autorizados.   
Eficiencia: Cada usuario tiene acceso solo a lo que necesita.  
Personalización: El sistema se adapta a las necesidades de cada área.  
  
Conclusión: La correcta configuración asegura un uso eficiente, seguro y adecuado del ERP.  
# Control de acceso
Objetivo: Gestionar quién puede acceder y realizar acciones dentro del ERP.  
Usuarios y Grupos:  
	Usuarios: Cada persona con acceso al sistema.  
	Grupos: Colección de usuarios con permisos similares.  
Un usuario puede pertenecer a uno o más grupos.  
Crear grupos representativos de roles en la empresa (Ej. Departamento de Ventas).  
Permisos por grupo: Los grupos determinan los permisos de acceso a menús y tablas.  
  
Acceso a Menús y Objetos:  
Menús: Qué menús puede ver cada grupo.  
Objetos: Definir qué datos puede ver, crear, editar o eliminar cada grupo.  
Ejemplo: El grupo Responsable de Ventas tiene acceso a las comisiones de ventas además de lo que tiene el grupo Comercial.  
  
Control de Acceso por Objetos:  
Permite definir lo que un usuario puede hacer con los datos una vez accede a ellos.  
Permisos por objeto (CRUD):  
	Leer  
	Escribir  
	Crear  
	Eliminar  
Configuración:  
Gestionar usuarios: Menú Ajustes → Usuarios y compañías → Usuarios.  
Gestionar grupos: Menú Ajustes → Usuarios y compañías → Grupos.  
Definir permisos de acceso a objetos: Menú Ajustes → Técnicos → Seguridad → Permisos de acceso.  

Ventajas:  
- Seguridad: Control total sobre quién puede hacer qué en el sistema.  
- Facilidad de gestión: A través de grupos, se simplifica la asignación de permisos.  
- Adaptabilidad: Se ajusta a la estructura organizativa de la empresa.  
# Cambiar la Apariencia del Sistema
Odoo permite cambiar su apariencia y personalizar su interfaz con facilidad.  
Consideraciones antes de cambiar:  
Impacto en usuarios: Los cambios pueden requerir reentrenar a los usuarios.  

Actualización de documentación: Se debe actualizar la documentación interna si se cambian elementos visuales.  
Modificar Menús:  
  
Botón "Cambiar (Switch)": Permite editar el menú directamente en el cliente web.  

Recomendación: Antes de modificar un menú, duplicarlo para tener una copia de seguridad del original, por si se necesita revertir los cambios.  
  
# Realizar Copias de Seguridad
Importancia de las Copias de Seguridad:  

Es esencial programar copias periódicas para proteger los datos importantes de la organización.  
  
Proceso en Odoo:  
1. Instalación del Módulo Auto_Backup:  
2. Instalar el módulo auto_backup para habilitar las copias de seguridad programadas.  
3. Acción Planificada:  
	Después de instalar el módulo, se crea una acción planificada llamada Backup scheduler.  
	Esta acción debe ser activada para ejecutar las copias de seguridad automáticamente.  
	Indicar la hora, frecuencia y reintento de copias no realizadas.  
4. Configurar Bases de Datos para Copias:
- Acceder a Configuración/Personalización/Configure Backup.  
- Crear un registro para cada base de datos que se desea respaldar, especificando:  
	Nombre de la base de datos.  
	Servidor donde se encuentra.  
	Ubicación de la carpeta para la copia.  
# Puesta en Marcha y Finalización del Proyecto
Pruebas de Funcionamiento en Paralelo:  
Se operan ambos sistemas (nuevo y antiguo) al mismo tiempo para verificar que los resultados coinciden.  
- Ventajas: Permite identificar posibles desajustes sin riesgos de paralizar la actividad.  
- Desventajas: Requiere duplicar entradas de datos, lo que consume más tiempo y recursos.  
Bloqueo del Sistema Antiguo:  
Se detiene el antiguo sistema y se pone en marcha el nuevo ERP directamente.  
- Ventajas: No se requiere duplicación de tareas, pero si el sistema nuevo no ha sido probado adecuadamente, puede haber fallos.  
- Riesgo: Si las pruebas previas no son exhaustivas, puede haber problemas durante la transición.   
- 
La elección entre ambos métodos depende de la calidad de las pruebas realizadas.  
  
Si las pruebas son exhaustivas, se puede optar por el bloqueo del sistema antiguo (solo después de probarlo en un entorno de pruebas). Si no, se recomienda usar las pruebas paralelas durante la puesta en marcha del nuevo sistema en el entorno de producción.  
  
Finalización de la Implantación:  
1. Revisión final del sistema: Tras un tiempo prudencial desde la puesta en marcha, se realiza una revisión para asegurarse de que el proyecto se completó correctamente:  
2. Objetivos alcanzados: Confirmar que los objetivos iniciales del proyecto fueron cumplidos.  
3. Funcionamiento adecuado de los módulos: Verificar que todos los módulos del ERP funcionan correctamente.  
4. Formación de los usuarios: Comprobar que los usuarios están adecuadamente formados para operar el sistema.  
5. Cumplimiento del presupuesto: Evaluar si el presupuesto original se ha mantenido o si hubo desviaciones.  
6. Rendimiento del sistema: Asegurarse de que no haya errores, sobrecargas o caídas inesperadas del sistema.  
  
# Factores de Éxito de la Implantación de un ERP 
Factores Clave para el Éxito:  
	Liderazgo claro y comprometido.  
	Definición precisa de los objetivos.  
	Dotación de Medios Adecuada:  
		Recursos humanos, técnicos y financieros suficientes  
		Implicación y Compromiso de Toda la Organización
		Involucrar a todos los departamentos y usuarios desde el principio.  

Causas Comunes de Fracaso en la Implantación de un ERP:  
	Falta de Liderazgo del Equipo Directivo:  
	Objetivos poco claros.    
	Falta de compromiso para implementar el cambio.  
	Resistencia al Cambio:  
		Desconfianza hacia los consultores externos.  
	Poca o mala formación de los usuarios.  
	Habituación de los empleados a la antigua forma de trabajo.  
	Consultores Inexpertos:  
		Falta de experiencia y formación en la implantación de ERP.  
	ERP Poco Flexible:  
		Dificultad en la configuración y modificaciones.  
	Interfaz Poco Amigable:  
		Dificultad de los usuarios para adaptarse a la nueva herramienta.  
	Funcionalidades No Cubiertas por el ERP:  
		El ERP no cubre todas las necesidades funcionales inicialmente atribuidas.  
	Falta de Recursos y Capacidad del Proyecto:  
		Insuficientes recursos humanos o técnicos.  
	Falta de tiempo para dedicar al proyecto.  
	
Soluciones para Evitar el Fracaso:  
	Identificación de Puntos Críticos:  
		Analizar los problemas desde el principio y abordarlos de manera prioritaria.  
	Concienciación y Colaboración:  
		Asegurar que todos los usuarios comprendan que la implantación no es un proceso trivial y que su participación es esencial.  
		Invertir en formación adecuada para todos los empleados involucrados.