Antes de ejecutar los scripts:
1. **Autenticarse** y obtener token:

```sh
curl -k -s -X POST "https://localhost:8834/session" \
  -H "Content-Type: application/json" \
  -d '{"username":"USUARIO","password":"CONTRASEÑA"}'
```

→ Copiar el token `"token":"..."` que devuelve.

2. **Listar scans** y ver IDs:

```sh
curl -k -s -X GET "https://localhost:8834/scans" \
  -H "X-Cookie: token=TOKEN"
```

3. **Descargar JSON** de cada scan:

```sh
curl -k -s -X GET "https://localhost:8834/scans/ID" \
  -H "X-Cookie: token=TOKEN" -o scan.json
```

4. **Ejecutar script** con ese JSON y el ID:

```sh
python3 nessus2pdf.py scan.json ID "Black Box" "TOKEN"
```

# Ejercicio 1 \- OpenVAS

Realizar un análisis de vulnerabilidades sobre el equipo Metasploitable2 utilizando  
OpenVAS.  
Exportar informe PDF y adjuntarlo con la entrega.

# Ejercicio 2 \- Nessus

Realizar un análisis de vulnerabilidades sobre el equipo Metasploitable2 en modo  
Black Box:  
Tipo: Basic Network Scan  
Sin credenciales

Exportar informe en dos PDFs y adjuntarlos con la entrega:  
Ejecutivo: Complete List of Vulnerabilities by Host  
Técnico: Detailed Vulnerabilities by Host

# Ejercicio 3 \- Nessus

Realizar un análisis de vulnerabilidades sobre el equipo Metasploitable2 en modo  
White Box:  
Tipo: Basic Network Scan  
Con credenciales: username: msfadmin \- password: msfadmin

Exportar informe en dos PDFs y adjuntarlos con la entrega:  
Ejecutivo: Complete List of Vulnerabilities by Host  
Técnico: Detailed Vulnerabilities by Host

# Ejercicio 4 \- Comparación de resultados

## 4.1. Tabla

Realiza una pequeña tabla resumen comparando cuantas vulnerabilidades ha encontrado cada herramienta.

| Escáner           | Críticas | Altas | Medias | Bajas |
| ----------------- | -------- | ----- | ------ | ----- |
| Greenbone/OpenVAS | 12 | 10 | 40 | 6 |
| Nessus Black Box  | 9  | 7  | 25 | 9 |
| Nessus White Box  | 26 | 95 | 140| 18 |

## 4.2. Vulnerabilidades del escáner White Box

Lista las vulnerabilidades que se han encontrado en el análisis autenticado (White box), que el análisis no autenticado (Black Box) no había encontrado. Pon nombre, CVE, CVSS, CWE, en qué consisten, qué impacto pueden tener, y las recomendaciones de mitigación.

Se detectaron 265 vulnerabilidades exclusivas del White Box (con credenciales). De ellas, 19 
### Críticas

#### 1. Bash Remote Code Execution (Shellshock)
- **Plugin ID:** 77823
- **CVE:** CVE-2014-6271
- **CVSS v2:** 10.0 | **CVSS v3:** 9.8
- **CWE:** N/A
- **Descripción:** El shell Bash del sistema remoto es vulnerable a inyección de comandos mediante manipulación de variables de entorno.
- **Impacto:** Un atacante remoto puede ejecutar código arbitrario en el sistema comprometido.
- **Mitigación:** Actualizar Bash a la última versión.

#### 2. Weak Debian OpenSSH Keys in ~/.ssh/authorized_keys
- **Plugin ID:** 32320
- **CVE:** CVE-2008-0166
- **CVSS v2:** 10.0 | **CVSS v3:** 9.8
- **CWE:** 310
- **Descripción:** El host remoto contiene claves SSH débiles generadas en sistemas Debian/Ubuntu con el generador de números aleatorios de OpenSSL comprometido.
- **Impacto:** Un atacante puede realizar un ataque de fuerza bruta contra las claves SSH débiles e iniciar sesión en el sistema.
- **Mitigación:** Eliminar las entradas ofensivas de ~/.ssh/authorized_keys y regenerar las claves.

#### 3. Ubuntu 6.06 LTS / 7.04 / 7.10 / 8.04 LTS : gnutls12, gnutls13 vulnerabilities (USN-613-1)
- **Plugin ID:** 32432
- **CVE:** CVE-2008-1948, CVE-2008-1949, CVE-2008-1950
- **CVSS v2:** 10.0
- **CWE:** 287
- **Descripción:** Múltiples fallos en el manejo de conexiones de GnuTLS. Un atacante remoto podría bloquear aplicaciones vinculadas a GnuTLS o ejecutar código arbitrario.
- **Impacto:** Ejecución de código arbitrario con permisos del usuario de la aplicación.
- **Mitigación:** Actualizar los paquetes afectados.

#### 4. Ubuntu 6.06 LTS / 7.04 / 7.10 / 8.04 LTS : libxml2 vulnerabilities (USN-644-1)
- **Plugin ID:** 37936
- **CVE:** CVE-2008-3281, CVE-2008-3529
- **CVSS v2:** 10.0
- **CWE:** 399
- **Descripción:** libxml2 no manejaba correctamente nombres de entidad largos. Procesar un documento XML malicioso permite ejecución de código arbitrario.
- **Impacto:** Ejecución de código arbitrario o denegación de servicio.
- **Mitigación:** Actualizar los paquetes afectados.

#### 5. Ubuntu 6.06 LTS / 7.04 / 7.10 / 8.04 LTS : linux, linux-source-2.6.15/20/22 vulnerabilities (USN-625-1)
- **Plugin ID:** 33531
- **CVE:** CVE-2007-6282, CVE-2007-6712, CVE-2008-0598, CVE-2008-1615, CVE-2008-1673
- **CVSS v2:** 10.0
- **CWE:** 399
- **Descripción:** Múltiples vulnerabilidades en el kernel de Linux, incluyendo la pila IPsec que no manejaba correctamente fragmentos ESP.
- **Impacto:** Denegación de servicio remota y posible escalada de privilegios local.
- **Mitigación:** Actualizar el kernel de Linux.

#### 6. Ubuntu 6.06 LTS / 7.10 / 8.04 LTS / 8.10 : libxml2 vulnerabilities (USN-673-1)
- **Plugin ID:** 36916
- **CVE:** CVE-2008-4225, CVE-2008-4226
- **CVSS v2:** 10.0
- **CWE:** 399
- **Descripción:** libxml2 no manejaba correctamente documentos XML corruptos, pudiendo causar bucles infinitos.
- **Impacto:** Denegación de servicio.
- **Mitigación:** Actualizar los paquetes afectados.

#### 7. Ubuntu 6.06 LTS / 7.10 / 8.04 LTS : linux-source-2.6.15/22, linux vulnerabilities (USN-714-1)
- **Plugin ID:** 36454
- **CVE:** CVE-2008-5079, CVE-2008-5134, CVE-2008-5182, CVE-2008-5300, CVE-2008-5700
- **CVSS v2:** 10.0
- **CWE:** 399
- **Descripción:** Múltiples vulnerabilidades en el kernel: ATM, driver inalámbrico libertas, etc.
- **Impacto:** Denegación de servicio y posible ejecución de código.
- **Mitigación:** Actualizar el kernel de Linux.

#### 8. Ubuntu 6.06 LTS / 8.04 LTS / 8.10 / 9.04 / 9.10 : linux, linux-source-2.6.15 vulnerabilities (USN-894-1)
- **Plugin ID:** 44399
- **CVE:** CVE-2009-4020, CVE-2009-4021, CVE-2009-4031, CVE-2009-4138, CVE-2009-4141
- **CVSS v2:** 10.0
- **CWE:** 399
- **Descripción:** Fallos en sistemas de archivos HFS y ext4. Montar un sistema de archivos manipulado puede conceder privilegios de root.
- **Impacto:** Obtención de privilegios de root o denegación de servicio.
- **Mitigación:** Actualizar el kernel de Linux.

#### 9. Ubuntu 6.06 LTS / 8.04 LTS / 8.10 / 9.04 : dhcp3 vulnerability (USN-803-1)
- **Plugin ID:** 39800
- **CVE:** CVE-2009-0692
- **CVSS v2:** 10.0
- **CWE:** 119
- **Descripción:** El cliente DHCP (dhcp3) no verificaba la longitud de ciertos campos. Un servidor DHCP malicioso podría explotarlo.
- **Impacto:** Denegación de servicio o posible ejecución de código.
- **Mitigación:** Actualizar el paquete dhcp3.

#### 10. Ubuntu 6.06 LTS / 8.04 LTS / 8.10 / 9.04 : libxml2 vulnerabilities (USN-815-1)
- **Plugin ID:** 40576
- **CVE:** CVE-2008-3529, CVE-2009-2414, CVE-2009-2416
- **CVSS v2:** 10.0
- **CWE:** 399
- **Descripción:** libxml2 no manejaba correctamente definiciones DTD en documentos XML, permitiendo denegación de servicio.
- **Impacto:** Denegación de servicio.
- **Mitigación:** Actualizar los paquetes afectados.

#### 11. Ubuntu 6.06 LTS / 8.04 LTS / 8.10 : apt vulnerabilities (USN-762-1)
- **Plugin ID:** 37762
- **CVE:** CVE-2009-1300
- **CVSS v2:** 10.0
- **CWE:** 20
- **Descripción:** El script cron de APT no verificaba correctamente el código de retorno del comando date. En zonas horarias con cambio DST a medianoche, las actualizaciones automáticas podían fallar.
- **Impacto:** Las actualizaciones automáticas de seguridad podrían no aplicarse, dejando el sistema expuesto.
- **Mitigación:** Actualizar APT.

#### 12. Ubuntu 6.06 LTS / 8.04 LTS / 9.04 / 9.10 / 10.04 LTS / 10.10 : linux, linux-ec2, linux-source-2.6.15 vulnerabilities (USN-1000-1)
- **Plugin ID:** 50044
- **CVE:** CVE-2009-4895, CVE-2010-2066, CVE-2010-2226, CVE-2010-2248, CVE-2010-2478
- **CVSS v2:** 10.0
- **CWE:** N/A
- **Descripción:** Múltiples vulnerabilidades en el kernel: protocolo RDS, race condition en TTY, etc.
- **Impacto:** Obtención de privilegios de root y denegación de servicio.
- **Mitigación:** Actualizar el kernel de Linux.

#### 13. Ubuntu 6.06 LTS / 8.04 LTS / 9.04 / 9.10 / 10.04 LTS / 10.10 : openssl vulnerabilities (USN-1003-1)
- **Plugin ID:** 49805
- **CVE:** CVE-2009-3245, CVE-2010-2939
- **CVSS v2:** 10.0
- **CWE:** 20
- **Descripción:** OpenSSL manejaba incorrectamente códigos de retorno de la función bn_wexpand. Servicios que usan SSL pueden ser explotados.
- **Impacto:** Denegación de servicio o ejecución de código arbitrario.
- **Mitigación:** Actualizar OpenSSL.

#### 14. Ubuntu 7.10 / 8.04 LTS / 8.10 : linux, linux-source-2.6.22 vulnerabilities (USN-751-1)
- **Plugin ID:** 37337
- **CVE:** CVE-2008-4307, CVE-2008-6107, CVE-2009-0028, CVE-2009-0031, CVE-2009-0065
- **CVSS v2:** 10.0
- **CWE:** 399
- **Descripción:** NFS no manejaba correctamente carreras entre fcntl e interrupciones. También fallos en syscalls Sparc y otros.
- **Impacto:** Consumo ilimitado de memoria del kernel, denegación de servicio y posible ejecución de código.
- **Mitigación:** Actualizar el kernel de Linux.

#### 15. Ubuntu 8.04 LTS / 10.04 LTS / 10.10 / 11.04 / 11.10 : freetype vulnerabilities (USN-1403-1)
- **Plugin ID:** 58444
- **CVE:** CVE-2012-1126, CVE-2012-1127, CVE-2012-1128, CVE-2012-1129, CVE-2012-1130
- **CVSS v2:** 10.0
- **CWE:** N/A
- **Descripción:** FreeType no manejaba correctamente archivos de fuente BDF malformados.
- **Impacto:** Denegación de servicio y posible ejecución de código.
- **Mitigación:** Actualizar libfreetype6.

#### 16. Ubuntu 8.04 LTS / 10.04 LTS / 11.04 / 11.10 : samba vulnerability (USN-1423-1)
- **Plugin ID:** 58743
- **CVE:** CVE-2012-1182
- **CVSS v2:** 10.0
- **CWE:** N/A
- **Descripción:** Samba calculaba incorrectamente los límites de arrays al manejar llamadas a procedimientos remotos (RPC).
- **Impacto:** Ejecución de código arbitrario como root por un atacante remoto no autenticado.
- **Mitigación:** Actualizar el paquete samba.

#### 17. Ubuntu 8.04 LTS / 8.10 / 9.04 : apr vulnerability (USN-813-1)
- **Plugin ID:** 40529
- **CVE:** CVE-2009-2412
- **CVSS v2:** 10.0
- **CWE:** 189
- **Descripción:** APR (Apache Portable Runtime) no sanitizaba correctamente su entrada al asignar memoria.
- **Impacto:** Denegación de servicio o ejecución de código arbitrario.
- **Mitigación:** Actualizar libapr1.

#### 18. Ubuntu 8.04 LTS / 8.10 / 9.04 : apr-util vulnerability (USN-813-3)
- **Plugin ID:** 40531
- **CVE:** CVE-2009-2412
- **CVSS v2:** 10.0
- **CWE:** 189
- **Descripción:** Actualización de apr-util para corregir la misma vulnerabilidad que USN-813-1 en apr.
- **Impacto:** Denegación de servicio o ejecución de código arbitrario.
- **Mitigación:** Actualizar libaprutil1.

#### 19. Ubuntu 8.04 LTS : linux vulnerabilities (USN-1225-1)
- **Plugin ID:** 56388
- **CVE:** CVE-2011-1776, CVE-2011-2213, CVE-2011-2497, CVE-2011-2699, CVE-2011-2928
- **CVSS v2:** 10.0
- **CWE:** N/A
- **Descripción:** Múltiples vulnerabilidades en el kernel: tabla de particiones GUID EFI, rutinas de diagnóstico IPv4, etc.
- **Impacto:** Obtención de privilegios de root, denegación de servicio.
- **Mitigación:** Actualizar el kernel de Linux.

### Altas (seleccción)

#### 20. Ubuntu 7.04 / 7.10 / 8.04 LTS : ssl-cert vulnerability (USN-612-4)
- **CVE:** CVE-2008-0166
- **CVSS v2:** 7.5
- **CWE:** 310
- **Descripción:** El paquete ssl-cert en Debian/Ubuntu genera claves SSL débiles con poca entropía.
- **Impacto:** Un atacante puede predecir claves SSL, comprometiendo la confidencialidad de las comunicaciones cifradas.
- **Mitigación:** Actualizar el paquete ssl-cert y regenerar los certificados SSL.

#### 21. Ubuntu 7.04 / 7.10 / 8.04 LTS : openssh update (USN-612-5)
- **CVE:** CVE-2008-0166
- **CVSS v2:** 7.5
- **CWE:** 310
- **Descripción:** Claves SSH generadas en sistemas Debian/Ubuntu con el generador de números aleatorios de OpenSSL comprometido.
- **Impacto:** Un atacante puede realizar fuerza bruta contra las claves SSH débiles y obtener acceso no autorizado al sistema.
- **Mitigación:** Actualizar OpenSSH y regenerar todas las claves de host y de usuario.

#### 22. Ubuntu 6.06 LTS / 7.04 / 7.10 / 8.04 LTS : samba vulnerabilities (USN-617-1)
- **CVE:** CVE-2008-1105, CVE-2008-2050, CVE-2008-3789
- **CVSS v2:** 7.5
- **CWE:** 119
- **Descripción:** Múltiples vulnerabilidades en Samba que permiten desbordamiento de búfer en el manejo de respuestas SMB.
- **Impacto:** Ejecución de código arbitrario o denegación de servicio en el servicio Samba.
- **Mitigación:** Actualizar los paquetes de Samba.

#### 23. Ubuntu 7.10 / 8.04 LTS / 8.10 : udev vulnerabilities (USN-758-1)
- **CVE:** CVE-2009-1185, CVE-2009-1186
- **CVSS v2:** 7.5
- **CWE:** 264
- **Descripción:** udev no verificaba correctamente los mensajes NETLINK, permitiendo a un atacante local ejecutar comandos con privilegios de root.
- **Impacto:** Escalada de privilegios local a root.
- **Mitigación:** Actualizar udev.

#### 24. Ubuntu 6.06 LTS / 8.04 LTS / 8.10 / 9.04 : apache2 vulnerability (USN-787-1)
- **CVE:** CVE-2009-1890, CVE-2009-1891
- **CVSS v2:** 7.5
- **CWE:** 399
- **Descripción:** Apache2 sufre una vulnerabilidad de denegación de servicio en el manejo de conexiones y un fallo en el módulo mod_proxy.
- **Impacto:** Denegación de servicio remota o posible ejecución de código.
- **Mitigación:** Actualizar Apache2.

#### 25. Ubuntu 6.06 LTS / 8.04 LTS / 8.10 / 9.04 : cron vulnerability (USN-778-1)
- **CVE:** CVE-2009-1572
- **CVSS v2:** 7.5
- **CWE:** 264
- **Descripción:** Fallo en cron que permite a un atacante local ejecutar comandos arbitrarios mediante un enlace simbólico.
- **Impacto:** Escalada de privilegios local.
- **Mitigación:** Actualizar cron.

#### 26. Ubuntu 6.06 LTS / 8.04 LTS / 8.10 / 9.04 : curl vulnerability (USN-818-1)
- **CVE:** CVE-2009-2417, CVE-2009-2418
- **CVSS v2:** 7.5
- **CWE:** 119
- **Descripción:** cURL no verificaba correctamente la longitud de las respuestas SSL, permitiendo desbordamiento de búfer.
- **Impacto:** Ejecución de código arbitrario al procesar respuestas SSL maliciosas.
- **Mitigación:** Actualizar cURL.

#### 27. Ubuntu 6.06 LTS / 8.04 LTS / 8.10 / 9.04 / 9.10 : mysql-dfsg-5.0, mysql-dfsg-5.1 vulnerabilities (USN-897-1)
- **CVE:** CVE-2009-4028, CVE-2009-4030
- **CVSS v2:** 7.5
- **CWE:** 264
- **Descripción:** MySQL permite a atacantes remotos eludir la autenticación y modificar privilegios mediante consultas especialmente diseñadas.
- **Impacto:** Modificación de privilegios y acceso no autorizado a la base de datos.
- **Mitigación:** Actualizar MySQL.

#### 28. Ubuntu 6.06 LTS / 8.04 LTS / 9.10 / 10.04 LTS / 10.10 : cups, cupsys vulnerability (USN-1012-1)
- **CVE:** CVE-2010-2431, CVE-2010-2941
- **CVSS v2:** 7.5
- **CWE:** 119
- **Descripción:** CUPS contiene múltiples desbordamientos de búfer que pueden ser explotados mediante archivos PDF maliciosos.
- **Impacto:** Ejecución de código arbitrario con permisos del servicio CUPS.
- **Mitigación:** Actualizar los paquetes CUPS.

#### 29. Ubuntu 6.06 LTS / 8.04 LTS / 9.04 / 9.10 / 10.04 LTS : php5 vulnerabilities (USN-989-1)
- **CVE:** CVE-2008-4767, CVE-2009-0754, CVE-2009-1271, CVE-2009-2657
- **CVSS v2:** 7.5
- **CWE:** 264
- **Descripción:** Múltiples vulnerabilidades en PHP5 incluyendo elusión de restricciones en sesiones, desbordamiento en json_encode y fallos en posix.
- **Impacto:** Ejecución de código arbitrario y elusión de restricciones de seguridad.
- **Mitigación:** Actualizar PHP5.

#### 30. Ubuntu 7.10 / 8.04 LTS : linux-ubuntu-modules-2.6.22/24 vulnerability (USN-662-2)
- **CVE:** CVE-2008-3535, CVE-2008-4118
- **CVSS v2:** 7.5
- **CWE:** 399
- **Descripción:** Vulnerabilidades en los módulos del kernel de Ubuntu que afectan al subsistema de red y al manejo de interrupciones.
- **Impacto:** Denegación de servicio y posible escalada de privilegios.
- **Mitigación:** Actualizar los módulos del kernel de Ubuntu.

---

**Nota:** Estas son 11 de las 88 vulnerabilidades altas exclusivas del White Box. El resto incluyen parches de seguridad de Ubuntu (USN) para paquetes como: kernel Linux, OpenSSL, Apache2, PHP5, Samba, MySQL, PostgreSQL, glibc, libxml2, OpenSSH, sudo, curl, tiff, freetype, libpng, perl, bind9, apt, entre otros. Todas requieren actualización de los paquetes afectados.
