#flashcards/informatica

# Flashcards - Tema 12: Tipos abstractos, ED, Algoritmos, Ficheros, Formatos

## Tipos Abstractos y Estructuras de Datos

Diferencia entre TAD y Estructura de Datos::TAD especifica qué operaciones se pueden realizar (oculta el cómo); Estructura de Datos es la implementación concreta del TAD

Clasificación según contigüidad en memoria::Contiguas (arrays, registros) / Enlazadas (listas, árboles)

Clasificación según variabilidad de tamaño::Estáticas (tamaño fijo en compilación) / Dinámicas (crecen en ejecución)

Clasificación según homogeneidad::Homogéneas (array: mismo tipo) / Heterogéneas (registro: tipos distintos)

## Estructuras Lineales

Array (vector/matriz)::Elementos homogéneos en posiciones contiguas de memoria

Acceso a un elemento de array por índice::O(1) (directo)

Inserción/borrado en medio de un array::O(n) (hay que desplazar elementos)

Registro (struct/record)::Agrupación heterogénea, contigua y estática

Lista enlazada simple::Cada nodo (dato + puntero) apunta al siguiente; el último apunta a null

Lista enlazada doble::Cada nodo apunta al siguiente y al anterior

Lista circular::El último nodo apunta al primero

Acceso en lista enlazada::O(n) (secuencial)

Inserción/borrado en lista enlazada (conociendo el nodo)::O(1)

Pila (Stack) - política de acceso::LIFO (Last In, First Out)

Operaciones de la pila::Push (apilar), Pop (desapilar), Top (cima)

Usos de la pila::Recursividad (call stack), evaluación de expresiones, deshacer acciones

Cola (Queue) - política de acceso::FIFO (First In, First Out)

Operaciones de la cola::Enqueue (encolar), Dequeue (desencolar)

Usos de la cola::Planificación de procesos, spooling de impresión, búferes

## Estructuras No Lineales

Árbol binario::Cada nodo tiene máximo 2 hijos (izquierdo y derecho)

Recorrido Preorden::Raíz → subárbol izquierdo → subárbol derecho

Recorrido Inorden::Subárbol izquierdo → raíz → subárbol derecho

Recorrido Postorden::Subárbol izquierdo → subárbol derecho → raíz

Árbol Binario de Búsqueda (ABB)::Hijo izquierdo < raíz < hijo derecho

Complejidad de búsqueda en ABB balanceado::O(log n)

Árbol AVL::ABB autobalanceado; diferencia de altura entre subárboles ≤ 1

Árbol B::Varios hijos por nodo; usado en índices de SGBD. Minimiza accesos a disco

Grafo::Conjunto de vértices (nodos) y aristas (conexiones). Pueden ser dirigidos o no, ponderados o no

Matriz de adyacencia::Representación de grafo como tabla O(V²) de conexiones

Lista de adyacencia::Representación de grafo como lista de vecinos O(V+E)

## Algoritmos y Complejidad

Notación Big-O::O(1) constante, O(log n) logarítmica, O(n) lineal, O(n log n) quasilineal, O(n²) cuadrática

Búsqueda secuencial::O(n) - no requiere ordenación previa

Búsqueda binaria::O(log n) - requiere array ordenado

Burbuja (Bubble Sort) - estrategia::Compara elementos adyacentes y los intercambia si están desordenados

Burbuja - complejidad::O(n²) en todos los casos

QuickSort - estrategia::Divide y vencerás usando un pivote

QuickSort - complejidad promedio::O(n log n)

QuickSort - complejidad peor caso::O(n²) (cuando lista ya ordenada y mal pivote)

MergeSort - estrategia::Divide y vencerás por mezcla de mitades

MergeSort - complejidad::O(n log n) en todos los casos

MergeSort - desventaja::Requiere O(n) espacio adicional de memoria

Recursividad::Algoritmo que se llama a sí mismo con un caso más pequeño; necesita caso base

La recursividad usa internamente::La pila (call stack)

## Organización de Ficheros

Organización secuencial::Registros uno detrás de otro; para leer el N hay que leer los N-1 anteriores

Organización secuencial indexada (ISAM)::Registros secuenciales + archivo de índice (clave + puntero) para acceso directo

Organización directa (hash)::Función hash calcula dirección física a partir de la clave

Complejidad de acceso en organización hash::O(1) teórico

Problema de la organización hash::Colisiones (dos claves → misma dirección)

Resolución de colisiones hash::Exploración lineal (siguiente libre) o encadenamiento (lista en cada posición)

## Formatos de Información

XML bien formado - requisitos::Único elemento raíz, etiquetas cerradas, case-sensitive

XML vs HTML::XML transporta datos (sin presentación), HTML muestra datos

XML válido::Cumple un esquema (DTD o XSD)

JSON::Formato ligero con pares clave-valor en {} y arrays en []

JSON vs XML::JSON menos verboso, estándar en APIs REST

CSV::Cada línea es un registro, campos separados por comas; no soporta anidamiento
