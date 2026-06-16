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

### 2.1 Introducción [^exhibit-1] [^exhibit-2]
- Descripción general del objetivo: Real Conservatorio Superior de Música de Madrid (RCSMM) — principal centro público de educación musical superior de España, fundado en 1830 por la reina María Cristina
- Actividad principal: Formación profesional de músicos (intérpretes, directores, compositores, musicólogos, pedagogos). Imparte Grado, Máster y Doctorado en el marco del EEES
- Presencia online: Web principal (rcsmm.eu), Campus Virtual Moodle (moodle.rcsmm.eu), Intranet corporativa (intranet.rcsmm.eu), Webmail (webmail.rcsmm.eu)
- Plataformas externas: CODEX (codex.pro — gestión académica y notas), WebUntis [^exhibit-30] (rcsmm.webuntis.com — horarios públicos con nombres de profesores)

### 2.2 Apariciones destacadas en los medios

#### Caso de acoso (2025) [^exhibit-3]
- En nov-dic 2025, varios medios nacionales cubrieron denuncias de alumnas por presuntos abusos sexuales y acoso por parte del catedrático de clarinete Pedro Garbajosa. La Policía Nacional abrió investigación de oficio. El centro se remitió al expediente abierto desde hacía año y medio.
  - El Mundo (26/11/2025): https://www.elmundo.es/cultura/2025/11/26/69272c5fe4d4d89f458b4585.html
  - El Mundo (10/12/2025): https://www.elmundo.es/cultura/2025/12/10/69399676e85eceb4778b4584.html
  - El Mundo (11/12/2025): https://www.elmundo.es/cultura/2025/12/11/693ae9b9e85ece374c8b4575.html
  - Telemadrid (27/11/2025): https://www.telemadrid.es/programas/telenoticias-1/Protesta-contra-un-profesor-denunciado-por-acoso-en-el-Real-Conservatorio-de-Madrid-2-2838336157--20251127025232.html
  - Cadena SER (27/11/2025): https://cadenaser.com/cmadrid/2025/11/27/investigan-las-denuncias-por-acoso-a-un-profesor-del-real-conservatorio-de-musica-de-madrid-radio-madrid/
  - 20minutos (27/11/2025): https://www.20minutos.es/madrid/investigan-un-profesor-clarinete-conservatorio-superior-musica-madrid-por-acoso-alumnas_6903689_0.html
  - 20minutos (29/11/2025): https://www.20minutos.es/madrid/alumnas-real-conservatorio-madrid-denuncian-anos-abusos-un-profesor-te-tocaba-con-excusa-ensenarte-respirar_6904016_0.html
  - La Vanguardia (12/12/2025): https://www.lavanguardia.com/local/madrid/20251212/11355942/policia-investiga-acusaciones-abusos-sexuales-profesor-clarinete-conservatorio-musica-madrid.html

#### Otras apariciones en medios
| Medio | Fecha | Título / Evento | Enlace |
|-------|-------|----------------|--------|
| RTVE | 11/06/2026 | Clausura III edición Máster Interpretación Sinfónica (OCRTVE + RCSMM). Padrino: Josu de Solaun | https://www.rtve.es/rtve/20260611/clausura-iii-edicion-del-master-interpretacion-sinfonica-orquesta-coro-rtve-rcsmm/17110576.shtml |
| Europa Press | 16/02/2026 | Díaz Ayuso reconoce a los 25 centros de Enseñanzas Artísticas; cita RCSMM como "matriz de todos los conservatorios" y anuncia nueva sede en Las Tablas | https://www.europapress.es/madrid/noticia-madrid-reconoce-25-centros-ensenanzas-artisticas-regionales-labor-puerta-mundo-profesional-20260216122442.html |
| Doce Notas | 13/04/2026 | Alumnos de Sonología del RCSMM presentan trabajos finales en Sala Berlanga (Fundación SGAE) | https://www.docenotas.com/184014/los-alumnos-de-sonologia-del-rcsmm-presentan-sus-trabajos-finales-en-la-sala-berlanga/ |
| Toda la Música | 26/01/2026 | II Encuentros Orquestales RCSMM en Museo del Prado, Auditorio Nacional, Teatro Monumental y Escuela Superior de Canto | https://www.todalamusica.es/el-real-conservatorio-superior-de-musica-de-madrid-celebra-los-segundos-encuentros-orquestales/ |
| RTVE | 11/06/2025 | Clausura II edición Máster Interpretación Sinfónica (OCRTVE + RCSMM) | https://www.rtve.es/rtve/20250611/orquesta-coro-rtve-real-conservatorio-superior-musica-madrid-clausuran-ii-edicion-master-interpretacion-sinfonica/16620413.shtml |
| Juventudes Musicales España | 25/06/2025 | 112º Concurso Nacional de Jóvenes Intérpretes (Canto y Música de Cámara) celebrado en el RCSMM | https://www.jmspain.org/es/actualidad/158-juventudes-musicales-de-espana-celebra-el-112.html |
| Ayuntamiento Madrid | 03/06/2025 | Piano City Madrid 2025: RCSMM selecciona pianistas emergentes y encarga obras al Dpto. de Composición | https://www.madrid.es/portales/munimadrid/es/Inicio/Actualidad/Noticias/Piano-City-Madrid-2025-convierte-la-ciudad-en-un-gran-escenario-a-pie-de-calle/ |
| 20minutos | 31/03/2025 | Campaña CAM para Enseñanzas Artísticas: 3.000 plazas en 25 centros, RCSMM como centro de referencia | https://www.20minutos.es/noticia/5696287/0/los-alumnos-de-ensenanzas-artisticas-de-madrid-podran-matricularse-en-una-de-las-3-000-plazas-el-7-de-abril/ |
| Comunidad de Madrid | 31/07/2024 | Ampliación oferta educativa RCSMM: nueva Especialidad de Producción y Gestión | https://www.comunidad.madrid/noticias/2024/07/31/comunidad-madrid-amplia-oferta-educativa-real-conservatorio-superior-musica-madrid |
| Toda la Música | 26/06/2024 | Clausura I edición Máster Interpretación Orquestal (OCRTVE + RCSMM) | https://www.todalamusica.es/la-ocrtve-y-el-rcsmm-clausuran-la-i-edicion-del-master-en-ensenanzas-artisticas-en-interpretacion-orquestal/ |
| RTVE | 26/06/2024 | Clausura I edición Máster Interpretación Orquestal. Lección magistral de Federico Jusid | https://www.rtve.es/rtve/20240626/orquesta-sinfonica-coro-rtve-real-conservatorio-musica-madrid-clausuran-i-edicion-master-interpretacion-ensenanzas-artisticas-orquestal/16163634.shtml |
| Fundación SGAE-CNDM | 2025 | Andrés Poncela (formado en RCSMM) gana 36º Premio Jóvenes Compositores | https://cndm.inaem.gob.es/node/23750 |
| Bulletin of Spanish Studies | 17/02/2026 | Artículo académico "Legado de Francisco Frontera de Valldemosa en el RCSMM" (Sara Navarro Lalanda) | https://www.tandfonline.com/doi/abs/10.1080/14753820.2025.2600220 |

### 2.3 Contacto y redes sociales

- Página web oficial: https://rcsmm.eu
- Redes sociales: [^exhibit-5] [^exhibit-7]
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

### 3.1 Datos fiscales [^exhibit-9]
- Razón social: Real Conservatorio Superior de Música de Madrid (RCSMM)
- NIF : Q2868055A
- Dirección fiscal: C/ Doctor Mata 2, 28012 Madrid, España
- Registro mercantil (si aplica): No aplica (organismo público)

### 3.2 Datos económicos [^exhibit-11]
- Información financiera pública: Centro público sostenido por fondos públicos (Comunidad de Madrid). Menciona cofinanciación de la Unión Europea y del SEPIE para programas Erasmus+
- Precios públicos (curso 2025-26): Matrícula por crédito 216,10 €; curso completo (60 ECTS) ≈ 12.985 €, con bonificaciones de hasta 95 % según renta. Prueba de acceso: 49 €. Fuente: preguntas-frecuentes
- Portal de Transparencia: https://rcsmm.eu/portal-transparencia — **"En construcción"** (sin datos publicados a fecha del informe) [^exhibit-12]
- Informes anuales: No localizados en fuentes abiertas
- Subvenciones / ayudas (si aplica): Participa en programas Erasmus+ (Erasmus Charter for Higher Education). Fondo Social Europeo mencionado en web
- Afiliaciones: Miembro de AEC (Association Européenne des Conservatoires)
- **Búsquedas realizadas sin resultados relevantes**: libreborme.com, infocif.es (organismo público, no sociedad mercantil)

### 3.3 Metadatos de documentos públicos [^exhibit-13]
- PDFs publicados en `rcsmm.eu/sites/default/files/` contienen metadatos verificables:
  - **Autor**: Patricia Arbolí (Secretaría del centro)
  - **Software**: Microsoft Word 2019 (Creator y Producer)
  - **Fecha de creación**: 2023-07-13
  - Fuente: descarga del PDF + extracción de metadatos:
    ```bash
    curl -s -k -o /tmp/23.pdf "https://rcsmm.eu/sites/default/files/2023-11/23.pdf"
    pdfinfo /tmp/23.pdf
    ```

## 4. Información técnica

> **Comandos utilizados :**
> ```bash
> # DNS básico
> dig rcsmm.eu A +short
> dig rcsmm.eu NS +short
> dig rcsmm.eu SOA
> # Subdominios
> for s in moodle intranet webmail ftp; do dig $s.rcsmm.eu A +short; done
> # Dominio secundario
> dig rcsmm.es A +short && dig rcsmm.es NS +short
> # PTR (resolución inversa)
> dig -x 62.97.84.197 +short
> dig -x 213.172.39.24 +short
> # CAA
> dig rcsmm.eu CAA +short
> # crt.sh → subdominios por CT logs
> curl -s "https://crt.sh/?q=%25.rcsmm.eu&output=json" | jq -r '.[].name_value | split("\n") | .[]' | sort -u | sed 's/^\*\.//'
> # DKIM (posibles selectores)
> dig _domainkey.rcsmm.eu TXT +short
> dig selector1._domainkey.rcsmm.eu TXT +short
> dig selector2._domainkey.rcsmm.eu TXT +short
> # DMARC
> dig _dmarc.rcsmm.eu TXT +short
> dig _dmarc.rcsmm.es TXT +short
> ```

### 4.1 Direcciones IP y geolocalización [^exhibit-14] [^exhibit-15] [^exhibit-16] [^exhibit-17]

| IP                                | Hostname (PTR)      | Geolocalización     | Proveedor                         |
| --------------------------------- | ------------------- | ------------------- | --------------------------------- |
| `62.97.84.197` (rcsmm.eu)         | `arvy.futurvia.net` | Madrid, España      | COLT Technology Services (AS8220) |
| `213.172.39.24` (moodle.rcsmm.eu) | `orfeo.servytec.es` | Madrid, España      | Servytec Networks (AS196713)      |
| `81.169.145.158` (rcsmm.es)       | *(rzone)*           | Frankfurt, Alemania | Strato AG                         |

- Resolución DNS: 4 nameservers (ns1-4.servytec.es), SOA Serial 2026031201 (mar 2026)
- Dominio secundario `rcsmm.es`: Nameservers `docks10.rzone.de` / `shades03.rzone.de` (Strato)
- **Shodan / Censys ** La IP `213.172.39.24` expone **12 puertos** (21/FTP, 25/SMTP, 53/DNS, 80/HTTP, 110/POP3, 143/IMAP, 443/HTTPS, 465/SMTPS, 587/SUBMISSION, 993/IMAPS, 31337/desconocido). Shodan detecta Pure-FTPd, Postfix, Apache HTTP, **PHP 5.6.38 (EOL)** y Dovecot. Acumula **27+ CVEs activos**. La IP `62.97.84.197` solo expone 80/443 (Apache, sin CVEs activos). `81.169.145.158` (Strato) expone puertos FTP/HTTP/HTTPS/8080 con Apache 2.4.68. [^exhibit-41]
- **Registro CAA**: No encontrado (`dig rcsmm.eu CAA +short` → sin salida) [^exhibit-18]

### 4.2 Servidor

#### 4.2.1 Máquina virtual
- Indicios de uso: No confirmado
- Proveedor cloud (si se detecta): Servytec Networks S.L. — CPD propio en Madrid
- **Nota**: Se detectó un panel de gestión SNPanel (posible panel de administración de hosting) accesible en `213.172.39.24:12000/tcp` según censys.io. Esto sugiere que el servidor aloja múltiples clientes y utiliza un panel de gestión de servicios. [^exhibit-20]
- Subdominios confirmados por DNS pasivo: [^exhibit-19]

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

> **Comandos utilizados :**
> ```bash
> # Cabeceras HTTP
> curl -sI https://rcsmm.eu
> curl -sI https://moodle.rcsmm.eu/login/index.php
> curl -s https://rcsmm.eu/robots.txt
> curl -sI https://rcsmm.eu/user/register
> curl -s https://rcsmm.eu/user/login
> # Detección de tecnologías (whatweb)
> whatweb rcsmm.eu
> whatweb moodle.rcsmm.eu
> # SSL/TLS
> openssl s_client -connect rcsmm.eu:443 -servername rcsmm.eu 2>/dev/null | openssl x509 -text -noout 2>/dev/null | head -30
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

| Criticidad     | Hallazgo                                     | Componente              |
| -------------- | -------------------------------------------- | ----------------------- |
| 🔴 **CRÍTICA** | PHP 5.6.38 EOL — Múltiples RCE (CVSS 9.8)    | Moodle / Stack completo |
| 🔴 **CRÍTICA** | Debian 8 Jessie EOL — Sin parches desde 2020 | Moodle                  |
| 🔴 **CRÍTICA** | Drupal 9.5.11 EOL — Sin parches desde 2023   | Web principal           |
| 🔴 **CRÍTICA** | **FTP expuesto (Pure-FTPd) en 213.172.39.24** — Subida/descarga de archivos sin restricción aparente. Shodan confirma Pure-FTPd + 27+ CVEs en el mismo host. Vector de entrada directo para defacement o robo de datos. | Red interna / Servidor  |
| 🟡 **MEDIA**   | Sin registro CAA                             | DNS                     |
| 🟢 **BAJA**    | Versión Apache expuesta                      | Servidor web            |

**Detalle:**
  - **PHP 5.6.38** (EOL dic 2018, confirmado por cabecera `X-Powered-By`) — Múltiples RCE por deserialización: CVE-2016-7124, CVE-2016-5771, CVE-2016-5768, CVE-2016-5773 (todos CVSS 9.8); inyección comandos CVE-2018-19518 (CVSS 9.8)
  - **Debian 8 Jessie** (EOL jun 2020, inferido de `deb8u1` en versión PHP) — Sin parches de seguridad del sistema desde 2020
  - **Drupal 9.5.11** (EOL nov 2023, confirmado por cabecera `X-Generator` y `v=9.5.11` en JS) — Sin parches de seguridad desde 2023
  - **Moodle** — Versión exacta no confirmada pasivamente; stack (PHP 5.6, Debian 8, YUI 2014) consistente con versión antigua (2.7–3.x EOL)
  - **DKIM configurado** (4 posibles selectores detectados en TXT) — Spoofing mitigado parcialmente
  - **DMARC en quarantine** (no reject)  — Correos suplantados no se rechazan
  - **FTP expuesto (Pure-FTPd)** — DNS confirma subdominio ftp.rcsmm.eu en 213.172.39.24. Shodan confirma Pure-FTPd con listado de directorios y capacidades de subida. Es el vector de entrada más directo para un atacante: acceso a archivos internos del servidor y posibilidad de plantar contenido malicioso (defacement).
  - **Sin registro CAA** — Cualquier CA puede emitir certificados
- Referencias:
  - Tenable: [CVE-2016-7124](https://www.tenable.com/cve/CVE-2016-7124), [CVE-2016-5771](https://www.tenable.com/cve/CVE-2016-5771), [CVE-2016-5768](https://www.suse.com/security/cve/CVE-2016-5768.html)
  - NVD: [CVE-2018-19518](https://nvd.nist.gov/vuln/detail/CVE-2018-19518), [CVE-2015-6836](https://nvd.nist.gov/vuln/detail/CVE-2015-6836), [CVE-2016-4538](https://nvd.nist.gov/vuln/detail/CVE-2016-4538)
  - OSV.dev: Múltiples CVEs PHP ([OSV.dev](https://osv.dev/list?q=php))
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

| Servicio    | URL                 | Riesgo                                                                                                   |
| ----------- | ------------------- | -------------------------------------------------------------------------------------------------------- |
| FTP         | `ftp.rcsmm.eu`      | **Alto** — Si permite acceso anónimo, subida de webshell, reemplazo de index.html, exfiltración de datos |
| Intranet    | `intranet.rcsmm.eu` | Panel interno sin autenticación visible                                                                  |
| phpMyAdmin? | `webmail.rcsmm.eu`  | Webmail expuesto                                                                                         |

### Resumen de prioridad de mitigación

| Vector | Dificultad | Impacto | Prioridad de mitigación |
|--------|-----------|---------|------------------------|
| PHP 5.6 CVE-2018-19518 / deserialización | Baja | RCE | ★★★★★ |
| Stack Moodle antiguo (PHP 5.6 + Debian 8) | Baja | RCE | ★★★★★ |
| FTP anónimo (si habilitado) | Baja | Subida archivos / persistencia | ★★★★★ |
| Drupal fuerza bruta | Media | Acceso admin | ★★★★☆ |
| Drupal CVE-2025-31674 | Alta (requiere auth) | Object Injection | ★★★☆☆ |

#### 4.2.5 Tecnologías usadas
- CMS: Drupal 9.5.11 (web principal, confirmado) [^exhibit-22] + Moodle (campus virtual, versión no confirmada pasivamente; stack consistente con 2.7–3.x EOL) [^exhibit-23]
- Frameworks: YUI 3.13.0 / YUI2 2.9.0 (Moodle), PHP 5.6.38 (confirmado por cabecera)
- Librerías: Apache httpd
- Analíticas: No detectadas
- CDN: No detectada
- Servicios externos: scncloud.com (gestor de citas), EducaMadrid, WebUntis (rcsmm.webuntis.com — horarios públicos sin autenticación), CODEX (codex.pro — gestión académica y notas de alumnos)
- Plataformas propias: rta.rcsmm.eu (Registro de Trabajos de Alumnos)
- Detección de tecnologías con whatweb [^exhibit-21]
- SSL/TLS certificate [^exhibit-26]
- robots.txt [^exhibit-24]
- `/user/register` devuelve 403 Forbidden [^exhibit-25]

## 5. Información corporativa

> **Fuentes utilizadas :**
> ```bash
> curl -s https://rcsmm.eu/nuestro-centro
> curl -s https://rcsmm.eu/departamento-cuerda
> curl -s https://rcsmm.webuntis.com/WebUntis/?school=RCSMM
> # Extracción de profesores del HTML
> curl -s https://rcsmm.eu/departamento-cuerda | grep -oP '(?<=<h3 class="field-content">)[^<]+'
> # Horarios públicos (WebUntis)
> curl -s "https://rcsmm.webuntis.com/WebUntis/?school=RCSMM" | grep -oP '[A-ZÁÉÍÓÚÑ][a-záéíóúñ]+ [A-ZÁÉÍÓÚÑ][a-záéíóúñ]+'
> ```

### 5.1 Equipo directivo [^exhibit-27]
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
  - Profesorado del Departamento de Cuerda listado públicamente en web (25+ profesores con nombre completo y especialidad) [^exhibit-28]

#### 5.2.2 Redes sociales
- Perfiles corporativos relevantes: @RCSMM_oficial (X/Twitter), @conservatorio_superior_madrid (Instagram)
- Perfiles profesionales asociados: No se realizó búsqueda específica de perfiles individuales

#### 5.2.3 Otros registros
- Apariciones públicas: Masterclasses, conciertos y recitales listados en la web del centro
- Eventos: Masterclass de Repertorio Orquestal (violín), Clases Magistrales de Cámara (Aitor Hevia), Recital de Viola (Helena Santos), entre otros
- Conferencias: No detectadas

## 6. Otra información

> **Comandos utilizados :**
> ```bash
> # Registros MX y TXT
> dig rcsmm.eu MX +short
> dig rcsmm.eu TXT +short
> dig _dmarc.rcsmm.eu TXT +short
> dig rcsmm.es TXT +short
> dig rcsmm.es MX +short
> # Extracción de emails del HTML
> curl -s https://rcsmm.eu | grep -oP '[a-zA-Z0-9._%+-]+@rcsmm\.(eu|es)'
> curl -s https://rcsmm.webuntis.com/WebUntis/?school=RCSMM | grep -oP '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}'
> # SPF completo
> dig rcsmm.eu TXT +short | grep "v=spf1"
> dig rcsmm.es TXT +short | grep "v=spf1"
> # DMARC
> dig _dmarc.rcsmm.eu TXT +short
> dig _dmarc.rcsmm.es TXT +short
> ```

### 6.1 Emails recopilados

#### 6.1.1 Emails corporativos
- Correos publicados en web oficial (extraídos mediante `curl + greP -oP` del HTML y de registros DNS DMARC):
  - `infosecre@rcsmm.eu` — Secretaría académica / contacto general
  - `info@rcsmm.eu` — Contacto general (según AEC)
  - `biblioteca@rcsmm.eu` — Biblioteca del centro (confirmado en /informacion)
  - `erasmus@rcsmm.eu` — Coordinación Erasmus
  - `dmarc-analysis@rcsmm.eu` — Informes agregados DMARC (RUA) (extraído del registro TXT `_dmarc.rcsmm.eu`)
  - `dmarc-forensics@rcsmm.eu` — Informes forenses DMARC (RUF) (extraído del registro TXT `_dmarc.rcsmm.eu`)
- **Detección de formatos**:
  - **`nombre@rcsmm.eu`** — Formato administrativo. Se observó en `infosecre@rcsmm.eu`, `erasmus@rcsmm.eu`. Se infiere que el personal de administración usa este formato simple.
  - **`nombre.apellido@rcsmm.es`** — Formato del profesorado. Inferido de la presencia de un dominio separado `rcsmm.es` con SPF de Outlook (`include:spf.protection.outlook.com`), lo que indica Microsoft 365. El patrón `nombre.apellido` es el estándar en Exchange Online para cuentas de personal docente. Combinando la lista pública de profesores del Departamento de Cuerda (25+ nombres), se puede reconstruir el correo de cualquier docente.

### 6.1.4 Registros TXT [^exhibit-31] [^exhibit-32]
- SPF: `v=spf1 ip4:213.172.39.16/28 ip4:217.172.77.96/27 ip6:2a11:1f40::/29 -all`
  **Definición**: El registro SPF (Sender Policy Framework) autoriza qué servidores pueden enviar correos en nombre del dominio
- DMARC: `_dmarc.rcsmm.eu` → `v=DMARC1; p=quarantine; rua=mailto:dmarc-analysis@rcsmm.eu; ruf=mailto:dmarc-forensics@rcsmm.eu` [^exhibit-33]
  **Definición**: El registro DMARC (Domain-based Message Authentication Reporting) establece cómo los mensajes fallan en verificaciones SPF/DKIM y quién recibe informes
- Microsoft verification: `MS=ms13757792` (en rcsmm.eu)
  **Definición**: El token de verificación de Microsoft confirma propiedad del dominio para servicios de Microsoft 365
- Posibles selectores DKIM (detectados como registros TXT en raíz del dominio, formato compatible con Microsoft 365): `_j086yc6fkdff4hfxni3svuz2k437bxd`, `_2t2d9xz3ow186tdizt6vge7kenyxfoc`, `ls86y0hdz3l881ws89g4592m4qc52s6w`, `8lrtrcstkqy8dx7zw3fkzy3n29hc9wf9`
  **Definición**: Los selectores DKIM (DomainKeys Identified Mail) son claves criptográficas usadas para firmar y verificar la autenticidad de los correos salientes

### 6.1.2 Dominio secundario identificado [^exhibit-34] [^exhibit-35]
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
- Documentos analizados: PDFs públicos del sitio (ver [3.3 Metadatos de documentos públicos [^exhibit-13]](#3.3%20Metadatos%20de%20documentos%20públicos%20[%20exhibit-13])). 
- Información extraída: Autor "Patricia Arbolí" detectado en múltiples PDFs de Secretaría publicados en `/sites/default/files/`

### 6.3 Exposición de datos en Wayback Machine [^exhibit-40]

**Comando de búsqueda**:
```bash
curl -s "https://web.archive.org/cdx/search/cdx?url=rcsmm.eu/download.php*&output=json&limit=200" \
| jq -r '.[] | select(.[2] | test("\\.pdf|id=")) | "https://web.archive.org/web/\(.[1])/\(.[2])"'
```

Se ha identificado una exposición masiva de datos personales a través del Internet Archive Wayback Machine.

Según la muestra analizada, estos PDFs contienen DNI/NIF de aspirantes a pruebas de acceso del conservatorio. Cualquier persona con acceso a Wayback Machine podía —y puede— descargar estos documentos. 

**Si bien algunos PDFs solo muestran los DNI, otros muestran nombres + parte de DNI, por lo que la identificación completa resultaría trivial**.

**Implicación legal**: Esta exposición constituye una violación del **RGPD** (Reglamento General de Protección de Datos, art. 32: seguridad del tratamiento) y de la **LOPDGDD** (Ley Orgánica 3/2018, art. 19: medidas de seguridad).

**Alcance estimado**: ~90+ PDFs con documentos de aspirantes a pruebas de acceso, fechados entre 2014 y 2023.

## 7. Recomendaciones

El RCSMM presenta **tres prioridades críticas de mitigación** ordenadas por impacto potencial:

1. **🔴 Crítico — Stack EOL + FTP expuesto**: El servidor combina software sin soporte (PHP 5.6 + Debian 8 + Drupal 9.5.11) con un **servicio FTP anónimo o sin restricción** accesible desde Internet [^exhibit-20]. El FTP permite subida y descarga de archivos, lo que lo convierte en el vector más probable para un atacante: puede obtener información interna, plantar malware o defacear la web. Shodan confirma Pure-FTPd y múltiples CVEs activos (27+). La combinación EOL + FTP hace que el riesgo de compromiso total sea alto e inminente.
2. **🟡 Alto — Seguridad de correo electrónico mejorable**: DMARC en modo `quarantine` (no `reject`) permite suplantación. No se confirmaron registros DKIM funcionales. El patrón de email `nombre.apellido@rcsmm.es` es predecible y combinable con los listados públicos de profesorado.
3. **🟢 Medio — Exposición de datos personales**: Listados públicos de profesorado, horarios en WebUntis, patrón de email predecible y datos históricos en Wayback Machine facilitan ataques de ingeniería social.

> **Metodología:**
> Las recomendaciones se priorizan como **prioridades de mitigación** (no como vías de explotación), ordenadas según:
> - Probabilidad de explotación por un atacante real
> - Existencia de CVEs públicos y exploits conocidos
> - Accesibilidad del servicio desde Internet
> - Impacto potencial en la confidencialidad, integridad y disponibilidad
> - Exposición de datos personales en fuentes públicas

- Mejora de seguridad visible:
  - **🔴 Crítico inmediato**: Restringir **FTP por IP/VPN o deshabilitarlo**. Aislar servidor Moodle (PHP 5.6 + Debian 8 — todo EOL). Migrar a PHP 8.x, Debian 12, Moodle 4.x. Realizar forensia por posible compromiso previo.
  - **🟡 Alto**: Implementar DKIM y subir DMARC a `p=reject`. Migrar Drupal 9 a versión soportada. Revisar acceso a Intranet desde Internet.
  - **🟢 Medio**: Publicar registro CAA, eliminar registros TXT huérfanos, ocultar versión de Apache.
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
  - HSTS activo con `max-age=63072000` (2 años) [^exhibit-39]
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

[^exhibit-1]: **Dorking Google** — `site:rcsmm.eu filetype:pdf`. ![](annexes/exhibit_01.png)
[^exhibit-2]: **Wikipedia**. ![](annexes/exhibit_02.png)
[^exhibit-3]: **Caso acoso**. ![](annexes/exhibit_03.png)
[^exhibit-5]: **Twitter/X** — Perfil oficial @RCSMM_oficial. ![](annexes/exhibit_05.png)
[^exhibit-7]: **YouTube** — Canal oficial del RCSMM. ![](annexes/exhibit_07.png)
[^exhibit-9]: **NIF** — Q2868055A localizado en einforma.com. ![](annexes/exhibit_09.png)
[^exhibit-11]: **Precios** — Tabla de tasas en /preguntas-frecuentes. ![](annexes/exhibit_11.png)
[^exhibit-12]: **Transparencia** — Portal "En construcción". ![](annexes/exhibit_12.png)
[^exhibit-13]: **Metadatos PDF** — Autor "Patricia Arbolí" desde pdfinfo. ![](annexes/exhibit_13.png)
[^exhibit-14]: **DNS básico** — Registros A, NS y SOA de rcsmm.eu. ![](annexes/exhibit_14.png)
[^exhibit-15]: **Subdominios** — moodle, intranet, webmail, ftp resueltos. ![](annexes/exhibit_15.png)
[^exhibit-16]: **IP 62.97.84.197** — PTR arvy.futurvia.net (COLT). ![](annexes/exhibit_16.png)
[^exhibit-17]: **IP 213.172.39.24** — PTR orfeo.servytec.es (Servytec). ![](annexes/exhibit_17.png)
[^exhibit-18]: **CAA** — Sin resultados. ![](annexes/exhibit_18.png)
[^exhibit-19]: **CT logs** — Subdominios descubiertos vía crt.sh. ![](annexes/exhibit_19.png)
[^exhibit-20]: **SNPanel** — Panel de hosting en 213.172.39.24:12000. ![](annexes/exhibit_20.png)
[^exhibit-21]: **Whatweb** — Tecnologías detectadas en rcsmm.eu + moodle. ![](annexes/exhibit_21a.png) ![](annexes/exhibit_21b.png)
[^exhibit-22]: **Drupal 9** — Cabecera X-Generator confirma versión 9.5.11. ![](annexes/exhibit_22.png)
[^exhibit-23]: **PHP 5.6** — Moodle ejecuta PHP 5.6.38 (EOL). ![](annexes/exhibit_23.png)
[^exhibit-24]: **robots.txt**. ![](annexes/exhibit_24.png)
[^exhibit-25]: **403 Forbidden** — /user/register bloqueado. ![](annexes/exhibit_25.png)
[^exhibit-26]: **SSL/TLS** — Certificado y cadena de confianza. ![](annexes/exhibit_26.png)
[^exhibit-27]: **Equipo directivo** — Organigrama en /equipo-directivo. ![](annexes/exhibit_27.png)
[^exhibit-28]: **Profesorado** — Listado Departamento de Cuerda. ![](annexes/exhibit_28.png)
[^exhibit-30]: **WebUntis** — Horarios públicos sin autenticación. ![](annexes/exhibit_30.png)
[^exhibit-31]: **MX + TXT** — Registros de correo de rcsmm.eu. ![](annexes/exhibit_31.png)
[^exhibit-32]: **SPF** — `v=spf1 ip4:213.172.39.16/28 ... -all`. ![](annexes/exhibit_32.png)
[^exhibit-33]: **DMARC rcsmm.eu** — Política `p=quarantine`. ![](annexes/exhibit_33.png)
[^exhibit-34]: **DMARC rcsmm.es** — Dominio secundario. ![](annexes/exhibit_34.png)
[^exhibit-35]: **TXT rcsmm.es** — Verificación Microsoft 365. ![](annexes/exhibit_35.png)
[^exhibit-39]: **Cabeceras HTTP** — HSTS, X-Frame-Options, etc. ![](annexes/exhibit_39.png)
[^exhibit-40]: **Wayback Machine** — ~90 PDFs con DNIs de aspirantes expuestos. ![](annexes/exhibit_40.png)
[^exhibit-41]: ![](annexes/exhibit_41.png)