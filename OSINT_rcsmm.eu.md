# Informe OSINT — rcsmm.eu

**Fecha del informe:** 4 de junio de 2026
**Objetivo:** rcsmm.eu — Real Conservatorio Superior de Música de Madrid
**Clasificación:** Información pública (OSINT pasivo)

---

## 1. Identidad de la organización

| Campo            | Valor                                                   |
| ---------------- | ------------------------------------------------------- |
| Nombre           | Real Conservatorio Superior de Música de Madrid (RCSMM) |
| Fundación        | 15 de julio de 1830 (195 años)                          |
| Tipo             | Centro público de enseñanzas artísticas superiores      |
| Directora actual | Consuelo de la Vega Sestelo (desde diciembre 2020)      |
| Coordenadas      | 40°24′33″N 3°41′40″O                                    |
| ROR ID           | `https://ror.org/02w65pw28`                             |
| WHED ID          | IAU-013929                                              |

## 2. Datos del dominio

| Campo | Valor |
|---|---|
| Dominio | `rcsmm.eu` |
| TLD | `.eu` (ccTLD de la Unión Europea) |
| Fecha SOA | Serial `2026031201` (actualizado marzo 2026) |
| CMS detectado | Drupal 9 |
| Servidor web | Apache |
| HSTS | activo (`max-age=63072000`) |
| Redirección HTTP→HTTPS | No detectada (HTTPS nativo) |

## 3. Infraestructura DNS

### Servidores DNS (Nameservers)

| Nameserver | IP Asociada |
|---|---|
| `ns1.servytec.es` | 213.172.39.18 / IPv6: 2a11:1f40::4 |
| `ns2.servytec.es` | — |
| `ns3.servytec.es` | — |
| `ns4.servytec.es` | — |

**SOA:** `ns1.servytec.es` / `hostmaster.servytec.es`

### Mapa de subdominios y resolución

| Subdominio | IP | Servicio |
|---|---|---|
| `rcsmm.eu` | `62.97.84.197` | Web principal (Drupal 9) |
| `www.rcsmm.eu` | `62.97.84.197` | Web principal (alias) |
| `mail.rcsmm.eu` | `213.172.39.24` | Correo (MX) |
| `smtp.rcsmm.eu` | `213.172.39.24` | SMTP |
| `imap.rcsmm.eu` | `213.172.39.24` | IMAP |
| `pop3.rcsmm.eu` | `213.172.39.24` | POP3 |
| `webmail.rcsmm.eu` | `213.172.39.24` | Webmail |
| `moodle.rcsmm.eu` | `213.172.39.24` | Campus Virtual (Moodle) |
| `intranet.rcsmm.eu` | `213.172.39.24` | Intranet corporativa |
| `ftp.rcsmm.eu` | `213.172.39.24` | FTP |

### Registros MX

| Prioridad | Servidor |
|---|---|
| 10 | `pop3.rcsmm.eu` |
| 10 | `mail.rcsmm.eu` |
| 10 | `smtp.rcsmm.eu` |
| 10 | `imap.rcsmm.eu` |

### Registros TXT

| Tipo | Valor |
|---|---|
| SPF | `v=spf1 ip4:213.172.39.16/28 ip4:217.172.77.96/27 ip6:2a11:1f40::/29 -all` |
| DMARC | `v=DMARC1; p=quarantine; rua=mailto:dmarc-analysis@rcsmm.eu; ruf=mailto:dmarc-forensics@rcsmm.eu` |
| Verificación Microsoft | `MS=ms13757792` |
| Otras TXT | 4 cadenas de verificación (`ls86y0...`, `_j086...`, `_2t2d...`, `8lrtr...`) |

### Notas de seguridad DNS

- **DMARC** modo `quarantine` — política intermedia, no rechaza pero marca.
- **SPF** con `-all` (fail). Sin DKIM detectado (no hay `google._domainkey`).
- Sin autodiscover (Exchange/Office 365 no detectado).

## 4. Proveedores de infraestructura

### Hosting web (rcsmm.eu / 62.97.84.197)

| Campo | Valor |
|---|---|
| IP | `62.97.84.197` |
| ASN | AS8220 — COLT Technology Services Group Limited |
| Rango | `62.97.64.0/18` |
| País | España (Madrid) |

### Hosting servicios (213.172.39.24)

| Campo | Valor |
|---|---|
| IP | `213.172.39.24` |
| ASN | AS196713 — Servytec Networks / Hostytec |
| Rango | `213.172.39.16/28` |
| País | España (Madrid) |
| Proveedor | **Servytec Networks, S.L.** — CPD Madrid |

## 5. Contactos y personal

### Correos electrónicos identificados

| Correo | Uso |
|---|---|
| `infosecre@rcsmm.eu` | Secretaría académica / contacto general |
| `erasmus@rcsmm.eu` | Coordinación Erasmus |
| `dmarc-analysis@rcsmm.eu` | Agregado DMARC (RUA) |
| `dmarc-forensics@rcsmm.eu` | Forense DMARC (RUF) |

### Personas clave identificadas

| Nombre | Rol |
|---|---|
| Consuelo de la Vega Sestelo | Directora (2020–presente) |
| Ana Guijarro Malagón | Directora (2012–2013, 2014–2020) |
| Esteban Algora | Coordinador Erasmus |
| María Gonzalez-Moral | Asistente coordinación Erasmus |
| César Ausejo | Jefe de estudios (Erasmus) |

### Dirección física

```
C/ Doctor Mata 2, 28012 Madrid, España
Tel: +34 91 539 29 01
```

## 6. Plataformas y tecnologías

| Componente | Tecnología | Estado |
|---|---|---|
| CMS (web principal) | **Drupal 9** | EOL desde nov 2023 |
| Servidor web | **Apache** | Sin versión expuesta |
| Backend PHP | **PHP 5.6.38** — `5.6.38-0+deb8u1` | **EOL desde dic 2018** |
| Sistema operativo | **Debian 8 (Jessie)** | **EOL desde jun 2020** |
| E-learning | **Moodle ~2.7.x** (YUI 3.13.0, theme `overlay`) | **EOL desde nov 2015** |
| Gestión académica | WebUntis (enlace, no subdominio propio) | — |
| Gestión documental | CODEX (enlace, no subdominio propio) | — |
| Intranet | Servicio interno (`intranet.rcsmm.eu`) | Sin VPN aparente |
| Seguridad | HSTS habilitado, DMARC en cuarentena, SPF -all | Mejorable |

## 7. Historial y referencias externas

- Wikipedia (EN): `https://en.wikipedia.org/wiki/Madrid_Royal_Conservatory`
- Wikipedia (ES): `https://es.wikipedia.org/wiki/Real_Conservatorio_Superior_de_Música_de_Madrid`
- ROR: `https://ror.org/02w65pw28`
- EQAR (calidad educativa): `https://www.eqar.eu/qa-results/search/by-institution/institution/?id=5808`

## 8. Resumen de observaciones

- **Institución pública centenaria** (1830), principal centro de educación musical superior de España.
- **Infraestructura segmentada**: web pública en red de COLT Technology (AS8220), servicios internos en red propia de Servytec (AS196713) con CPD en Madrid.
- **Superficie de ataque baja-media**: No se detectaron servicios expuestos no autorizados. Sin autodiscover O365, sin DKIM. DMARC en cuarentena (no rechazo). Subdominios razonables para una institución educativa.
- **CMS Drupal 9** — actualización razonable, aunque convendría monitorizar versión exacta por posibles CVEs.
- **SPF restrictivo** con `-all` — correcto.
- **Sin IPv6** en el sitio web principal.
- El dominio `.eu` implica cumplimiento con GDPR (datos WHOIS redactados).

---

## 9. Análisis de vulnerabilidades y recomendaciones de seguridad

### 9.1 Vulnerabilidades identificadas

| # | Hallazgo | Riesgo | Descripción |
|---|---|---|---|
| V1 | **Sin DKIM** | Alto | No existe registro `selector._domainkey`. Cualquier atacante puede enviar correos falsificados desde `@rcsmm.eu` sin que los servidores receptores puedan validar la autenticidad firmada. |
| V2 | **DMARC en `p=quarantine`** | Medio | La política de cuarentena (no rechazo) permite que correos suplantados legítimos lleguen a la bandeja de spam del destinatario o, dependiendo del receptor, incluso a la bandeja principal. Un atacante con ingeniería social puede explotar esto. |
| V3 | **FTP expuesto públicamente** | Medio-Alto | `ftp.rcsmm.eu` resuelve a `213.172.39.24`. Si el servicio FTP es accesible sin restricciones por IP, representa un vector de intrusión o fuga de datos. |
| V4 | **Intranet accesible desde internet** | Medio | `intranet.rcsmm.eu` es accesible sin VPN aparente. Una intranet corporativa expuesta incrementa la superficie de ataque frente a autenticación, sesiones y vulnerabilidades web. |
| V5 | **Sin registro CAA** | Bajo | Cualquier CA puede emitir certificados SSL para `rcsmm.eu`. Un CAA restringiría la emisión a una o varias CA autorizadas, mitigando la emisión fraudulenta. |
| V6 | **Drupal 9 sin versión visible** | Medio | No se pudo determinar la versión exacta de Drupal 9. Drupal 9 llegó a su EOL (End of Life) en noviembre de 2023. Si el sitio no ha migrado a Drupal 10+ o aplicado parches de seguridad extendidos, podría estar expuesto a CVEs conocidos. |
| V7 | **Moodle ~2.7.x (EOL 2015) — ~11 años sin parches** | **Crítico** | `moodle.rcsmm.eu` ejecuta **Moodle 2.7.x** (detectado por YUI 3.13.0, theme `overlay`, y jsrev de 2014). Su EOL fue noviembre 2015. Acumula **+150 CVEs conocidos** no parcheados, incluyendo RCE (CVE-2017-2641, CVSS 9.8), SQLi, XSS y CSRF masivos. |
| V8 | **Cadenas TXT de verificación sin propósito claro** | Bajo | Cuatro registros TXT con cadenas aleatorias (`ls86y0hdz3l881ws89g4592m4qc52s6w`, etc.). Podrían ser verificaciones de servicios externos olvidadas (CDN, SaaS). Riesgo de subdomain takeover si alguno apunta a un servicio dado de baja. |
| V9 | **Sin IPv6 en web principal** | Bajo | `rcsmm.eu` no tiene registro AAAA. Aunque no es una vulnerabilidad, es una carencia de redundancia y accesibilidad. |
| V10 | **Cabecera Server expuesta** | Bajo | Apache revela su presencia en las cabeceras HTTP. Permite fingerprinting para ataques dirigidos a versiones específicas. |
| V11 | **PHP 5.6.38 (EOL 2018) — 7+ años sin parches** | **Crítico** | Cabecera `X-Powered-By: PHP/5.6.38-0+deb8u1` revela PHP 5.6.38 sobre Debian 8 (Jessie). PHP 5.6 EOL: dic 2018. Vulnerable a RCE por deserialización (CVE-2016-7124, CVSS 9.8; CVE-2016-5771, CVSS 9.8; CVE-2016-5768, CVSS 9.8), inyección de comandos vía `imap_open` (CVE-2018-19518), y cientos de CVEs más. Sin parches de seguridad desde 2018. |
| V12 | **Debian 8 (Jessie) EOL 2020 — 6+ años sin parches** | **Crítico** | El sistema operativo del servidor Moodle es Debian 8 (Jessie), EOL desde junio 2020. Sin actualizaciones de seguridad del kernel, OpenSSL, libc, Apache, etc. Cualquier CVE publicado post-2020 en estos componentes es explotable. |

### 9.2 Recomendaciones de seguridad

#### Prioridad crítica — Actuación inmediata (riesgo de compromiso total)

1. **Aislar y migrar Moodle urgentemente** — El servidor `moodle.rcsmm.eu` ejecuta **PHP 5.6.38 sobre Debian 8**, ambos EOL desde hace años. Esto lo expone a RCE remoto sin autenticación mediante vectores como deserialización, `imap_open`, o vulnerabilidades del kernel. Acción inmediata:
   - Poner el servicio en mantenimiento o detenerlo.
   - Migrar a un servidor con PHP 8.x y Debian 12/Ubuntu 22.04+.
   - Actualizar Moodle a la versión 4.x estable más reciente.
   - Auditoría forense del sistema para detectar posibles compromisos previos.

2. **Implementar DKIM** — Crear un par de claves y publicar el registro TXT `selector._domainkey.rcsmm.eu`. Firmar todo el correo saliente. Esto cierra el vector de spoofing más grave.

3. **Subir DMARC a `p=reject`** — Una vez validado que DKIM y SPF funcionan correctamente (sin falsos positivos), cambiar la política de cuarentena a rechazo.

#### Prioridad alta

4. **Restringir acceso a FTP e Intranet** — Configurar lista blanca de IPs (solo rangos de la Comunidad de Madrid o VPN corporativa) para `ftp.rcsmm.eu` e `intranet.rcsmm.eu`. Idealmente, eliminar resolución DNS pública de estos servicios o migrarlos a una VPN.

5. **Migrar Drupal a versión soportada** — Drupal 9 llegó a su fin de vida útil. Migrar a Drupal 10 o 11, o contratar soporte de seguridad extendido. Auditoría de módulos y temas.

6. **Auditar plataforma Moodle** — Tras la migración urgente, asegurar configuración: deshabilitar plugins no utilizados, restringir acceso administrativo por IP, activar autenticación multifactor.

#### Prioridad media

6. **Publicar registro CAA** — Ejemplo: `0 issue "letsencrypt.org"`, `0 issue "comodoca.com"`. Esto restringe qué CA pueden emitir certificados para el dominio.

7. **Eliminar/rotar cadenas TXT obsoletas** — Revisar el propósito de cada registro TXT. Las cadenas sin función conocida deben eliminarse para reducir ruido y riesgo de subdomain takeover.

8. **Ocultar versión del servidor** — Configurar `ServerTokens Prod` y `ServerSignature Off` en Apache para dificultar el fingerprinting.

#### Prioridad baja

9. **Habilitar IPv6** — Añadir registro AAAA para `rcsmm.eu` y `www.rcsmm.eu` para redundancia y accesibilidad futura.

10. **Implementar monitorización de seguridad** — Vigilar certificados SSL (Caducidad, CT logs), cambios DNS inesperados, y anomalías en correos salientes.

### 9.3 Pruebas recomendadas (pentest pasivo/activo)

| Tipo | Descripción |
|---|---|
| **Autenticación email** | Verificar con `checktls.com` o `mxtoolbox.com` la correcta implementación de SPF, DKIM y DMARC. |
| **Análisis de CVEs** | Escanear versiones de Drupal y Moodle con `droopescan` o `wpscan` (con mode Drupal). |
| **Subdomain takeover** | Verificar que ningún subdominio apunte a servicios externos dados de baja (S3, GitHub Pages, etc.). |
| **Open ports** | Escaneo SYN de `62.97.84.197` y `213.172.39.24` para identificar puertos abiertos no documentados. |
| **Pentest web** | Pruebas de XSS, SQLi, CSRF, y autenticación en `intranet.rcsmm.eu` y `webmail.rcsmm.eu` (con autorización). |

### 9.4 CVEs críticos específicos del stack Moodle

| CVE | Componente | CVSS | Descripción |
|---|---|---|---|
| **CVE-2017-2641** | Moodle 2.x/3.x | **9.8** | SQL injection vía preferencias de usuario. RCE potencial. |
| **CVE-2016-7124** | PHP 5.6.x < 5.6.25 | **9.8** | Use-after-free en `unserialize()`. RCE remoto sin autenticar. |
| **CVE-2016-5771** | PHP 5.6.x < 5.6.23 | **9.8** | Use-after-free en SPL `unserialize()`. RCE remoto. |
| **CVE-2016-5768** | PHP 5.6.x < 5.6.23 | **9.8** | Doble liberación en mbstring. RCE remoto. |
| **CVE-2016-5773** | PHP 5.6.x < 5.6.23 | **9.8** | Use-after-free en zip `unserialize()`. RCE remoto. |
| **CVE-2018-19518** | PHP 5.6.x < 5.6.39 | **9.8** | Inyección de comandos vía `imap_open()`. RCE remoto. |
| **CVE-2016-4538** | PHP 5.6.x < 5.6.21 | **9.8** | Modificación de estructuras en `bcpowmod()`. RCE potencial. |
| **CVE-2015-6836** | PHP 5.6.x < 5.6.13 | **9.8** | Type confusion en `SoapClient`. RCE vía serialización. |
| CVE-2015-5266 | Moodle 2.7.x < 2.7.10 | 8.8 | SQL injection en meta enrolment. Escalada a manager. |
| CVE-2016-2192 | Moodle 2.7.x < 2.7.12 | 8.1 | Escalada de privilegios por validación incorrecta de capabilities. |

> **Nota**: La lista anterior cubre solo los CVSS 9.8 (críticos) del stack. Existen **cientos de CVEs adicionales** no parcheados por la falta total de actualizaciones desde 2015 (Moodle), 2018 (PHP) y 2020 (Debian).

### 9.5 Resumen de riesgos

```
Criticidad          Hallazgos
───────────────────────────────────────
Crítico           │ V7 (Moodle 2.7 EOL +150 CVEs), V11 (PHP 5.6 EOL), V12 (Debian 8 EOL)
                  │ V1 (Sin DKIM)
Alto              │ V2 (DMARC quarantine), V3 (FTP expuesto), V4 (Intranet expuesta),
                  │ V6 (Drupal EOL)
Medio             │ V5 (Sin CAA), V8 (TXT huérfanos)
Bajo              │ V9 (Sin IPv6), V10 (Server header)
```
