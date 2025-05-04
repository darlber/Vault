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
