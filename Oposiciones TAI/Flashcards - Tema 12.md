#flashcards/informatica

# Flashcards - Tema 12: Tipos abstractos, ED, Algoritmos, Ficheros, Formatos

## Tipos Abstractos de Datos (TAD)

Diferencia entre TD, TAD y ED::TD = conjunto de valores; TAD = qué operaciones (oculta el cómo); ED = implementación concreta del TAD
<!--SR:!2026-06-09,3,250-->

Características del TAD::Encapsulamiento, define interfaz de operaciones, independencia de la representación
<!--SR:!2026-06-09,3,250-->

Qué NO es un TAD::No es tipo simple predefinido; no es su implementación; no depende del lenguaje
<!--SR:!2026-06-09,3,250-->

## Clasificación de Estructuras de Datos

Según contigüidad::Contiguas (arrays, registros) / Enlazadas (listas, árboles)
<!--SR:!2026-06-09,3,250-->

Según variabilidad de tamaño::Estáticas (tamaño fijo en compilación) / Dinámicas (crecen en ejecución)
<!--SR:!2026-06-10,4,270-->

Según homogeneidad::Homogéneas (array) / Heterogéneas (registro)
<!--SR:!2026-06-09,3,250-->

Según linealidad::Lineales (pilas, colas, listas) / No lineales (árboles, grafos)
<!--SR:!2026-06-10,4,270-->

## Estructuras Lineales

Array - característica principal::Elementos homogéneos en posiciones contiguas de memoria
<!--SR:!2026-06-10,4,270-->

Array - acceso por índice::O(1)
<!--SR:!2026-06-10,4,270-->

Array - inserción/borrado en medio::O(n)
<!--SR:!2026-06-10,4,270-->

Registro (struct/record)::Agrupación heterogénea, contigua y estática
<!--SR:!2026-06-09,3,250-->

Lista enlazada simple::Cada nodo apunta al siguiente; el último apunta a null
<!--SR:!2026-06-10,4,270-->

Lista enlazada doble::Cada nodo apunta al siguiente y al anterior
<!--SR:!2026-06-10,4,270-->

Lista circular::El último nodo apunta al primero
<!--SR:!2026-06-10,4,270-->

Lista enlazada - acceso::O(n) (secuencial)
<!--SR:!2026-06-09,3,250-->

Lista enlazada - inserción/borrado conociendo nodo::O(1)
<!--SR:!2026-06-10,4,270-->

Pila - política de acceso::LIFO (Last In, First Out)
<!--SR:!2026-06-10,4,270-->

Pila - operaciones::Push (apilar), Pop (desapilar), Top (cima)
<!--SR:!2026-06-10,4,270-->

Pila - usos::Recursividad (call stack), evaluación expresiones, deshacer
<!--SR:!2026-06-10,4,270-->

Cola - política de acceso::FIFO (First In, First Out)
<!--SR:!2026-06-10,4,270-->

Cola - operaciones::Enqueue (encolar), Dequeue (desencolar)
<!--SR:!2026-06-09,3,250-->

Cola - usos::Planificación procesos, spooling impresión, búferes
<!--SR:!2026-06-09,3,250-->

## Estructuras No Lineales

Árbol binario::Cada nodo tiene máximo 2 hijos
<!--SR:!2026-06-10,4,270-->

Recorrido Preorden::Raíz → izquierdo → derecho
<!--SR:!2026-06-09,3,250-->

Recorrido Inorden::Izquierdo → raíz → derecho
<!--SR:!2026-06-09,3,250-->

Recorrido Postorden::Izquierdo → derecho → raíz
<!--SR:!2026-06-10,4,270-->

ABB - propiedad::Hijo izquierdo < raíz < hijo derecho
<!--SR:!2026-06-09,3,250-->

ABB - complejidad búsqueda promedio::O(log n)
<!--SR:!2026-06-09,3,250-->

ABB - complejidad peor caso::O(n) (degenerado)
<!--SR:!2026-06-09,3,250-->

Árbol AVL::ABB autobalanceado; diferencia altura ≤ 1; garantiza O(log n)
<!--SR:!2026-06-07,1,230-->

Árbol B::Múltiples hijos por nodo; usado en índices SGBD
<!--SR:!2026-06-09,3,250-->

Árbol 2-3-4::Variante de árbol B (orden 4); nodos con 2, 3 o 4 hijos
<!--SR:!2026-06-10,4,270-->

Grafo::Vértices + aristas; dirigido/no dirigido; ponderado/no ponderado
<!--SR:!2026-06-09,3,250-->

Grafo - matriz de adyacencia::O(V²) espacio
<!--SR:!2026-06-07,1,230-->

Grafo - lista de adyacencia::O(V+E) espacio
<!--SR:!2026-06-09,3,250-->

## Algoritmos

Algoritmo - definición::Secuencia finita, ordenada y no ambigua de pasos
<!--SR:!2026-06-10,4,270-->

Instrucciones condicionales::if, switch - ejecutan según condición
<!--SR:!2026-06-10,4,270-->

Instrucciones iterativas (bucles)::for, while, do-while - repiten mientras condición se cumple
<!--SR:!2026-06-10,4,270-->

While es una instrucción::Iterativa (bucle)
<!--SR:!2026-06-10,4,270-->

## Notación Big-O

O(1)::Constante (acceso array por índice)
<!--SR:!2026-06-10,4,270-->

O(log n)::Logarítmica (búsqueda binaria)
<!--SR:!2026-06-09,3,250-->

O(n)::Lineal (búsqueda secuencial)
<!--SR:!2026-06-10,4,270-->

O(n log n)::Quasilineal (QuickSort promedio, MergeSort)
<!--SR:!2026-06-09,3,250-->

O(n²)::Cuadrática (Burbuja, Selección, Inserción)
<!--SR:!2026-06-09,3,250-->

## Recursividad

Recursividad::Algoritmo que se llama a sí mismo con caso más pequeño
<!--SR:!2026-06-10,4,270-->

Recursividad - requisitos::Caso base (terminación) y caso recursivo
<!--SR:!2026-06-09,3,250-->

Recursividad - estructura interna que usa::Pila (call stack)
<!--SR:!2026-06-09,3,250-->

## Búsqueda

Búsqueda secuencial - condición::Ninguna; complejidad O(n)
<!--SR:!2026-06-10,4,270-->

Búsqueda binaria - condición::Array ordenado; complejidad O(log n)
<!--SR:!2026-06-10,4,270-->

Búsqueda por interpolación::Array ordenado, distribución uniforme; O(log log n)
<!--SR:!2026-06-09,3,250-->

Búsqueda ciega (no informada)::Secuencial y binaria - solo comparan valores
<!--SR:!2026-06-09,3,250-->

Búsqueda informada::A*, búsqueda en haz, algoritmos genéticos - usan heurísticas
<!--SR:!2026-06-09,3,250-->

## Ordenación

Burbuja (Bubble Sort) - estrategia::Compara adyacentes e intercambia si están desordenados
<!--SR:!2026-06-10,4,270-->

Burbuja - complejidad::O(n²) en todos los casos
<!--SR:!2026-06-09,3,250-->

QuickSort - estrategia::Divide y vencerás con pivote
<!--SR:!2026-06-09,3,250-->

QuickSort - complejidad promedio::O(n log n)
<!--SR:!2026-06-09,3,250-->

QuickSort - complejidad peor caso::O(n²) (lista ordenada y mal pivote)
<!--SR:!2026-06-09,3,250-->

MergeSort - estrategia::Divide y vencerás por mezcla de mitades
<!--SR:!2026-06-10,4,270-->

MergeSort - complejidad::O(n log n) en todos los casos
<!--SR:!2026-06-09,3,250-->

MergeSort - desventaja::Requiere O(n) espacio extra
<!--SR:!2026-06-09,3,250-->

HeapSort::Montículo binario; O(n log n); in situ
<!--SR:!2026-06-07,1,230-->

## Grafos (algoritmos)

BFS::Anchura - camino más corto en grafos no ponderados
<!--SR:!2026-06-10,4,270-->

DFS::Profundidad - detecta ciclos, recorridos
<!--SR:!2026-06-10,4,270-->

Dijkstra::Camino más corto en grafos ponderados (sin pesos negativos)
<!--SR:!2026-06-10,4,270-->

Kruskal/Prim::Árbol de expansión mínima
<!--SR:!2026-06-09,3,250-->

## Organización de Ficheros

Fichero secuencial - característica::Registros uno detrás de otro; leer N requiere leer N-1 anteriores
<!--SR:!2026-06-10,4,270-->

Fichero secuencial - uso::Procesamiento batch, logs, nóminas
<!--SR:!2026-06-09,3,250-->

Fichero secuencial indexado (ISAM)::Registros secuenciales + índice (clave+puntero)
<!--SR:!2026-06-09,3,250-->

ISAM - complejidad búsqueda::O(log n) en índice + acceso directo
<!--SR:!2026-06-07,1,230-->

ISAM - ventaja::Combina acceso directo y secuencial
<!--SR:!2026-06-09,3,250-->

ISAM - inconveniente::Índice ocupa espacio extra
<!--SR:!2026-06-09,3,250-->

Fichero directo (hash)::Función hash calcula dirección física desde la clave
<!--SR:!2026-06-09,3,250-->

Hash - complejidad acceso::O(1) teórico
<!--SR:!2026-06-10,4,270-->

Hash - colisiones::Dos claves producen misma dirección
<!--SR:!2026-06-09,3,250-->

Resolución de colisiones hash::Exploración lineal o encadenamiento
<!--SR:!2026-06-09,3,250-->

## Métodos de Acceso

Acceso secuencial::Lectura principio a fin, registro por registro
<!--SR:!2026-06-10,4,270-->

Acceso directo (aleatorio)::seek() desplaza puntero a cualquier posición
<!--SR:!2026-06-09,3,250-->

## Formatos de Información

XML - bien formado exige::Único elemento raíz, etiquetas cerradas, case-sensitive
<!--SR:!2026-06-09,3,250-->

XML - válido::Cumple esquema (DTD o XSD)
<!--SR:!2026-06-10,4,270-->

XML vs HTML::XML transporta datos; HTML presenta datos
<!--SR:!2026-06-10,4,270-->

JSON - sintaxis correcta::Claves y strings con comillas dobles: {"clave": "valor"}
<!--SR:!2026-06-10,4,270-->

JSON - qué NO es válido::Comillas simples: {'clave': 'valor'} NO es válido
<!--SR:!2026-06-09,3,250-->

JSON - estándar en::APIs RESTful
<!--SR:!2026-06-10,4,270-->

CSV::Cada línea = registro; campos separados por comas; sin anidamiento
<!--SR:!2026-06-10,4,270-->
