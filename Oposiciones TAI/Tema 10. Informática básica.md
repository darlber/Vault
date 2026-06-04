>Informática básica. Representación y comunicación de la información: elementos constitutivos de un sistema de información. Características y funciones. Arquitectura de ordenadores. Componentes internos de los equipos microinformáticos.
# 1. Concepto de dato e información
### Dato
Representación simbólica (numérica, alfabética, etc.) de un atributo o variable cuantitativa o cualitativa. Describe hechos empíricos, sucesos y entidades.
Los datos son la mínima unidad semántica y se corresponden con elementos primarios de información que, por sí solos, son irrelevantes (pueden no contener información relevante).
También se pueden considerar un conjunto discreto de valores que no explican el porqué de las cosas ni orientan la acción.
Pueden provenir de fuentes externas o internas a la organización, y ser de carácter objetivo o subjetivo, así como cualitativo o cuantitativo.
### Información
Tras procesar los datos, se obtiene información que aporta hechos relevantes para el usuario.
## 1.2 Clasificación de datos
Aunque clasificar los datos puede llegar a ser un concepto subjetivo, existen algunas clasificaciones ampliamente aceptadas por ser las más comunes.
### Según el sistema de información
- **Datos de entrada**: datos necesarios para el procesamiento y la obtención de información. Son suministrados por periféricos de entrada (teclado, discos, escáner, etc.).
- **Datos intermedios**: se obtienen tras procesar los datos de entrada. No son facilitados al usuario; simplemente son utilizados por las aplicaciones para completar los procesos.
- **Datos de salida**: son los datos mostrados al usuario, agrupados, ordenados y convertidos en información relevante. Son suministrados por los periféricos de salida (monitor, impresora, etc.).
### Según la variación
- **Fijos**: datos cuyo valor no cambia durante todo el procesamiento. En programación se denominan **constantes**.
- **Variables**: permiten almacenar distintos valores a lo largo del procesamiento de los datos.
### Según la información que almacenan
- **Datos numéricos**
- **Datos alfabéticos**
- **Datos alfanuméricos** (aúnan letras y números)
### 1.3 Tipos de datos
Los tipos de datos se clasifican según la naturaleza de la información que almacenan:
- **Numéricos enteros** (integer): números sin parte decimal (ej. 42, -7, 0).
- **Numéricos reales o coma flotante** (float/double): números con parte decimal (ej. 6,21; -3,14). Se representan según el estándar IEEE 754.
- **Booleanos** (bool): valores lógicos Verdadero/Falso. Se usan en condiciones y operaciones lógicas (AND, OR, NOT).
- **Carácter** (char): símbolo único (letra, dígito, signo). Se codifica mediante ASCII o Unicode.
- **Cadena** (string): secuencia de caracteres que forman texto.
### Información
Se puede entender como información a un conjunto de datos significativos (contienen información relevante, propósito y contexto), que contienen símbolos reconocibles y están completos, expresando una idea sin ambigüedad.
La información debe cumplir lo siguiente:
- **Integridad**: todos los datos necesarios están disponibles.
- **Inequívoca**: no genera dudas sobre su significado.
Desglosado de otra forma, el conjunto de características que debe cumplir la información para que sea útil es el siguiente:
- Relevante.
- Precisa.
- Completa.
- Adecuada.
**Información = Datos + Contexto (añadir valor) + Utilidad (disminuir la incertidumbre)**
# 2. Sistema de información
Un sistema de información es un conjunto de elementos (aplicaciones, maquinaria, usuarios, procedimientos, etc.) diseñado para el tratamiento de información, de manera que esta quede disponible de forma eficiente para su uso posterior.

En informática, los sistemas de información ayudan a administrar, recolectar, recuperar, procesar, almacenar y distribuir información relevante para los procesos fundamentales y las particularidades de cada organización.

La importancia de un sistema de información radica en la eficiencia en la correlación de una gran cantidad de datos ingresados a través de procesos diseñados para cada área, con el objetivo de producir información válida para la posterior toma de decisiones.

Un sistema de información se destaca por su diseño, facilidad de uso, flexibilidad, mantenimiento automático de los registros, apoyo en la toma de decisiones críticas y mantenimiento del anonimato en informaciones irrelevantes.

Habitualmente, el término «sistema de información» se usa de manera errónea como sinónimo de sistema de información informático, en parte porque en la mayoría de los casos los recursos materiales de un sistema de información están constituidos casi en su totalidad por sistemas informáticos.

Estrictamente hablando, un sistema de información no tiene por qué disponer de dichos recursos (aunque en la práctica esto no suele ocurrir).

Se podría decir entonces que los sistemas de información informáticos son una subclase o un subconjunto de los sistemas de información en general.
## 2.1 Componentes básicos de un sistema de información
Los sistemas de información son una combinación de tres partes principales: las personas, los procesos de negocio y los equipos de tecnologías de la información.
- **Hardware**: tecnología de almacenamiento, comunicaciones, entrada y salida de datos.
- **Software**: conjunto de aplicaciones destinadas a recoger los datos, almacenarlos, procesarlos y analizarlos, generando conocimiento para el usuario final.
- **Datos**: porciones de información donde reside todo el valor.
- **Procedimientos**: políticas y reglas de negocio aplicables a los procesos de la organización.
- **Usuarios**: interactúan con la información extraída de los datos, constituyendo el componente decisivo para el éxito o el fracaso de cualquier iniciativa empresarial.
- **Retroalimentación**: elemento clave de cualquier sistema de información, al ser la base para la mejora continua.
- **Red**: permite compartir recursos entre computadoras y dispositivos.
## 2.2 Características de un sistema de información
Para que un sistema de información pueda ser considerado como tal, debe cumplir una serie de características básicas:
- Disponibilidad de la información cuando se precise y por el medio requerido.
- Selección adecuada de la información mostrada, evitando la información irrelevante.
- Adaptación y personalización de la forma de presentar la información.
- Generación de relaciones entre contenidos.
- Tiempos de respuesta adecuados.
- Exactitud de los datos mostrados.
- Flexibilidad del sistema para adaptarlo a diferentes necesidades.
- Fiabilidad del sistema.
- Seguridad ante accesos a información restringida.
- Realización periódica de copias de seguridad de la información.
## 2.3 Elementos de un sistema de información
Una primera clasificación de los elementos que componen un sistema de información podría ser la que expresa la figura siguiente, en la que se muestra un sistema estándar.
![](attachments/{77FC245A-ED22-4BE7-9795-3588A8C903BE}.png)
- **Base de datos**: es donde se almacena toda la información necesaria para la toma de decisiones. La información se organiza en registros específicos e identificables.
- **Transacciones**: corresponden a todos los elementos de interfaz que permiten al usuario consultar, agregar, modificar o eliminar un registro específico de información.
- **Informes**: corresponden a todos los elementos de interfaz mediante los cuales el usuario puede obtener uno o más registros y/o información de tipo estadístico (contar, sumar), de acuerdo con criterios de búsqueda y selección definidos.
- **Procesos**: corresponden a todos aquellos elementos que, de acuerdo con una lógica predefinida, obtienen información de la base de datos y generan nuevos registros de información. Los procesos solo son controlados por el usuario.
- **Usuario**: identifica a todas las personas que interactúan con el sistema. Esto incluye desde el máximo nivel ejecutivo que recibe los informes de estadísticas procesadas hasta el usuario operativo que se encarga de recolectar e introducir la información en el sistema.
- **Procedimientos administrativos**: corresponden al conjunto de reglas y políticas de la organización que rigen el comportamiento de los usuarios frente al sistema. Particularmente, deben asegurar que nunca, bajo ninguna circunstancia, un usuario tenga acceso directo a la base de datos.
Los sistemas de información están construidos de forma modular, de manera que cada módulo se encarga de realizar una tarea concreta.
Esto permite que cada módulo pueda evolucionar de forma independiente sin afectar al resto de módulos del sistema.
Los módulos que componen el sistema deben respetar las características descritas en el punto anterior.
Se describen a continuación los distintos módulos y las funciones que realiza cada uno de ellos:
- **Módulo de definición del SI**: define la estructura de la(s) base(s) de datos y los formatos de documentos que se van a utilizar.
- **Módulo de entrada**: desarrolla los elementos necesarios para dotar al SI de mecanismos de entrada adecuados a la información que se va a tratar.
- **Módulo de análisis**: una vez que se dispone de los datos, este módulo se encarga de aplicar los distintos algoritmos para procesarlos y obtener la información.
- **Módulo de búsqueda de información**: las distintas fuentes de información del sistema son gestionadas por este módulo para que las búsquedas puedan realizarse de manera coordinada y sencilla para el usuario.
- **Módulo de difusión de la información**: encargado de las notificaciones de información relevante a los usuarios.
- **Módulo de evaluación del SI**: se encarga de recopilar estadísticas y opiniones sobre el SI, de cara a posibles mejoras del mismo.
## 2.4 Funciones de un sistema de información
La función principal es ofrecer información relevante, eliminando los datos superfluos.
Esta información debe ofrecerse filtrada y ordenada, de manera que se puedan realizar búsquedas de forma sencilla y eficiente.
Se distinguen cuatro funciones consideradas básicas:
- **Entrada**
- **Almacenamiento**
- **Procesamiento**
- **Salida de información**
### Entrada de información
Proceso mediante el cual el sistema de información toma los datos que requiere para procesar la información.
Las entradas pueden ser manuales o automáticas.
Las manuales son aquellas que se proporcionan de forma directa por el usuario, mientras que las automáticas son datos o información que provienen o son tomados de otros sistemas o módulos.
Esto último se denomina **interfaces automáticas**.
### Almacenamiento de información
El almacenamiento es una de las actividades o capacidades más importantes que tiene un sistema de información, ya que, a través de esta propiedad, el sistema puede recordar la información guardada en la sección o proceso anterior.
### Procesamiento de información
Es la capacidad del sistema de información para efectuar cálculos de acuerdo con una secuencia de operaciones preestablecida.
Estos cálculos pueden efectuarse con datos introducidos recientemente en el sistema o bien con datos que ya están almacenados.
Esta característica permite la transformación de datos fuente en información que puede ser utilizada para la toma de decisiones, lo que hace posible, entre otras cosas, que un responsable genere decisiones de calidad.
### Salida de información
La salida es la capacidad de un sistema de información para extraer la información procesada o los datos de entrada hacia el exterior.
La salida de un sistema de información puede constituir la entrada a otro sistema de información o módulo.
## 2.5 Tipos de sistemas de información
Debido a que el principal uso de los sistemas de información es optimizar el desarrollo de las actividades de una organización para ser más productivos y obtener ventajas competitivas, pueden clasificarse de forma genérica en:
- **Sistemas competitivos**.
- **Sistemas cooperativos**.
- **Sistemas que modifican el estilo de operación del negocio**.
Desde el punto de vista de la función que realizan, pueden clasificarse de la siguiente manera:
- **Sistemas de soporte a la decisión (DSS)**: herramienta enfocada al análisis de los datos de una organización, con la finalidad de apoyar el proceso de toma de decisiones.
- **Sistema de procesamiento de transacciones (TPS)**: gestiona la información referente a las transacciones producidas en una empresa u organización. También se le conoce como sistema de información operativa.
- **Sistemas de información ejecutiva (EIS)**: herramienta orientada a usuarios de nivel gerencial que permite monitorizar el estado de las variables de un área o unidad de la empresa a partir de información interna y externa. Es en este nivel donde los sistemas de información manejan información estratégica para las empresas.
- **Sistemas de información gerencial (MIS)**: orientados a solucionar problemas empresariales en general.
## 2.6 Otras herramientas usadas en sistemas de información
- **Cuadro de Mando Integral**: el Cuadro de Mando Integral (CMI), también conocido como Balanced Scorecard (BSC) o dashboard, es una herramienta de control empresarial que permite establecer y monitorizar los objetivos de una empresa y de sus diferentes áreas o unidades. También se puede considerar como una aplicación que ayuda a una compañía a expresar los objetivos e iniciativas necesarias para cumplir con su estrategia, mostrando de forma continuada cuándo la empresa y los empleados alcanzan los resultados definidos en su plan estratégico.
- **Datawarehouse**: un Datawarehouse es una base de datos corporativa que se caracteriza por integrar y depurar información de una o más fuentes distintas, para luego procesarla permitiendo su análisis desde múltiples perspectivas y con grandes velocidades de respuesta.
# 3. Arquitectura de ordenadores
La arquitectura de ordenadores se define como el conjunto de reglas, normas y procedimientos que especifican las interrelaciones entre los componentes lógicos y físicos que forman parte de un sistema informático, así como las características que deben cumplir cada uno de estos componentes.
A día de hoy se distinguen dos tipos de arquitecturas de ordenador:
- Arquitectura VON-NEUMANN
- Arquitectura HARVARD
## 3.1 Arquitectura Von Neumann
También conocida como modelo de Von Neumann o arquitectura Princeton.
Consta de:
- **Unidad de proceso (CPU)**: contiene una unidad aritmético-lógica (ALU o UAL), registros del procesador y una unidad de control (UC) que contiene un registro de instrucciones y un contador de programa (CP).
- **Memoria**: para almacenar tanto datos como instrucciones, incluyendo almacenamiento masivo externo.
- **Mecanismos de entrada y salida (E/S)**.
Estos elementos están conectados por buses de datos, que se pueden definir como las autopistas por las que viaja la información.
En la siguiente figura se detalla cómo sería el aspecto de un sistema informático diseñado con esta arquitectura:
![](attachments/{DA66E58F-AC5A-4B99-89AF-B298A3536BA9}.png)
En esta arquitectura no pueden darse simultáneamente una búsqueda de instrucciones y una operación de datos, ya que comparten un bus de datos común. Esto se conoce como el cuello de botella de Von Neumann, y puede limitar el rendimiento del sistema.

El canal de transmisión de datos compartido entre CPU y memoria genera un cuello de botella de Von Neumann, es decir, un rendimiento limitado (tasa de transferencia de datos) entre la CPU y la memoria en comparación con la capacidad de la propia memoria.

En la mayoría de computadoras modernas, la velocidad de comunicación entre la memoria y la CPU es más baja que la velocidad a la que puede trabajar esta última, reduciendo el rendimiento del procesador y limitando seriamente la velocidad de proceso efectiva, sobre todo cuando se necesitan procesar grandes cantidades de datos.

La CPU se ve forzada a esperar continuamente a que lleguen los datos necesarios desde o hacia la memoria.

Dado que la velocidad de procesamiento y la capacidad de memoria han aumentado mucho más rápido que el rendimiento de transferencia entre ellas, el cuello de botella se ha convertido en un problema creciente cuya gravedad aumenta con cada nueva generación de CPU.
## 3.2 Arquitectura Harvard
Contiene los mismos elementos que la arquitectura Von Neumann y funcionan de la misma manera, pero tiene una diferencia fundamental:
La memoria principal se divide en memoria de instrucciones y memoria de datos.

¿Qué ventajas aporta esta diferencia?
En la arquitectura anterior se indicaba que no se podían realizar de manera simultánea una operación sobre datos y una operación sobre instrucciones, dado que solo había un bus compartido para ambas operaciones.

En esta arquitectura, cada uno de los dos tipos de memoria usa un bus exclusivo, por lo que se pueden simultanear las operaciones, lo que supone un aumento del rendimiento del equipo informático y elimina el cuello de botella de Von Neumann.

Bajo arquitectura Von Neumann pura, la CPU puede estar leyendo una instrucción o leyendo/escribiendo datos desde/hacia la memoria, pero ambos procesos no pueden ocurrir al mismo tiempo, ya que comparten el mismo sistema de buses.

En una computadora que utiliza la arquitectura Harvard, la CPU puede tanto leer una instrucción como acceder a la memoria de datos al mismo tiempo, incluso sin memoria caché.
![](attachments/{6B126EB5-4EBC-414F-AE35-071A18ECDE28}.png)
En la actualidad, la mayoría de los procesadores implementan una arquitectura Harvard modificada, para poder soportar tareas como la carga de programas desde una unidad de disco como datos para su posterior ejecución.
### Hardware modificado
Variación de la arquitectura Harvard que permite que los contenidos de la memoria de instrucciones sean accedidos como si fuesen datos.
- La memoria de instrucciones y datos ocupan diferentes espacios de direcciones.
- La memoria de instrucciones y datos accede a la CPU por buses distintos.
- La memoria de instrucciones y datos pueden ser accedidas de diferente manera.
## 3.3 Taxonomía de Flynn
Clasificación de arquitecturas de computadores propuesta por Michael J. Flynn en 1966, basada en el número de flujos de instrucciones y de datos simultáneos:
- **SISD** (Single Instruction, Single Data): un único flujo de instrucciones y un único flujo de datos. Arquitectura secuencial clásica (ordenadores Von Neumann tradicionales, PCs mononúcleo).
- **SIMD** (Single Instruction, Multiple Data): una misma instrucción se aplica simultáneamente a múltiples datos. Ejemplos: procesadores vectoriales, GPUs, extensiones MMX/SSE/AVX.
- **MISD** (Multiple Instruction, Single Data): múltiples instrucciones operan sobre el mismo dato. Poco común; usado en sistemas tolerantes a fallos con redundancia.
- **MIMD** (Multiple Instruction, Multiple Data): múltiples instrucciones ejecutándose simultáneamente sobre múltiples datos. Es la categoría de los multiprocesadores, clusters y procesadores multinúcleo actuales.
## 3.4 Segmentación de instrucciones (pipelining)
Técnica de diseño de procesadores que divide la ejecución de cada instrucción en fases independientes, permitiendo que varias instrucciones se solapen en el tiempo.
Fases clásicas del pipeline de 5 etapas:
1. **IF** (Instruction Fetch): búsqueda de la instrucción en memoria.
2. **ID** (Instruction Decode): decodificación y lectura de registros.
3. **EX** (Execute): ejecución de la operación o cálculo de dirección.
4. **MEM** (Memory Access): acceso a memoria de datos.
5. **WB** (Write Back): escritura del resultado en el registro destino.
Ventaja: aumenta el rendimiento (throughput) al mantener ocupadas todas las etapas del procesador. Desventaja: pueden aparecer riesgos (hazards) estructurales, de datos y de control que requieren técnicas de gestión (burbujas, forwarding, predicción de saltos).
# 4. Generaciones de ordenadores
Desde mediados del siglo XX hasta finales de la década de los ochenta, los avances tecnológicos se suceden sin cesar.
A lo largo de este periodo se diferencian ciertas etapas denominadas generaciones de ordenadores, definidas principalmente por:
- La tecnología vigente en un momento dado.
- Las técnicas de programación utilizadas.
- El impacto de la informática en la sociedad.
Por otra parte, debido al ritmo de desarrollo de los últimos años, esta forma de clasificación ha perdido parte de su efectividad, ya que hoy es difícil separar claramente una etapa de otra.
## Primera generación (1940-1952)
El comienzo de la historia actual de la informática lo constituyen los ordenadores construidos a base de válvulas de vacío como elemento principal de control.
El uso principal de estos primeros ordenadores fueron aplicaciones científicas y militares, y se programaban directamente en lenguaje máquina.
La primera generación incluye ordenadores con las siguientes características:
- Utilizan relés electromecánicos, válvulas y tubos de vacío como elementos principales de control.
- Las memorias estaban constituidas por tarjetas y cintas perforadas, y posteriormente por líneas de demora de mercurio, tecnologías ya totalmente desfasadas.
- La velocidad de proceso se mide en milisegundos.
- Se construyeron para tareas muy concretas.
- Se programaban directamente en lenguaje máquina, mediante interruptores manuales.
El ejemplo más significativo es el computador ENIAC.
## Segunda generación (1952-1964)
A principios de los años cincuenta, un nuevo dispositivo denominado transistor supuso la segunda revolución tecnológica en el campo de la computación.
El transistor sustituyó a la válvula de vacío, reduciendo el tamaño de los circuitos, su consumo y su coste, además de aumentar la fiabilidad de los ordenadores.
Estas ventajas, junto con la introducción de las memorias de núcleos de ferrita y los soportes de información magnéticos, dieron paso a la segunda generación.
Los ordenadores dejaron de ser máquinas extremadamente costosas y se extendieron rápidamente por empresas y universidades, ampliando sus aplicaciones a los campos administrativos y de gestión.
Para ello fue necesario desarrollar nuevos métodos de programación más asequibles y adaptados al ser humano, apareciendo lenguajes evolucionados como Ensamblador, Fortran, Cobol y Algol.
La aplicación del transistor en la construcción de ordenadores supuso el comienzo de la segunda generación, caracterizada por:
- Sustitución de la válvula de vacío por el transistor, reduciendo tamaño, consumo y coste, y aumentando la fiabilidad.
- Introducción de memorias de núcleos de ferrita y soportes de información magnéticos.
- Sustitución del cableado por circuitos impresos, aumentando la velocidad al reducir la distancia de las señales eléctricas.
- Aparición de los primeros periféricos que simplifican el diseño de los sistemas hardware.
- Expansión de los ordenadores en empresas y universidades, ampliando sus aplicaciones administrativas y de gestión.
- Desarrollo de lenguajes de programación evolucionados como Ensamblador, Fortran, Cobol y Algol.
El ejemplo más significativo es el ordenador TRADIC, el primer ordenador construido con transistores.
## Tercera generación (1964-1970)
Hemos visto cómo la aplicación del transistor en la construcción de ordenadores fue el paso decisivo en la segunda generación.
El transistor comenzó a utilizarse como elemento discreto en los diseños.
A mediados de la década de los sesenta se comenzaron a construir circuitos que integraban varios transistores en un solo dispositivo, dando lugar a la industria de los circuitos integrados.
El software evolucionó con el desarrollo de los sistemas operativos, incluyendo multiprogramación, tiempo real y modo interactivo.
Se comenzaron a utilizar memorias de semiconductores y discos magnéticos.
Esta generación se caracteriza por:
- Aplicación de SSI (Small Scale Integration), integrando alrededor de diez transistores en una única pastilla.
- Evolución hacia MSI (Medium Scale Integration), con hasta 1.000 transistores en un chip, apareciendo los primeros circuitos integrados comerciales.
- Reducción del tamaño y precio de los ordenadores, surgiendo las primeras minicomputadoras.
- Avances en hardware con memorias de semiconductores y discos magnéticos como almacenamiento permanente.
- Desarrollo de sistemas operativos con tiempo real, modo interactivo y multiprogramación.
- Aparición del lenguaje BASIC.
El ejemplo más significativo son los minicomputadores PDP-11 (DEC) y el superordenador CDC-7600.
## Cuarta generación (1970-1981)
En 1971 aparece el microprocesador, que integra toda la CPU en un solo circuito integrado.
Se utilizó el disquete (Floppy Disk) como almacenamiento externo.
Aparecen numerosos lenguajes de programación y las redes de transmisión de datos (teleinformática).
Esta generación se caracteriza por:
- Tecnologías LSI (Large Scale Integration) y VLSI (Very Large Scale Integration), con más de 10.000 puertas lógicas por chip.
- Aparición del primer microprocesador en 1971, que integra la CPU en un único chip.
- Tiempos de conmutación de puertas lógicas reducidos hasta 10 nanosegundos.
- Aparición de los primeros ordenadores personales, como el IBM PC.
- Uso de disquetes como almacenamiento externo y gran variedad de lenguajes de programación.
- Desarrollo de ordenadores clónicos compatibles con IBM, impulsando la microinformática.
- Expansión de redes de ordenadores y teleinformática.
## Quinta generación (1981-1991)
En 1981 se anuncia el nacimiento de una nueva generación impulsada por grandes productores tecnológicos (principalmente Estados Unidos y Japón).
Sus características son:
- Uso masivo de componentes VLSI.
- Tiempos de conmutación de puertas lógicas hasta 1 nanosegundo.
- Desarrollo de inteligencia artificial y sistemas expertos.
- Lenguajes de programación cercanos al lenguaje natural.
- Sistemas operativos orientados al usuario.
- Interfaces gráficas y dispositivos como el ratón.
- Interconexión global de ordenadores mediante redes (Internet).
- Integración de datos, imágenes y sonido (multimedia).
- Gran expansión de la microinformática en todos los sectores.

| CISC                                                                                                                                                                                   | RISC                                                                                                                                                                       |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Significado**: Computadora con conjunto de instrucciones complejo                                                                                                                    | **Significado**: Computadora con conjunto de instrucciones reducido                                                                                                        |
| **Aplicación**: Utilizada en entornos de red                                                                                                                                           | **Aplicación**: Aplicada en ordenadores domésticos                                                                                                                         |
| **Características**: Instrucciones de tamaño fijo. Solo las instrucciones de carga y almacenamiento acceden a la memoria de datos                                                      | **Características**: Instrucciones muy amplias                                                                                                                             |
| **Objetivos**: Permite operaciones complejas entre operandos situados en memoria o en registros internos                                                                               | **Objetivos**: Posibilitar la segmentación y el paralelismo en la ejecución de instrucciones y reducir los accesos a memoria                                               |
| **Ventajas**: La CPU trabaja más rápido al utilizar menos ciclos de reloj. Reduce tiempo de ejecución de las operaciones. Cada instrucción puede ser ejecutada en un solo ciclo de CPU | **Ventajas**: Reduce la dificultad de crear compiladores. Permite reducir el coste total del sistema. Mejora la compactación del código. Facilita la depuración de errores |
| **Microprocesadores**: Intel 8086, 8088, 80286, 80386, 80486. Motorola 68000, 68010, 68020, 68030, 6840                                                                                | **Microprocesadores**: MIPS Technologies, IBM PowerPC, Motorola, SPARC y UltraSPARC                                                                                        |
## Medidas de potencia de un microprocesador
- **FLOPS**: número de operaciones de coma flotante por segundo.
- **MIPS**: millones de operaciones por segundo.
Esta medida solo permite comparar CPUs con el mismo conjunto de instrucciones.
## Multiprocesamiento
Se habla de multiprocesamiento o multiproceso cuando en un equipo informático existe más de una CPU utilizada para ejecutar uno o más procesos.
No debe confundirse con multitarea.
Normalmente una CPU está formada por un solo circuito integrado.
En ocasiones un circuito puede contener más de una CPU (procesador multinúcleo).
## Multithreading
Tecnología que permite duplicar las unidades lógicas de cada núcleo, permitiendo que un núcleo realice dos tareas simultáneas.
Fue patentada por Sun Microsystems en 1994.
Intel lo denomina HyperThreading y AMD SMT.
Ambas tecnologías son prácticamente idénticas: permiten que un núcleo ejecute dos hilos de proceso.
Un procesador de dos núcleos con esta tecnología puede ejecutar cuatro hilos simultáneos, y uno quad-core hasta ocho hilos.
# 5. Componentes internos de los equipos microinformáticos  
La estructura hardware de un ordenador digital quedó definida básicamente en la década de los 50, casi a comienzos de la historia de la informática.  
Desde entonces pocas cosas han cambiado en el diseño en sus módulos esenciales, aunque sí se han desarrollado mejoras tecnológicas.  
El hardware de un ordenador se estructura en tres subsistemas:  
- Unidad central de proceso (UCP o CPU).  
- Memoria central.  
- Unidades de entrada/salida o periféricos.  
## 5.1 Buses  
Conjunto de circuitos encargados de la conexión y comunicación entre los diversos componentes de un ordenador.  
Esta comunicación se realiza mediante líneas eléctricas distribuidas por el sistema, permitiendo la transmisión de datos en paralelo.  
Tipos de buses:  
- **Bus de control**: transmite señales generadas en la unidad de control que son interpretadas como órdenes por el resto del sistema.  
- **Bus de direcciones**: transporta las direcciones de memoria sobre las que se va a actuar en operaciones de lectura y escritura.  
- **Bus de datos**: traslada datos hacia y desde la memoria principalmente, aunque también se conecta a otros dispositivos (puertos, controladores de periféricos, etc.).  
## 5.2 Conceptos sobre procesadores  
También denominado CPU (Central Processing Unit).  
Es el subsistema más importante del ordenador, actúa como su cerebro, coordinando y supervisando el funcionamiento del resto del sistema y procesando las instrucciones de los programas.  
Secuencia de operación de la CPU:  
1. Extraer de la memoria una instrucción del programa en ejecución.  
2. Analizar la instrucción.  
3. Ejecutar las operaciones necesarias.  
Este ciclo es invariable para todos los programas.  
Actualmente la CPU está formada por circuitos electrónicos integrados en un chip denominado microprocesador, situado sobre la placa base.  
Suele incluir un sistema de refrigeración debido a la generación de calor.  
Equivalencias:  
- UCP = CPU = microprocesador = procesador.  
## Tecnologías de procesadores  
Existen dos tipos principales:  
### CISC (Complex Instruction Set Computer)  
Los microprocesadores CISC tienen un conjunto de instrucciones amplio que permite operaciones complejas entre operandos en memoria o registros.  
En la actualidad suelen traducir instrucciones complejas en microinstrucciones tipo RISC.  
Ejemplos: Intel, AMD, Motorola (x86).  
Ventajas:  
- Reduce la dificultad de crear compiladores.  
- Reduce el coste total del sistema.  
- Reduce los costes de creación de software.  
- Mejora la compactación de código.  
- Facilita la depuración de errores.  
### RISC (Reduced Instruction Set Computer)  
Arquitectura basada en un conjunto reducido de instrucciones simples.  
Características:  
- Instrucciones de tamaño fijo y pocos formatos.  
- Solo carga y almacenamiento acceden a memoria.  
- Favorece el paralelismo y la segmentación.  
- Reduce accesos a memoria.  
Ventajas:  
- Mayor velocidad de ejecución (menos ciclos por instrucción).  
- Conserva operandos y resultados en memoria.  
- Cada instrucción puede ejecutarse en un ciclo.  
Ejemplos: MIPS, SPARC, POWER PC, ARM.
## 5.3 Unidad central de proceso
La CPU está formada por:
- Registros de acceso rápido.
- Unidad de control (UC).
- Unidad aritmético-lógica (UAL o ALU).
### 5.3.1 Registros de la CPU
Un registro es una pequeña zona de memoria de acceso muy rápido que almacena datos, instrucciones o direcciones.
Tipos de registros:
- **Registros de datos**: almacenan valores numéricos o caracteres.
  - Acumulador: guarda resultados intermedios de operaciones aritméticas o lógicas.
  - Registro de pila: mantiene la posición de la pila de llamadas.
  - Registro índice: direcciona datos hacia o desde la memoria RAM.
- **MBR (Memory Buffer Register)**: registro conectado al bus de datos que almacena temporalmente datos leídos o escritos desde memoria o E/S.
- **MAR (Memory Address Register)**: contiene la dirección de memoria a la que se accede; está conectado al bus de direcciones.
  - El tamaño del MAR determina el número de direcciones posibles (2ⁿ).
- **Registros de propósito general (GPRs)**: almacenan datos o direcciones sin función específica fija.
- **Registros de propósito específico (SPRs)**: almacenan información del estado del sistema (por ejemplo, PSW o Instruction Pointer).
  - **Registros de estado**: sirven para guardar valores reales cuya función es determinar cuándo una instrucción debe ejecutarse o no. También se conocen como CCR (Condition Code Register). Dentro de este tipo de registros se encuentra:
  - **Registro de banderas o FLAGS**: presente en procesadores Intel con arquitectura x86. Es un registro de 16 bits, con dos versiones posteriores:
    - EFLAGS (32 bits)
    - RFLAGS (64 bits)
- **Registros de coma flotante**: la coma flotante es una representación en forma de fórmula de números reales de distintos tamaños, utilizada para operaciones aritméticas. Se emplea en sistemas que requieren gran velocidad de procesamiento. Estos registros almacenan dichas representaciones en muchas arquitecturas.
- **Registros constantes**: su función es almacenar valores de solo lectura como cero, uno o π.
### 5.3.2 Unidad de control
La unidad de control es la parte más importante del microprocesador.
Controla el funcionamiento de todo el conjunto excepto las operaciones aritméticas (gestionadas por la UAL).
Su estructura incluye:
![](attachments/{1D7B50D5-A41A-44E6-BBE5-DAC4FA41F4A6}.png)
- **Reloj**: la ejecución de una instrucción u operación en un ordenador se divide en ciclos básicos. El reloj proporciona una sucesión de impulsos con frecuencia constante que marca los instantes en los que deben comenzar dichos ciclos. La frecuencia es muy elevada (por ejemplo, 2000 MHz o 2 GHz), lo que equivale a 2000 millones de pulsos por segundo. No implica que se ejecuten tantas instrucciones por segundo, ya que una instrucción puede requerir varios ciclos.
- **Contador de programa (CP)**: también llamado registro de control de secuencia (RCS). Contiene en todo momento la dirección de memoria de la siguiente instrucción a ejecutar. Al encender el ordenador toma un valor por defecto donde se encuentra la primera instrucción.
- **Registro de instrucción (RI)**: contiene la instrucción que se está ejecutando en un momento dado. Las instrucciones tienen código de operación (acción) y operandos (datos o direcciones).
- **Decodificador**: extrae el código de operación del RI, lo analiza y lo comunica al controlador.
- **Controlador o secuenciador**: interpreta el código de operación y genera microórdenes que actúan sobre el sistema en sincronía con el reloj.
### 5.3.3 Unidad aritmético-lógica
Se denomina UAL o ALU (Arithmetic Logic Unit).
Realiza operaciones aritméticas (sumas, restas, multiplicaciones, divisiones) y lógicas (comparaciones, desplazamientos, etc.).
![](attachments/{F1A0616F-7359-4C82-B60E-2BF19C20FD47}%201.png)
Se comunica con el sistema mediante el bus de datos.
Componentes:
- **Circuito operacional (COP)**: realiza las operaciones digitales. Recibe datos de los registros de entrada y la orden desde el bus de control.
- **Registros de entrada (REN)**: almacenan los operandos y resultados intermedios.
- **Acumulador**: los resultados finales se almacenan aquí. Es un registro especial conectado a los registros de entrada. También tiene conexión directa al bus de datos, lo que permite el envío de resultados a memoria o a la unidad de control.
- **Registro de estado**: almacena información sobre condiciones de la última operación realizada (por ejemplo, si el resultado de una comparación es positivo, negativo, mayor o menor).
## Operaciones lógicas
La ALU puede realizar:
- Operaciones aritméticas con números enteros (suma, resta y, en algunos casos, multiplicación y división).
- Operaciones lógicas a nivel de bits (AND, OR, NOT, XOR, NOR, XNOR, NAND).
- Operaciones de desplazamiento de bits (desplazan o rotan una palabra un número determinado de posiciones a la izquierda o derecha, con o sin extensión de signo).
Los desplazamientos pueden interpretarse como multiplicaciones o divisiones por 2.
![](attachments/{7775B4F6-BAFB-4CBD-99DF-845175C7A528}.png)
### 5.3.4 Ciclo de ejecución de instrucciones
Las instrucciones que componen el programa pueden clasificarse según el número de elementos que necesitan (operandos).
Según el número de operandos:
- Instrucciones sin operandos: no actúan sobre ningún elemento concreto. Ejemplo: FIN.
- Instrucciones de un operando: actúan sobre un solo dato. Ejemplo: SALTO 12345.
- Instrucciones de dos operandos: requieren dos elementos; uno suele almacenar el resultado. Ejemplo: SUMA A,B.
- Instrucciones de tres operandos: dos datos y un destino. Ejemplo: SUMA A,B,C.
Ciclo de instrucción: conjunto de acciones que realiza el ordenador para ejecutar una instrucción.
Fases:
- Fase de búsqueda (FETCH): la instrucción se transfiere desde memoria a la unidad de control.
  1. La UC envía una microorden que pasa el contenido del contador de programa (CP) al registro de dirección de memoria (RDM).
  2. El selector de memoria accede a la dirección y envía la instrucción al registro de intercambio de memoria (RIM).
  3. La instrucción pasa del RIM al registro de instrucción (RI).
- Fase de ejecución: se realizan las acciones de la instrucción.
  1. El decodificador interpreta el RI y activa los circuitos necesarios.
  2. El CP se incrementa o se modifica en caso de salto.
### 5.3.5 Modos de direccionamiento
Los modos de direccionamiento son las formas de transformar el campo de operando en la dirección efectiva.
La dirección efectiva es la que se carga en el MAR.
Se clasifican en propios e impropios:
- Propios: el operando está en memoria.
- Impropios: el operando está en registros u otros elementos.
#### Direccionamiento implícito
El operando está definido en la instrucción.
Se usa en:
- Registros específicos.
- Operandos en la pila.
Ejemplo: instrucciones PUSH y POP.
#### Direccionamiento inmediato (o literal)
El operando está dentro de la propia instrucción, sin acceso a memoria.
Se usa para inicializar valores constantes.
#### Direccionamiento directo o absoluto
El campo de la instrucción contiene la dirección de memoria del operando.
La dirección efectiva coincide con la dirección indicada en la instrucción.
Si hace referencia a un registro de la máquina, el dato estará almacenado en este registro y se habla de direccionamiento directo a registro. Si hace referencia a una posición de memoria, el dato estará almacenado en esa dirección de memoria (dirección efectiva) y se habla de direccionamiento directo a memoria.
Estos modos son simples y no requieren cálculos para obtener la dirección efectiva.
El tamaño del operando en direccionamiento directo a registro depende del número de registros de la máquina; en direccionamiento directo a memoria depende del tamaño de la memoria.
#### Direccionamiento indirecto
El campo de operando contiene una dirección de memoria en la que se encuentra la dirección efectiva del operando.
Si hace referencia a un registro, la dirección efectiva estará en ese registro (indirecto a registro).
Si hace referencia a memoria, la dirección efectiva estará almacenada en una posición de memoria (indirecto a memoria).
La principal desventaja es que requiere más accesos a memoria:
- Indirecto a registro: un acceso adicional a memoria.
- Indirecto a memoria: dos accesos a memoria, por lo que rara vez se implementa.
#### Direccionamiento relativo
- Relativo a registro base: la dirección efectiva (EA) se calcula como la suma del registro base más un desplazamiento (offset). Permite acceso a posiciones cercanas de memoria y código reentrante. Usado en llamadas a funciones y pila.
- Relativo a registro índice: similar al anterior, pero el desplazamiento lo aporta el registro índice. La EA es la suma del registro índice y una dirección de memoria.
## 5.4 Memoria: concepto, funcionamiento y tipos
### Clasificación de memoria
- Por tipo:
  - Memoria interna (RAM, ROM, registros).
  - Memoria externa (disco duro, CD-ROM, USB).
- Por lectura/escritura:
  - Volátil: pierde contenido sin alimentación (RAM).
  - No volátil: mantiene contenido (ROM).
- Por velocidad/capacidad:
  - A mayor velocidad, menor capacidad, y viceversa.
![](attachments/{9E77E9D6-0368-442F-9C3B-5BCBA178CBC6}.png)
## 5.4.1 Memoria RAM
Memoria volátil que pierde su contenido al apagarse el sistema.
Permite lectura y escritura en cualquier posición.
Es utilizada principalmente por la CPU para almacenar instrucciones y datos en ejecución.
Función principal: almacenar instrucciones y datos de programas en ejecución (sistema operativo, procesos, E/S, disco, etc.).
### Evolución
- Núcleos de ferrita (años 40-50).
- DIP (años 60-70).
- SIPP (años 80).
![](attachments/{481F4662-FD5E-4637-97D0-55A2F32BF782}.png)
- SIMM (años 80).
![](attachments/{EA0AF256-3735-40BB-97EB-E58D75AE8A37}.png)
- **DIMM (Dual Inline Memory Module)**: años 90. Módulos de memoria en línea doble (chips en ambas caras del módulo). Es similar al SIMM, pero más grande y con 168 contactos. Tiene una muesca en ambos lados y otras dos en la fila de contactos. Se monta de forma distinta a los SIMM. Existen módulos de 32, 64, 128, 256, 512 MB y de 1, 2 o más GB. Funcionan a 64 bits (8 bytes).
- **DIMM DDR**: sustituye a los DIMM estándar. Tienen 184 contactos en lugar de 168. Incluyen una muesca en la fila de contactos. Aunque parecen similares, no son compatibles físicamente con DIMM anteriores.
- **DIMM DDR2**: 240 pines. La muesca está en una posición diferente respecto a DDR. Las ranuras de conexión también son distintas.
- **DIMM DDR3**: también 240 pines, pero física y electrónicamente incompatibles con DDR2 debido a la posición distinta de la muesca.
![](attachments/{5C54E4C8-F79F-4F11-A4D2-3ABAF7E627C1}.png)

| Tipo | Frecuencia (MHz) | Capacidad máx. | Pines |
| ---- | ---------------- | -------------- | ----- |
| DDR  | 266 - 400        | 1 GB           | 184   |
| DDR2 | 667 - 800        | 2 GB           | 240   |
| DDR3 | 1066 - 2400      | 16 GB          | 240   |
| DDR4 | 2133 - 4000      | 64 GB          | 288   |
## Otros tipos de memoria RAM
• **RIMM (Rambus Inline Memory Module)**  
Parecidos a los DIMM, pero algo mayores y cubiertos de disipador de calor. Aparecieron con 168 contactos, actualmente usan 232. Son más rápidos que los anteriores, pero de precio elevado. Se usan en memorias RDRAM.

• **FB-DIMM (Fully Buffered DIMM)**  
Usados en servidores. La transmisión entre módulo y controlador de memoria se realiza en serie, reduciendo líneas de conexión. Esto mejora velocidad y capacidad. Elevado coste. Mayor calor por aumento de velocidad y latencia. Módulos de 240 pines como DDR2, pero con muesca en posición distinta.

• **GDDR (Graphics DDR)**  
Memorias para gráficas. Chips integrados en tarjetas gráficas o placas con gráfica integrada. Muy rápidas, controladas por la GPU. No usan módulos tradicionales de RAM.

• **SO-DIMM y Micro-DIMM**  
Versiones compactas de DIMM para portátiles. El Micro-DIMM es más pequeño. Los SO-DIMM para DDR y DDR2 difieren por la posición de la muesca.
### Módulos buffered y unbuffered
• **Buffered o Registered**  
Incluyen registros intermedios entre CPU y memoria. Mejoran estabilidad a costa de rendimiento. Usados en servidores. Mayor fiabilidad y menor velocidad. Suelen incluir detección y corrección de errores (ECC).

• **Unbuffered o Unregistered**  
Conexión directa con el controlador de memoria (Northbridge). Más rápidos, pero menos seguros que los registrados.
### RAM ECC y no ECC
• **No ECC**  
Sin corrección de errores. Usada en ordenadores personales, portátiles y tablets.

• **ECC (Error Checking and Correction)**  
Detecta y corrige errores mediante paridad. Corrige errores de 1 bit, no multibit. Usada en servidores. Requiere soporte de placa base y CPU.
### RAM volátil y no volátil
• **Volátil (SRAM / DRAM)**  
SRAM ≡ Static RAM  
DRAM ≡ Dynamic RAM (basada en condensadores)

• **No volátil (NVRAM)**  
Mantiene datos con alimentación de respaldo. No se pierde el contenido si se corta la energía.
## Parámetros de la memoria
• **Velocidad (MHz)**  
Indica millones de operaciones (lectura/escritura) por segundo.

• **Ancho de banda (MB/s o GB/s)**  
Cantidad máxima de datos transferidos por segundo.

• **Dual Channel**  
Uso de dos canales simultáneos. Duplica ancho de banda. Requiere módulos idénticos en frecuencia, capacidad y latencia.

• **Tiempo de acceso (ns)**  
Tiempo que tarda la CPU en acceder a la memoria.

• **Latencia**  
Retardo al acceder a los componentes de RAM.

• **Latencia CAS (CL)**  
Ciclos desde la petición de lectura hasta la entrega de datos. Menor valor = mayor velocidad.
## RAM-CMOS
Memoria que almacena la configuración del sistema (orden de arranque, discos, seguridad, overclock, etc.). Se modifica mediante utilidades del BIOS durante el arranque.

Es una RAM pequeña (64–256 bytes) vinculada al reloj de tiempo real. Se alimenta con la pila de la placa base. El BIOS la usa en el arranque para configurar el sistema.

Si los datos son incorrectos, puede impedir el arranque y requerir restaurar valores de fábrica retirando la pila.
## 5.4.2 MEMORIA ROM
La memoria ROM es un medio de almacenamiento de programas o datos que permiten el buen funcionamiento de los ordenadores o dispositivos electrónicos mediante la lectura de la información sin que pueda ser destruida o reprogramada. ROM significa Read Only Memory (memoria de solo lectura). Es una memoria no volátil, por lo que la información no se pierde al apagar el dispositivo. Suele estar en la placa base y contiene el firmware básico del sistema, como la BIOS.

### Tipos de memoria ROM
#### ROM de solo lectura
Primeras memorias ROM. Solo permiten lectura. La información queda grabada de fábrica y no puede modificarse ni borrarse. Hoy en día están obsoletas por su falta de flexibilidad y alto coste de fabricación y mantenimiento.
#### PROM (Programmable ROM)
Memoria programable una sola vez. Cada bit se define mediante fusibles que se “queman” para fijar el estado. Una vez programada no puede modificarse. Se utiliza para almacenar datos permanentes en pequeñas cantidades.
#### EPROM (Erasable Programmable ROM)
Memoria programable y borrable mediante luz ultravioleta. Permite reprogramación tras el borrado. Requiere dispositivos especiales para la programación.
#### EEPROM (Electrically Erasable Programmable ROM)
Memoria que puede borrarse y reprogramarse eléctricamente. Permite modificación sin extracción física. Es más flexible que EPROM, aunque más lenta en escritura.

## 5.4.3 BIOS Y UEFI
Ambos son firmware almacenado en la placa base que se encarga del arranque y configuración inicial del sistema.

### BIOS (Basic Input Output System)
Sistema clásico de firmware. Inicializa el hardware del equipo, realiza comprobaciones básicas y lanza el sistema operativo. También gestiona energía y temperatura.
### UEFI (Unified Extensible Firmware Interface)
Sucesor de la BIOS. Escrito en C y con arquitectura moderna. Mejora el arranque, la seguridad y la gestión del hardware.

#### Diferencias principales entre BIOS y UEFI
- Interfaz: BIOS es texto tipo MS-DOS; UEFI es gráfica y permite ratón.
- Velocidad: UEFI es más rápida en el arranque.
- Seguridad: UEFI incorpora Secure Boot.
- Arquitectura: BIOS funciona en 16 bits; UEFI en 32/64 bits.
- Conectividad: UEFI puede actualizarse vía red.
- Compatibilidad: UEFI permite extensiones y mayor flexibilidad.
- UEFI permite esquemas de particionado GPT, lo que habilita hasta 128 particiones por disco y capacidades teóricas muy altas (del orden de ZB). BIOS usa MBR, con un máximo de 4 particiones primarias por disco y un límite de 2,2 TB.
## 5.4.4 Memoria Caché
La memoria caché es una memoria de alta velocidad y pequeña capacidad que almacena copias de datos e instrucciones de uso frecuente, situada entre la CPU y la memoria RAM. Su objetivo es reducir el tiempo medio de acceso a memoria aprovechando el principio de localidad (temporal y espacial).
Niveles de caché:
- **Caché L1**: integrada en el núcleo del procesador. Es la más rápida y de menor capacidad (16-128 KB por núcleo). Suele dividirse en L1d (datos) y L1i (instrucciones).
- **Caché L2**: puede estar integrada en el procesador o en un chip separado. Mayor capacidad que L1 (256 KB - 1 MB por núcleo), pero algo más lenta.
- **Caché L3**: compartida entre varios núcleos del procesador. Mayor capacidad (varios MB) y más lenta que L2, pero significativamente más rápida que la RAM.
La jerarquía de velocidad ascendente es: Almacenamiento secundario < RAM < Caché L3 < Caché L2 < Caché L1 < Registros de la CPU.
## 5.5 Periféricos
Dispositivos externos conectados al ordenador que permiten la comunicación entre el sistema informático y el exterior. Sin ellos, el ordenador no podría interactuar con el usuario ni con otros sistemas.
### 5.5.1 Periféricos de entrada
Permiten introducir datos e instrucciones en el ordenador:
- **Teclado**: introduce texto y comandos. Puede ser mecánico o de membrana.
- **Ratón** (mouse): dispositivo apuntador que controla el cursor en la interfaz gráfica. Puede ser óptico o láser.
- **Escáner**: digitaliza documentos físicos convirtiéndolos en imágenes digitales.
- **Micrófono**: captura sonido ambiental para su procesamiento digital.
- **Cámara web** (webcam): captura video e imágenes en tiempo real.
- **Lápiz óptico**: dispositivo apuntador que permite dibujar o seleccionar elementos directamente sobre la pantalla táctil.
- **Lector de códigos de barras**: lee códigos de barras ópticos mediante un haz láser.
- **Tableta digitalizadora**: superficie sensible a la presión que permite dibujar con un lápiz especial.
- **Escáner de huella dactilar**: lector biométrico para identificación.
### 5.5.2 Periféricos de salida
Muestran o transmiten información procesada al usuario:
- **Monitor** (pantalla): dispositivo de visualización principal. Tecnologías: CRT, LCD, LED, OLED. La resolución se mide en píxeles.
- **Impresora**: produce copias físicas en papel. Tipos principales: inyección de tinta, láser (tóner), matricial (impacto). La velocidad se mide en ppm (páginas por minuto).
- **Plotter**: impresora de gran formato para planos técnicos, mapas y diseños CAD (Computer Aided Design). Utiliza plumillas o tecnología de inyección de tinta de gran ancho. Es un periférico de salida especializado.
- **Altavoces** (speakers): reproducen señales de audio digital convertidas a analógicas mediante un DAC.
- **Auriculares**: altavoces personales para uso individual. Pueden ser alámbricos o inalámbricos (Bluetooth).
- **Proyector** (cañón): proyecta imágenes en una pantalla o superficie exterior.
### 5.5.3 Periféricos mixtos (entrada/salida)
Realizan simultáneamente funciones de entrada y salida:
- **Pantalla táctil** (touch screen): integra entrada táctil y salida visual. Detecta la posición del toque mediante tecnología capacitiva o resistiva.
- **Impresora multifunción**: combina impresión, escaneado, fotocopiado y fax en un único dispositivo.
- **Tarjeta de red** (NIC): permite la comunicación del ordenador con otros equipos a través de una red. Puede ser Ethernet (cableada) o Wi-Fi (inalámbrica).
### 5.5.4 Periféricos de almacenamiento
Almacenan datos de forma permanente o extraíble. También se denominan memorias secundarias o auxiliares:
- **Disco duro** (HDD): almacenamiento magnético de gran capacidad (hasta varios TB). La información se graba en platos giratorios mediante cabezales de lectura/escritura.
- **Unidad de estado sólido** (SSD): almacenamiento basado en memorias flash NAND. Más rápido, silencioso y resistente que el HDD, pero con mayor coste por GB.
- **Unidades ópticas**: CD-ROM (700 MB), DVD (4,7 GB), Blu-ray (25-50 GB). La lectura se realiza mediante un láser.
- **Memoria USB** (pendrive): almacenamiento flash portátil, conectado mediante puerto USB.
- **Tarjeta de memoria**: formato compacto usado en cámaras, móviles y tablets (SD, microSD, CompactFlash).
### 5.5.5 OCR (Reconocimiento Óptico de Caracteres)
Tecnología que permite convertir imágenes de texto impreso o manuscrito en datos digitales editables. El proceso consta de dos fases: el escáner captura la imagen, y el software OCR analiza las formas de los caracteres, identificándolos y convirtiéndolos en texto codificado (ASCII/Unicode). Sus siglas corresponden a Optical Character Recognition. Se utiliza en digitalización de documentos, escaneado de formularios y reconocimiento de matrículas.
### 5.5.6 Puertos y conectores
Interfaces físicas para la conexión de periféricos al ordenador:
- **USB** (Universal Serial Bus): estándar más extendido. Versiones: USB 2.0 (480 Mbps), USB 3.0 (5 Gbps), USB 3.1/3.2 (10-20 Gbps), USB4 (40 Gbps). Tipos de conector: USB-A, USB-B, USB-C (reversible).
- **HDMI** (High-Definition Multimedia Interface): transmite audio y video digital de alta definición.
- **DisplayPort**: interfaz de video digital, alternativa a HDMI, común en monitores de PC.
- **RJ-45**: conector para redes Ethernet (cable de par trenzado). 8 contactos (8P8C).
- **Jack de audio** (TRS): conector analógico de 3,5 mm para auriculares y micrófono.
- **Bluetooth**: tecnología inalámbrica de corto alcance (2,4 GHz) para periféricos (ratón, teclado, auriculares, altavoces).
## 5.6 Chipset
Conjunto de circuitos integrados en la placa base que gestionan el tráfico de datos entre el procesador, la memoria, los periféricos y otros componentes. En diseños tradicionales se estructura en dos bloques funcionales:
- **Northbridge** (puente norte): gestiona los componentes de alta velocidad: comunicación entre CPU y RAM, controlador gráfico (AGP/PCI Express), y enlace con el Southbridge. Tiene conexión directa con la CPU.
- **Southbridge** (puente sur): gestiona los periféricos de menor velocidad: controladores IDE/SATA (discos), puertos USB, audio integrado (códec), Ethernet, BIOS/CMOS, reloj en tiempo real (RTC), buses de expansión (PCI, ISA) y Super I/O (puerto serie, paralelo, PS/2).
En procesadores modernos (Intel Core, AMD Ryzen), el controlador de memoria y las líneas PCI Express están integrados en la propia CPU, por lo que el Northbridge tradicional ha desaparecido o se ha integrado en el procesador, quedando un único chip similar al Southbridge (Platform Controller Hub en Intel, Fusion Controller Hub en AMD).
## 5.7 Plug and Play (PnP)
Tecnología que permite al sistema operativo detectar y configurar automáticamente los dispositivos hardware conectados al ordenador, sin intervención manual del usuario. El sistema asigna automáticamente los recursos necesarios (IRQ, direcciones de E/S, canales DMA) y carga el controlador (driver) adecuado. Solo es necesario conectar físicamente el dispositivo para que funcione. Introducido por Microsoft a partir de Windows 95, actualmente es un estándar en todos los sistemas operativos modernos (compatible con USB, PCI Express, SATA, etc.).
# 6. MEDIDAS DE CAPACIDAD DE MEMORIA

| Unidad | Descripción |
|--------|-------------|
| Bit | Dígito binario (0 o 1) que representa un estado lógico en un circuito. |
| Nibble | Grupo de 4 bits. |
| Byte | Grupo de 8 bits. Unidad mínima de almacenamiento de datos. |
| Palabra | Conjunto de bits procesados como unidad. Su tamaño depende de la arquitectura (8, 16, 32, 64 bits o más). |

| Unidad | Equivalencia |
|--------|--------------|
| Kilobyte (KB) | 1 KB = 1024 Bytes |
| Megabyte (MB) | 1 MB = 1024 KB |
| Gigabyte (GB) | 1 GB = 1024 MB |
| Terabyte (TB) | 1 TB = 1024 GB |
| Petabyte (PB) | 1 PB = 1024 TB |
| Exabyte (EB) | 1 EB = 1024 PB |
| Zettabyte (ZB) | 1 ZB = 1024 EB |
| Yottabyte (YB) | 1 YB = 1024 ZB |
# 7. SISTEMAS DE NUMERACIÓN

Un sistema de numeración es un conjunto de símbolos y reglas que permiten representar números. En informática se usan principalmente: decimal, binario, octal y hexadecimal.

### Sistemas de numeración

| Sistema | Descripción |
|---------|-------------|
| Decimal | Base 10. Usa los dígitos 0-9. Es el sistema habitual en matemáticas y vida cotidiana. |
| Binario | Base 2. Usa 0 y 1. Es el sistema interno de los ordenadores. |
| Octal | Base 8. Usa los dígitos 0-7. |
| Hexadecimal | Base 16. Usa 0-9 y A-F. Muy usado en informática para representar binario de forma compacta. |

# 8. JUEGOS DE CARACTERES
El código ASCII (American Standard Code for Information Interchange) es un estándar de codificación de caracteres basado en el alfabeto latino. Se creó en 1963 y posteriormente se amplió en versiones extendidas.

ASCII utiliza 7 bits para representar caracteres (128 combinaciones posibles) e incluye caracteres de control y caracteres imprimibles.
## 8.1 ASCII
#### Características de ASCII
- 7 bits de representación
- 33 caracteres de control
- 95 caracteres imprimibles
- Base de muchos sistemas de codificación actuales
#### ASCII extendido

| Codificación | Descripción |
|--------------|-------------|
| CP437 | Usado en IBM PC y MS-DOS en inglés |
| CP850 | Usado en MS-DOS para Europa occidental |
| ISO-8859-1 (Latin-1) | Usado en Unix y base de Windows |
| Windows-1252 | Extensión de Latin-1 en Windows |

## 8.2 UNICODE
Unicode es un estándar universal de codificación de caracteres diseñado para representar textos de múltiples idiomas y símbolos técnicos.
#### Características de Unicode
- Asigna un código único a cada carácter (code point)
- Permite mezclar idiomas en un mismo texto
- Incluye alfabetos, ideogramas y símbolos
## 8.3 UTF-8
UTF-8 es una codificación de Unicode de longitud variable (de 1 a 4 bytes por carácter). Es una de las codificaciones más usadas en sistemas modernos y en la web.
#### Características principales de UTF-8
- Representa cualquier carácter Unicode
- Usa longitud variable (1 a 4 bytes)
- Compatible con ASCII (sin modificaciones)
- Permite sincronización de caracteres
- Evita ambigüedad en la decodificación
#### Distribución de UTF-8

| Nº de bytes | Caracteres representados                                                           |
| ----------- | ---------------------------------------------------------------------------------- |
| 1 byte      | ASCII (128 caracteres)                                                             |
| 2 bytes     | Caracteres extendidos (alfabetos latinos, griego, cirílico, árabe, etc.)           |
| 3 bytes     | Plano multilingüe básico (incluye CJK: chino, japonés y coreano)                   |
| 4 bytes     | Planos suplementarios (símbolos matemáticos, alfabetos antiguos, ideogramas raros) |

#### Ventajas de UTF-8
- Compatible con Unicode completo
- Compatible con ASCII
- Ahorro de espacio en textos latinos
- Buena sincronización de caracteres
#### Desventajas de UTF-8
- Acceso aleatorio más lento por longitud variable
- Textos CJK pueden ocupar más espacio que en UTF-16
- Menor rendimiento en ciertas operaciones de procesamiento masivo
## EBCDIC
EBCDIC (Extended Binary Coded Decimal Interchange Code) es un código de 8 bits usado principalmente en mainframes de IBM.
### Características de EBCDIC
- 8 bits por carácter (256 combinaciones posibles).
- Incluye caracteres alfanuméricos, de control y signos de puntuación.
- Existen múltiples versiones (code pages) incompatibles entre sí.

# 9. SISTEMAS OPERATIVOS
El sistema operativo (SO) es el conjunto de programas que gestionan los recursos del hardware y proporcionan servicios a las aplicaciones de software. Es el software base sobre el que se ejecutan el resto de programas.
## 9.1 Funciones del sistema operativo
- **Gestión de procesos**: creación, suspensión, reanudación y eliminación de procesos. Planificación (scheduling) del uso de la CPU.
- **Gestión de memoria**: asignación y liberación de memoria para los procesos. Gestión de memoria virtual (pagínación, segmentación).
- **Gestión de archivos**: creación, lectura, escritura, borrado y control de acceso a archivos y directorios. Implementación del sistema de archivos (file system).
- **Gestión de entrada/salida**: control de dispositivos periféricos mediante controladores (drivers) y gestión de interrupciones.
- **Gestión de seguridad y protección**: control de acceso de usuarios, autenticación (contraseñas, biométricos), permisos de archivos.
- **Interfaz de usuario**: proporciona un medio de comunicación entre el usuario y el ordenador (línea de comandos o interfaz gráfica GUI).
## 9.2 Clasificación de los sistemas operativos
- **Por número de usuarios**: monotarea (un solo usuario) o multitarea (varios usuarios simultáneos).
- **Por número de tareas**: monotarea (una tarea a la vez) o multitarea (varias tareas concurrentes).
- **Por número de procesadores**: uniprocesador o multiprocesador (simétrico SMP o asimétrico AMP).
- **Por tipo de interfaz**: línea de comandos (CLI) o interfaz gráfica (GUI).
- **Por tiempo de respuesta**: tiempo real (determinista) o tiempo compartido (round-robin).
## 9.3 Ejemplos de sistemas operativos
- **Windows**: SO de Microsoft para PC (Windows 10, Windows 11), servidores (Windows Server) y dispositivos móviles (Windows Mobile, ya discontinuado).
- **Linux**: SO de código abierto basado en Unix. Distribuciones: Ubuntu, Debian, Fedora, CentOS, Red Hat Enterprise Linux. Usado extensamente en servidores y supercomputación.
- **macOS**: SO de Apple para ordenadores Macintosh. Basado en Unix (kernel XNU). Versiones: macOS Sonoma, Sequoia. Interfaz gráfica Aqua.
- **Android**: SO móvil de Google basado en kernel Linux. Utilizado por la mayoría de fabricantes de smartphones y tablets.
- **iOS**: SO móvil de Apple para iPhone, iPad y iPod Touch. Basado en Darwin (Unix).
## 9.4 Sistemas de archivos
Estructura lógica que organiza y almacena los archivos en un dispositivo de almacenamiento:
- **FAT32** (File Allocation Table): sistema de archivos de Microsoft (Windows 95 OSR2). Soporta particiones de hasta 2 TB y archivos de hasta 4 GB. Compatible con múltiples SO. Usado en memorias USB y tarjetas SD.
- **NTFS** (New Technology File System): sistema de archivos moderno de Microsoft (Windows NT 3.1 en adelante). Soporta archivos mayores de 4 GB, permisos de seguridad, cifrado (EFS), compresión, cuotas de disco y journaling. Es el sistema nativo de Windows actual.
- **ext2/ext3/ext4** (Extended File System): sistemas de archivos nativos de Linux. ext4 es el más usado actualmente (soporta volúmenes de hasta 1 EB, archivos de hasta 16 TB y journaling).
- **HFS+ / APFS**: sistemas de archivos de Apple. APFS (Apple File System) es el actual, optimizado para SSD, con cifrado nativo y clonación eficiente.
- **exFAT**: sistema de archivos de Microsoft optimizado para memorias flash y tarjetas SD de gran capacidad (supera el límite de 4 GB de FAT32).

# 10. SEGURIDAD INFORMÁTICA
Conjunto de medidas técnicas, organizativas y legales orientadas a proteger la confidencialidad, integridad y disponibilidad de los sistemas de información frente a amenazas y ataques.
## 10.1 Amenazas y ataques
### Malware (software malicioso)
Programa diseñado para infiltrarse o dañar un sistema informático sin el consentimiento del usuario:
- **Virus**: programa que se replica insertando copias de sí mismo en otros programas o archivos. Requiere intervención del usuario (ejecutar un archivo infectado) para propagarse.
- **Gusano** (worm): programa que se replica a sí mismo para propagarse a través de redes, sin necesidad de infectar otros archivos. Consume ancho de banda y recursos del sistema.
- **Troyano** (trojan horse): programa aparentemente legítimo que oculta código malicioso. No se replica por sí mismo. Puede crear puertas traseras (backdoors).
- **Spyware**: programa que recopila información del usuario sin su conocimiento (contraseñas, hábitos de navegación, datos bancarios) y la envía a un tercero.
- **Adware**: programa que muestra publicidad no deseada. A menudo se instala junto con software gratuito.
- **Ransomware**: programa que cifra los archivos del usuario y exige un rescate (ransom) económico para liberarlos.
- **Rootkit**: conjunto de herramientas que permite acceder de forma oculta a un sistema, ocultando la presencia de otros programas maliciosos.
### Otras amenazas
- **Phishing**: técnica de ingeniería social que suplanta la identidad de una entidad de confianza (banco, administración, empresa) para engañar a la víctima y obtener información confidencial (contraseñas, datos bancarios). Se realiza mediante correo electrónico, mensajes SMS (smishing) o llamadas telefónicas (vishing).
- **Ingeniería social**: conjunto de técnicas que persiguen el engaño a una víctima ganándose su confianza para manipularla y que realice acciones que no debería, como revelar información confidencial o hacer clic en un enlace malicioso.
- **CAPTCHA** (Completely Automated Public Turing test to tell Computers and Humans Apart): prueba automatizada diseñada para distinguir entre un usuario humano y un programa automático (bot). Consiste en presentar una tarea fácil para humanos pero difícil para máquinas (reconocimiento de texto distorsionado, selección de imágenes, etc.).
## 10.2 Mecanismos de defensa
- **Firewall** (cortafuegos): dispositivo o programa que controla el tráfico de red entrante y saliente, permitiendo o denegando la comunicación según reglas de seguridad predefinidas. Puede ser hardware (dispositivo dedicado) o software (programa instalado en el sistema).
- **Antivirus**: programa que detecta, bloquea y elimina malware mediante análisis de firmas, heurística y comportamiento.
- **Cifrado**: transformación de datos mediante algoritmos criptográficos para que solo puedan ser leídos por quien posea la clave adecuada.
## 10.3 Conceptos fundamentales de seguridad
- **Amenaza**: causa potencial de un incidente que puede causar daños a un sistema de información o a una organización.
- **Vulnerabilidad**: debilidad o fallo en un sistema que puede ser explotado por una amenaza.
- **Riesgo**: probabilidad de que una amenaza se materialice explotando una vulnerabilidad, combinada con el impacto potencial.
- **Impacto**: consecuencia o daño resultante de la materialización de una amenaza.

# 11. LENGUAJES DE PROGRAMACIÓN
Lenguaje formal diseñado para comunicar instrucciones a un ordenador. Permite a un programador especificar de manera precisa las operaciones que debe realizar el sistema.
## 11.1 Clasificación por nivel de abstracción
- **Lenguaje máquina**: instrucciones binarias directamente ejecutables por la CPU. Dependiente de la arquitectura del procesador.
- **Lenguaje ensamblador** (assembly): representa las instrucciones máquina mediante nemotécnicos (MOV, ADD, JMP). Requiere un proceso de ensamblado para convertirse en código máquina.
- **Lenguajes de alto nivel**: utilizan sintaxis cercana al lenguaje humano. Ejemplos: Python, Java, C++, JavaScript, C#, Visual Basic.
## 11.2 Clasificación por ejecución
- **Compilados**: el código fuente se traduce a código máquina mediante un compilador, generando un archivo ejecutable independiente. Ejemplos: C, C++, Go, Rust.
- **Interpretados**: el código fuente se ejecuta línea por línea mediante un intérprete, sin generar un ejecutable previo. Ejemplos: Python, JavaScript, PHP, Ruby.
- **Compilados a bytecode**: el código fuente se compila a un código intermedio (bytecode) que se ejecuta en una máquina virtual. Ejemplos: Java (JVM), C# (.NET CLR).
## 11.3 Ejemplos destacados
- **JavaScript**: lenguaje interpretado que los navegadores web ejecutan de forma nativa para dotar de dinamismo e interactividad a las páginas web. También se usa en servidores (Node.js).
- **Python**: lenguaje interpretado de alto nivel, multiparadigma, con sintaxis legible. Muy usado en ciencia de datos, inteligencia artificial, desarrollo web y automatización.
- **Java**: lenguaje compilado a bytecode que se ejecuta en la Máquina Virtual de Java (JVM). Orientado a objetos, multiplataforma. Usado en aplicaciones empresariales y Android.
- **C++**: lenguaje compilado de propósito general, extensión de C con orientación a objetos. Usado en sistemas, videojuegos y aplicaciones de alto rendimiento.
- **C#**: lenguaje de Microsoft para la plataforma .NET. Orientado a objetos, compilado a bytecode (CLR). Usado en aplicaciones Windows y web (ASP.NET).
- **Fortran**: primer lenguaje de alto nivel (1957). Especializado en cálculos científicos y numéricos.
- **Cobol**: lenguaje orientado a aplicaciones empresariales y de gestión (1959). Aún usado en sistemas legacy de la Administración y banca.

# 12. REDES E INTERNET
Una red de ordenadores es un conjunto de equipos interconectados que comparten recursos e información. Internet es la red global que interconecta redes de todo el mundo mediante el protocolo TCP/IP.
## 12.1 Conceptos básicos
- **Servidor**: computadora que proporciona servicios (archivos, correo, web, bases de datos) a otras computadoras llamadas clientes. Puede ser dedicado o compartir recursos.
- **Cliente**: computadora que solicita y consume servicios proporcionados por un servidor.
- **Hosting** (alojamiento web): servicio que ofrece espacio en un servidor para almacenar y servir los archivos de un sitio web, proporcionando conectividad permanente a Internet. Las empresas que lo ofrecen se denominan ISP (Internet Service Provider) o proveedores de hosting.
- **Firewall**: sección 10.2.
- **Conmutador** (switch): dispositivo de red que conecta equipos dentro de una misma red local (LAN), encaminando tramas según direcciones MAC.
- **Enrutador** (router): dispositivo que interconecta redes diferentes, encaminando paquetes IP entre ellas.
## 12.2 Topologías de red
- **Bus**: todos los nodos conectados a un único cable compartido.
- **Estrella**: todos los nodos conectados a un concentrador (hub/switch) central.
- **Anillo**: cada nodo conectado a dos vecinos formando un círculo.
- **Malla**: cada nodo conectado a varios o todos los demás nodos.
## 12.3 Clasificación por alcance
- **PAN** (Personal Area Network): red personal de corto alcance (Bluetooth, USB).
- **LAN** (Local Area Network): red de área local, limitada a un edificio o planta (Ethernet, Wi-Fi).
- **MAN** (Metropolitan Area Network): red de área metropolitana, cubre una ciudad.
- **WAN** (Wide Area Network): red de área extensa, cubre grandes distancias geográficas (Internet).