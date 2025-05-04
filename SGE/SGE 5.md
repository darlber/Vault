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
```bash
sudo su postgres
```
2. Iniciar el monitor interactivo `psql`
```bash
psql
```

### 📋 Comandos útiles en `psql`

```bash
- `\h` → Ayuda.
    
- `\l` → Listar bases de datos.
    
- `\c [nombre_bd]` → Conectarse a una base de datos.
    
- `\d` → Ver tablas existentes.
    
- `\d [nombre_tabla]` → Ver estructura de una tabla.
    
- `VACUUM VERBOSE ANALYZE [tabla];` → Limpia y analiza la tabla para optimización.
    
- `\q` → Salir del monitor.
```

### 🖥️ **Sistemas batch inputs en SAP**
El **batch-input** es un método para transferir grandes cantidades de datos a un sistema ERP (SAP).

### 📂 **Métodos de batch-input**
1. **Método clásico**:  
   - Asíncrono.
   - Procesa datos y los actualiza después.
   - Genera un archivo de mensajes o log para tratar errores más tarde.

2. **Método "call transaction"**:  
   - On-line.
   - Síncrono.
   - Rápido, pero no genera log y no es útil para grandes cantidades de datos.

### 🏗️ **Fases del proceso batch-input**
1. **Fase de generación**:  
   - Se genera el archivo batch-input con los datos a introducir o modificar.
   
2. **Fase de procesamiento**:  
   - Se ejecuta el archivo batch-input y se realizan las modificaciones en la base de datos.

### 💻 **Lenguaje utilizado en sistemas ERP-CRM**

El **lenguaje de programación utilizado en Odoo** es **Python**, creado por Guido van Rossum en los años 90.

### 🧑‍💻 **Características de Python**
- Lenguaje sencillo con sintaxis cercana al lenguaje natural.
- Usado ampliamente en aplicaciones ERP y CRM.
- Es **orientado a objetos** y **de código abierto** (PSFL), compatible con **GPL**.
- Python es utilizado por grandes empresas como **Google**, **Yahoo**, **NASA**, y en **distribuciones Linux**.

### 🎓 **Historia y licenciamiento**
- Creado en el **Centro para las Matemáticas y la Informática (CWI)** en los Países Bajos.
- En 2001, se fundó la **Python Software Foundation (PSF)**, con patrocinadores como **Google**, **Canonical**, y **Microsoft**.

### 🤖 **Usos comunes**
- Muy popular para empezar a programar debido a su facilidad.
- Utilizado en una gran variedad de plataformas y tecnologías.

### 💡 **Curiosidad**
El nombre "Python" proviene de la afición de su creador por el grupo cómico inglés "Monty Python".

### 🐍 **Características de Python**
- **Sintaxis sencilla**: Facilita el aprendizaje rápido.
- **Lenguaje interpretado**: Se ejecuta mediante un intérprete, generando archivos `.pyc` o `.pyo`.
- **Tipado dinámico**: El tipo de las variables se determina en tiempo de ejecución.
- **Fuertemente tipado**: No se pueden asignar valores de un tipo diferente sin conversión explícita.
- **Multiplataforma**: Disponible en diversas plataformas como Linux, Windows y macOS.
- **Orientado a objetos**: Los programas están formados por clases y objetos, encapsulando datos y funciones.

### 👨‍💻 **Primer programa en Python**
- El famoso **"Hola Mundo"** se hace con:
```python
  print('Hola mundo')
```
### 🔧 **Características adicionales**

- **Comentarios**: Se escriben con el carácter `#`.
    
- **Asignación de valores**: Usando `=`.
    
- **Definir funciones**:
```python
def nombrefuncion(arg1, arg2):
    instrucción1
    instrucción2
```

### 📊 **Declaración de datos en Python**
En Python, no se declaran las variables antes de usarlas. Simplemente se asignan valores directamente. Los tipos básicos son:

1. **Números enteros** (`int` y `long`):
   - Representan números sin decimales, positivos o negativos.
   - Ejemplo:
```python
a = 2        # Número entero
a = 2L       # Número entero largo
```

2. **Números reales** (`float`):
   - Números con decimales.
   - Ejemplo:
```python
b = 2.0
```

3. **Números complejos**:
   - Tienen una parte real y una imaginaria.
   - Ejemplo:
```python
complejo = 2.0 + 7.5j
```

4. **Cadenas de texto** (`str`):
   - Texto entre comillas simples o dobles.
   - Ejemplo:
```python
mensaje = "Bienvenido a Python"
```

5. **Booleanos** (`bool`):
   - Solo pueden ser `True` o `False`.
   - Ejemplo:
```python
es_valido = True
```

### ➕ **Operadores importantes en Python**
- **Aritméticos**: 
  - Suma (`+`), resta (`-`), multiplicación (`*`), división (`/`), división entera (`//`), exponente (`**`), módulo (`%`).

- **Booleanos**: 
  - `and`, `or`, `not`.

- **Relacionales**:
  - Igual (`==`), distinto (`!=`), menor (`<`), mayor (`>`), menor o igual (`<=`), mayor o igual (`>=`).
### 🧠 **Estructuras de programación. Colecciones en Python**

Python tiene varias **colecciones** de datos, que son tipos avanzados que permiten almacenar múltiples elementos. Las colecciones más comunes son:

1. **Listas**:
   - Son colecciones ordenadas de datos, similares a los arrays o vectores en otros lenguajes.
   - Pueden contener elementos de cualquier tipo de dato.
   - Ejemplo:
```python
l = [3, True, "mi lista", [1, 2]]
a = l[0]  # a vale 3
b = l[3][1]  # b vale 2
```

2. **Tuplas**:
   - Son similares a las listas, pero son **inmutables** (no pueden modificarse después de su creación).
   - Se usan cuando se necesitan colecciones ligeras.
   - Los elementos van entre paréntesis `()`.
   - Ejemplo:
```python
t = ("hola", 2, False)
b = t[1]  # b vale 2
```

3. **Diccionarios**:
   - Son colecciones de **pares clave-valor**.
   - Se accede a los valores usando sus claves entre corchetes `[]`.
   - Ejemplo:
```python
d = { "Nombre": "Alberto", "Apellido": "Contador", "Victorias": [2007, 2008, 2009] }
x = d["Nombre"]  # x vale "Alberto"
x = d["Apellido"]  # x vale "Contador"
x = d["Victorias"][1]  # x vale 2008
```

### 🔄 **Mutabilidad**
- Las **listas** son **mutables**, es decir, podemos cambiar sus elementos después de su creación.
```python
l[0] = "Nuevo valor"
```

Las tuplas son inmutables y no permiten modificar sus elementos después de su creación.
```python
tupla = (1, 'hola', 3.0)
tupla[1] = 'adios'  # Esto causará un error
```

### 🧑‍💻 **Sentencias del lenguaje Python**

#### 1. **Estructura Condicional (if-else)**

La estructura condicional en Python se utiliza para ejecutar diferentes bloques de código según si una condición es **verdadera** o **falsa**.

- Sintaxis básica:
```python
if condicion:
# Código a ejecutar si la condición es verdadera
else:
# Código a ejecutar si la condición es falsa
```

#### 2. **Bucles (Loops)**

Los bucles permiten ejecutar un bloque de código repetidamente mientras se cumpla una condición.

##### a) **Bucle while**

El bucle `while` ejecuta un bloque de código mientras que la condición sea **verdadera**.
```python
num = 1
while num <= 10:
    print(num)
    num += 1
```


##### b) **Bucle for**

El bucle `for` se utiliza para recorrer secuencias como listas, tuplas o rangos.

```python
milista = ["Maria", "Pepe", "Juan"]
for elemento in milista:
    print(elemento)
```

### 🧑‍💻 **Llamadas a funciones en Python**

Una **función** es un conjunto de instrucciones que realiza una tarea específica y que puede devolver un valor. Las funciones permiten **reutilizar código**, dividir programas en partes más pequeñas y hacer el código más **organizado**, **legible** y fácil de depurar.

#### 1. **Definir una función**

Para definir una función en Python utilizamos la palabra clave `def`, seguida del nombre de la función y los parámetros entre paréntesis.

- Sintaxis básica:
```python
def nombre_funcion(parámetro1, parámetro2,...):
# Instrucciones de la función
```
#### **Funciones que devuelven valores**

Una función puede devolver un valor utilizando la palabra clave `return`. Esto permite que el resultado de la función sea utilizado en otras partes del programa.

- Ejemplo de función que devuelve el cuadrado:
```python
def cuadrado(numero):
return numero ** 2
```

### 🧑‍💻 **Clases y Objetos en Python**

En Python, los programas orientados a objetos están formados por **clases** y **objetos**. Las **clases** son plantillas para crear **objetos**, y un **objeto** es una instancia de una clase. Un objeto tiene **atributos** y **métodos** que definen sus características y comportamientos.

#### 1. **Definición de una clase**

Las clases se definen usando la palabra clave `class`, seguida del nombre de la clase y dos puntos. Dentro de la clase, los métodos y atributos se definen con sangrías.

- Ejemplo de una clase `Persona`:
```python
  class Persona:
      def __init__(self, nombre, edad):
          self.nombre = nombre
          self.edad = edad

      def mayordeedad(self):
          if self.edad > 18:
              print("Es mayor de edad")
          else:
              print("No es mayor de edad")
```

#### 2. **Método `__init__`**

El método `__init__` se usa para **inicializar** los atributos de un objeto cuando se crea una nueva instancia de la clase.

- **Self**: el primer argumento `self` se usa para referirse al objeto actual y acceder a sus atributos y métodos.
    

#### 3. **Creación de un objeto**

Para crear un objeto de una clase, usamos la clase y pasamos los parámetros necesarios a su constructor:
```python
empleado = Persona("Javier", 32)
```

#### 4. **Acceder a atributos y métodos**

Una vez que tenemos un objeto, podemos acceder a sus atributos y métodos con la sintaxis `objeto.atributo` y `objeto.método`.

- Ejemplo:

```python
print(empleado.nombre, "tiene", empleado.edad)
empleado.mayordeedad()
```
### 📦 **Módulos y Paquetes en Python**

Los **módulos** en Python son archivos con extensión `.py` que contienen definiciones y declaraciones de código. Nos permiten **organizar** y **reutilizar** el código de manera eficiente.

#### 1. **¿Por qué usar módulos?**

- **Facilitan el mantenimiento**: Al dividir el código en partes más pequeñas.
- **Reutilización de código**: Funciones y clases definidas en un módulo pueden ser utilizadas en varios programas.

#### 2. **Uso de módulos**

Cuando salimos del intérprete, cualquier código o variable definida desaparece. Para **conservar** los programas y hacerlos más fáciles de ejecutar y mantener, los guardamos en archivos `.py`.

#### 3. **Importar un módulo**

Para utilizar un módulo en otro archivo, usamos la instrucción `import`:

- Ejemplo:
```python
  import mi_modulo
```
#### 4. **Paquetes**

Un paquete es una colección de módulos organizados en un directorio. Puede contener submódulos y otros paquetes. Para importar módulos de un paquete, utilizamos la misma sintaxis `import` y hacemos referencia al nombre del paquete y submódulo.

- Ejemplo:

```python
  import paquete.submodulo
```

### 📚 **Librerías de Funciones (APIs) en Python**

Una **API** (Interfaz de Programación de Aplicaciones), o Biblioteca de Clases, es un conjunto de clases y funciones útiles que los programadores pueden usar en sus programas. Python proporciona una API estándar, cuyo código fuente está disponible de forma libre y es accesible desde el sitio web oficial de Python. Además, existen muchos módulos de terceros que se pueden descargar y utilizar.

#### 1. **Biblioteca Estándar de Python**

Algunos de los módulos más populares de la biblioteca estándar incluyen:

- **`os`**: Proporciona funciones para interactuar con el sistema operativo, como crear archivos, manipular directorios, leer/escribir archivos, manejar rutas, etc.
- **`sys`**: Permite acceder a información sobre el intérprete de Python, como parámetros del sistema, variables de entorno y más.
- **`datetime`**: Permite la manipulación de fechas y horas.
- **`math`**: Contiene funciones matemáticas comunes.

Estas librerías son esenciales para facilitar tareas cotidianas de programación y mejorar la eficiencia del código.

### 🗃 **Inserción, Modificación y Eliminación de Datos en Objetos (Módulos de Odoo)**

Para trabajar con módulos en Odoo y manipular datos en la base de datos, es necesario estructurar correctamente los archivos y directorios del módulo. A continuación se explica cómo crear un módulo básico que interactúe con la base de datos mediante inserción, modificación y eliminación de datos.

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

Juan ha comenzado a desarrollar módulos para un sistema ERP-CRM (como Odoo) y necesita un entorno más eficiente que el intérprete de Python. A medida que el código crece, usar un entorno de desarrollo (IDE) se vuelve fundamental para mejorar la productividad, facilitar la depuración y manejar mejor la sintaxis.

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

---

Estos entornos permiten a desarrolladores como Juan gestionar proyectos complejos en Odoo con mayor eficiencia y control, facilitando tanto la escritura de código como su organización y depuración.

## 🐞 Depuración de un Programa en Python

La **depuración** es un proceso clave en el desarrollo de software. Nos permite encontrar y corregir errores en el código, mejorando la fiabilidad del programa.

### 🔧 Herramientas de Depuración en Python

Python incluye una herramienta de depuración en su biblioteca estándar: `pdb`.

- **pdb** permite:
  - Añadir puntos de interrupción
  - Ejecutar paso a paso
  - Inspeccionar valores de variables
  - Salir de funciones o continuar la ejecución

### 🖥 Depuración en el Entorno IDLE

El entorno **IDLE** incluye un depurador gráfico integrado que facilita el proceso de depuración, ideal para quienes prefieren no trabajar en consola.

#### ✅ Activar el depurador en IDLE

- Ir a `Debug > Debugger` en el menú.
- Establecer puntos de parada con clic derecho sobre la línea deseada.
- Ejecutar el programa para que el depurador se detenga en ese punto.

#### 🔄 Funciones principales del depurador

| Acción | Descripción |
|--------|-------------|
| **Go** | Ejecuta el programa hasta el siguiente punto de ruptura |
| **Step** | Ejecuta el código línea a línea |
| **Over** | Ejecuta la línea actual sin entrar en funciones llamadas |
| **Out** | Ejecuta hasta salir de la función actual |
| **Quit** | Finaliza la ejecución del programa |

---

El uso de herramientas gráficas como el depurador de IDLE permite ahorrar tiempo y entender mejor el comportamiento del programa en tiempo real.

## ⚠️ Manejo de Errores en Python

Cuando se produce un fallo durante la ejecución de un programa, se genera una **excepción**. Si no se controla, el programa se interrumpe.

### 🧠 ¿Qué es una excepción?

Una **excepción** es un error detectado por el intérprete. Por ejemplo:

```python
def dividir(a, b): 
    return a / b

dividir(3, 0)
```
Este código lanzará:

```python
ZeroDivisionError: integer division or modulo by zero
```

### Captura de Excepciones con `try - except`

Para evitar que el programa se detenga abruptamente, usamos la estructura `try - except`:

```python
try:
    def dividir(a, b): 
        return a / b

    dividir(1, 0)

except:
    print("Ha ocurrido un error")
```
## 🧾 Formularios e Informes en Sistemas ERP-CRM (Odoo)

### 📄 Formularios: Interfaz del Módulo

En Odoo, los **formularios** permiten interactuar con los objetos definidos en el módulo. Para que un módulo sea funcional, además del modelo (`nombre_modulo.py`), es necesario crear:

- **Menús**
- **Acciones**
- **Vistas** (formulario y árbol)

Todo esto se describe en el archivo `nombre_modulo_view.xml`.

> ⚠️ Este archivo debe estar declarado en el `__manifest__.py` para que sea cargado por Odoo.

### 🛠 XML como herramienta de definición

El diseño de vistas se realiza en **XML**, que permite definir la estructura del formulario. María, por ejemplo, ha creado una **plantilla XML reutilizable** que incluye:

- Creación de menú
- Acción asociada
- Vista tipo formulario
- Vista tipo árbol

Luego solo necesita modificar los nombres para generar vistas nuevas.

### 📊 Informes en Odoo

Existen dos tipos principales de informes:

- **Estadísticos**: generados en pantalla con herramientas como `base_report_creator`, que permiten gráficos y listados.
- **Impresos**: generados con herramientas externas o integradas, utilizados para reportes físicos.

Ambos tipos son fundamentales para visualizar y exportar datos del sistema de forma útil y accesible.

## 🧩 Arquitectura de Formularios e Informes en Odoo

Los **formularios y vistas** en Odoo son generados dinámicamente a partir de archivos **XML**, los cuales describen cómo debe presentarse y comportarse la interfaz del cliente. Estos elementos están estructurados por medio de **etiquetas XML**, que definen acciones, vistas, menús y otras funcionalidades.

---

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

🧾 Ejemplo de vista de tipo formulario

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
```xml
<record model="ir.actions.act_window" id="action_agenda_form">
    <field name="res_model">agenda</field>
    <field name="domain">[]</field>
</record>
```

## 🛠️ TL;DR: Herramientas para la creación de formularios e informes en Odoo

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

