#flashcards/informatica16

# Flashcards - Tema 16: Lenguajes de Programación

## Lenguajes de Programación

Lenguaje que entiende directamente el ordenador::Lenguaje máquina (código binario)

Código fuente::Lenguaje en el que un programador escribe un programa

Clasificación por nivel de abstracción::Máquina, ensamblador, alto nivel, medio nivel

Lenguaje compilado - ejecución::Se ejecuta más rápidamente que uno interpretado; el código fuente se traduce a código máquina antes de ejecutarse

Lenguaje interpretado - ejecución::Se ejecuta más lentamente que uno compilado; se traduce línea por línea

Ejemplos de lenguajes compilados::C, C++, Ada, Fortran, Go

Ejemplos de lenguajes interpretados::Python, JavaScript, PHP, Ruby

Paradigmas de programación (clasificación)::Imperativos y declarativos

Lenguajes de programación declarativa::Prolog, Maude, SQL, Erlang, Haskell, Lisp

Lenguajes imperativos (ejemplos)::C, Pascal, Fortran, Java

## Tipos de Datos

Tipo de dato::Conjunto de valores que puede tomar una variable; su declaración reserva espacio en memoria

Tipos de datos simples (primitivos)::Numérico entero, numérico real, lógico/booleano, carácter, cadena

Tipo booleano - cuántos valores::2 (verdadero/falso)

En Java, NO es tipo primitivo::Simple (no existe como tipo primitivo en Java)

Estructura de datos estática::Tamaño definido en tiempo de compilación, no puede cambiar en ejecución

Estructura de datos dinámica::Tamaño puede cambiar en tiempo de ejecución

Tipado estático::Los tipos se verifican en compilación (Java, C, C++)

Tipado dinámico::Los tipos se verifican en ejecución (Python, JavaScript)

## Operadores

Operador aritmético módulo::% (devuelve el resto de la división; ej: 5 % 2 = 1)

Operadores lógicos::&& (AND), || (OR), ! (NOT)

Operador de asignación::= (A = B asigna el valor de B a A)

Precedencia de operadores (orden)::Paréntesis, signo, potencia, multiplicación/división/módulo, suma/resta, relacionales, lógicos, asignación

## Instrucciones Condicionales

Estructura de control que ejecuta código según una condición::Condicional (if-else)

Estructura que evalúa múltiples condiciones::switch

## Bucles y Recursividad

Bucle para iterar un número conocido de veces::for

Bucle que se ejecuta al menos una vez::do-while

Bucle que puede ejecutarse 0 veces::while

En un bucle for, los elementos son::Todos opcionales (inicialización, condición, actualización)

Una solución iterativa termina cuando::Se incumple la condición de continuación del bucle

Recursividad::Técnica que permite que un subprograma se llame a sí mismo

Componentes de un algoritmo recursivo::Caso base (terminación) y caso recursivo (llamada a sí mismo)

Algoritmo recursivo vs iterativo - en común::Ambos terminan cuando la condición de continuidad es falsa

## Procedimientos, Funciones y Parámetros

Procedimiento::Bloque de código que realiza una acción específica; NO devuelve un valor

Función::Bloque de código que realiza un cálculo y devuelve un valor

Diferencia principal procedimiento vs función::Las funciones devuelven un valor, los procedimientos no

Parámetros formales::Variables que se definen en la declaración (cabecera) de un procedimiento o función

Parámetros actuales (argumentos)::Valores que se pasan al subprograma en la llamada

Paso de parámetros por valor::Se copia el valor; los cambios NO afectan al original

Paso de parámetros por referencia::Se pasa la dirección de memoria; los cambios SÍ afectan al original

## Vectores y Registros

Vector (array)::Colección de elementos del mismo tipo almacenados secuencialmente en memoria

Vector - tipo de acceso::Acceso aleatorio (por índice, O(1))

Registro (struct/record)::Estructura de datos que agrupa diferentes tipos de datos bajo un mismo nombre

Vector puede contener diferentes tipos::No, los vectores contienen elementos del mismo tipo

Registro puede contener diferentes tipos::Sí, los registros agrupan diferentes tipos de datos

## Estructura de un Programa

Elementos comunes de un programa::Directivas de preprocesador, declaraciones globales, función main, subprogramas, bloques, comentarios

Función de las instrucciones de declaración::Reservar espacio en memoria para objetos del programa

Fases de ejecución de un programa compilado::Edición, compilación, enlazado, carga, ejecución
