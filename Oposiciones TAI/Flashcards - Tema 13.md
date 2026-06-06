#flashcards/informatica

# Flashcards - Tema 13: Sistemas Operativos

## Concepto y Componentes del SO

Sistema Operativo::Software intermediario entre usuario/hardware y aplicaciones; gestiona recursos (CPU, memoria, E/S, almacenamiento)
<!--SR:!2026-06-08,3,250-->

Componentes del SO (elementos constitutivos)::Kernel, gestión de procesos, gestión de memoria, sistema de archivos, gestión de E/S, gestión de seguridad
<!--SR:!2026-06-08,3,250-->

Kernel::Parte central del SO, se ejecuta en modo privilegiado; gestiona procesos, memoria y E/S; NO es hardware (es software)
<!--SR:!2026-06-10,4,270-->

Qué NO es el kernel::No es hardware, no es el núcleo del procesador (es software, el núcleo del SO)

Función del sistema de archivos::Organizar, almacenar y recuperar datos en dispositivos de almacenamiento

Función del gestor de memoria::Asignar memoria a procesos y liberarla al terminar; proteger espacios; implementar memoria virtual

## Gestión de Procesos

Estados de un proceso (5)::Nuevo → Listo → Ejecución → Bloqueado → Terminado

Transición de Listo a Ejecución::Planificación/despacho (scheduling)
<!--SR:!2026-06-10,4,270-->

Transición de Ejecución a Bloqueado::El proceso espera un evento (E/S, recurso)

Transición de Bloqueado a Listo::Ocurre el evento esperado

Transición de Ejecución a Listo::Interrupción (quantum agotado, proceso de mayor prioridad)

FCFS (First Come First Served)::Cola FIFO, el primero en llegar se ejecuta primero; no apropiativo
<!--SR:!2026-06-10,4,270-->

SJF (Shortest Job First)::Ejecuta el proceso con menor ráfaga de CPU siguiente; no apropiativo

SRTF (Shortest Remaining Time First)::Ejecuta el proceso con menor tiempo restante; puede interrumpir; **apropiativo**

Round Robin::Asigna un **quantum** de tiempo a cada proceso en turno circular; apropiativo

Qué algoritmo de planificación usa quantum::Round Robin

Qué algoritmo de planificación es apropiativo (2)::Round Robin y SRTF (Shortest Remaining Time First)
<!--SR:!2026-06-09,3,250-->

Qué algoritmo de planificación NO es apropiativo (2)::FCFS y SJF
<!--SR:!2026-06-07,1,230-->

Planificación apropiativa (preemptive) vs no apropiativa::Apropiativo: el SO puede interrumpir un proceso; No apropiativo: el proceso retiene la CPU hasta terminar o bloquearse

MAR::Memory Address Register: contiene la dirección de memoria a la que se va a acceder
<!--SR:!2026-06-09,3,250-->

Registro que contiene dirección de memoria::MAR
<!--SR:!2026-06-09,3,250-->

MBR::Memory Buffer Register: datos leídos o a escribir en memoria

PC::Program Counter: dirección de la siguiente instrucción

IR::Instruction Register: instrucción actual en ejecución
<!--SR:!2026-06-09,3,250-->

## Gestión de Memoria

Particiones fijas::Memoria dividida en regiones de tamaño fijo
<!--SR:!2026-06-09,3,250-->

Particiones variables::Regiones de tamaño dinámico según necesidad
<!--SR:!2026-06-10,4,270-->

Paginación::Memoria física dividida en marcos (frames) de igual tamaño; memoria lógica en páginas del mismo tamaño; MMU traduce virtual a física

Memoria caché empleada por la MMU::TLB (Translation Lookaside Buffer)

TLB::Caché de la MMU que acelera la traducción de direcciones virtuales a físicas

Segmentación::División de la memoria en segmentos de tamaño variable (código, datos, pila)
<!--SR:!2026-06-10,4,270-->

Memoria virtual::Permite ejecutar procesos aunque estén parcialmente cargados en memoria; se implementa con paginación por demanda y espacio de swap

Paginación por demanda::Técnica para implementar memoria virtual: se cargan páginas cuando se necesitan

## Sistema de Archivos

Organización jerárquica de archivos::Agrupar ficheros en carpetas (directorios), formando un árbol invertido

Función principal de los directorios::Organizar ficheros y proporcionar información sobre ellos

Asignación contigua de espacio en disco::Bloques adyacentes continuos; acceso secuencial rápido, pero fragmentación externa
<!--SR:!2026-06-09,3,250-->

Asignación enlazada de espacio en disco::Cada bloque apunta al siguiente

Asignación indexada de espacio en disco::Un bloque índice contiene punteros a todos los bloques del archivo

FAT32::Tabla de asignación de archivos de 32 bits; máximo 4 GB por archivo; compatible con muchos SO
<!--SR:!2026-06-10,4,270-->

NTFS::Sistema de archivos principal de Windows; soporta permisos, cifrado (EFS), compresión, journaling, cuotas, archivos > 4 GB

ext4::Sistema de archivos por defecto en Linux; journaling, soporte hasta 1 EB, extents

## Gestión de E/S y Seguridad

Controladores (drivers)::Software que permite al SO comunicarse con dispositivos hardware

Spooling::Técnica que usa almacenamiento intermedio para gestionar dispositivos compartidos (ej: impresión)

SUID (Set User ID)::Al ejecutar un archivo, el proceso adopta los permisos del propietario del archivo

SGID (Set Group ID)::Al ejecutar un archivo, el proceso adopta los permisos del grupo del archivo
<!--SR:!2026-06-09,3,250-->

Sticky bit::En directorios, solo el propietario puede eliminar/renombrar sus archivos (ej: /tmp)

Permiso rwx en Linux::r=lectura (4), w=escritura (2), x=ejecución (1)

chmod 755::Propietario: rwx (7), Grupo: r-x (5), Otros: r-x (5)

chmod 644::Propietario: rw- (6), Grupo: r-- (4), Otros: r-- (4)
<!--SR:!2026-06-09,3,250-->

## Windows

Versiones de Windows (de MS-DOS a Windows 11)::MS-DOS → Win 1.0 → 3.1 → 95/98/ME → NT → 2000 → XP → Vista → 7 → 8 → **10** (2015) → **11** (2021)

Barra de tareas de Windows::Permite ocultarla automáticamente, usar botones pequeños, bloquearla
<!--SR:!2026-06-09,3,250-->

Función del comando CMD::Acceder al símbolo del sistema (intérprete de comandos en modo texto)

PowerShell::Shell más potente que CMD con soporte para scripts y cmdlets
<!--SR:!2026-06-10,4,270-->

F2 en Windows seleccionando un icono::Cambiar nombre del archivo/carpeta

Doble clic en barra de título de Windows::Maximizar / restaurar ventana

Shift + Supr en Windows::Borrar un archivo sin enviarlo a la Papelera de reciclaje

Windows + D::Mostrar/ocultar escritorio

Ctrl + Shift + Esc::Administrador de tareas

## Unix y Linux

Creador de Unix::Ken Thompson y Dennis Ritchie (Bell Labs, AT&T, 1969-1970)

Creador de Linux::Linus Torvalds (1991)

Proyecto GNU::Richard Stallman (1983) para crear un SO libre compatible con Unix

WSL (Windows Subsystem for Linux)::Permite integrar Linux en Windows 10/11 (ej: Ubuntu, Debian, Alpine)

Es un fork de GNOME::MATE (escritorio ligero, fork de GNOME 2)

Distribución Linux ligera usada en contenedores::Alpine

Distribuciones basadas en Debian (ejemplos)::Ubuntu, Linux Mint (NO: ArcaOS, Fedora, Alpine, Arch)

Comando para ver versión del kernel Linux::uname -r

Comando para monitorizar procesos en tiempo real::top (también htop)

Comando para instalar SSH en Linux::apt install openssh-server
<!--SR:!2026-06-10,4,270-->

Comando para sincronizar archivos::rsync
<!--SR:!2026-06-07,1,230-->

Comando para listar archivos::ls
<!--SR:!2026-06-10,4,270-->

Comando para cambiar de directorio::cd

Comando para cambiar permisos::chmod
<!--SR:!2026-06-10,4,270-->

Directorio /etc::Archivos de configuración del sistema

Directorio /var::Datos variables (logs, colas, bases de datos)

Directorio /tmp::Archivos temporales

Directorio /home::Directorios personales de los usuarios
<!--SR:!2026-06-10,4,270-->

Directorio /root::Directorio home del usuario root

Directorio /bin::Comandos binarios esenciales del sistema

## SO Móviles

Android está basado en::Linux (kernel modificado)

Android es desarrollado por::Google
<!--SR:!2026-06-09,3,250-->

iOS está basado en::Unix (kernel XNU/Darwin)
<!--SR:!2026-06-10,4,270-->

iOS es desarrollado por::Apple

macOS está basado en::Unix (certificado UNIX 03, kernel XNU)

iPadOS::Derivado de iOS, específico para iPad (2019), multitarea y soporte Apple Pencil

Android usa para apps::Java / Kotlin (ejecutadas en ART)

iOS usa para apps::Swift / Objective-C

Versiones recientes de macOS::Ventura (13), Sonoma (14), Sequoia (15)
<!--SR:!2026-06-10,4,270-->

watchOS::Apple Watch, basado en iOS, salud y notificaciones

tvOS::Apple TV, basado en iOS, entretenimiento
