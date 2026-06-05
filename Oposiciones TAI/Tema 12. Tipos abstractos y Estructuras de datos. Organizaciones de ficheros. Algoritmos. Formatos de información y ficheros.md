> Tipos abstractos y Estructuras de datos. Organizaciones de ficheros. Algoritmos. Formatos de información y ficheros.

## 1. Tipos Abstractos de Datos (TAD)

### Definiciones clave
- **Tipo de Dato (TD)**: Conjunto de valores que puede tomar una variable (ej: entero, booleano).
- **Tipo Abstracto de Dato (TAD)**: Abstracción que especifica *qué* operaciones se pueden realizar sobre un conjunto de datos, ocultando *cómo* se implementan (encapsulamiento). Ej: TAD Pila (Push, Pop, Top) sin importar si se implementa con array o lista.
- **Estructura de Datos (ED)**: Implementación concreta de un TAD. Es la forma de organizar datos en memoria para manipularlos eficientemente.

### Clasificación de estructuras de datos

| Criterio | Tipos |
|---|---|
| Contigüidad en memoria | Contiguas (arrays, registros) / Enlazadas (listas, árboles) |
| Variabilidad de tamaño | Estáticas (array fijo) / Dinámicas (lista, árbol) |
| Homogeneidad | Homogéneas (array) / Heterogéneas (registro/struct) |
| Linealidad | Lineales (pilas, colas, listas) / No lineales (árboles, grafos) |

## 2. Estructuras de Datos Lineales

### Arrays (Vectores/Matrices)
- Colección de elementos homogéneos en posiciones **contiguas** de memoria.
- Acceso directo por índice: **O(1)**.
- Inserción/borrado en medio: **O(n)** por desplazamientos.
- Estáticos o dinámicos según el lenguaje.
- Un array multidimensional es una matriz.

### Registros (structs/records)
- Agrupación heterogénea, contigua y estática.
- Permiten anidamiento (un campo puede ser otro registro).

### Listas Enlazadas
- Secuencia de **nodos** (dato + puntero/s al siguiente/anterior).
- **Dinámicas**: crecen en ejecución.
- **Tipos**:
  - **Simple**: cada nodo apunta al siguiente; el último apunta a null.
  - **Doble**: cada nodo apunta al siguiente y al anterior.
  - **Circular**: el último apunta al primero.
- Acceso: **O(n)** (secuencial).
- Inserción/borrado: **O(1)** si se conoce el nodo.

### Pilas (Stacks)
- Política de acceso **LIFO** (Last In, First Out).
- Operaciones: **Push** (apilar), **Pop** (desapilar), **Top** (cima).
- Usos: recursividad (call stack), evaluación de expresiones, deshacer acciones.
- Push/Pop: **O(1)**.

### Colas (Queues)
- Política de acceso **FIFO** (First In, First Out).
- Operaciones: **Enqueue** (encolar), **Dequeue** (desencolar).
- Usos: planificación de procesos (SO), spooling de impresión, búferes.
- Enqueue/Dequeue: **O(1)**.
- **Cola circular**: eficiente, reusa posiciones.

## 3. Estructuras de Datos No Lineales

### Árboles
- Estructura jerárquica con **raíz** y **subárboles**.
- Términos: nodo raíz, nodo hoja, nodo padre/hijo, nivel, altura.

#### Árbol Binario
- Cada nodo tiene máximo **2 hijos** (izquierdo y derecho).
- **Recorridos**:
  - **Preorden**: raíz → izquierdo → derecho
  - **Inorden**: izquierdo → raíz → derecho (ordena ABB)
  - **Postorden**: izquierdo → derecho → raíz

#### Árbol Binario de Búsqueda (ABB)
- Hijo izquierdo < raíz < hijo derecho.
- Búsqueda/inserción/borrado: **O(log n)** en caso promedio, **O(n)** en peor caso (degenerado).

#### Árbol AVL
- ABB **autobalanceado**: diferencia de altura entre subárboles ≤ 1.
- Garantiza **O(log n)** en todas las operaciones.

#### Árbol B
- Generalización del ABB con múltiples hijos por nodo.
- Usado en índices de **SGBD** (discos).
- Minimiza accesos a disco.

### Grafos
- Conjunto de **vértices** (nodos) y **aristas** (conexiones).
- **Tipos**: dirigidos (dígrafos) / no dirigidos, ponderados / no ponderados.
- **Representación**: matriz de adyacencia (O(V²) espacio), lista de adyacencia (O(V+E) espacio).
- **Recorridos**: BFS (anchura), DFS (profundidad).
- Usos: redes de ordenadores, rutas, relaciones.

## 4. Algoritmos

### Concepto
Secuencia **finita, ordenada y no ambigua** de pasos para resolver un problema.

### Notación asintótica (Big-O)
- **O(1)**: constante (acceso a array por índice).
- **O(log n)**: logarítmica (búsqueda binaria).
- **O(n)**: lineal (búsqueda secuencial).
- **O(n log n)**: quasilineal (quicksort promedio, mergesort).
- **O(n²)**: cuadrática (burbuja, selección, inserción).
- **O(2ⁿ)**: exponencial (torres de Hanoi).

### Recursividad
- Un algoritmo que se llama a sí mismo con un caso más pequeño.
- Debe tener **caso base** (terminación) y **caso recursivo**.
- Ej: factorial, Fibonacci, búsqueda binaria, recorridos de árboles.
- Usa la **pila** (call stack) para gestionar llamadas.

### Algoritmos de Búsqueda

| Algoritmo | Condición | Complejidad promedio |
|---|---|---|
| **Secuencial/Lineal** | Ninguna | **O(n)** |
| **Binaria** | Array **ordenado** | **O(log n)** |
| **Por interpolación** | Array ordenado, distribución uniforme | O(log log n) |
| **A*** (informada) | Heurística | Variable |

### Algoritmos de Ordenación

| Algoritmo | Estrategia | Complejidad promedio | Peor caso | Extra |
|---|---|---|---|---|
| **Burbuja (Bubble Sort)** | Compara adyacentes e intercambia | **O(n²)** | O(n²) | Muy ineficiente |
| **Selección (Selection)** | Selecciona mínimo y lo coloca | **O(n²)** | O(n²) | Simple |
| **Inserción (Insertion)** | Inserta en posición correcta | **O(n²)** | O(n²) | Bueno para datos casi ordenados |
| **QuickSort** | Divide y vencerás (pivote) | **O(n log n)** | **O(n²)** | Más rápido en promedio |
| **MergeSort** | Divide y vencerás (mezcla) | **O(n log n)** | **O(n log n)** | Estable, requiere O(n) extra |
| **HeapSort** | Montículo binario | **O(n log n)** | O(n log n) | In situ |

### Algoritmos en Grafos
- **BFS** (anchura): encuentra camino más corto en no ponderados.
- **DFS** (profundidad): detecta ciclos, recorridos.
- **Dijkstra**: camino más corto en grafos ponderados (sin pesos negativos).
- **Kruskal/Prim**: árbol de expansión mínima.

## 5. Organización de Ficheros

### Conceptos
- Los ficheros almacenan datos en **memoria secundaria** (discos, SSD).
- La organización de ficheros determina cómo se localizan y acceden los registros.

### Tipos de Organización

#### Secuencial
- Los registros se almacenan **uno detrás de otro** físicamente.
- Para leer el registro N, hay que leer los N-1 anteriores.
- **Ventajas**: óptimo para procesamiento por lotes (batch) y accesos secuenciales.
- **Inconvenientes**: muy lento para acceso directo.
- **Ejemplo**: nóminas mensuales, logs.

#### Secuencial Indexada (ISAM)
- Los registros se almacenan secuencialmente, pero se añade un **índice** separado (clave + puntero).
- Permite acceso directo rápido mediante el índice y también acceso secuencial.
- **Ventajas**: combina acceso directo y secuencial.
- **Inconvenientes**: el índice ocupa espacio extra; inserciones pueden requerir reorganización.

#### Directa (Aleatoria o Hash)
- Se aplica una **función hash** a la clave del registro para calcular su dirección física.
- Acceso teóricamente **O(1)**.
- **Colisiones**: dos claves generan la misma dirección.
  - Resolución: **exploración lineal** (buscar siguiente posición libre), **encadenamiento** (lista enlazada en cada posición).
- **Ventajas**: acceso más rápido posible.
- **Inconvenientes**: desaprovechamiento de espacio, gestión de colisiones.

## 6. Formatos de Información y Ficheros

### XML (eXtensible Markup Language)
- Lenguaje de marcas del **W3C**, estándar para intercambio de datos.
- **Características**:
  - **Bien formado**: debe tener único elemento raíz, etiquetas cerradas, case-sensitive.
  - **Válido**: cumple un esquema (DTD o XML Schema / XSD).
  - Estructura jerárquica (etiquetas anidadas).
- **Usos**: configuración, intercambio entre sistemas, documentos (DOCX, ODF).
- Muy **verboso** frente a JSON.

### JSON (JavaScript Object Notation)
- Formato ligero basado en pares **clave-valor**.
- Sintaxis: objetos en **{}**, arrays en **[]**, separación por comas.
- **Estándar** en APIs RESTful.
- Menos verboso que XML, más fácil de parsear en JavaScript.
- No tiene atributos (a diferencia de XML), todo son pares clave-valor.

### CSV (Comma-Separated Values)
- Archivo de texto plano: cada línea = un registro, campos separados por comas.
- Muy usado para exportar/importar datos tabulares (hojas de cálculo, BBDD).
- No soporta estructuras anidadas ni metadatos.

## Preguntas tipo test resueltas (aparecidas en TAI C1)

**1. ¿Cuál de las siguientes estructuras de datos se rige por el principio LIFO?**
a) Cola   b) Lista circular   c) **Pila**   d) Árbol binario

**2. ¿Cuál es la complejidad del algoritmo de búsqueda binaria?**
a) O(1)   b) **O(log n)**   c) O(n)   d) O(n²)

**3. ¿Cuál es la complejidad del algoritmo de ordenación QuickSort en el peor caso?**
a) O(log n)   b) **O(n²)**   c) O(n log n)   d) O(1)

**4. ¿Qué característica es cierta sobre el algoritmo de la burbuja?**
a) Es de divide y vencerás   b) Usa un pivote   c) **Compara elementos adyacentes e intercambia**   d) Tiene O(n log n)

**5. ¿Cuál de las siguientes afirmaciones sobre XML es CORRECTA?**
a) Es insensible a mayúsculas   b) **Debe tener un único elemento raíz**   c) Las etiquetas no necesitan cerrarse   d) Está diseñado para presentación visual

**6. ¿Qué organización de ficheros calcula la dirección física mediante una función matemática?**
a) Secuencial   b) Secuencial indexada   c) **Directa (Hash)**   d) Relacional

**7. ¿Qué estructura de datos es más adecuada para implementar una cola de impresión?**
a) Pila   b) **Cola**   c) Árbol   d) Array

**8. ¿Qué algoritmo de ordenación garantiza complejidad O(n log n) incluso en el peor caso?**
a) Burbuja   b) QuickSort   c) **MergeSort**   d) Inserción

**9. ¿Cuál de los siguientes NO es un algoritmo de búsqueda informada?**
a) Búsqueda A*   b) **Búsqueda binaria**   c) Búsqueda en haz   d) Algoritmo genético

**10. ¿Qué estructura permite acceso directo a cualquier elemento en O(1)?**
a) Lista enlazada   b) **Array**   c) Árbol   d) Pila
