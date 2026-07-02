> Administración del Sistema operativo y software de base. Actualización, mantenimiento y reparación del sistema operativo.

## 1. Funciones del Administrador de SO

El administrador de sistemas operativos es responsable de:
- **Instalar y configurar** el sistema operativo y software de base.
- **Actualizar parches** y mantener el SO al día.
- **Monitorizar el uso de recursos** (CPU, memoria, disco, red).
- **Corregir incidencias** y restaurar el funcionamiento normal.
- **Gestionar usuarios y permisos**.
- **Planificar y ejecutar** tareas de mantenimiento.

### Software de base y software de aplicación
- **Software de sistema (base)**: sistemas operativos, controladores, utilidades.
- **Software de aplicación**: orientado al usuario final (procesadores texto, hojas cálculo, etc.).
- **Software de desarrollo**: utilizado para crear programas (compiladores, IDEs).

## 2. Componentes y Estructura del SO

### Kernel
- Núcleo del SO, gestiona recursos hardware y software.
- Tipos: **monolítico** (Linux), **microkernel** (mínimas funciones en kernel, resto en espacio usuario), **híbrido** (Windows).

### POSIX (Portable Operating System Interface)
- Norma escrita por **IEEE** para garantizar la portabilidad de aplicaciones entre sistemas Unix.
- AT&T SVR4, OSF/1, BSD 4.4 son implementaciones de POSIX.

### Clasificación de SO
- **Monotarea / Multitarea**: ejecutan uno o varios procesos simultáneamente.
- **Monousuario / Multiusuario**: uno o varios usuarios concurrentes.
- **Centralizado / Distribuido**: recursos gestionados desde un punto o distribuidos en red.

## 3. Gestión de Procesos

### Concepto de proceso
- Programa en ejecución con sus recursos asociados (memoria, ficheros abiertos, hilos).

### Estados de un proceso
1. **Nuevo** (creado)
2. **Listo** (ready, esperando CPU)
3. **Ejecución** (running)
4. **Bloqueado** (waiting, esperando E/S o recurso)
5. **Terminado**

### Hilos (threads)
- Unidad básica de ejecución dentro de un proceso.
- Permiten que un proceso ejecute **múltiples tareas de manera simultánea o concurrente**.
- Comparten memoria y recursos del proceso padre.

### Algoritmos de planificación
- **FIFO / FCFS** (First Come First Served): el primer proceso en llegar es el primero en ejecutarse.
- **Round Robin**: tiempo fijo de CPU por proceso (quantum), rotación circular.
- **SJF** (Shortest Job First): el proceso más corto primero.
- **SRTF** (Short Remaining Time First): variante expropiativa de SJF.

## 4. Gestión de Memoria

### Memoria virtual
- Técnica que permite ejecutar procesos cuyo mapa de memoria es mayor que la RAM física.
- Combina RAM y espacio de intercambio en disco (swap).

### Paginación
- Divide la memoria virtual en **páginas** y la memoria física en **marcos (frames)**.
- Mapa de páginas gestionado por el SO y la MMU.
- **Fallo de página** (page fault): cuando la página solicitada no está en RAM.

### Hiperpaginación (thrashing)
- Cuando el SO pasa más tiempo paginando que ejecutando procesos.

### Segmentación
- Divide la memoria en segmentos lógicos (código, datos, pila).

## 5. Administración del SO en Windows

### Herramientas administrativas
- **MMC** (Microsoft Management Console): consola unificada para snap-ins administrativos.
- **Administración de equipos**: Computer Management (compmgmt.msc).
- **Administración de discos** (diskmgmt.msc): particionado, formateo, cambio de letra.
- **Visor de sucesos** (eventvwr.msc): registros de eventos del sistema, aplicación y seguridad.
- **Monitor de rendimiento** (perfmon.msc): contadores de CPU, memoria, disco, red.
- **Administrador de tareas** (taskmgr.exe): procesos, rendimiento, servicios, usuarios.
- **Programador de tareas** (taskschd.msc): automatización de tareas.
- **Directivas de seguridad local** (secpol.msc): configuración de seguridad.

### Comandos de mantenimiento
- **sfc /scannow**: examina todos los archivos de sistema protegidos y reemplaza los archivos dañados con una copia en caché.
- **chkdsk**: comprueba el estado del disco y repara errores del sistema de archivos.
- **DISM** (Deployment Imaging Service and Management Tool): herramienta para reparar la imagen del sistema Windows (dism /online /cleanup-image /restorehealth).
- **msconfig**: configuración del sistema (arranque, servicios, inicio).

### Gestión de actualizaciones
- **Windows Update**: actualizaciones automáticas de seguridad y características.
- **WSUS** (Windows Server Update Services): gestión centralizada de actualizaciones en empresas.
- Parches de seguridad clasificados por criticidad (crítico, importante, moderado, bajo).

## 6. Administración del SO en Linux

### Gestión de servicios
- **systemctl**: gestiona servicios systemd (start, stop, enable, disable, status).
- **journalctl**: consulta registros del sistema (logs) de systemd-journald.

### Gestión de paquetes
- **Debian/Ubuntu**: apt (apt-get install, update, upgrade).
- **Red Hat/Fedora**: dnf / yum.
- **Arch Linux**: pacman.

### Monitorización
- **top / htop**: procesos en tiempo real.
- **vmstat**: memoria virtual y sistema.
- **iostat**: estadísticas de E/S.
- **df / du**: espacio en disco.
- **free**: memoria RAM y swap.

## 7. Mantenimiento del SO

### Tipos de mantenimiento
- **Preventivo**: acciones programadas para prevenir fallos (limpieza, desfragmentación, actualizaciones).
- **Predictivo**: monitorización para anticipar fallos mediante análisis de tendencias.
- **Correctivo**: reparación tras la detección de un fallo o incidencia.

### Tareas de mantenimiento
- Actualización periódica del SO y software de base (parches de seguridad).
- Monitorización de rendimiento y capacidad.
- Gestión de logs y resolución de incidencias.
- Copias de seguridad de la configuración del sistema.
- Gestión de usuarios y permisos.
- Limpieza de archivos temporales y desfragmentación de discos.

## 8. Particionado y Sistemas de Archivos

### MBR vs GPT
- **MBR** (Master Boot Record): máximo 4 particiones primarias, discos hasta 2 TB.
- **GPT** (GUID Partition Table): parte de UEFI, discos hasta 8 ZB, particiones ilimitadas.

### Sistemas de archivos
- **FAT16**: máximo 2 GB volumen, 4 GB fichero.
- **FAT32**: máximo 2 TB volumen, 4 GB fichero.
- **NTFS**: máximo 16 TB volumen (implementación actual), 16 TB fichero; permisos, cifrado, compresión.
- **exFAT**: para unidades extraíbles, tamaño fichero/volumen mayor que FAT32.
- **ext4**: sistema de archivos estándar en Linux.
- **ReFS**: Resilient File System de Microsoft.
