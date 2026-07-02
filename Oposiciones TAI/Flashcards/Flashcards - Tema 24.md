#flashcards/adminsistema24

# Flashcards - Tema 24: Administración del SO y Software de Base

## Funciones del Administrador de SO

Administrador SO controla funcionamiento del sistema::Sí, instala SO, actualiza parches, monitoriza recursos, corrige incidencias

Software de sistema incluye::Sistemas operativos

SO se encarga de::Administrar recursos del sistema

## Kernel

Kernel (núcleo)::Gestiona recursos hardware y software

TIPOS de kernel::Monolítico, microkernel, híbrido

POSIX::Norma IEEE para portabilidad de SO, interface Portable Operating System

## Gestión de Procesos

Proceso::Programa en ejecución con recursos asociados

Estados de un proceso::Nuevo, Listo, Ejecución, Bloqueado, Terminado

Hilos (threads)::Unidad básica de ejecución; permiten tareas simultáneas/concurrentes en un proceso

Algoritmo FIFO/FCFS::First Come First Served, el primero en llegar se ejecuta primero

Round Robin::Tiempo fijo de CPU por proceso (quantum), rotación circular

SJF::Shortest Job First, proceso más corto primero

SRTF::Short Remaining Time First, variante expropiativa de SJF

## Gestión de Memoria

Memoria virtual::Técnica que permite ejecutar procesos mayores que la RAM usando espacio de swap

Paginación::Divide memoria virtual en páginas y memoria física en marcos (frames)

Fallo de página (page fault)::La página solicitada no está en RAM

Hiperpaginación (thrashing)::SO pasa más tiempo paginando que ejecutando procesos

## Administración Windows

MMC::Microsoft Management Console, consola unificada de snap-ins

Visor de sucesos (Windows)::eventvwr.msc

Monitor de rendimiento::perfmon.msc

sfc /scannow::Examina archivos sistema protegidos y reemplaza dañados con copia en caché

chkdsk::Comprueba estado del disco y repara errores del sistema de archivos

DISM::Herramienta para reparar la imagen del sistema Windows

## Administración Linux

systemctl::Gestiona servicios systemd en Linux

journalctl::Consulta logs de systemd-journald en Linux

## Mantenimiento

Mantenimiento preventivo::Acciones programadas para prevenir fallos

Mantenimiento predictivo::Monitorización para anticipar fallos

Mantenimiento correctivo::Reparación tras detectar un fallo

## Particionado y Sistemas de Archivos

MBR::Máximo 4 particiones primarias, discos hasta 2 TB

GPT::Discos hasta 8 ZB, parte de UEFI, particiones ilimitadas

Tamaño máximo fichero FAT32::4 GB

Tamaño máximo fichero NTFS (implementación actual)::16 TB

ext4::Sistema de archivos estándar en Linux

ReFS::Resilient File System de Microsoft
