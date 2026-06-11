# Informe OSINT

## 1. Finalidad del documento
- Objetivo del informe: Recopilación de información pública (OSINT pasivo) sobre `rcsmm.eu` — Real Conservatorio Superior de Música de Madrid (RCSMM)
- Alcance: Dominio principal, subdominios, infraestructura DNS, hosting, tecnologías, personal identificable, registros de seguridad email
- Limitaciones: Solo fuentes públicas sin autenticación. Sin escaneo activo de puertos ni pruebas de intrusión. Sin acceso a WHOIS completo por protección GDPR del TLD .eu

## 2. Información del objetivo

> **Comandos y búsquedas:**
> ```bash
> # Google dorking
> site:rcsmm.eu filetype:pdf
> site:rcsmm.eu intitle:"contacto" OR intitle:"secretaria"
> site:rcsmm.eu inurl:node/
> # Otras fuentes
> wikipedia.org/wiki/Madrid_Royal_Conservatory
> x.com/RCSMM_oficial
> instagram.com/conservatorio_superior_madrid
> youtube.com/channel/UCBGKPm5YfetqA73juM7jVBg
> ```

### 2.1 Introducción
- Descripción general del objetivo: Real Conservatorio Superior de Música de Madrid (RCSMM) — principal centro público de educación musical superior de España, fundado en 1830 por la reina María Cristina
- Actividad principal: Formación profesional de músicos (intérpretes, directores, compositores, musicólogos, pedagogos). Imparte Grado, Máster y Doctorado en el marco del EEES
- Presencia online: Web principal (rcsmm.eu), Campus Virtual Moodle (moodle.rcsmm.eu), Intranet corporativa (intranet.rcsmm.eu), Webmail (webmail.rcsmm.eu)
- Plataformas externas: CODEX (codex.pro — gestión académica y notas), WebUntis (rcsmm.webuntis.com — horarios públicos con nombres de profesores)

### 2.2 Apariciones destacadas en los medios
- Noticias relevantes: Institución centenaria (1830), referente en enseñanza musical en España. Múltiples conciertos y *masterclasses* públicas publicadas en su web
- **Caso de acoso (2025)**: En nov-dic 2025, varios medios nacionales cubrieron denuncias de alumnas por presuntos abusos sexuales y acoso por parte del catedrático de clarinete Pedro Garbajosa. La Policía Nacional abrió investigación de oficio. El centro se remitió al expediente abierto desde hacía año y medio. Relevante para evaluación de reputación institucional.
  - El Mundo (26/11/2025): https://www.elmundo.es/cultura/2025/11/26/69272c5fe4d4d89f458b4585.html
  - El Mundo (10/12/2025): https://www.elmundo.es/cultura/2025/12/10/69399676e85eceb4778b4584.html
  - El Mundo (11/12/2025): https://www.elmundo.es/cultura/2025/12/11/693ae9b9e85ece374c8b4575.html
  - Cadena SER (27/11/2025): https://cadenaser.com/cmadrid/2025/11/27/investigan-las-denuncias-por-acoso-a-un-profesor-del-real-conservatorio-de-musica-de-madrid-radio-madrid/
  - 20minutos (27/11/2025): https://www.20minutos.es/madrid/investigan-un-profesor-clarinete-conservatorio-superior-musica-madrid-por-acoso-alumnas_6903689_0.html
  - La Vanguardia (12/12/2025): https://www.lavanguardia.com/local/madrid/20251212/11355942/policia-investiga-acusaciones-abusos-sexuales-profesor-clarinete-conservatorio-musica-madrid.html
- Entrevistas: No se detectaron entrevistas específicas en fuentes abiertas
- Apariciones en prensa: Web incluye sección de prensa con manual de marca y logotipos descargables

### 2.3 Contacto y redes sociales

- Página web oficial: https://rcsmm.eu
- Redes sociales:
  - Twitter/X: https://x.com/RCSMM_oficial — Perfil oficial verificado (@RCSMM_oficial)
  - Instagram: https://www.instagram.com/conservatorio_superior_madrid — Perfil oficial
  - YouTube: https://www.youtube.com/channel/UCBGKPm5YfetqA73juM7jVBg — Canal oficial
  - Facebook: https://www.facebook.com/RealConservatorioSuperiordeMusicadeMadrid/
- Otros canales: Webmail (webmail.rcsmm.eu), Campus Virtual Moodle (moodle.rcsmm.eu), Gestor de Citas (rcsmm_citas.scncloud.com), Registro de Trabajos de Alumnos (rta.rcsmm.eu)
- Correos electrónicos adicionales: `biblioteca@rcsmm.eu` — Biblioteca del centro
- Plataformas externas:
  - **CODEX** (https://www.codex.pro/) — Gestión académica y calificaciones de alumnos. Plataforma externa desarrollada por Dial S.L. (http://www.dialsl.es/). Sistema SaaS con login. 
  - **WebUntis** (https://rcsmm.webuntis.com/) — Horario público. Sin autenticación lista horarios completos con nombres de profesores, asignaturas, aulas y grupos.
- Teléfono: +34 91 539 29 01 | Fax: +34 91 527 58 22

## 3. Información administrativa

> **Comandos y fuentes:**
> ```bash
> curl -s https://rcsmm.eu/aviso-legal
> curl -s https://rcsmm.eu/politica-privacidad
> # https://ror.org/02w65pw28
> ```

### 3.1 Datos fiscales
- Razón social: Real Conservatorio Superior de Música de Madrid (RCSMM)
- NIF : Q2868055A
- Dirección fiscal: C/ Doctor Mata 2, 28012 Madrid, España
- Registro mercantil (si aplica): No aplica (organismo público)

### 3.2 Datos económicos
- Información financiera pública: Centro público sostenido por fondos públicos (Comunidad de Madrid). Menciona cofinanciación de la Unión Europea y del SEPIE para programas Erasmus+
- Precios públicos (curso 2025-26): Matrícula por crédito 216,10 €; curso completo (60 ECTS) ≈ 12.985 €, con bonificaciones de hasta 95 % según renta. Prueba de acceso: 49 €. Fuente: preguntas-frecuentes
- Portal de Transparencia: https://rcsmm.eu/portal-transparencia — **"En construcción"** (sin datos publicados a fecha del informe)
- Informes anuales: No localizados en fuentes abiertas
- Subvenciones / ayudas (si aplica): Participa en programas Erasmus+ (Erasmus Charter for Higher Education). Fondo Social Europeo mencionado en web
- Afiliaciones: Miembro de AEC (Association Européenne des Conservatoires)
- **Búsquedas realizadas sin resultados relevantes**: libreborme.com, infocif.es (organismo público, no sociedad mercantil)

### 3.3 Metadatos de documentos públicos
- PDFs publicados en `rcsmm.eu/sites/default/files/` contienen metadatos verificables:
  - **Autor**: Patricia Arbolí (Secretaría del centro)
  - **Software**: Microsoft Word 2019 (Creator y Producer)
  - **Fecha de creación**: 2023-07-13
  - Fuente: `curl.exe -s -k "https://rcsmm.eu/sites/default/files/2023-11/23.pdf"` → extracción de metadatos vía cadena `/Author()`

## 4. Información técnica

> **Comandos utilizados (PowerShell):**
> ```powershell
> Resolve-DnsName rcsmm.eu -Type A,NS,SOA
> @("moodle.rcsmm.eu","intranet.rcsmm.eu","webmail.rcsmm.eu","ftp.rcsmm.eu") | ForEach-Object { Resolve-DnsName $_ -Type A }
> Resolve-DnsName rcsmm.es -Type A,NS
> curl.exe -s "https://crt.sh/?q=%25.rcsmm.eu&output=json" | ConvertFrom-Json | Select-Object -ExpandProperty name_value -Unique
> ```

### 4.1 Direcciones IP y geolocalización

| IP | Hostname (PTR) | Geolocalización | Proveedor |
|---|---|---|---|
| `62.97.84.197` | `arvy.futurvia.net` | Madrid, España | COLT Technology Services (AS8220) |
| `213.172.39.24` | `orfeo.servytec.es` | Madrid, España | Servytec Networks (AS196713) |
| `81.169.145.158` | *(rzone)* | Frankfurt, Alemania | Strato AG |

- Resolución DNS: 4 nameservers (ns1-4.servytec.es), SOA Serial 2026031201 (mar 2026)
- Dominio secundario `rcsmm.es`: Nameservers `docks10.rzone.de` / `shades03.rzone.de` (Strato)
- **Shodan / Censys**: La consulta a Shodan y Censys para estas IPs requiere suscripción API para resultados completos. Escaneos públicos previos muestran servicios HTTP/HTTPS en 62.97.84.197 y múltiples puertos en 213.172.39.24 (SMTP, POP3, IMAP, HTTP, HTTPS). Pendiente de análisis detallado con API.

### 4.2 Servidor

#### 4.2.1 Máquina virtual
- Indicios de uso: No confirmado
- Proveedor cloud (si se detecta): Servytec Networks S.L. — CPD propio en Madrid
- **Nota**: Se detectó un panel de gestión SNPanel (posible panel de administración de hosting) accesible en `213.172.39.24:12000/tcp` según censys.io. Esto sugiere que el servidor aloja múltiples clientes y utiliza un panel de gestión de servicios.
- Subdominios confirmados por DNS pasivo:

* [imap.tfe.rcsmm.eu](http://imap.tfe.rcsmm.eu)
* [moodle.rcsmm.eu](http://moodle.rcsmm.eu)
* [rta.rcsmm.eu](http://rta.rcsmm.eu)
* [slider.rcsmm.eu](http://slider.rcsmm.eu)
* [smtp.tfe.rcsmm.eu](http://smtp.tfe.rcsmm.eu)
* [webmail.rcsmm.eu](http://webmail.rcsmm.eu)
* [www.rcsmm.eu](http://www.rcsmm.eu)
* [imap.rcsmm.eu](http://imap.rcsmm.eu)
* [intranet.rcsmm.eu](http://intranet.rcsmm.eu)
* [pop3.rcsmm.eu](http://pop3.rcsmm.eu)
* [smtp.rcsmm.eu](http://smtp.rcsmm.eu)
* [mail.rcsmm.eu](http://mail.rcsmm.eu)
* [mail.tfe.rcsmm.eu](http://mail.tfe.rcsmm.eu)
* [pop3.tfe.rcsmm.eu](http://pop3.tfe.rcsmm.eu)
* [tfe.rcsmm.eu](http://tfe.rcsmm.eu)
* [www.slider.rcsmm.eu](http://www.slider.rcsmm.eu)
#### 4.2.2 Servidor
- Hosting: Servytec Networks S.L. (AS196713) para servicios (213.172.39.24) / COLT Technology Services (AS8220) para web pública (62.97.84.197)
- Hosting secundario: Strato AG (81.169.145.158) para rcsmm.es (email profesorado)
- Ubicación aproximada: Madrid, España / Frankfurt, Alemania (rcsmm.es)

> **Comandos utilizados:**
> ```bash
> curl -sI https://rcsmm.eu
> curl -sI https://moodle.rcsmm.eu/login/index.php
> curl -s https://rcsmm.eu/robots.txt
> curl -sI https://rcsmm.eu/user/register
> curl -s https://rcsmm.eu/user/login
> ```
> 
> **robots.txt** — Archivo estándar de Drupal que bloquea el rastreo de:
> - `/admin/`, `/node/add/`, `/search/` — Áreas administrativas y de contenido interno
> - `/user/register`, `/user/login`, `/user/password` — Registro y autenticación (aunque `/user/register` devuelve 403 Forbidden)
> - `/comment/reply/`, `/filter/tips` — Funcionalidades de comentarios
> - Archivos sensibles: `README.txt`, `web.config` (configuración del servidor)

#### 4.2.3 Vulnerabilidades
- Solo fuentes públicas (CVE, informes, etc.):

**Resumen por criticidad:**

| Criticidad | Hallazgo | Componente |
|---|---|---|
| 🔴 **CRÍTICA** | PHP 5.6.38 EOL — Múltiples RCE (CVSS 9.8) | Moodle / Stack completo |
| 🔴 **CRÍTICA** | Debian 8 Jessie EOL — Sin parches desde 2020 | Moodle |
| 🔴 **CRÍTICA** | Drupal 9.5.11 EOL — Sin parches desde 2023 | Web principal |
| 🟠 **ALTA** | DMARC en quarantine (no reject) | Correo |
| 🟠 **ALTA** | FTP e Intranet expuestos sin restricción | Red interna |
| 🟡 **MEDIA** | Sin registro CAA | DNS |
| 🟢 **BAJA** | Versión Apache expuesta | Servidor web |

**Detalle:**
  - **PHP 5.6.38** (EOL dic 2018, confirmado por cabecera `X-Powered-By`) — Múltiples RCE por deserialización: CVE-2016-7124, CVE-2016-5771, CVE-2016-5768, CVE-2016-5773 (todos CVSS 9.8); inyección comandos CVE-2018-19518 (CVSS 9.8)
  - **Debian 8 Jessie** (EOL jun 2020, inferido de `deb8u1` en versión PHP) — Sin parches de seguridad del sistema desde 2020
  - **Drupal 9.5.11** (EOL nov 2023, confirmado por cabecera `X-Generator` y `v=9.5.11` en JS) — Sin parches de seguridad desde 2023
  - **Moodle** — Versión exacta no confirmada pasivamente; stack (PHP 5.6, Debian 8, YUI 2014) consistente con versión antigua (2.7–3.x EOL)
  - **DKIM configurado** (4 posibles selectores detectados en TXT) — Spoofing mitigado parcialmente
  - **DMARC en quarantine** (no reject)  — Correos suplantados no se rechazan
  - **FTP e Intranet expuestos** (DNS confirma subdominios ftp.rcsmm.eu e intranet.rcsmm.eu en 213.172.39.24)
  - **Sin registro CAA** — Cualquier CA puede emitir certificados
- Referencias:
  - Tenable: CVE-2016-7124, CVE-2016-5771, CVE-2016-5768
  - NVD: CVE-2018-19518, CVE-2015-6836, CVE-2016-4538
  - OSV.dev: Múltiples CVEs PHP
  - Wikipedia: https://en.wikipedia.org/wiki/Madrid_Royal_Conservatory

#### 4.2.4 Análisis de vectores de explotación (defacement)

### Vía 1: Stack Moodle antiguo (moodle.rcsmm.eu) — CRÍTICO

El servidor Moodle corre **PHP 5.6.38** sobre **Debian 8 (Jessie)**, ambos EOL. La versión exacta de Moodle no se confirmó pasivamente (no hay banner expuesto), pero el stack tecnológico (YUI 3.13.0/2.9.0, timestamps 2014) es consistente con Moodle 2.7–3.x (EOL 2015–2019). Este stack completo sin parches hace que la explotación sea trivial:

| Componente | Versión confirmada         | EOL       | CVEs críticos públicos                                                      |
| ---------- | -------------------------- | --------- | --------------------------------------------------------------------------- |
| PHP        | 5.6.38                     | dic 2018  | CVE-2016-7124, CVE-2016-5771, CVE-2016-5768 (deserialización RCE, CVSS 9.8) |
| Debian     | 8 Jessie                   | jun 2020  | Múltiples LPE sin parchear                                                  |
| Moodle     | Antigua (2.7–3.x inferido) | 2015–2019 | +150 CVEs sin parchear si 2.7                                               |

**Ataque directo para defacement:**

1. **PHPGGC + unserialize**: PHP 5.6 es especialmente vulnerable a ataques de deserialización (`CVE-2016-7124`, CVSS 9.8). Cadenas de gadgets públicas para Moodle/Drupal disponibles.

2. **RCE vía CVE-2018-19518**: Vulnerabilidad de inyección de comandos en `imap_open()` de PHP 5.6 (CVSS 9.8). Si Moodle usa funcionalidad IMAP, se puede ejecutar código arbitrario.

3. **Plugin/tema malicioso**: *Si* la versión de Moodle permite instalación de plugins ZIP desde admin y se obtienen credenciales (fuerza bruta, por defecto/débiles), subida de webshell PHP.

### Vía 2: Drupal 9.5.11 (rcsmm.eu) — ALTO

Drupal 9 alcanzó EOL en **noviembre de 2023**. No recibe parches de seguridad desde entonces.

| Componente | Versión | EOL | CVEs relevantes |
|------------|---------|-----|-----------------|
| Drupal | 9.5.11 | nov 2023 | CVE-2024-55638 (cadena gadgets, CVSS 9.8), CVE-2025-31674 (Object Injection) |

**Ataque para defacement:**

1. **Cadena de gadgets Drupal9/RCE1** (PHPGGC): Desde 2023 existe una cadena pública que permite RCE en Drupal 8.9.6 – 9.4.9. En 9.5.11 aún podría ser funcional si están presentes las dependencias Guzzle/Laminas. Requiere un punto de entrada `unserialize()` desde otro módulo.

2. **CVE-2025-31674** (Object Injection, CVSS 7.5): Publicado en marzo 2025. Afecta a Drupal 9.x. **Requiere autenticación** con privilegios bajos. El registro de usuarios en `/user/register` devuelve **403 Forbidden** (no abierto), limitando este vector.

3. **Fuerza bruta de credenciales**: El patrón de emails `nombre.apellido@rcsmm.es` permite enumerar cuentas de profesorado desde los listados públicos. Un diccionario con nombres comunes + contraseñas débiles contra `/user/login` puede dar acceso administrativo.

### Vía 3: Exposición de servicios internos

| Servicio | URL | Riesgo |
|----------|-----|--------|
| FTP | `ftp.rcsmm.eu` | **Alto** — Si permite acceso anónimo, subida de webshell, reemplazo de index.html, exfiltración de datos |
| Intranet | `intranet.rcsmm.eu` | Panel interno sin autenticación visible |
| phpMyAdmin? | `webmail.rcsmm.eu` | Webmail expuesto |

La exposición del servicio FTP es especialmente crítica: es un punto de entrada habitual para actores de amenazas, permitiendo desde defacement hasta establecimiento de persistencia. Debería priorizarse su revisión inmediata.

### Resumen de prioridad de mitigación

| Vector | Dificultad | Impacto | Prioridad de mitigación |
|--------|-----------|---------|------------------------|
| PHP 5.6 CVE-2018-19518 / deserialización | Baja | RCE | ★★★★★ |
| Stack Moodle antiguo (PHP 5.6 + Debian 8) | Baja | RCE | ★★★★★ |
| FTP anónimo (si habilitado) | Baja | Subida archivos / persistencia | ★★★★★ |
| Drupal fuerza bruta | Media | Acceso admin | ★★★★☆ |
| Drupal CVE-2025-31674 | Alta (requiere auth) | Object Injection | ★★★☆☆ |

#### 4.2.5 Tecnologías usadas
- CMS: Drupal 9.5.11 (web principal, confirmado) + Moodle (campus virtual, versión no confirmada pasivamente; stack consistente con 2.7–3.x EOL)
- Frameworks: YUI 3.13.0 / YUI2 2.9.0 (Moodle), PHP 5.6.38 (confirmado por cabecera)
- Librerías: Apache httpd
- Analíticas: No detectadas
- CDN: No detectada
- Servicios externos: scncloud.com (gestor de citas), EducaMadrid, WebUntis (rcsmm.webuntis.com — horarios públicos sin autenticación), CODEX (codex.pro — gestión académica y notas de alumnos)
- Plataformas propias: rta.rcsmm.eu (Registro de Trabajos de Alumnos)

## 5. Información corporativa

> **Fuentes utilizadas:**
> ```bash
> curl -s https://rcsmm.eu/nuestro-centro
> curl -s https://rcsmm.eu/departamento-cuerda
> curl -s https://rcsmm.webuntis.com/WebUntis/?school=RCSMM
> ```

### 5.1 Equipo directivo
- Nombres públicos:
  - Consuelo de la Vega Sestelo — Directora (2020–presente), catedrática de Pedagogía
  - Ana Guijarro Malagón — Directora (2012–2013 y 2014–2020), catedrática de piano
  - Adolfo Garcés Compans — Director (2013–2014), catedrático de clarinete
  - Anselmo Ignacio de la Campa Díaz — Director (2008–2012), catedrático de piano
- Cargos: Director/a del RCSMM
- Perfiles profesionales: Catedráticos del centro, artistas y pedagogos

### 5.2 Personal de la empresa

#### 5.2.1 Datos personales
- Solo información pública:
  - Esteban Algora — Coordinador Erasmus (erasmus@rcsmm.eu)
  - María Gonzalez-Moral — Asistente coordinación Erasmus
  - César Ausejo — Jefe de estudios Erasmus (jefestudio4@rcsmm.eu)
  - Isabel Menéndez — Jefa de Secretaría
  - Patricia Arbolí — Secretaria
  - Profesorado del Departamento de Cuerda listado públicamente en web (25+ profesores con nombre completo y especialidad)

#### 5.2.2 Redes sociales
- Perfiles corporativos relevantes: @RCSMM_oficial (X/Twitter), @conservatorio_superior_madrid (Instagram)
- Perfiles profesionales asociados: No se realizó búsqueda específica de perfiles individuales

#### 5.2.3 Otros registros
- Apariciones públicas: Masterclasses, conciertos y recitales listados en la web del centro
- Eventos: Masterclass de Repertorio Orquestal (violín), Clases Magistrales de Cámara (Aitor Hevia), Recital de Viola (Helena Santos), entre otros
- Conferencias: No detectadas

## 6. Otra información

> **Comandos utilizados (PowerShell):**
> ```powershell
> Resolve-DnsName rcsmm.eu -Type MX,TXT
> Resolve-DnsName _dmarc.rcsmm.eu -Type TXT
> Resolve-DnsName rcsmm.es -Type TXT
> curl.exe -s https://rcsmm.eu | Select-String -Pattern '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}'
> curl.exe -s https://rcsmm.webuntis.com/WebUntis/?school=RCSMM | Select-String -Pattern '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}'
> ```

### 6.1 Emails recopilados

#### 6.1.1 Emails corporativos
- Correos publicados en web oficial (extraídos mediante `curl + Select-String` del HTML y de registros DNS DMARC):
  - `infosecre@rcsmm.eu` — Secretaría académica / contacto general
  - `info@rcsmm.eu` — Contacto general (según AEC)
  - `biblioteca@rcsmm.eu` — Biblioteca del centro (confirmado en /informacion)
  - `erasmus@rcsmm.eu` — Coordinación Erasmus
  - `dmarc-analysis@rcsmm.eu` — Informes agregados DMARC (RUA) (extraído del registro TXT `_dmarc.rcsmm.eu`)
  - `dmarc-forensics@rcsmm.eu` — Informes forenses DMARC (RUF) (extraído del registro TXT `_dmarc.rcsmm.eu`)
- **Detección de formatos**:
  - **`nombre@rcsmm.eu`** — Formato administrativo. Se observó en `infosecre@rcsmm.eu`, `erasmus@rcsmm.eu`. Se infiere que el personal de administración usa este formato simple.
  - **`nombre.apellido@rcsmm.es`** — Formato del profesorado. Inferido de la presencia de un dominio separado `rcsmm.es` con SPF de Outlook (`include:spf.protection.outlook.com`), lo que indica Microsoft 365. El patrón `nombre.apellido` es el estándar en Exchange Online para cuentas de personal docente. Combinando la lista pública de profesores del Departamento de Cuerda (25+ nombres), se puede reconstruir el correo de cualquier docente.

### 6.1.4 Registros TXT confirmados
- SPF: `v=spf1 ip4:213.172.39.16/28 ip4:217.172.77.96/27 ip6:2a11:1f40::/29 -all`
  **Definición**: El registro SPF (Sender Policy Framework) autoriza qué servidores pueden enviar correos en nombre del dominio
- DMARC: `_dmarc.rcsmm.eu` → `v=DMARC1; p=quarantine; rua=mailto:dmarc-analysis@rcsmm.eu; ruf=mailto:dmarc-forensics@rcsmm.eu`
  **Definición**: El registro DMARC (Domain-based Message Authentication Reporting) establece cómo los mensajes fallan en verificaciones SPF/DKIM y quién recibe informes
- Microsoft verification: `MS=ms13757792` (en rcsmm.eu)
  **Definición**: El token de verificación de Microsoft confirma propiedad del dominio para servicios de Microsoft 365
- Posibles selectores DKIM (detectados como registros TXT en raíz del dominio, formato compatible con Microsoft 365): `_j086yc6fkdff4hfxni3svuz2k437bxd`, `_2t2d9xz3ow186tdizt6vge7kenyxfoc`, `ls86y0hdz3l881ws89g4592m4qc52s6w`, `8lrtrcstkqy8dx7zw3fkzy3n29hc9wf9`
  **Definición**: Los selectores DKIM (DomainKeys Identified Mail) son claves criptográficas usadas para firmar y verificar la autenticidad de los correos salientes

### 6.1.2 Dominio secundario identificado
- `rcsmm.es` — Dominio separado para email del profesorado
- Patrón de correo: `nombre.apellido@rcsmm.es`
- Infraestructura: Hosting en Strato AG (Alemania), correo en Microsoft 365 / Exchange Online (Outlook)
- SPF: `v=spf1 include:spf.protection.outlook.com -all`
- Verificación Microsoft: `MS=ms87766292`
- **Implicación OSINT**: Conociendo la lista de profesores (25+ nombres del Departamento de Cuerda), se puede inferir el correo de cualquier docente del centro.

### 6.1.3 Registros MX confirmados 
- `pop3.rcsmm.eu` (priority 10)
- `mail.rcsmm.eu` (priority 10)
- `smtp.rcsmm.eu` (priority 10)
- `imap.rcsmm.eu` (priority 10)
- Todos resuelven a `213.172.39.24`

### 6.2 Metadatos
- Documentos analizados: PDFs públicos del sitio (ver §3.3). No se descargaron documentos adicionales para análisis de metadatos
- Información extraída: Autor "Patricia Arbolí" detectado en múltiples PDFs de Secretaría publicados en `/sites/default/files/`

## 7. Recomendaciones

### Resumen ejecutivo

El RCSMM presenta **tres riesgos críticos inmediatos** que requieren acción urgente:

1. **Stack tecnológico completamente EOL**: Moodle (PHP 5.6 + Debian 8) y Drupal 9.5.11 están fuera de soporte. Un atacante con conocimiento de los CVEs públicos puede comprometer el servidor con relativa facilidad.
2. **Servicios internos expuestos**: FTP e Intranet son accesibles desde Internet sin restricción aparente. El FTP, en particular, permite subida de archivos y es un vector habitual de defacement.
3. **Seguridad de correo electrónico mejorable**: DMARC en modo `quarantine` (no `reject`) permite suplantación. No se confirmaron registros DKIM funcionales.

Además, la **exposición de datos personales** (listados públicos de profesorado, horarios en WebUntis, patrón de email predecible) facilita ataques de ingeniería social y fuerza bruta.

> **Metodología:**
> Las recomendaciones se priorizan según el riesgo estimado (probabilidad × impacto) basado en:
> - Versiones de software detectadas y su estado de soporte (EOL vs soportado)
> - Exposición pública de servicios (FTP, intranet, webmail)
> - Configuración de seguridad email (SPF, DKIM, DMARC)
> - Capacidad de fingerprinting del servidor
> - Exposición de datos personales en fuentes públicas
- Mejora de seguridad visible:
  - **Crítico inmediato**: Aislar servidor Moodle (PHP 5.6 + Debian 8 + Moodle antiguo EOL — todo EOL). Migrar a PHP 8.x, Debian 12, Moodle 4.x. Realizar forensia por posible compromiso previo.
  - **Alto**: Implementar DKIM y subir DMARC a `p=reject`. Restringir FTP e Intranet por IP/VPN. Migrar Drupal 9 a versión soportada.
  - **Medio**: Publicar registro CAA, eliminar registros TXT huérfanos, ocultar versión de Apache.
  **Definición**: El registro CAA (Certification Authority Authorization) impide que cualquier CA emita certificados para este dominio
  **Definición**: Los registros TXT huérfanos son entradas DNS no utilizadas que pueden ser explotadas para_REDacción
  **Definición**: Ocultar la versión de Apache previene fingerprinting del servidor
- **Bajo**: Habilitar IPv6, monitorización continua de seguridad.

- Exposición de datos innecesaria:
  - Cabecera `X-Powered-By: PHP/5.6.38-0+deb8u1` expone versión exacta de PHP y SO
  - FTP e Intranet accesibles desde internet sin restricción aparente
  - Moodle expone `jsrev` y `themerev` que permiten fingerprinting de versión
  - Listados públicos de profesorado con nombre completo y especialidad
  - WebUntis público expone horarios completos de todos los profesores, aulas y grupos sin autenticación
  - Patrón de correo `nombre.apellido@rcsmm.es` permite enumerar emails de cualquier docente del centro fácilmente
  - Dos dominios separados (rcsmm.eu / rcsmm.es) con infraestructura diferente y sin coordinación de seguridad visible
  - **DKIM activo** (mitiga spoofing) pero DMARC en quarantine no reject
  **Nota**: DKIM solo mitiga parcialmente el spoofing, no lo previene completamente
  **Definición**: DMARC en modo quarantine (p=quarantine) mantiene los correos sospechosos en cuarentena pero no los rechaza

- Buenas prácticas detectadas:
  - HSTS activo con `max-age=63072000` (2 años)
  - SPF restrictivo con `-all`
  - DMARC implementado (aunque en modo quarantine y no reject)
  - **DKIM configurado** (4 posibles selectores activos en TXT)
  **Nota**: DKIM ayuda a prevenir el spoofing de correo pero no bloquea el spam
  - HTTPS nativo sin redirección HTTP (seguro por defecto)
  - Cabecera `X-Frame-Options: SAMEORIGIN` (protección anti-clickjacking)
  - `X-Content-Type-Options: nosniff` activo
  - Nameservers redundantes (4 servidores DNS)
### 8. CVEs críticos del stack  (PHP 5.6.38 + Debian 8 + Drupal 9.5.11)

| CVE                | Componente         | CVSS    | Descripción                                                   |
| ------------------ | ------------------ | ------- | ------------------------------------------------------------- |
| **CVE-2016-7124**  | PHP 5.6.x < 5.6.25 | **9.8** | Use-after-free en `unserialize()`. RCE remoto sin autenticar. |
| **CVE-2016-5771**  | PHP 5.6.x < 5.6.23 | **9.8** | Use-after-free en SPL `unserialize()`. RCE remoto.            |
| **CVE-2016-5768**  | PHP 5.6.x < 5.6.23 | **9.8** | Doble liberación en mbstring. RCE remoto.                     |
| **CVE-2016-5773**  | PHP 5.6.x < 5.6.23 | **9.8** | Use-after-free en zip `unserialize()`. RCE remoto.            |
| **CVE-2018-19518** | PHP 5.6.x < 5.6.39 | **9.8** | Inyección de comandos vía `imap_open()`. RCE remoto.          |
| **CVE-2016-4538**  | PHP 5.6.x < 5.6.21 | **9.8** | Modificación de estructuras en `bcpowmod()`. RCE potencial.   |
| **CVE-2015-6836**  | PHP 5.6.x < 5.6.13 | **9.8** | Type confusion en `SoapClient`. RCE vía serialización.        |
| **CVE-2024-55638** | Drupal 8.9.6–9.4.9 | **9.8** | Cadena de gadgets (PHPGGC). RCE si `unserialize()` expuesto.  |
| **CVE-2025-31674** | Drupal 9.x         | 7.5     | Object Injection. Requiere autenticación.                     |

## 9. Listado de capturas recomendadas

Para respaldar visualmente la información del informe, se recomienda incluir las siguientes capturas de pantalla:

### §2 Información del objetivo
| # | Captura | Propósito |
|---|---------|-----------|
| 1 | Resultados de Google dorking: `site:rcsmm.eu filetype:pdf` | Mostrar PDFs públicos indexados |
| 2 | Wikipedia: Madrid Royal Conservatory | Fuente histórica del centro |
| 3 | Titular El Mundo (26/11/2025) — protesta Santa Cecilia | Caso de acoso: contexto mediático |
| 4 | Titular El Mundo (10/12/2025) — carta alumnos Consejería | Caso de acoso: evolución |
| 5 | Perfil de Twitter/X @RCSMM_oficial | Verificación de presencia en redes |
| 6 | Perfil de Instagram @conservatorio_superior_madrid | Verificación de presencia en redes |
| 7 | Canal de YouTube del RCSMM | Verificación de presencia en redes |
| 8 | Página de Facebook oficial | Verificación de presencia en redes |

### §3 Información administrativa
| # | Captura | Propósito |
|---|---------|-----------|
| 9 | Página `/aviso-legal` con NIF Q2868055A | Datos fiscales |
| 10 | Página `/politica-privacidad` | Cumplimiento legal |
| 11 | Página `/preguntas-frecuentes` con tabla de precios | Datos económicos (12.985 €/curso) |
| 12 | Página `/portal-transparencia` mostrando "En construcción" | Ausencia de transparencia |
| 13 | Terminal con `Select-String` extrayendo `/Author(Patricia Arbolí)` del PDF | Metadatos de documentos |

### §4 Información técnica
| # | Captura | Propósito |
|---|---------|-----------|
| 14 | Terminal: `Resolve-DnsName rcsmm.eu -Type A,NS,SOA` | IP principal y nameservers |
| 15 | Terminal: `Resolve-DnsName` para moodle, intranet, webmail, ftp | IPs de subdominios |
| 16 | Terminal: `Resolve-DnsName` PTR para `62.97.84.197` → `arvy.futurvia.net` | Hostname real del servidor web |
| 17 | Terminal: `Resolve-DnsName` PTR para `213.172.39.24` → `orfeo.servytec.es` | Hostname real del servidor interno |
| 18 | crt.sh mostrando subdominios de `%.rcsmm.eu` | Subdominios por CT logs |
| 19 | Censys / Shodan: panel SNPanel en `213.172.39.24:12000` | Panel de gestión expuesto |
| 20 | Terminal: `curl -sI https://rcsmm.eu` — cabecera `X-Generator: Drupal 9` | CMS y versión |
| 21 | Terminal: `curl -sI https://moodle.rcsmm.eu/login/index.php` — `X-Powered-By: PHP/5.6.38-0+deb8u1` | Versión PHP y SO |
| 22 | Terminal: `curl -s https://rcsmm.eu/robots.txt` | Archivo robots.txt completo |
| 23 | Terminal: `curl -sI https://rcsmm.eu/user/register` — respuesta 403 | Registro cerrado |

### §5 Información corporativa
| # | Captura | Propósito |
|---|---------|-----------|
| 24 | Página `/equipo-directivo` con organigrama | Directivos del centro |
| 25 | Página `/departamento-cuerda` con listado de profesores | Personal identificable |
| 26 | WebUntis público `rcsmm.webuntis.com` con horarios | Exposición de datos personales |

### §6 Otra información
| # | Captura | Propósito |
|---|---------|-----------|
| 27 | Terminal: `Resolve-DnsName rcsmm.eu -Type MX,TXT` | Registros MX y TXT |
| 28 | Terminal: `Resolve-DnsName _dmarc.rcsmm.eu -Type TXT` | Política DMARC |
| 29 | Terminal: `Resolve-DnsName rcsmm.es -Type TXT` | SPF de Outlook y MS verify |
| 30 | Terminal: extracción de emails con `Select-String` del HTML | Emails corporativos |
| 31 | Página `/informacion` mostrando `biblioteca@rcsmm.eu` | Email de biblioteca |
| 32 | Cabeceras HTTP completas de rcsmm.eu y moodle.rcsmm.eu | HSTS, X-Frame-Options, etc. |

### Notas para las capturas
- Todas las capturas deben incluir la **URL completa** en la barra de direcciones o la **línea de comandos** ejecutada
- Las capturas de terminal deben mostrar el **comando y su salida** para trazabilidad
- Fecha de las capturas: coincidente con la fecha del informe
- Si alguna fuente no está accesible en el momento de la captura, indicar "No accesible" en el pie de foto
