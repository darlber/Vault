## Introducción
Los objetivos de los ERP son proporcionar una gestión integrada y flexible.
- **Integrada**, porque el resultado de un proceso conlleva el inicio de otro, todo ello bajo una base de datos común.
- **Flexible**, porque se basan en los flujos de trabajo de la empresa.

### Tipos de Licencia:  

- Copyleft: futuras versiones bajo misma licencia  
- GPL: Requiere que las modificaciones se liberen bajo GPL. Copyleft  
- LGPL: Permite usar en software propietario, con ciertas restricciones. Copyleft  
- MPL: Modificaciones deben ser públicas, permite código propietario. Copyleft suave.  
- BSD: Permisiva, permite uso y distribución en software propietario.  
  
El software libre reduce costes eliminando licencias. Se paga por servicios, no por el programa. No garantiza soporte inmediato, pero ofrece libertad y comunidad activa. Ejemplos: Odoo, Openbravo ERP.  
  
### Historia y ejemplos de ERPs libres:  

- Openbravo nació en la Universidad de Navarra y se volvió internacional, pero su versión actual es privativa.  
- Odoo (antes OpenERP), creado en Bélgica en 2005, es libre y modular, con base en Python y PostgreSQL.  
- Dolibarr, escrito en PHP, también es libre y modular, aunque con comunidad más pequeña.  
  
## Proceso instalación/configuración ERP:  

1. Diseño instalación: análisis necesidades  
2. Instalación equipos: hardware + servidores  
3. Instalación software: ERP + dependencias  
4. Configuración: adaptar a empresa  
5. Migración datos: traspaso info antigua  
6. Pruebas: verificar funcionamiento  
7. Documentación: manuales + difusión  
8. Formación: capacitar usuarios  
  
## Tipos de instalación ERP:  

- Máquina virtual: demo rápida, no válida para entornos de producción  
- Entorno gráfico: asistente fácil, versiones no actualizadas, quizás sirva en un entorno de producción, aunque no esté completamente actualizada la versión a instalar.
- Instalación personalizada: mayor control, vía comandos, + reciente. Apropiada para entornos de producción.
- Online (SaaS): sin instalar, acceso web  

> [!NOTE] Entornos de producción o entornos empresariales
> Hace referencia al conjunto de equipos, servidores y aplicaciones de una empresa real. ^256e5d

Modos de uso:  
	- Monopuesto: todo en un solo equipo → localhost  
	- Cliente/Servidor: cliente y servidor separados → IP servidor  
  
La instalación varía según el sistema (Windows/Linux). Se recomienda usar versiones recientes y activar repositorios.  
En  [[#^256e5d|entornos de producción]], usar sistemas con soporte extendido aunque sean menos recientes. Cuanto más tiempo podamos usar el sistema, mejor  
  
## Parámetros clave a configurar:  

- Conexión con servidor: Local, red local o remoto.  
- Acceso a base de datos: Ajustar credenciales y dirección del servidor de BBDD.  
- Idioma: Menús y elementos en el idioma deseado (se pueden instalar módulos de idioma).  
- Archivos de localización: Adaptación legal/fiscal al país (ej. contabilidad española).  
  
En [[#^256e5d|entornos empresariales]], las actualizaciones se deciden tras analizar los impactos en el funcionamiento y los datos de la empresa. Si no es posible una actualización automática, se realiza un traspaso de datos entre versiones, con un periodo de coexistencia de ambas.  

## Módulos

Módulo = función específica dentro del ERP (ventas, compras, almacén, contabilidad, etc.).  
  
Características clave:  
1. Se instalan/desinstalan fácilmente con asistentes.  
2. Se configuran para adaptarse al entorno real.  
3. Generan informes.  
4. Tienen niveles de seguridad.  
5. Están interconectados: los datos se comparten, no se duplican.  
6. Pueden personalizar menús y añadir comentarios.  Adaptables
  
En Odoo, el módulo base incluye:  
- Ajustes (configuraciones generales).  
- Aplicaciones (gestión e instalación de módulos).  
  
Módulos adicionales importantes:  
- Contabilidad y finanzas.  
- Compras, almacén, facturación.  
- Comercial y ventas.  
- RRHH y CRM.  
- Productos, inventario, proyectos, informes, estadísticas.  
- Solo se instalan si se necesitan.  
  
## Módulo de Gestión Contable y Financiera en un ERP:  

Automatiza y centraliza todas las operaciones contables.  
Está integrado con ventas, compras y otros módulos para evitar duplicidades y tener datos en tiempo real.  
Ejemplo: una factura se puede generar automáticamente desde un pedido o albarán.  
Puede bloquear a clientes morosos en todo el sistema.  
  
Funcionalidades principales:  
	1. Contabilidad general y analítica (costes).  
	2. Gestión de impuestos.  
	3. Presupuestos.  
	4. Facturación (clientes y proveedores).  
	5. Conciliación bancaria (extractos).  
	6. Informes contables.  

## Módulo de Compras, Ventas y Almacén

Compras  
	Gestiona toda la relación con proveedores:  
	Solicitudes de presupuesto, precios, pedidos.  
	Tarifas y entregas parciales.  
	Reclamaciones a proveedores.  
	Generación automática de pedidos.  
  
Ventas  
	Organiza el proceso de venta:  
	Pedidos de venta y su seguimiento.  
	Confirmación de envíos.  
	Definición de pagos y facturación.  
	Gestión de gastos de envío.  
	Albaranes (automáticos y parciales).  
  
Almacén  
	Control total del stock:  
	Varios almacenes.  
	Rotación de inventario y niveles de stock.  
	Traspasos entre almacenes.  
	Codificación y numeración de productos.  
	Compras a varios proveedores.  
  
## Módulo de Facturación  

Funciones clave:  
	Configuración de formas de cobro/pago (contado, transferencia, pagaré, giro…).  
	Facturación automática desde pedidos o albaranes.  
	Generación de efectos de cobro y pago.  
	Gestión de recibos, órdenes de pago y transferencias.  
	Importación de extractos bancarios.  
	Envío telemático de remesas al banco.  
	Gestión de cuentas bancarias (propias, clientes y proveedores).  
	Facturas automáticas → se generan en borrador desde otros módulos y luego se aprueban y envían.  
	
## Módulo de Gestión de Personal (RRHH) en un ERP:  

Gestión de empleados y nóminas  
Funciones clave:  
	Gestión de empleados, contratos y calendario de vacaciones.  
	Administración de beneficios y ausencias.  
	Seguimiento del rendimiento o producción.  
	Gestión de perfiles, roles y responsabilidades.  
	Remuneraciones y comisiones por ventas.  
  
🔧 En algunos casos, si el ERP no incluye un módulo de RRHH específico, se puede suplir con otros módulos como el contable o comercial.  
  
## Módulo de Gestión de Relaciones con el Cliente (CRM) en un ERP:  

Funciones principales:  
	1. Crear y gestionar fichas de clientes y sus datos.  
	2. Segmentación por criterios personalizados.  
	3. Gestión de clientes potenciales vs reales.  
	4. Registro de llamadas, reuniones, y seguimiento en calendario.  
	5. Seguimiento de campañas de marketing y acciones comerciales.  
	6. Enlace con otros procesos del ERP (facturas, pedidos, etc.).  
	7. Herramientas de productividad: email masivo, sincronización de contactos y calendario, editor de documentos, SMS, fax.  
	8. Estadísticas e informes.  

Los CRM más avanzados incluyen un portal web, para que clientes o proveedores puedan consultar datos relevantes directamente en el sistema.  

📦 Ejemplos de CRM libres: OroCRM, SuiteCRM, SugarCRM  
🔗 Odoo incluye su propio módulo CRM independiente.  

## Instalación y configuración de módulos en un ERP (Odoo):  
  
🌍 Módulo clave: Localización del país  
	Permite adaptar el ERP a las leyes y estándares locales.  
🔧 En el caso de España incluye:  
	Plan General Contable Español.  
	Módulo de impuestos (tipos de IVA, etc.).  
	Validaciones (CIF/NIF, cuentas bancarias…).  
	Datos maestros (provincias, etc.).  
	Traducción al español.  
  
### ¿Cómo se instala en Odoo?  
En la pantalla principal de configuración de [[Instalación de Odoo]], durante la creación de la base de datos, seleccionas el país.  
Esta selección activa automáticamente la instalación del módulo de localización correspondiente (como el de España).  
La instalación es asistida, generalmente desde los menús de la propia interfaz de Odoo.  
## Asistencia técnica remota en ERP-CRM

Usar soporte remoto: permite controlar el ordenador del cliente desde otra ubicación, como si estuvieras allí.  
Mediante programas cliente/servidor que usan el protocolo VNC (Virtual Network Computing):  
Servidor: el PC del cliente (a controlar).  
Cliente: el PC del técnico (desde donde se controla).  
  
🖥️ Ventajas:  
	Atención inmediata.  
	Ahorro de costes y tiempo.  
	Se puede modificar el ERP, instalar programas, etc., a distancia.  
	  
🔧 Ejemplos de software gratuito por sistema operativo:  
	Windows: RealVNC, UltraVNC, TightVNC  
	macOS: Vine Server (servidor), Chicken of the VNC (cliente)  
	Linux: VINO (servidor), RealVNC/TightVNC (cliente)  
  
✅ También útil para:  
	Apoyo en clase (profesor ↔ alumnos)  
	Conexión a tu PC desde casa o el trabajo  

## Instalación y configuración

Configuración del Sistema > Escritorio remoto.  
Elige si deseas que otros solo vean tu escritorio o también lo controlen.  
Configura una contraseña si deseas que se requiera para conectarse.  
Acceder al servidor desde otro equipo (cliente VNC):  
Ubuntu:
  
`sudo apt-get install vncviewer`  
  
Para conectarte, usa el comando:  
`vncviewer IP_servidor`
  
Windows -> UltraVNC
`Ip_Servidor:0
  - `Ip_Servidor` la dirección IP del ordenador remoto.
- `0` un número que indica la ventana en el que está el servidor remoto.
  
¿Cómo encontrar la IP del servidor?  
``comando ifconfig en Ubuntu o ipconfig en Windows
 
Después de iniciar sesión con la contraseña en el cliente VNC, aparecerá el escritorio del servidor y podrás controlarlo.  
  
Acceso al servidor sin entorno gráfico  
Si el servidor no tiene entorno gráfico (común en servidores Ubuntu), la conexión se realizará a través de [[SSH]] (Terminal remoto seguro)
  
Comando para instalar SSH Server en Ubuntu:  
  
``sudo apt-get install openssh-server  
  
– Instalación y configuración de asistencia remota VNC en servidores Windows  
  
🖥️ Acceder a un servidor Windows remotamente con UltraVNC  
Pasos para configurar el servidor VNC en Windows:  
  
### UltraVNC:  
  
Al instalar UltraVNC en Windows, se incluye el cliente y el servidor.
Para usar el servidor, se ejecuta desde Inicio > Programas > UltraVNC > UltraVNC server.
Aparecerá un icono azul junto al reloj indicando que está activo.
Es crucial configurar una contraseña de conexión.
Se puede acceder desde otro equipo usando un visor VNC (como vncviewer o UltraVNC viewer).
Para cerrar la conexión:
    En Ubuntu: Ctrl+C
    En Windows: Botón "Cerrar" de la ventana.
El firewall puede bloquear la conexión; se puede desactivar temporalmente como solución rápida.
Si los equipos están en redes distintas, se deben abrir los puertos 5900-5999 en el router.

Relación de herramientas y utilidad:  
Herramienta Utilidad  
iReport Crear y modificar informes.  
Gedit Creación de módulos UML.  
Dia Diseñador de informes JasperReport.  
OpenOffice Editor de programación.

