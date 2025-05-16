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
### 📁 **Estructura de un [[Módulos Odoo|módulo]]**
1. Carpeta en `addons/` con nombre del módulo
2. Archivos obligatorios:
    - `__init__.py` → inicia el módulo
    - `__manifest__.py` → metadatos del módulo
    - `nombre_modulo.py` → modelos/controladores (clases Python)
    - `nombre_modulo_nombre_objeto.xml` → vistas
3. Subcarpetas posibles:
    - `report/`, `wizard/`, `test/`
[[Personalizar Vistas]]
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
```bash
sudo su postgres
```
2. Iniciar el monitor interactivo `psql`
```sh
psql
```
### 📋 Comandos útiles en `psql`
- `\h` → Ayuda.
- `\l` → Listar bases de datos.
- `\c [nombre_bd]` → Conectarse a una base de datos.
- `\d` → Ver tablas existentes.
- `\d [nombre_tabla]` → Ver estructura de una tabla.
- `VACUUM VERBOSE ANALYZE [tabla];` → Limpia y analiza la tabla para optimización.
- `\q` → Salir del monitor.
### 🖥️ **Sistemas batch inputs en SAP**
El **batch-input** es un método para transferir grandes cantidades de datos a un sistema ERP (SAP).
### 📂 **Métodos de batch-input**
1. **Método clásico**:  
   - Asíncrono.
   - Procesa datos y los actualiza después.
   - Genera un archivo de mensajes o log para tratar errores más tarde.
1. **Método "call transaction"**:  
   - On-line.
   - Síncrono.
   - Rápido, pero no genera log y no es útil para grandes cantidades de datos.
### 🏗️ **Fases del proceso batch-input**
1. **Fase de generación**:  
   - Se genera el archivo batch-input con los datos a introducir o modificar.   
2. **Fase de procesamiento**:  
   - Se ejecuta el archivo batch-input y se realizan las modificaciones en la base de datos.
### 💻 **Lenguaje utilizado en sistemas ERP-CRM**
El **lenguaje de programación utilizado en Odoo** es [[Python]], creado por Guido van Rossum en los años 90.
### 🗃 **Inserción, Modificación y Eliminación de Datos en Objetos (Módulos de Odoo)**
Para trabajar con módulos en Odoo y manipular datos en la base de datos, es necesario estructurar correctamente los archivos y directorios del módulo. A continuación se explica cómo crear un módulo básico que interactúe con la base de datos mediante inserción, modificación y eliminación de datos
#### Estructura de un Módulo en Odoo
1. **Ruta de los módulos**: Los módulos se guardan en la carpeta **`addons`**. En una instalación estándar de Ubuntu, esta ruta suele ser `/usr/lib/python3/dist-packages/odoo/addons`.
2. **Archivos necesarios para el módulo**:
   - **`__init__.py`**: Este archivo convierte la carpeta en un paquete Python. Contiene los import de los archivos de código Python dentro del módulo.
   - **`__manifest__.py`**: Contiene la descripción del módulo en formato de diccionario Python, como el autor, la versión y las dependencias de otros módulos.
   - **`nombre_modulo.py`**: Este archivo define la clase que representará el modelo de datos, como una tabla en la base de datos, junto con su comportamiento y campos.
   - **`nombre_modulo_view.xml`**: Define la vista de los objetos creados por el módulo. Necesita conocimientos básicos de XML para su creación.
#### Ejemplo de Creación de un Módulo
En **`nombre_modulo.py`**, se crea una clase que define el modelo (tabla) y el comportamiento (métodos) de los objetos:
```python
class MiObjeto(models.Model):
    _name = 'mi.objeto'
    _description = 'Mi Objeto'
    
    nombre = fields.Char('Nombre', required=True)
    descripcion = fields.Text('Descripción')
```
En **`nombre_modulo_view.xml`**, se define la vista del objeto:
```xml
<odoo>
    <record id="view_mi_objeto_form" model="ir.ui.view">
        <field name="name">mi.objeto.form</field>
        <field name="model">mi.objeto</field>
        <field name="arch" type="xml">
            <form string="Mi Objeto">
                <field name="nombre"/>
                <field name="descripcion"/>
            </form>
        </field>
    </record>
</odoo>
```
#### Módulo `base_module_record`
Para crear módulos sin necesidad de escribir código, podemos usar el módulo **`base_module_record`**, que graba las acciones realizadas en la aplicación (similar a las macros en programas de oficina). Este módulo genera un archivo comprimido con la estructura del módulo, que luego se puede colocar en la carpeta `addons` para instalarlo como cualquier otro módulo.
## 🛠 Entornos y Herramientas de Desarrollo en Sistemas ERP-CRM (Caso práctico)
### 🔍 ¿Qué es un Entorno de Desarrollo?
Un **IDE** (Entorno de Desarrollo Integrado) es una aplicación que facilita la programación, al incluir:
- Editor de texto especializado
- Navegador de archivos
- Asistentes de compilación
- Herramientas de depuración
- Ejecución del código integrada
### 🧰 Opciones de Entornos para Python y Odoo
#### 1. **IDLE**
- Viene incluido con Python.
- Sencillo y funcional para proyectos pequeños.
- Permite revisar la sintaxis (`Run > Check Module`) y ejecutar el código (`Run > Run Module`).
- Disponible en la mayoría de plataformas, se puede instalar desde Synaptic en Ubuntu.
#### 2. **Gedit con plugin para Odoo**
- Editor de texto extendido con fragmentos de código específicos para Odoo.
- Mejora la productividad al insertar estructuras comunes sin necesidad de recordar toda la sintaxis.
- Ligero y fácil de usar.
#### 3. **Eclipse con soporte para Python**
- Entorno de desarrollo muy completo.
- Soporta programación en múltiples lenguajes.
- Puede extenderse con plantillas específicas para Odoo.
- Ideal para proyectos grandes o desarrollo colaborativo.
## 🐞 Depuración de un Programa en Python
La **depuración** es un proceso clave en el desarrollo de software. Nos permite encontrar y corregir errores en el código, mejorando la fiabilidad del programa.
## 🧾 Formularios e Informes en Sistemas ERP-CRM (Odoo)
### 📄 Formularios: Interfaz del Módulo
En Odoo, los **formularios** permiten interactuar con los objetos definidos en el módulo. Para que un módulo sea funcional, además del modelo (`nombre_modulo.py`), es necesario crear:
- **Menús**
- **Acciones**
- **Vistas** (formulario y árbol)
Todo esto se describe en el archivo `nombre_modulo_view.xml`.

> ⚠️ Este archivo debe estar declarado en el `__manifest__.py` para que sea cargado por Odoo.
### 🛠 XML como herramienta de definición
El diseño de vistas se realiza en **XML**, que permite definir la estructura del formulario. Por ejemplo, **plantilla XML reutilizable** que incluye:

- Creación de menú
- Acción asociada
- Vista tipo formulario
- Vista tipo árbol
### 📊 Informes en Odoo
Existen dos tipos principales de informes:

- **Estadísticos**: generados en pantalla con herramientas como `base_report_creator`, que permiten gráficos y listados.
- **Impresos**: generados con herramientas externas o integradas, utilizados para reportes físicos.
Ambos tipos son fundamentales para visualizar y exportar datos del sistema de forma útil y accesible.
## 🧩 Arquitectura de Formularios e Informes en Odoo
Los **formularios y vistas** en Odoo son generados dinámicamente a partir de archivos **XML**, los cuales describen cómo debe presentarse y comportarse la interfaz del cliente. Estos elementos están estructurados por medio de **etiquetas XML**, que definen acciones, vistas, menús y otras funcionalidades.
### 📁 Estructura del módulo: `__manifest__.py`
Este archivo especifica qué archivos XML deben cargarse al instalar el módulo:
```python
'data': [
    'templates.xml',
    'views/openacademy.xml',
],
```
### 📄 Vista XML típica (`openacademy.xml`)
#### ▶️ Acción (Window Action)
```xml
<record model="ir.actions.act_window" id="course_list_action">
    <field name="name">Courses</field>
    <field name="res_model">openacademy.course</field>
    <field name="view_mode">tree,form</field>
</record>
```
#### 📂 Menús
```xml
<menuitem id="main_openacademy_menu" name="Open Academy"/>
<menuitem id="openacademy_menu" name="Open Academy" parent="main_openacademy_menu"/>
<menuitem id="courses_menu" name="Courses" parent="openacademy_menu" action="course_list_action"/>
```
🧾 Ejemplo de vista de tipo formulario [[Personalizar Vistas#Otro ejemplo + formulario]]
```xml
<record model="ir.ui.view" id="view_agenda_form">
    <field name="name">agenda</field>
    <field name="model">agenda</field>
    <field name="type">form</field>
    <field name="priority" eval="5"/>
    <field name="arch" type="xml">
        <form string="Agenda">
            <field name="nombre" select="1"/>
            <field name="telefono" select="1"/>
        </form>
    </field>
</record>
```
### 📋 Menú y acción para acceder a la vista
```xml
<menuitem name="Agenda" id="menu_agenda_agenda_form"/>
<menuitem name="Agenda" id="menu_agenda_form" parent="agenda.menu_agenda_agenda_form" action="action_agenda_form"/>
```
#### Menús
[[Personalizar Vistas#Definición de un menú]]
```xml
<record model="ir.actions.act_window" id="action_agenda_form">
    <field name="res_model">agenda</field>
    <field name="domain">[]</field>
</record>
```
## 🛠️Herramientas para la creación de formularios e informes en Odoo
- **Formularios**:
  - Se crean en archivos XML (`nombre_modulo_view.xml`).
  - Definen vistas como formularios, árboles, menús, y acciones.
- **Informes**:
  - Varias herramientas disponibles:
    - `base_report_creator`:  
      Genera informes estadísticos y gráficos en pantalla.
    - Extensión de OpenOffice/LibreOffice para Odoo:  
      Permite diseñar informes visuales usando plantillas `.odt`.
    - **Jasper Reports**:  
      Librería avanzada que genera informes desde archivos `.jrxml` (XML).  
      Produce salidas en PDF, HTML, Excel, etc.

