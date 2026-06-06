#flashcards/informatica

# Flashcards - Tema 12: Tipos abstractos, ED, Algoritmos, Ficheros, Formatos

## Tipos Abstractos de Datos (TAD)

Diferencia entre TD, TAD y ED::TD = conjunto de valores; TAD = qué operaciones (oculta el cómo); ED = implementación concreta del TAD

Características del TAD::Encapsulamiento, define interfaz de operaciones, independencia de la representación

Qué NO es un TAD::No es tipo simple predefinido; no es su implementación; no depende del lenguaje

## Clasificación de Estructuras de Datos

Según contigüidad::Contiguas (arrays, registros) / Enlazadas (listas, árboles)

Según variabilidad de tamaño::Estáticas (tamaño fijo en compilación) / Dinámicas (crecen en ejecución)

Según homogeneidad::Homogéneas (array) / Heterogéneas (registro)

Según linealidad::Lineales (pilas, colas, listas) / No lineales (árboles, grafos)

## Estructuras Lineales

Array - característica principal::Elementos homogéneos en posiciones contiguas de memoria

Array - acceso por índice::O(1)

Array - inserción/borrado en medio::O(n)

Registro (struct/record)::Agrupación heterogénea, contigua y estática

Lista enlazada simple::Cada nodo apunta al siguiente; el último apunta a null

Lista enlazada doble::Cada nodo apunta al siguiente y al anterior

Lista circular::El último nodo apunta al primero

Lista enlazada - acceso::O(n) (secuencial)

Lista enlazada - inserción/borrado conociendo nodo::O(1)

Pila - política de acceso::LIFO (Last In, First Out)

Pila - operaciones::Push (apilar), Pop (desapilar), Top (cima)

Pila - usos::Recursividad (call stack), evaluación expresiones, deshacer

Cola - política de acceso::FIFO (First In, First Out)

Cola - operaciones::Enqueue (encolar), Dequeue (desencolar)

Cola - usos::Planificación procesos, spooling impresión, búferes

## Estructuras No Lineales

Árbol binario::Cada nodo tiene máximo 2 hijos

Recorrido Preorden::Raíz → izquierdo → derecho

Recorrido Inorden::Izquierdo → raíz → derecho

Recorrido Postorden::Izquierdo → derecho → raíz

ABB - propiedad::Hijo izquierdo < raíz < hijo derecho

ABB - complejidad búsqueda promedio::O(log n)

ABB - complejidad peor caso::O(n) (degenerado)

Árbol AVL::ABB autobalanceado; diferencia altura ≤ 1; garantiza O(log n)

Árbol B::Múltiples hijos por nodo; usado en índices SGBD

Árbol 2-3-4::Variante de árbol B (orden 4); nodos con 2, 3 o 4 hijos

Grafo::Vértices + aristas; dirigido/no dirigido; ponderado/no ponderado

Grafo - matriz de adyacencia::O(V²) espacio

Grafo - lista de adyacencia::O(V+E) espacio

## Algoritmos

Algoritmo - definición::Secuencia finita, ordenada y no ambigua de pasos

Instrucciones condicionales::if, switch - ejecutan según condición

Instrucciones iterativas (bucles)::for, while, do-while - repiten mientras condición se cumple

While es una instrucción::Iterativa (bucle)

## Notación Big-O

O(1)::Constante (acceso array por índice)

O(log n)::Logarítmica (búsqueda binaria)

O(n)::Lineal (búsqueda secuencial)

O(n log n)::Quasilineal (QuickSort promedio, MergeSort)

O(n²)::Cuadrática (Burbuja, Selección, Inserción)

## Recursividad

Recursividad::Algoritmo que se llama a sí mismo con caso más pequeño

Recursividad - requisitos::Caso base (terminación) y caso recursivo

Recursividad - estructura interna que usa::Pila (call stack)

## Búsqueda

Búsqueda secuencial - condición::Ninguna; complejidad O(n)

Búsqueda binaria - condición::Array ordenado; complejidad O(log n)

Búsqueda por interpolación::Array ordenado, distribución uniforme; O(log log n)

Búsqueda ciega (no informada)::Secuencial y binaria - solo comparan valores

Búsqueda informada::A*, búsqueda en haz, algoritmos genéticos - usan heurísticas

## Ordenación

Burbuja (Bubble Sort) - estrategia::Compara adyacentes e intercambia si están desordenados

Burbuja - complejidad::O(n²) en todos los casos

QuickSort - estrategia::Divide y vencerás con pivote

QuickSort - complejidad promedio::O(n log n)

QuickSort - complejidad peor caso::O(n²) (lista ordenada y mal pivote)

MergeSort - estrategia::Divide y vencerás por mezcla de mitades

MergeSort - complejidad::O(n log n) en todos los casos

MergeSort - desventaja::Requiere O(n) espacio extra

HeapSort::Montículo binario; O(n log n); in situ

## Grafos (algoritmos)

BFS::Anchura - camino más corto en grafos no ponderados

DFS::Profundidad - detecta ciclos, recorridos

Dijkstra::Camino más corto en grafos ponderados (sin pesos negativos)

Kruskal/Prim::Árbol de expansión mínima

## Organización de Ficheros

Fichero secuencial - característica::Registros uno detrás de otro; leer N requiere leer N-1 anteriores

Fichero secuencial - uso::Procesamiento batch, logs, nóminas

Fichero secuencial indexado (ISAM)::Registros secuenciales + índice (clave+puntero)

ISAM - complejidad búsqueda::O(log n) en índice + acceso directo

ISAM - ventaja::Combina acceso directo y secuencial

ISAM - inconveniente::Índice ocupa espacio extra

Fichero directo (hash)::Función hash calcula dirección física desde la clave

Hash - complejidad acceso::O(1) teórico

Hash - colisiones::Dos claves producen misma dirección

Resolución de colisiones hash::Exploración lineal o encadenamiento

## Métodos de Acceso

Acceso secuencial::Lectura principio a fin, registro por registro

Acceso directo (aleatorio)::seek() desplaza puntero a cualquier posición

## Formatos de Información

XML - bien formado exige::Único elemento raíz, etiquetas cerradas, case-sensitive

XML - válido::Cumple esquema (DTD o XSD)

XML vs HTML::XML transporta datos; HTML presenta datos

JSON - sintaxis correcta::Claves y strings con comillas dobles: {"clave": "valor"}

JSON - qué NO es válido::Comillas simples: {'clave': 'valor'} NO es válido

JSON - estándar en::APIs RESTful

CSV::Cada línea = registro; campos separados por comas; sin anidamiento
