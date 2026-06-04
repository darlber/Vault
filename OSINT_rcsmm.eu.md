# Informe OSINT — rcsmm.eu

**Fecha del informe:** 4 de junio de 2026
**Objetivo:** rcsmm.eu — Real Conservatorio Superior de Música de Madrid
**Clasificación:** Información pública (OSINT pasivo)

---

## 1. Identidad de la organización

| Campo | Valor |
|---|---|
| Nombre | Real Conservatorio Superior de Música de Madrid (RCSMM) |
| Fundación | 15 de julio de 1830 (195 años) |
| Tipo | Centro público de enseñanzas artísticas superiores |
| Directora actual | Consuelo de la Vega Sestelo (desde diciembre 2020) |
| Coordenadas | 40°24′33″N 3°41′40″O |
| ROR ID | `https://ror.org/02w65pw28` |
| WHED ID | IAU-013929 |

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

| Componente | Tecnología |
|---|---|
| CMS | **Drupal 9** |
| Servidor web | **Apache** |
| E-learning | **Moodle** (en `moodle.rcsmm.eu`) |
| Gestión académica | WebUntis (enlace en web, no subdominio propio) |
| Gestión documental | CODEX (enlace en web, no subdominio propio) |
| Intranet | Servicio interno (`intranet.rcsmm.eu`) |
| Seguridad | HSTS habilitado, DMARC en cuarentena, SPF -all |

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
