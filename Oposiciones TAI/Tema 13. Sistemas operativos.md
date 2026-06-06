> Sistemas operativos. Características y elementos constitutivos. Sistemas Windows. Sistemas Unix y Linux. Sistemas operativos para dispositivos móviles.

## 1. Sistemas Operativos: Características y Elementos Constitutivos

### Concepto
- **Sistema Operativo (SO)**: software que actúa de intermediario entre el usuario/hardware y los programas de aplicación. Gestiona los recursos del sistema (CPU, memoria, E/S, almacenamiento) y proporciona una interfaz (CLI/GUI).
- **Objetivos**: comodidad, eficiencia, capacidad de evolución, abstracción del hardware.

### Evolución histórica
- Procesamiento por lotes (batch) -> Sistemas multiprogramados -> Tiempo compartido -> Tiempo real -> Distribuidos -> Móviles/Cloud.

### Elementos constitutivos (componentes del SO)
1. **Kernel (núcleo)**: parte central del SO que se ejecuta en modo privilegiado (núcleo/procesador). Gestiona procesos, memoria, E/S. NO es hardware (es software).
2. **Gestión de procesos**: crea, suspende, reanuda y elimina procesos. Planifica la asignación de CPU.
3. **Gestión de memoria**: asigna y libera memoria a los procesos. Implementa memoria virtual.
4. **Sistema de archivos**: organiza, almacena y recupera datos en dispositivos de almacenamiento.
5. **Gestión de E/S**: maneja drivers y dispositivos periféricos.
6. **Gestión de seguridad**: control de acceso, permisos, autenticación.

### Gestión de Procesos

**Proceso**: programa en ejecución. Incluye código, datos, pila y contexto (registros, contador de programa).

**Estados de un proceso**:
- **Nuevo** (new): se crea.
- **Listo** (ready): preparado para ejecutarse, espera CPU.
- **Ejecución** (running): la CPU ejecuta sus instrucciones.
- **Bloqueado** (waiting/blocked): espera un evento (E/S, recurso).
- **Terminado** (terminated): finaliza.

Transiciones: admitir (new->ready), des/planificar (ready->running, running->ready), esperar evento (running->waiting), evento (waiting->ready), fin (running->terminated).

**Planificación de CPU** (scheduling): decide qué proceso ejecuta la CPU.

| Algoritmo | Característica | ¿Apropiativo? |
|---|---|---|
| **FCFS** (First Come First Served) | Cola FIFO, el primero en llegar se ejecuta primero | No |
| **SJF** (Shortest Job First) | Ejecuta el proceso con menor ráfaga de CPU siguiente | No (no apropiativo) |
| **SRTF** (Shortest Remaining Time First) | Ejecuta el proceso con menor tiempo restante; puede interrumpir | **Sí** (apropiativo) |
| **Round Robin (RR)** | Asigna un **quantum** de tiempo a cada proceso en turno circular | Sí |
| **Por prioridades** | Ejecuta el de mayor prioridad; puede ser apropiativo o no | Depende |

- **Apropiativo (preemptive)**: el SO puede interrumpir un proceso en ejecución para asignar la CPU a otro.
- **No apropiativo (non-preemptive)**: el proceso retiene la CPU hasta que termina o se bloquea voluntariamente.
- El algoritmo que usa **quantum** de tiempo es **Round Robin**.

**Registros del procesador relacionados**:
- **MAR** (Memory Address Register): registro que contiene la dirección de memoria a la que se va a acceder.
- **MBR** (Memory Buffer Register): datos leídos o a escribir en memoria.
- **PC** (Program Counter): dirección de la siguiente instrucción.
- **IR** (Instruction Register): instrucción actual en ejecución.

### Gestión de Memoria

- **Funciones**: asignar memoria a procesos, liberarla al terminar, proteger espacios, implementar memoria virtual.
- **Esquemas**:
  - **Particiones fijas**: memoria dividida en regiones de tamaño fijo.
  - **Particiones variables**: regiones de tamaño dinámico según necesidad.
  - **Paginación**: memoria física dividida en marcos (frames) de igual tamaño; memoria lógica en páginas del mismo tamaño. La **MMU** (Memory Management Unit) traduce direcciones virtuales a físicas. La **TLB** (Translation Lookaside Buffer) es una caché de la MMU que acelera la traducción.
  - **Segmentación**: división en segmentos de tamaño variable (código, datos, pila).
  - **Memoria virtual**: permite ejecutar procesos aunque estén parcialmente cargados en memoria. Se implementa mediante **paginación por demanda** (se cargan páginas cuando se necesitan). Usa espacio de intercambio (swap) en disco.

### Sistema de Archivos

- **Función**: organizar, almacenar y recuperar datos en almacenamiento secundario.
- **Organización jerárquica**: agrupar ficheros en carpetas (directorios), formando un árbol invertido. La función principal de los directorios es organizar ficheros y proporcionar información sobre ellos.

**Esquemas de asignación de espacio en disco**:
- **Asignación contigua**: bloques adyacentes continuos. Ventaja: acceso secuencial rápido. Desventaja: fragmentación externa.
- **Asignación enlazada**: cada bloque apunta al siguiente.
- **Asignación indexada**: un bloque índice contiene punteros a todos los bloques del archivo.

**Sistemas de archivos típicos**:

| SO | Sistema de archivos |
|---|---|
| Windows | **FAT32**, **NTFS**, exFAT |
| Linux | **ext2**, **ext3**, **ext4**, XFS, Btrfs |
| macOS | **APFS**, HFS+ |
| Unix | UFS, ZFS |

- **FAT32**: tabla de asignación de archivos de 32 bits; máximo 4 GB por archivo; compatible con muchos SO.
- **NTFS**: sistema de archivos principal de Windows; soporta permisos, cifrado (EFS), compresión, journaling, cuotas, archivos > 4 GB.
- **ext4**: sistema de archivos por defecto en Linux; journaling, soporte de hasta 1 EB, extents.

### Gestión de Entrada/Salida (E/S)

- Controladores (drivers): software que permite al SO comunicarse con dispositivos hardware.
- Métodos de E/S: programada, por interrupciones, DMA (Acceso Directo a Memoria).
- Spooling: técnica que utiliza un área de almacenamiento intermedio para gestionar dispositivos compartidos (ej: impresión).

### Gestión de Seguridad

- Control de acceso a recursos mediante **permisos**.
- Técnicas: autenticación (usuario/contraseña, biométrica), cifrado, auditoría.
- En Linux: permisos rwx (lectura, escritura, ejecución) para propietario/grupo/otros.
- **SUID** (Set User ID): al ejecutar un archivo, el proceso adopta los permisos del propietario del archivo.
- **SGID** (Set Group ID): el proceso adopta los permisos del grupo del archivo.
- **Sticky bit**: en directorios, solo el propietario puede eliminar/renombrar sus archivos (ej: /tmp).

## 2. Sistemas Windows

### Historia y versiones
- MS-DOS -> Windows 1.0 (1985) -> Windows 3.1 -> Windows 95/98/ME -> Windows NT (núcleo independiente) -> Windows 2000 -> Windows XP -> Windows Vista -> Windows 7 -> Windows 8 -> **Windows 10** (2015) -> **Windows 11** (2021).
- Windows 10 y 11 comparten el mismo núcleo NT.
- Windows Server: versiones para servidores (Server 2016, 2019, 2022).

### Características principales
- Interfaz gráfica de usuario (GUI) con ventanas, iconos, menús.
- **Barra de tareas**: permite ocultarla automáticamente, usar botones pequeños, bloquearla.
- **Explorador de archivos**: gestión de archivos y carpetas.
- **Símbolo del sistema (CMD)**: intérprete de comandos en modo texto.
- **PowerShell**: shell más potente con soporte para scripts y cmdlets.

### Atajos de teclado en Windows
| Atajo | Función |
|---|---|
| **F2** (seleccionando icono) | Cambiar nombre del archivo/carpeta |
| **Doble clic en barra título** | Maximizar / restaurar ventana |
| **Shift + Supr** | Borrar un archivo sin enviarlo a la Papelera de reciclaje |
| **Windows + D** | Mostrar/ocultar escritorio |
| **Windows + E** | Abrir Explorador de archivos |
| **Alt + Tab** | Cambiar entre ventanas abiertas |
| **Ctrl + Shift + Esc** | Administrador de tareas |
| **Windows + L** | Bloquear sesión |
| **Windows + I** | Configuración |
| **Windows + R** | Ejecutar |

### Administración del sistema
- **Panel de control** y **Configuración** (Windows+I): ajustes del sistema.
- **Administrador de tareas** (Ctrl+Shift+Esc): monitoriza procesos, rendimiento, aplicaciones de inicio.
- **Visor de eventos**: registros de eventos del sistema.
- **Monitor de recursos**: rendimiento detallado de CPU, memoria, disco, red.
- **Símbolo del sistema (CMD)**: para tareas administrativas mediante comandos (ipconfig, ping, diskpart, sfc).

## 3. Sistemas Unix y Linux

### Historia
- **Unix**: desarrollado en Bell Labs (AT&T) por Ken Thompson y Dennis Ritchie (1969-1970). Lenguaje C. Base de muchos sistemas posteriores.
- **GNU**: proyecto de Richard Stallman (1983) para crear un SO libre compatible con Unix.
- **Linux**: creado por Linus Torvalds (1991) como núcleo (kernel) libre. Combinado con herramientas GNU forma el SO completo (GNU/Linux).
- El **kernel** de Linux es el núcleo del SO, gestiona procesos, memoria, drivers, etc.

### Distribuciones Linux
| Distribución | Base | Característica |
|---|---|---|
| **Debian** | Independiente | Estable, gran repositorio de paquetes |
| **Ubuntu** | Debian | Popular, fácil uso, soporte LTS |
| **Fedora** | Red Hat | Innovador, tecnologías recientes |
| **Alpine** | Independiente | Ligera, usada en contenedores Docker |
| **Arch** | Independiente | Rolling release, personalizable |
| **Red Hat Enterprise Linux (RHEL)** | Fedora | Enterprise, soporte comercial |
| **openSUSE** | Independiente | Estable, herramientas YaST |
| **Linux Mint** | Debian/Ubuntu | Escritorio clásico |
| **MATE** | GNOME 2 | **Fork de GNOME**, escritorio ligero |
| **Cinnamon** | GNOME 3 | Escritorio desarrollado por Linux Mint |
| **Unity** | Canonical | Antiguo escritorio de Ubuntu |
| **LXDE** | Independiente | Escritorio muy ligero |

- **NO** está basada en Debian: **ArcaOS** (es un SO comercial basado en OS/2), **Fedora** (basada en Red Hat), **Alpine** (independiente), **Arch** (independiente).

### WSL (Windows Subsystem for Linux)
- Permite integrar Linux en Windows 10/11 (distribuciones como Ubuntu, Debian, Alpine).
- WSL 2: usa kernel Linux real sobre Hyper-V, mejor rendimiento, compatibilidad total de llamadas al sistema.

### Estructura del sistema de archivos Linux (FHS)
| Directorio | Contenido |
|---|---|
| **/** | Raíz del sistema de archivos |
| **/root** | Directorio home del usuario root |
| **/home** | Directorios personales de los usuarios |
| **/etc** | Archivos de configuración del sistema |
| **/var** | Datos variables (logs, colas, bases de datos) |
| **/tmp** | Archivos temporales |
| **/usr** | Programas y datos de usuario (binarios, librerías, documentación) |
| **/bin** | Comandos binarios esenciales del sistema |
| **/sbin** | Comandos binarios de administración del sistema |
| **/lib** | Librerías compartidas necesarias para /bin y /sbin |
| **/dev** | Archivos de dispositivo |
| **/proc** | Sistema de archivos virtual con información de procesos y kernel |

### Comandos básicos de Linux

**Información del sistema:**
- `uname -r`: ver la versión del kernel de Linux.
- `uname -a`: toda la información del sistema.
- `top`: monitorizar procesos en tiempo real (CPU, memoria, PID).
- `htop`: versión mejorada de top (más visual, interactiva).
- `ps`: listar procesos activos.
- `ps aux`: todos los procesos del sistema.
- `df -h`: espacio en disco.
- `free -h`: memoria RAM y swap.
- `dmesg`: mensajes del kernel.

**Gestión de archivos y directorios:**
- `ls`: listar archivos y directorios.
- `cd`: cambiar de directorio.
- `pwd`: mostrar directorio actual.
- `mkdir`: crear directorio.
- `rm`: eliminar archivos/directorios.
- `cp`: copiar archivos/directorios.
- `mv`: mover/renombrar.
- `cat`: mostrar contenido de archivo.
- `less`/`more`: ver archivos por páginas.
- `find`: buscar archivos.
- `grep`: buscar texto dentro de archivos.
- `chmod`: cambiar permisos de archivos/directorios.

**Gestión de paquetes:**
- **Debian/Ubuntu (apt)**: `apt install <paquete>`, `apt update`, `apt upgrade`.
  - Ej: `apt install openssh-server` → instala el servidor SSH.
- **Red Hat/Fedora (dnf/yum)**: `dnf install <paquete>`.
- **Alpine (apk)**: `apk add <paquete>`.

**Red:**
- `ifconfig`: configurar/interfaces de red (obsoleto, usar `ip a`).
- `ping`: probar conectividad.
- `ssh`: conexión remota segura.
- `scp`: copia segura de archivos.
- `rsync`: sincronizar archivos entre directorios/locales/remotos (eficiente, solo transfiere diferencias).
- `curl`/`wget`: descargar archivos de internet.

**Otros:**
- `sudo`: ejecutar comandos con permisos de superusuario.
- `apt install openssh-server` → instalar SSH en Linux.
- `shutdown`, `reboot`: apagar/reiniciar.

### Permisos en Linux

**Formato:**
- `-rwxr-xr-x` (10 caracteres): tipo + 3 grupos de 3 (propietario, grupo, otros).
- `r` (4) = lectura, `w` (2) = escritura, `x` (1) = ejecución.
- `chmod 755 archivo` → propietario: rwx (7), grupo: r-x (5), otros: r-x (5).
- `chmod 644 archivo` → propietario: rw- (6), grupo: r-- (4), otros: r-- (4).

**Permisos especiales:**
- **SUID** (4xxx): al ejecutar un archivo, el proceso toma los permisos del propietario. Se representa como `s` en el campo de ejecución del propietario (ej: `-rwsr-xr-x`).
- **SGID** (2xxx): el proceso toma los permisos del grupo. En directorios, los nuevos archivos heredan el grupo. Se representa como `s` en el campo de ejecución del grupo.
- **Sticky bit** (1xxx): solo el propietario puede eliminar sus archivos en el directorio (ej: `/tmp`). Se representa como `t` en el campo de ejecución de otros (ej: `drwxrwxrwt`).

## 4. Sistemas Operativos para Dispositivos Móviles

### Android
- Basado en **Linux** (kernel modificado).
- Desarrollado por **Google**.
- Código abierto (AOSP - Android Open Source Project).
- Usa **Java/Kotlin** para apps (ejecutadas en ART - Android Runtime).
- Arquitectura: kernel Linux, HAL (Hardware Abstraction Layer), Native Libraries, Android Runtime, Application Framework, Apps.
- Versiones: nombradas por postres (Android 10 en adelante solo números).

### iOS
- Desarrollado por **Apple** para iPhone, iPod touch.
- Basado en **Unix** (derivado de Darwin/XNU, con kernel XNU - híbrido).
- Código cerrado (excepto partes open source).
- Usa **Swift/Objective-C** para apps.
- Arquitectura: Core OS (kernel Darwin), Core Services, Media Layer, Cocoa Touch.
- Interfaz táctil con gestos multi-touch.

### iPadOS
- Derivado de iOS, específico para iPad (2019).
- Funcionalidades multitarea mejoradas, soporte Apple Pencil.

### macOS
- SO de Apple para ordenadores Mac.
- Basado en **Unix** (certificado UNIX 03, kernel XNU).
- Desarrollado a partir de NeXTSTEP (adquirido por Apple en 1997).
- Versiones recientes: macOS Ventura (13), macOS Sonoma (14), macOS Sequoia (15).
- Arquitectura: Darwin (kernel XNU + drivers + BSD) + Aqua (interfaz gráfica).

### watchOS y tvOS
- **watchOS**: Apple Watch, basado en iOS, enfocado en salud y notificaciones.
- **tvOS**: Apple TV, basado en iOS, enfocado en entretenimiento.

### Comparativa Android vs iOS
| Aspecto           | Android                    | iOS                   |
| ----------------- | -------------------------- | --------------------- |
| Kernel base       | Linux (modificado)         | XNU (Unix/Darwin)     |
| Desarrollador     | Google                     | Apple                 |
| Modelo            | Código abierto (AOSP)      | Código cerrado        |
| Lenguaje apps     | Java/Kotlin                | Swift/Objective-C     |
| Distribución apps | Google Play                | App Store             |
| Personalización   | Alta                       | Limitada              |
| Actualizaciones   | Fragmentadas (fabricantes) | Centralizadas (Apple) |
