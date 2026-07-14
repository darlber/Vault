# EJERCICIOS METASPLOIT

### Prerrequisitos

- [ ] Kali Linux  
- [ ] Metasploitable2

Para las siguientes vulnerabilidades, escanea la máquina Metasploitable2 (o utiliza un escaneo anterior si lo tienes guardado), investiga las vulnerabilidades, encuentra el puerto y servicio donde pueden darse y comprueba si puedes explotarlas. En caso de elegir un payload, explica tu elección.  
Como extra, una vez comprometida la máquina, puedes buscar información como el usuario actual, hostname, versión del sistema, o interfaces de red.

## BÁSICO

## Ejercicio 1 \- DistCC

Ficha de la vulnerabilidad:

* CVE  
* Descripción  
* A qué software afecta  
* Utilidad del software  
* Versiones del software afectadas  
* Puertos que lo utilizan  
* Módulos de metasploit relacionados

Explotar la vulnerabilidad:

* Buscar módulos de exploit en Metasploit  
* Elegir payload  
* Configurar y explotar

## Ejercicio 2 \- Samba Usermap Script 

Ficha de la vulnerabilidad:

* CVE  
* Descripción  
* A qué software afecta  
* Utilidad del software  
* Versiones del software afectadas  
* Puertos que lo utilizan  
* Módulos de metasploit relacionados

Explotar la vulnerabilidad:

* Buscar módulos de exploit en Metasploit  
* Elegir payload  
* Configurar y explotar

Ejercicio 3 \- Java RMI  
Ficha de la vulnerabilidad:

* CVE  
* Descripción  
* A qué software afecta  
* Utilidad del software  
* Versiones del software afectadas  
* Puertos que lo utilizan  
* Módulos de metasploit relacionados

Explotar la vulnerabilidad:

* Buscar módulos de exploit en Metasploit  
* Elegir payload  
* Configurar y explotar

## AVANZADO

Ejercicio 4 \- Metasploit

* Crea un workspace de trabajo llamado “metasploitable2”  
* Cambiar al workspace recién creado.  
* Realiza un escaneo de puertos contra la máquina utilizando db\_nmap  
* Comprueba las entradas en la base de datos de workspace.   
  * Equipos descubiertos  
  * Servicios y puertos  
  * Vulnerabilidades asociadas  
* Realiza una importación a la base de datos de metasploit mediante db\_import, de los resultados de otra herramienta.

Ejercicio 5 \- EternalBlue  
Ficha de la vulnerabilidad:

* CVE  
* Descripción  
* A qué software afecta  
* Utilidad del software  
* Versiones del software afectadas  
* Puertos que lo utilizan  
* Módulos de metasploit relacionados

Explotar la vulnerabilidad:

* Buscar módulos de exploit en Metasploit  
* Elegir payload  
* Configurar y explotar  
* Dejar sesión en background (segundo plano)  
* Demostrar que la sesión está en background  
* Recuperar la sesión

Ejercicio 6 \- Backdoors  
Explota las backdoors:

* Vsftpd  
* UnrealIRCd


¿Por qué se consideran backdoors y no vulnerabilidades?

Ejercicio 7 \- Módulos auxiliares \- PostgreSQL  
Realizar un ataque de fuerza bruta con los módulos auxiliares correspondientes para conseguir las credenciales de acceso de PostgreSQL y explotarlo para conseguir acceso a la máquina con meterpreter.   
Puedes utilizar los diccionarios disponibles en Kali en la ruta /usr/share/wordlists/metasploit/ y ten en cuenta en las opciones que tanto usuario como contraseña pueden estar en blanco.

Una vez obtenida la sesión, identifica:

* El usuario actual  
* Hostname  
* Sistema operativo  
* Interfaces de red

Ejercicio 8 \- Módulos auxiliares \- FTP y VNC Server  
Realizar un ataque de fuerza bruta con los módulos auxiliares correspondientes para conseguir las credenciales de acceso de FTP y VNC Server.

Ejercicio 9 \- MSFVenom

* Generar con MSFVenom un payload para sistemas Linux que establezca una conexión reversa con el equipo atacante.  
* Transferir el payload a la máquina Metasploitable2.  
* Asignar permisos de ejecución al archivo y ejecutarlo en la máquina víctima.  
* Configurar el módulo exploit/multi/handler para recibir la conexión.  
* Obtener una sesión y comprobar el acceso conseguido.  
* Reúne la información de usuario, sistema operativo, etc.