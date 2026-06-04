# Informe OSINT

---

## 1. Finalidad del documento
- Objetivo del informe: Recopilación de información pública (OSINT pasivo) sobre rcsmm.eu — Real Conservatorio Superior de Música de Madrid (RCSMM)
- Alcance: Dominio principal, subdominios, infraestructura DNS, hosting, tecnologías, personal identificable, registros de seguridad email
- Limitaciones: Solo fuentes públicas sin autenticación. Sin escaneo activo de puertos ni pruebas de intrusión. Sin acceso a WHOIS completo por protección GDPR del TLD .eu

---

## 2. Información del objetivo

### 2.1 Introducción
- Descripción general del objetivo: Real Conservatorio Superior de Música de Madrid (RCSMM) — principal centro público de educación musical superior de España, fundado en 1830 por la reina María Cristina
- Actividad principal: Formación profesional de músicos (intérpretes, directores, compositores, musicólogos, pedagogos). Imparte Grado, Máster y Doctorado en el marco del EEES
- Presencia online: Web principal (rcsmm.eu), Campus Virtual Moodle (moodle.rcsmm.eu), Intranet corporativa (intranet.rcsmm.eu), Webmail (webmail.rcsmm.eu)

### 2.2 Apariciones destacadas en los medios
- Noticias relevantes: Institución centenaria (1830), referente en enseñanza musical en España. Múltiples conciertos y masterclasses públicas publicadas en su web
- Entrevistas: No se detectaron entrevistas específicas en fuentes abiertas
- Apariciones en prensa: Web incluye sección de prensa con manual de marca y logotipos descargables

### 2.3 Contacto y redes sociales
- Página web oficial: https://rcsmm.eu
- Redes sociales:
  - Twitter/X: No detectado
  - Instagram: No detectado
  - LinkedIn: No detectado
  - Facebook: No detectado
- Otros canales: Webmail (webmail.rcsmm.eu), Campus Virtual Moodle (moodle.rcsmm.eu)

---

## 3. Información administrativa

### 3.1 Datos fiscales
- Razón social: Real Conservatorio Superior de Música de Madrid (RCSMM)
- CIF/NIF (si es público): No publicado directamente. Centro público dependiente de la Comunidad de Madrid
- Dirección fiscal: C/ Doctor Mata 2, 28012 Madrid, España
- Registro mercantil (si aplica): No aplica (organismo público)

### 3.2 Datos económicos
- Información financiera pública: Centro público sostenido por fondos públicos. Menciona cofinanciación de la Unión Europea y del SEPIE para programas Erasmus+
- Informes anuales: No localizados en fuentes abiertas
- Subvenciones / ayudas (si aplica): Participa en programas Erasmus+ (Erasmus Charter for Higher Education). Fondo Social Europeo mencionado en web

---

## 4. Información técnica

### 4.1 Direcciones IP
- IP principal del dominio: `62.97.84.197` (web pública rcsmm.eu)
- IPs asociadas: `213.172.39.24` (servicios internos: mail, moodle, intranet, ftp, webmail)
- Resolución DNS: 4 nameservers (ns1-4.servytec.es), SOA Serial 2026031201 (mar 2026)

### 4.2 Servidor

#### 4.2.1 Máquina virtual
- Indicios de uso: No confirmado, pero la segmentación de IPs sugiere infraestructura virtualizada
- Proveedor cloud (si se detecta): Servytec Networks S.L. — CPD propio en Madrid

#### 4.2.2 Servidor
- Hosting: Servytec Networks S.L. (AS196713) para servicios (213.172.39.24) / COLT Technology Services (AS8220) para web pública (62.97.84.197)
- Ubicación aproximada: Madrid, España

#### 4.2.3 Vulnerabilidades
- Solo fuentes públicas (CVE, informes, etc.):
  - **Moodle 2.7.x** (EOL nov 2015) — +150 CVEs sin parchear. Críticos: CVE-2017-2641 (SQLi → RCE, CVSS 9.8)
  - **PHP 5.6.38** (EOL dic 2018) — Múltiples RCE por deserialización: CVE-2016-7124, CVE-2016-5771, CVE-2016-5768, CVE-2016-5773 (todos CVSS 9.8); inyección comandos CVE-2018-19518 (CVSS 9.8)
  - **Debian 8 Jessie** (EOL jun 2020) — Sin parches de seguridad del sistema desde 2020
  - **Drupal 9** (EOL nov 2023) — Sin parches de seguridad desde 2023
  - **Sin DKIM** — Spoofing de correo viable
  - **DMARC en quarantine** (no reject) — Correos suplantados no se rechazan
  - **FTP e Intranet expuestos** sin restricción de IP visible
  - **Sin registro CAA** — Cualquier CA puede emitir certificados
- Referencias:
  - Tenable: CVE-2016-7124, CVE-2016-5771, CVE-2016-5768, CVE-2017-2641
  - NVD: CVE-2018-19518, CVE-2015-6836, CVE-2016-4538
  - OSV.dev: Múltiples CVEs PHP/Moodle
  - Wikipedia: https://en.wikipedia.org/wiki/Madrid_Royal_Conservatory

#### 4.2.4 Tecnologías usadas
- CMS: Drupal 9 (web principal) + Moodle ~2.7.x (campus virtual)
- Frameworks: YUI 3.13.0 / YUI2 2.9.0 (Moodle), PHP 5.6.38
- Librerías: Apache httpd
- Analíticas: No detectadas
- CDN: No detectada

---

## 5. Información corporativa

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
  - Profesorado del Departamento de Cuerda listado públicamente en web (25+ profesores con nombre completo y especialidad)

#### 5.2.2 Redes sociales
- Perfiles corporativos relevantes: No detectados
- Perfiles profesionales asociados: No se realizó búsqueda específica de perfiles individuales

#### 5.2.3 Otros registros
- Apariciones públicas: Masterclasses, conciertos y recitales listados en la web del centro
- Eventos: Masterclass de Repertorio Orquestal (violín), Clases Magistrales de Cámara (Aitor Hevia), Recital de Viola (Helena Santos), entre otros
- Conferencias: No detectadas

---

## 6. Otra información

### 6.1 Emails recopilados

#### 6.1.1 Emails corporativos
- Correos publicados en web oficial:
  - `infosecre@rcsmm.eu` — Secretaría académica / contacto general
  - `erasmus@rcsmm.eu` — Coordinación Erasmus
  - `dmarc-analysis@rcsmm.eu` — Informes agregados DMARC (RUA)
  - `dmarc-forensics@rcsmm.eu` — Informes forenses DMARC (RUF)
- Formatos detectados: `nombre@rcsmm.eu`

#### 6.1.2 Emails ajenos a la empresa
- Solo si son públicos y relevantes: No aplica

### 6.2 Metadatos
- Documentos analizados: No se descargaron documentos para análisis de metadatos
- Información extraída (autor, software, fechas): N/A

---

## 7. Recomendaciones
- Mejora de seguridad visible:
  - **Crítico inmediato**: Aislar servidor Moodle (PHP 5.6 + Debian 8 + Moodle 2.7 — todo EOL). Migrar a PHP 8.x, Debian 12, Moodle 4.x. Realizar forensia por posible compromiso previo.
  - **Alto**: Implementar DKIM y subir DMARC a `p=reject`. Restringir FTP e Intranet por IP/VPN. Migrar Drupal 9 a versión soportada.
  - **Medio**: Publicar registro CAA, eliminar registros TXT huérfanos, ocultar versión de Apache.
  - **Bajo**: Habilitar IPv6, monitorización continua de seguridad.

- Exposición de datos innecesaria:
  - Cabecera `X-Powered-By: PHP/5.6.38-0+deb8u1` expone versión exacta de PHP y SO
  - FTP e Intranet accesibles desde internet sin restricción aparente
  - Moodle expone `jsrev` y `themerev` que permiten fingerprinting de versión
  - Listados públicos de profesorado con nombre completo y especialidad

- Buenas prácticas detectadas:
  - HSTS activo con `max-age=63072000` (2 años)
  - SPF restrictivo con `-all`
  - DMARC implementado (aunque en modo quarantine y no reject)
  - HTTPS nativo sin redirección HTTP (seguro por defecto)
  - Cabecera `X-Frame-Options: SAMEORIGIN` (protección anti-clickjacking)
  - `X-Content-Type-Options: nosniff` activo
  - Nameservers redundantes (4 servidores DNS)