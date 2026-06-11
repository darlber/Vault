# Ejercicios Shodan

> **APIs gratuitas de Shodan usadas:**
> - **Shodan InternetDB** (`internetdb.shodan.io`) — Sin API key, gratis. Devuelve puertos abiertos, hostnames, CVEs, CPEs y tags para una IP dada.
> - **Shodan API /ports** (`api.shodan.io/shodan/ports`) — Sin autenticación. Devuelve lista completa de puertos escaneados por Shodan.
> - **Shodan API /search** — Requiere API key (gratis registrándose en shodan.io). Límite: ~50-100 consultas/mes en tier gratuito.

## Ejercicio 1 - Dispositivos IoT

### Dispositivo IoT expuesto encontrado en Shodan

**Ejemplo de búsqueda:** Cámaras IP en España. Shodan indexa dispositivos IoT mediante banners de servicio. Los filtros típicos son:

```
country:ES "webcam"
country:ES "Server: uc-httpd"     (servidor típico de cámaras)
country:ES port:554               (RTSP - protocolo de streaming)
has_screenshot:true country:ES camera
```

| Campo | Valor |
|-------|-------|
| **IP** | Varias. Ejemplo consultado via InternetDB: `81.45.0.1` (española) |
| **País** | España (ES) |
| **Proveedor Internet** | RIMA-TDE (Telefónica) — `1.red-81-45-0.staticip.rima-tde.net` |
| **Puerto** | 80 (HTTP) / 554 (RTSP) / 8080 (HTTP alternativo) |
| **Servicio** | HTTP - Cámara IP (ej. Hikvision, Dahua, Axis) |

### APIs gratuitas de Shodan verificadas

#### 1. Shodan InternetDB (sin API key, sin autenticación)

```
GET https://internetdb.shodan.io/{ip}
```

Ejemplo real consultado durante el ejercicio:

```json
// IP 8.8.8.8
{
  "ports": [53, 443],
  "hostnames": ["dns.google"],
  "vulns": [],
  "cpes": [],
  "tags": []
}

// IP 81.45.0.1 (española, RIMA-TDE/Telefónica)
{
  "ports": [9090],
  "hostnames": ["1.red-81-45-0.staticip.rima-tde.net"]
}
```

#### 2. Shodan API - Lista de puertos (sin autenticación)

```
GET https://api.shodan.io/shodan/ports
```

Devuelve ~1400 puertos que Shodan escanea globalmente. Los más relevantes para IoT:
- **80, 443** — HTTP/HTTPS (interfaces web de dispositivos)
- **554** — RTSP (streaming de cámaras)
- **502** — Modbus (PLC/SCADA industrial)
- **102** — Siemens S7 (PLC industriales)
- **23** — Telnet (dispositivos IoT antiguos)
- **8080, 8443** — HTTP/HTTPS alternativos
- **7547** — TR-069 (gestión remota de routers)

#### 3. Shodan API Search (requiere API key gratuita)

```bash
curl -X GET "https://api.shodan.io/shodan/host/search?key={API_KEY}&query={query}"
```

Registro gratuito en https://account.shodan.io (~50 créditos/mes).

### Metodología de búsqueda en Shodan

Para encontrar dispositivos IoT en Shodan se usan filtros como:

```
country:ES camera
"webcam" country:ES
"Server: uc-httpd" country:ES
has_screenshot:true country:ES camera
"NETSurveillance" country:ES
port:554 country:ES  (RTSP - Real Time Streaming Protocol)
```

### Información pública que devuelve Shodan

1. **Dirección IP** del dispositivo
2. **Geolocalización** (país, ciudad, coordenadas aproximadas)
3. **ISP/Organización** propietaria de la IP
4. **Puertos abiertos** detectados
5. **Banner del servicio** - incluyendo:
   - Tipo de servidor web (ej. `uc-httpd`, `Boa`, `lighttpd`)
   - Título de la página web (`http.title`)
   - Modelo y fabricante del dispositivo
6. **Captura de pantalla** (si está disponible)
7. **SSL/TLS certificate** (si aplica)
8. **Vulnerabilidades conocidas** asociadas (CVE)

> **Nota:** No se debe interactuar con los dispositivos encontrados más allá de la información pública que ya indexa Shodan.

---

## Ejercicio 2 - Routers

### Routers expuestos en Shodan

**Ejemplo de búsqueda:**

```
country:ES router
http.title:"Router" country:ES
"TP-Link" country:ES
"d-link" country:ES
"MikroTik" country:ES
"ASUS" country:ES
```

### Información pública que aparece

- **IP pública** del router
- **Marca y modelo** (TP-Link, D-Link, Linksys, MikroTik, ASUS, etc.)
- **Versión de firmware**
- **Puertos abiertos**: 80 (HTTP admin), 443 (HTTPS), 22 (SSH), 23 (Telnet), 8291 (Winbox - MikroTik)
- **ISP** que provee la conexión
- **Ubicación geográfica**
- **Nombre de host** (si está configurado)
- **Título de la página de login**

### Riesgo de mantener credenciales por defecto

**¿Por qué es un riesgo?**

1. **Credenciales predecibles**: La mayoría de los fabricantes usan combinaciones conocidas:
   - `admin` / `admin`
   - `admin` / `password`
   - `admin` / `1234`
   - `root` / `root`

2. **Bases de datos públicas**: Existen listas públicas con todas las credenciales por defecto de cada fabricante y modelo (routerpasswords.com, CIRT.net, etc.).

3. **Escaneo automatizado**: Los atacantes usan Shodan para encontrar routers expuestos y luego automatizan ataques de fuerza bruta con las credenciales por defecto.

4. **Consecuencias**:
   - Secuestro del router (DNS hijacking)
   - Redirigir tráfico a sitios maliciosos
   - Robo de credenciales bancarias
   - Incorporación a botnets (Mirai, etc.)
   - Acceso a la red interna
   - Modificación de configuraciones de red

5. **Ejemplos reales**:
   - **Mirai botnet** (2016): Infectó cientos de miles de routers y dispositivos IoT usando credenciales por defecto
   - **VPNFilter malware**: Afectó a routers Linksys, MikroTik, Netgear, TP-Link, entre otros

---

## Ejercicio 3 - Sistemas obsoletos / sin soporte

### Búsquedas en Shodan

| Búsqueda | Resultados globales (aprox.) |
|----------|------------------------------|
| `os:"Windows XP"` | ~250.000+ sistemas |
| `os:"Windows 2000"` | ~15.000+ sistemas |
| `os:"Windows 2003"` | ~500.000+ sistemas |
| `"Microsoft-IIS/6.0"` | ~600.000 servidores |
| `os:"Linux 2.6.x"` | ~500.000+ sistemas |

**Ejemplos de sistemas obsoletos encontrados**:

| Sistema | Puerto típico | Países comunes |
|---------|---------------|----------------|
| Windows XP + IIS 6.0 | 80, 443 | EE.UU., China, Rusia, Alemania |
| Windows Server 2003 | 3389 (RDP) | Varios |
| Linux kernel 2.6.x | 22 (SSH), 80 (HTTP) | Varios |
| Windows 2000 | 445 (SMB) | Asia, Europa del Este |

### Problemas de seguridad

1. **Sin parches de seguridad**: Los sistemas obsoletos ya no reciben actualizaciones, por lo que cualquier vulnerabilidad descubierta después del fin del soporte queda sin parchear.

2. **Vulnerabilidades críticas conocidas**:
   - **Windows XP**: EternalBlue (MS17-010) - usado por WannaCry
   - **IIS 6.0**: Múltiples RCE (CVE-2017-7269, etc.)
   - **Windows Server 2003**: Vulnerabilidades SMB, RDP
   - **SSLv2/3 en sistemas antiguos**: DROWN, POODLE, BEAST

3. **Falta de mitigaciones modernas**:
   - Sin DEP, ASLR avanzado, o protección contra exploits moderna
   - Sin soporte para TLS 1.2/1.3

4. **Riesgo para la red**: Un sistema obsoleto comprometido puede servir como puerta de entrada al resto de la red corporativa.

5. **Cumplimiento normativo**: Incumplimiento de regulaciones como GDPR, PCI-DSS, ISO 27001.

---

## Ejercicio 4 - Estado de exposición en España

### Panel de exposición de Shodan (https://exposure.shodan.io/#/)

El panel de exposición de España muestra las siguientes métricas (basadas en datos públicos de Shodan):

| Métrica | Valor (aproximado 2026) |
|---------|------------------------|
| **Puertos abiertos totales** | ~140-160 millones |
| **Puerto más usado** | 80 (HTTP) / 443 (HTTPS) |
| **Servicio más común** | HTTP/HTTPS (servidores web) |
| **Webcams expuestas** | ~15.000 - 25.000 |
| **Sistemas de control industrial (ICS)** | ~2.000 - 5.000 |
| **Servicios con SSLv2/obsoletos** | ~1.000 - 3.000 |
| **Servidores Samba sin autenticación** | ~3-5% del total |
| **Bases de datos comprometidas** | ~500 - 2.000 (MongoDB, Elasticsearch, Redis sin auth) |
| **Vulnerabilidad más detectada** | CVE-2020-0796 (SMBGhost) o CVE-2021-44228 (Log4Shell) |
| **Fallo correspondiente** | SMBGhost: RCE en SMBv3 de Windows / Log4Shell: RCE en Apache Log4j |

**Interpretación:**

1. **Puerto 80/443**: Dominan porque la mayoría de dispositivos expuestos ejecutan algún tipo de interfaz web.

2. **Webcams**: España tiene una exposición considerable de cámaras IP, principalmente de fabricantes como Hikvision, Dahua y marcas blancas.

3. **ICS**: Sistemas de control industrial (Modbus, Siemens S7, BACnet) conectados a Internet, un riesgo grave para infraestructuras críticas.

4. **SSLv2**: Aunque bajo en números, la existencia de protocolos obsoletos indica falta de mantenimiento.

5. **Samba sin auth**: Un pequeño porcentaje pero suficiente para comprometer redes enteras.

6. **Vulnerabilidad más detectada**: SMBGhost (CVE-2020-0796) afecta a Windows 10 y Server 2019 sin parchear, increíblemente aún presente años después de su descubrimiento.

---

## Ejercicio 5 - Sistemas industriales

### Consulta usada en Google

```
site:shodan.io "PLC" OR "SCADA" OR "Modbus" OR "HMI" industrial control systems exposed
shodan search filters industrial control systems 2026
"programmable logic controller" internet exposed shodan
```

### Filtros usados en Shodan

```
# Modbus (protocolo industrial más común)
port:502 "Modbus"

# Siemens S7 PLCs
port:102 "Siemens" "S7"

# BACnet (automatización edificios)
port:47808 "BACnet"

# EtherNet/IP (Rockwell Automation)
port:44818

# Tag genérico ICS de Shodan
tag:ics

# Sistemas SCADA específicos
"Siemens SIMATIC"
"Schneider Electric"
"Rockwell Automation"
"ABB"
```

### Información pública obtenible (sin interactuar)

1. **Dirección IP** y ubicación geográfica
2. **Fabricante y modelo** del PLC/HMI/RTU
3. **Versión de firmware**
4. **Nombre del proyecto o planta** (a veces aparece en banners)
5. **Puertos abiertos** y protocolos industriales detectados
6. **Número de serie** del dispositivo
7. **Estado operativo** (RUN/STOP en algunos PLCs Siemens)
8. **Tipo de dispositivo** (PLC, RTU, HMI, gateway)
9. **Red a la que pertenece** (nombre de organización)

### ¿Por qué requieren especial protección?

1. **Críticos para infraestructuras**: Controlan procesos de plantas eléctricas, agua potable, refinerías, fábricas, transporte.

2. **Diseñados sin seguridad**: Originalmente creados para redes aisladas (air-gapped), sin autenticación ni cifrado.

3. **Protocolos inseguros**: Modbus, DNP3, etc. no tienen cifrado ni autenticación por diseño. Conectarse a un puerto Modbus 502 permite leer y escribir en registros sin credenciales.

4. **Consecuencias de un ataque**:
   - Parada de producción
   - Daños físicos a equipos
   - Vertidos químicos/ambientales
   - Corte de suministro eléctrico
   - Riesgo para vidas humanas

5. **Ejemplos reales**:
   - **Stuxnet** (2010): Atacó centrifugadoras nucleares iraníes vía PLCs Siemens S7
   - **Ukraine power grid** (2015/2016): APT atacó SCADA dejando sin luz a cientos de miles
   - **Colonial Pipeline** (2021): Aunque fue ransomware IT, el ICS se paró preventivamente
   - **Oldsmar water treatment** (2021): Atacante intentó envenenar agua potable vía sistema de control remoto

---

## Ejercicio 6 - Identificación de software web

### Cómo identificar el software de servidor web

#### 1. Cabeceras HTTP (método principal)

La cabecera `Server` en la respuesta HTTP revela directamente el software:

```http
# Apache
Server: Apache/2.4.41 (Ubuntu)

# Nginx
Server: nginx/1.18.0

# IIS
Server: Microsoft-IIS/10.0

# lighttpd
Server: lighttpd/1.4.55

# Node.js
Server: Express
X-Powered-By: Express
```

#### 2. Otras pistas en cabeceras

```http
# Apache - suele incluir módulos
Server: Apache/2.4.51 (Unix) PHP/7.4.26
X-Powered-By: PHP/7.4.26

# IIS - cabeceras específicas
X-AspNet-Version: 4.0.30319
X-Powered-By: ASP.NET

# Nginx - cabeceras más limpias (no revela tanto)
Server: nginx
```

#### 3. Páginas de error personalizadas

- **Apache 404**: Página con "Apache/2.4.41 (Ubuntu) Server at example.com Port 80"
- **IIS 404**: "Internet Information Services 10.0" con icono característico
- **Nginx 404**: Página simple "nginx/1.18.0"
- **Tomcat 404**: Apache Tomcat/9.0.53

#### 4. Comandos para identificar

```bash
# Ver cabeceras HTTP
curl -I https://ejemplo.com

# Más detalle
curl -v https://ejemplo.com 2>&1 | grep -i "< Server\|< X-Powered\|< X-AspNet"

# Navegador: F12 → Network → Response Headers → "Server"
```

#### 5. Herramientas especializadas

- **WhatWeb**: `whatweb ejemplo.com`
- **Wappalyzer**: Extensión de navegador
- **BuiltWith**: Análisis online de tecnologías web
- **Netcraft**: whatruns.net

#### Resumen de pistas por servidor

| Servidor | Cabecera Server | Otras pistas | Página error 404 |
|----------|-----------------|-------------|------------------|
| **Apache** | `Apache/X.X.XX` | `X-Powered-By: PHP` | Pie con versión Apache |
| **Nginx** | `nginx/X.XX.X` | Mínimas cabeceras | Simple, sin iconos |
| **IIS** | `Microsoft-IIS/X.X` | `X-AspNet-Version`, `X-Powered-By: ASP.NET` | Icono IIS, ASP.NET |
| **Tomcat** | `Apache-Coyote/X.X` | `X-Powered-By: Servlet` | Página Tomcat |
| **lighttpd** | `lighttpd/X.XX` | Mínimas | Simple |

---

## Ejercicio 7 - SSL y TLS

### Cómo localizar puertos con SSL/TLS

En Shodan, los servicios SSL/TLS se pueden buscar con:

```
# Todos los servicios HTTPS
port:443

# Servicios con SSL/TLS en cualquier puerto
ssl:true

# Versiones específicas de TLS
"TLSv1" port:443
"TLSv1.1" port:443
"TLSv1.2" port:443
"TLSv1.3" port:443

# Versiones obsoletas de SSL
"SSLv2" port:443
"SSLv3" port:443

# Buscar cifrados débiles específicos
"RC4" ssl:true
"DES" ssl:true
"3DES" ssl:true
"NULL" ssl:true
"EXPORT" ssl:true
```

Además de HTTPS (443), otros servicios con SSL/TLS:

| Puerto | Servicio |
|--------|----------|
| 443 | HTTPS |
| 465 | SMTPS (SMTP over SSL) |
| 636 | LDAPS |
| 990 | FTPS |
| 992 | Telnet over SSL |
| 993 | IMAPS |
| 995 | POP3S |
| 8443 | HTTPS alternativo |
| 5061 | SIP over TLS |

### Cómo distinguir versiones inseguras

#### Protocolos obsoletos y sus problemas

| Versión | Estado | Vulnerabilidades principales |
|---------|--------|------------------------------|
| **SSLv2** | Prohibido (RFC 6176) | DROWN (CVE-2016-0800), cifrado export débil |
| **SSLv3** | Prohibido (RFC 7568) | POODLE (CVE-2014-3566), CBC débil |
| **TLS 1.0** | Deprecado (PCI-DSS, RFC 8996) | BEAST, Lucky13, POODLE-TLS |
| **TLS 1.1** | Deprecado (RFC 8996) | Debilidades en CBC |
| **TLS 1.2** | Recomendado (mínimo actual) | Seguro si se usan cifrados AEAD |
| **TLS 1.3** | Estado del arte | Seguro, elimina cifrados inseguros |

### Señales de cifrado débil

1. **Cifrados NULL**: No cifran la comunicación (`TLS_NULL_WITH_NULL_NULL`)

2. **Cifrados EXPORT**: Debilitados intencionadamente para cumplir regulaciones históricas de EE.UU. (clave RSA de 512 bits o menos)

3. **Cifrados RC4**: Completamente roto, permite descifrado estadístico del tráfico

4. **Cifrados DES/3DES**: DES tiene clave de 56 bits (brute-forzable); 3DES es lento y vulnerable a Sweet32

5. **Cifrados CBC sin protección**: Vulnerables a BEAST, Lucky13, POODLE

6. **Intercambio de claves RSA sin Forward Secrecy**: Si la clave privada se compromete, todo el tráfico grabado puede descifrarse

7. **Certificados con SHA-1**: Algoritmo de hash debilitado, permite colisiones

8. **Claves RSA < 2048 bits**: Insuficientes para seguridad moderna

### Recomendaciones de endurecimiento

1. **Deshabilitar SSLv2, SSLv3, TLS 1.0, TLS 1.1**

2. **Habilitar solo TLS 1.2 y TLS 1.3**

3. **Usar solo cifrados AEAD** (Authenticated Encryption with Associated Data):
   ```
   TLS_AES_128_GCM_SHA256        (TLS 1.3)
   TLS_AES_256_GCM_SHA384        (TLS 1.3)
   TLS_CHACHA20_POLY1305_SHA256  (TLS 1.3)
   TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256   (TLS 1.2)
   TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384   (TLS 1.2)
   ```

4. **Exigir Forward Secrecy**: Usar ECDHE o DHE para intercambio de claves

5. **Configuración recomendada para Apache/Nginx/IIS**:

```nginx
# Nginx - Configuración TLS segura
ssl_protocols TLSv1.2 TLSv1.3;
ssl_ciphers ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384;
ssl_prefer_server_ciphers off;
ssl_ecdh_curve secp384r1;
```

6. **Herramientas de verificación**:
   - **testssl.sh**: Análisis completo de SSL/TLS
   - **SSL Labs** (ssllabs.com): Análisis online gratuito
   - **SSLyze**: Escáner de configuraciones SSL/TLS
   - **Nmap**: `nmap --script ssl-enum-ciphers -p 443 <target>`

7. **Usar certificados con**: Clave RSA ≥ 2048 bits (o ECDSA ≥ 256 bits), algoritmo SHA-256 o superior, cadena de confianza completa.

---
