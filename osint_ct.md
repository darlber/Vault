# Informe OSINT — CT Ingenieros

**Fecha del informe:** 4 de junio de 2026
**Objetivo:** CT Ingenieros (The CT Engineering Group) — ctingenieros.es, ctengineeringgroup.com
**Clasificación:** Información pública (OSINT pasivo)

---

## 1. Finalidad del documento
- **Objetivo del informe:** Recopilación de información pública sobre CT Ingenieros, grupo de ingeniería internacional con sede en España
- **Alcance:** Dominios principales, subdominios, infraestructura DNS, hosting, tecnologías, personal identificable, registros de seguridad
- **Limitaciones:** Solo fuentes públicas sin autenticación. Sin escaneo activo de puertos ni pruebas de intrusión.

---

## 2. Información del objetivo

### 2.1 Identidad de la organización

| Campo | Valor |
|---|---|
| Razón social | CT INGENIEROS AERONAUTICOS DE AUTOMOCION E INDUSTRIALES S.L. |
| Nombre comercial | CT Ingenieros / The CT Engineering Group |
| CIF/NIF | B48689194 |
| Forma jurídica | Sociedad Limitada |
| Fundación | 1988 (CadTech), marca CT desde 1994 |
| Constitución | 04/10/1994 |
| Presidente/CEO | Jesús Prieto |
| Empleados | ~1.500–2.000 ingenieros |
| Facturación | >50M € |
| CNAE | 7112 — Servicios técnicos de ingeniería |
| Sector | Aeronáutico, automoción, ferroviario, naval, energía, industrial, arquitectura |
| Presencia | 7 países (España, Italia, Francia, Alemania, Reino Unido, EE.UU., India...) |

### 2.2 Clientes y proyectos destacados
- **Airbus** — Proveedor preferente de servicios de ingeniería (E2S) y fabricación (ME3S)
- Proyectos: A320, A330, A340, A350XWB, A380, A400M, A330MRTT, C295, CN-235, Eurofighter, Falcon 7X, P-3 Orion

### 2.3 Apariciones en medios
- Miembro de PAE (Plataforma Tecnológica Aeroespacial Española), AEC (Andalucía Aerospace), ASIME, AHK (Cámara Alemana), GIFAS

### 2.4 Contacto y redes sociales

- **Web corporativa:** https://ctingenieros.es / https://www.ctengineeringgroup.com
- **Portal de empleo:** https://empleo.ctingenieros.es
- **Teléfono:** +34 916 83 20 30
- **Fax:** +34 91 683 19 48
- **Email contacto:** emunoz@ctgrupo.com

---

## 3. Información administrativa

### 3.1 Direcciones

| Sede | Dirección |
|---|---|
| **Central (Getafe, Madrid)** | Avda. Leonardo Da Vinci, 22 — Parque Empresarial La Carpetania, 28906 Getafe, Madrid |
| **Sevilla** | Parque Tecnológico Aeroespacial de Andalucía — Aerópolis, C/ Hispano Aviación, 11, 2ª Planta, 41300 La Rinconada (Sevilla) |

### 3.2 Registro mercantil
- Inscrita en el **Registro Mercantil de Madrid**
- Último acto BORME: 24/02/2026
- Auditor: Ernst & Young S.L.

---

## 4. Información técnica

### 4.1 Mapa de dominios

| Dominio | IP | Hosting | Uso |
|---|---|---|---|
| `ctingenieros.es` | `89.248.100.244` / `153.92.228.55` | Cloud Builders SA (Interdominios, AS48348), Madrid | Web corporativa principal |
| `www.ctingenieros.es` | `89.248.100.244` | Cloud Builders SA, Madrid | Alias web |
| `ctengineeringgroup.com` | `194.30.13.177` | Piensa Solutions | Web corporativa internacional (WordPress) |
| `www.ctengineeringgroup.com` | `194.30.13.177` | Piensa Solutions | Alias web |
| `empleo.ctingenieros.es` | `34.252.163.99` / `54.247.128.77` (AWS) → Bizneo Cloud | Portal de empleo (Bizneo HR) |

### 4.2 Infraestructura DNS — ctingenieros.es

| Registro | Valor |
|---|---|
| **NS** | `ns1.sarenet.es` / `ns2.sarenet.es` |
| **SOA** | Serial `2026032700` (actualizado marzo 2026) |
| **MX** | `ctingenieros-es.mail.protection.outlook.com` → **Office 365 / Exchange Online** |
| **Autodiscover** | `autodiscover.outlook.com` (Exchange Online confirmado) |
| **SPF** | `v=spf1 mx include:spf.protection.outlook.com include:_pmta2.antevenio.com include:_spf.elasticemail.com include:docebosaas.com include:spf.brevo.com a:ctinsider.ctingenieros.es a:www.ctengineeringgroup.com -all` |
| **DMARC** | `v=DMARC1; p=none; rua=mailto:rua@dmarc.brevo.com` |
| **Verificación Microsoft** | `MS=18AF8EE3D0421EAB57603E21391B210C85D13B7F` |
| **Google Verification** | `google-site-verification=z8MchXnEHZbfrQamgHNeDxlJvJU2aIFyMjROrjA5uW8` |
| **Brevo** | `brevo-code:af6e9ef6e4c86be1922bed037a86c1b8` |
| **IPv6** | No detectado |

### 4.3 Infraestructura DNS — ctengineeringgroup.com

| Registro | Valor |
|---|---|
| **NS** | `ns9.piensasolutions.com` / `ns10.piensasolutions.com` |
| **MX** | `ctengineeringgroup-com.mail.protection.outlook.com` → Office 365 |
| **SPF** | `v=spf1 mx include:spf.protection.outlook.com include:_pmta2.antevenio.com include:docebosaas.com a:ctinsider.ctingenieros.es a:www.ctengineeringgroup.com include:eu.transmail.net -all` |
| **Atlassian** | `atlassian-domain-verification=WceHAqwKcXR6GOcj9iakya6H90y8nntaSsRwRTUmB8tbOaczT6oKvsbdVcu6Mjw6` |

### 4.4 Tecnologías detectadas

| Componente | Tecnología |
|---|---|
| CMS (ctengineeringgroup.com) | **WordPress** (PHP 8.2.31) |
| Servidor web | Apache |
| HSTS (ctengineeringgroup.com) | Activo (`max-age=63072000; includeSubDomains; preload`) |
| HSTS (ctingenieros.es) | No detectado |
| Correo corporativo | **Microsoft 365 / Exchange Online** |
| Plataforma RRHH | **Bizneo Cloud** (AWS Irlanda) `empleo.ctingenieros.es` |
| Email marketing | **Brevo** (anterior Sendinblue), **Antevenio**, **Elastic Email** |
| Gestión documental | **Atlassian** (Confluence/Jira) verificado |
| E-learning | **Docebo** (SaaS) |
| Seguridad | Cabeceras X-Frame-Options, X-Content-Type-Options, X-XSS-Protection presentes en ctengineeringgroup.com |

### 4.5 Subdominios detectados

| Subdominio | Resolución | Servicio |
|---|---|---|
| `www.ctingenieros.es` | `89.248.100.244` | Web corporativa |
| `empleo.ctingenieros.es` | CNAME → `ext.bizneo.com` → AWS | Portal empleo (Bizneo) |
| `autodiscover.ctingenieros.es` | CNAME → `outlook.com` | Exchange Online |
| `ctinsider.ctingenieros.es` | Mencionado en SPF | Posible portal interno |

---

## 5. Información corporativa

### 5.1 Equipo directivo

| Nombre | Cargo |
|---|---|
| Jesús Prieto | Fundador, Presidente y Consejero Delegado |
| Rubén Piornedo | Head of Innovation |

### 5.2 Correos detectados

| Correo | Uso |
|---|---|
| `rpiornedo@ctingenieros.es` | Rubén Piornedo — Head of Innovation |
| `emunoz@ctgrupo.com` | Contacto comercial (dominio `ctgrupo.com`) |
| `rua@dmarc.brevo.com` | Informes DMARC (Brevo) |

**Patrón de correo deducido:** `nombre.apellido@ctingenieros.es`

### 5.3 Email marketing y plataformas

- **Brevo** (Sendinblue): Código de verificación `brevo-code:af6e9ef6e4c86be1922bed037a86c1b8`
- **Antevenio**: `_pmta2.antevenio.com` en SPF
- **Elastic Email**: `_spf.elasticemail.com` en SPF
- **Docebo**: `docebosaas.com` en SPF (plataforma e-learning)
- **Transmail**: `eu.transmail.net` en SPF

---

## 6. Análisis de vulnerabilidades

### 6.1 Hallazgos

| # | Hallazgo | Riesgo | Descripción |
|---|---|---|---|
| V1 | **DMARC en `p=none`** | **Alto** | No hay protección contra spoofing de correo. Cualquier atacante puede suplantar `@ctingenieros.es` sin restricción. |
| V2 | **Múltiples proveedores email en SPF** | Medio | SPF incluye 6+ servicios externos (Brevo, Antevenio, ElasticEmail, Docebo, Outlook, Transmail). Cualquiera de ellos comprometido puede enviar correo como CT. |
| V3 | **Sin HSTS en ctingenieros.es** | Medio | El dominio principal no fuerza HSTS. Posible downgrade SSL si un atacante intercepta la primera petición. |
| V4 | **Sin IPv6** | Bajo | Ninguno de los dominios principales tiene registro AAAA. |
| V5 | **Registros TXT sin propósito claro** | Bajo | Varias cadenas aleatorias (`lc9fg12...`, `rf9bjk6...`, `9lbbfjvx3...`) de verificación sin identificar. |
| V6 | **ctengineeringgroup.com expone versión WordPress** | Medio | Cabecera `X-Powered-By: PHP/8.2.31` y `X-Redirect-By: WordPress`. Permite fingerprinting. |
| V7 | **Atlassian expuesto (potencialmente)** | Medio | Registro TXT de verificación Atlassian sugiere uso de Confluence/Jira. Si están expuestos a internet, posibles fugas de información. |

### 6.2 Recomendaciones

| Prioridad | Acción |
|---|---|
| **Crítica** | Subir DMARC a `p=quarantine` primero, luego `p=reject` tras validar SPF/DKIM |
| **Alta** | Implementar DKIM. Activar HSTS en `ctingenieros.es`. Revisar proveedores SPF y eliminar los no utilizados. |
| **Media** | Publicar registro CAA. Eliminar TXT huérfanos. Revisar exposición de Atlassian (Confluence/Jira) a internet. |
| **Baja** | Habilitar IPv6. Ocultar versión de WordPress y PHP en cabeceras. |

### 6.3 Buenas prácticas detectadas

- SPF con `-all` (hard fail) en ambos dominios
- Office 365 con autodiscover configurado correctamente
- HSTS con preload en `ctengineeringgroup.com`
- Cabeceras de seguridad en ctengineeringgroup.com (X-Frame-Options, X-Content-Type-Options, X-XSS-Protection)
- PHP 8.2.31 actualizado (soporte activo)
- Nameservers redundantes (Sarenet / Piensa Solutions)

---

## 7. Resumen de exposición

```
Criticidad          Hallazgos
───────────────────────────────────────
Alto              │ V1 (DMARC p=none), V2 (SPF multi-proveedor sin control)
Medio             │ V3 (Sin HSTS), V6 (WordPress fingerprinting), V7 (Atlassian expuesto)
Bajo              │ V4 (Sin IPv6), V5 (TXT huérfanos)
```

### Vectores más explotables hipotéticamente

1. **Spoofing de correo** — DMARC en `p=none` significa que cualquiera puede enviar correos falsos desde `@ctingenieros.es` sin restricción. Sin DKIM detectado.
2. **Fuga en empleo.ctingenieros.es** — Plataforma Bizneo en AWS expone ofertas de empleo, pero podría haber data leaking si la configuración no es correcta.
3. **Atlassian (Jira/Confluence)** — Si está expuesto a internet, podría filtrar documentación interna de proyectos de Airbus y otros clientes.
