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

