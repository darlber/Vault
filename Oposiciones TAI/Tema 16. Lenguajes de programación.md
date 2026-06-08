> Lenguajes de programación. Representación de tipos de datos. Operadores. Instrucciones condicionales. Bucles y recursividad. Procedimientos, funciones y parámetros. Vectores y registros. Estructura de un programa.

## 1. Lenguajes de Programación

### Concepto
- **Lenguaje de programación**: conjunto de reglas sintácticas y semánticas que permiten escribir instrucciones que un ordenador puede interpretar y ejecutar.
- **Código fuente**: lenguaje en el que un programador escribe un programa.
- **Código máquina**: único lenguaje que entiende directamente el ordenador (código binario).

### Clasificación por nivel de abstracción
- **Lenguaje máquina**: código binario, directamente ejecutable por el hardware. Dependiente de la máquina.
- **Lenguaje ensamblador**: instrucciones simbólicas que se traducen a máquina (mnemotécnicos). Bajo nivel.
- **Lenguajes de alto nivel**: más cercanos al lenguaje humano (Java, Python, C++, etc.). Independientes de la máquina.
- **Lenguajes de medio nivel**: combinan características de alto y bajo nivel (C).

### Clasificación por forma de ejecución
- **Compilados**: el código fuente se traduce a código máquina antes de ejecutarse, generando un archivo ejecutable. Ej: C, C++, Ada, Fortran.
  - Se ejecutan **más rápidamente** que los interpretados.
- **Interpretados**: el código se traduce y ejecuta línea por línea por un intérprete. Ej: Python, JavaScript, PHP.
  - Se ejecutan **más lentamente** que los compilados.
- **Híbridos**: combinan compilación e interpretación. El código se compila a bytecode y luego se interpreta o compila JIT. Ej: Java (bytecode → JVM), C# (IL → CLR).

### Clasificación por paradigma de programación
- **Lenguajes imperativos**: describen *cómo* hacerlo mediante secuencias de instrucciones. Ej: C, Pascal, Fortran, Java.
- **Lenguajes declarativos**: describen *qué* se quiere obtener sin especificar el cómo. Ej: SQL, Prolog.
- **Lenguajes orientados a objetos**: organizan el código en objetos y clases. Ej: Java, C++, Python, C#.
- **Lenguajes funcionales**: basados en funciones matemáticas, evitando el estado mutable. Ej: Haskell, Erlang, Lisp.
- **Lenguajes lógicos**: basados en la lógica de predicados. Ej: Prolog.
- **Lenguajes de programación declarativa**: Prolog, Maude, SQL, Erlang, Haskell, Lisp (los lenguajes funcionales y lógicos son declarativos).

## 2. Representación de Tipos de Datos

### Concepto
- **Tipo de dato**: conjunto de valores que puede tomar una variable y las operaciones que se pueden realizar sobre ella.
- La declaración de tipos permite **reservar espacio en memoria** para los objetos del programa.

### Tipos de datos simples (primitivos)
| Tipo | Descripción | Ejemplo |
|---|---|---|
| **Numérico entero** | Números sin parte decimal | int, short, long, byte |
| **Numérico real** | Números con parte decimal | float, double |
| **Lógico/booleano** | Dos valores: verdadero/falso | boolean |
| **Carácter** | Un único carácter | char |
| **Cadena** | Secuencia de caracteres | String |

- El tipo booleano tiene **2 valores** (true/false).
- En Java, **NO** existe un tipo primitivo llamado "simple" (simple no es un tipo de dato primitivo).

### Tipos de datos estructurados (compuestos)
- **Arrays (vectores)**: colección de elementos del **mismo tipo** almacenados en posiciones contiguas de memoria. Acceso aleatorio **O(1)**.
- **Registros (structs/records)**: agrupación de elementos de **diferentes tipos** bajo un mismo nombre.
- **Cadenas de caracteres**: secuencia de caracteres.
- **Ficheros**: datos almacenados en dispositivos de almacenamiento secundario.
- **Listas, pilas, colas, árboles**: estructuras dinámicas.

### Clasificación por variabilidad
- **Estáticos**: el tamaño se define en **tiempo de compilación** y no puede cambiar en ejecución (ej: array de tamaño fijo).
- **Dinámicos**: el tamaño puede cambiar en **tiempo de ejecución** (ej: listas enlazadas, vectores dinámicos).

### Tipado
- **Tipado estático**: los tipos se verifican en compilación (Java, C, C++).
- **Tipado dinámico**: los tipos se verifican en ejecución (Python, JavaScript).

## 3. Operadores

### Operadores aritméticos
Realizan operaciones matemáticas: `+`, `-`, `*`, `/`, `%` (módulo/resto).
- `5 % 2` = **1** (resto de la división).

### Operadores relacionales (de comparación)
Comparan valores y devuelven un booleano: `==`, `!=`, `<`, `>`, `<=`, `>=`.
- `A = B` es un operador de **asignación** (no relacional).

### Operadores lógicos (booleanos)
Operan sobre valores booleanos: `&&` (AND), `||` (OR), `!` (NOT).
- `A && B` utiliza un **operador lógico**.

### Operador de asignación
Asigna un valor a una variable: `=`.
- `A = B` asigna el valor de B a A.

### Precedencia de operadores
Orden general de prioridad (de mayor a menor):
1. **Paréntesis** `()`
2. **Signo** (unario: `+`, `-`)
3. **Potencia** `^`
4. **Multiplicación, división, módulo** `*`, `/`, `%`
5. **Suma, resta** `+`, `-`
6. **Relacionales** `<`, `>`, `<=`, `>=`, `==`, `!=`
7. **Lógicos** `&&`, `||`
8. **Asignación** `=`

## 4. Instrucciones Condicionales

Permiten ejecutar un bloque de código dependiendo de una condición (expresión booleana).

### if-else
```java
if (condición) {
    // código si condición es true
} else {
    // código si condición es false
}
```
- Evalúa una **condición** y ejecuta un bloque u otro.

### switch
```java
switch (expresión) {
    case valor1: // código; break;
    case valor2: // código; break;
    default: // código;
}
```
- Permite evaluar **múltiples condiciones** (valores distintos) de forma más clara que múltiples if-else anidados.

## 5. Bucles y Recursividad

### Bucles (iteración)

**for**: se utiliza para iterar un **número conocido de veces**.
```java
for (inicialización; condición; actualización) {
    // código
}
```
- Todos los elementos (inicialización, condición, actualización) son **opcionales**.
- Si la condición se omite, se considera true (bucle infinito).

**while**: repite mientras se cumpla una condición. Puede ejecutarse **0 veces**.
```java
while (condición) {
    // código
}
```

**do-while**: similar a while, pero se garantiza que se ejecute **al menos una vez**.
```java
do {
    // código
} while (condición);
```

- Una solución iterativa termina cuando **se incumple la condición de continuación del bucle**.

### Recursividad
- Técnica de programación que permite que un **subprograma se llame a sí mismo**.
- Compuesta por: **caso base** (condición de terminación) y **caso recursivo** (llamada a sí mismo con un problema menor).
- Un algoritmo recursivo y uno iterativo tienen en común que **ambos terminan cuando la condición de continuidad es falsa**.
- Todo algoritmo recursivo puede implementarse de forma iterativa (y viceversa).
- Ventaja: código más elegante y conciso para problemas como árboles, factorial, Fibonacci.
- Desventaja: puede consumir más memoria (pila de llamadas) y ser menos eficiente.

## 6. Procedimientos, Funciones y Parámetros

### Procedimiento vs Función
| Característica | Procedimiento | Función |
|---|---|---|
| Devuelve valor | **No** | **Sí** |
| Objetivo | Realizar una acción específica | Calcular y devolver un valor |
| Uso | Como instrucción independiente | Como expresión (parte de una instrucción) |

### Definiciones
- **Procedimiento**: bloque de código que realiza una acción específica, no devuelve un valor.
- **Función**: bloque de código que realiza un cálculo y devuelve un valor.
- **Subprograma**: término general que engloba procedimientos y funciones.

### Parámetros
- **Parámetros formales**: variables que se definen en la **declaración** (cabecera) de un procedimiento o función. Actúan como placeholder para los valores que recibirá.
- **Parámetros actuales (argumentos)**: valores que se pasan al subprograma en la **llamada** o invocación.

### Paso de parámetros
- **Paso por valor**: se copia el valor del argumento en el parámetro formal. Los cambios dentro del subprograma **no afectan** al original.
- **Paso por referencia**: se pasa la dirección de memoria del argumento. Los cambios dentro del subprograma **afectan** al original (se comparte la variable).

## 7. Vectores y Registros

### Vectores (Arrays)
- **Vector (array)**: colección de elementos del **mismo tipo** almacenados de forma **secuencial** en memoria.
- **Acceso aleatorio**: se puede acceder directamente a cualquier elemento mediante su índice.
- Tamaño fijo en arrays estáticos; dinámico en colecciones como ArrayList.
- Los vectores **no** pueden contener diferentes tipos de datos (a diferencia de los registros).

### Registros (Structs/Records)
- **Registro**: estructura de datos que agrupa **diferentes tipos de datos** bajo un mismo nombre.
- Cada elemento del registro se llama **campo**.
- Ej: struct Persona { String nombre; int edad; }

### Diferencias clave
| Aspecto | Vector (Array) | Registro |
|---|---|---|
| Tipo de elementos | **Mismo tipo** | **Diferentes tipos** |
| Acceso | Por índice numérico | Por nombre del campo |
| Memoria | Contigua | Contigua |
| Representación | Secuencia homogénea | Agrupación heterogénea |

## 8. Estructura de un Programa

### Elementos comunes
1. **Directivas de preprocesador** / **Importaciones**: inclusión de librerías.
2. **Declaraciones globales**: constantes, variables globales, tipos.
3. **Función/procedimiento principal**: punto de entrada del programa (main).
4. **Funciones y procedimientos**: subprogramas definidos por el programador.
5. **Bloques de código**: delimitados por llaves `{}` (en lenguajes como C, Java).
6. **Comentarios**: anotaciones para documentar el código.

### Instrucciones
- **Instrucciones de declaración**: reservan espacio en memoria para objetos del programa (variables, constantes, tipos).
- **Instrucciones de asignación**: almacenan valores en variables.
- **Instrucciones de control**: condicionales y bucles.
- **Instrucciones de E/S**: entrada y salida de datos.
- **Instrucciones de llamada**: invocación de funciones y procedimientos.

### Fases de ejecución
1. **Edición**: escritura del código fuente.
2. **Compilación** (si procede): traducción a código máquina o bytecode.
3. **Enlazado** (linking): combinación de módulos objeto y librerías.
4. **Carga** (loading): el programa se carga en memoria.
5. **Ejecución**: la CPU ejecuta las instrucciones.
