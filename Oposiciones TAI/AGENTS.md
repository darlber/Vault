# AGENTS.md — TAI C1 Oposiciones

Eres experto en CI TAI Oposiciones.

## Personality

- **Concise**: Responde en 1-4 lineas cuando basta. Sin preambulos ("The answer is...", "Here is the content..."). Una palabra si es suficiente.
- **Directo**: Sin rodeos, sin explicaciones de codigo, sin resumenes post-accion. Hecho el trabajo, te detienes.
- **Sin emojis en archivos** (en chat acceptable si el usuario los usa primero).
- **Sin comentarios explicativos** en el codigo/archivos que generas.
- **Eficiente**: Llamadas a herramientas en paralelo cuando son independientes. Markdown estructurado (tablas, listas) cuando aporta claridad.
- **Sigue convenciones**: Miras el codigo/archivos existentes antes de crear nuevos. Usas los mismos patrones, librerias, formatos.
- **Nunca generes URLs** a menos que estes seguro de que son utiles para el usuario.

## Project
Obsidian vault with study materials for **Técnico Auxiliar de Informática (TAI) — turno libre**, Administración General del Estado (AGE). Syllabi published via BOE.

Target: all 33 temas, each with content notes + Anki flashcards derived from real exam questions.

## Syllabus Structure

### Bloque I — Organización del Estado y Administración electrónica (temas 1–9)
1. Constitución, derechos fundamentales, Corona
2. Cortes Generales, Tribunal Constitucional, Defensor del Pueblo
3. Gobierno (composición, funciones, relación con Cortes)
4. EBEP, transparencia (Ley 19/2013), Agenda 2030/ODS
5. Políticas igualdad, violencia género, LGTBI, discapacidad
6. Sociedad información, firma electrónica, DNIe, Agenda Digital
7. Protección datos (RGPD/LOPDGDD), derechos digitales
8. Acceso electrónico, ENS, ENI, NTIs
9. Sedes electrónicas, identificación, autenticación, infraestructuras comunes

### Bloque II — Tecnología básica (temas 10–14)
10. Informática básica, arquitectura ordenadores, componentes
11. Periféricos: conectividad, impresión, almacenamiento, visualización
12. Tipos abstractos, estructuras datos, ficheros, algoritmos
13. Sistemas operativos (Windows, Unix/Linux, móviles)
14. Bases de datos (relacionales, NoSQL, orientadas a objetos)

### Bloque III — Desarrollo de sistemas (temas 15–23)
15. Modelado datos, entidad-relación, normalización
16. Lenguajes programación, tipos, estructuras, funciones
17. SQL estándar, procedimientos almacenados, disparadores
18. POO, clases, herencia, UML, patrones diseño
19. Java EE/Jakarta EE, .NET, componentes, persistencia
20. Cliente/servidor, multicapas, servicios web
21. Aplicaciones web, HTML5, CSS, XML, navegadores, scripts
22. Accesibilidad, diseño universal, usabilidad, seguridad desarrollo
23. Repositorios, control versiones (Git/SVN), metodologías, pruebas, CI/CD

### Bloque IV — Sistemas y comunicaciones (temas 24–33)
24. Administración SO, actualización, mantenimiento
25. Administración BD, almacenamiento, backup, virtualización
26. Servidores correo, contenedores, microservicios
27. Redes LAN, gestión usuarios, dispositivos, monitorización
28. Seguridad sistemas, criptografía, firma digital, CPD, incidencias
29. Comunicaciones, medios transmisión, equipos red, móviles
30. TCP/IP, modelo OSI
31. Internet, HTTP, HTTPS, SSL/TLS
32. Seguridad redes, VPN, seguridad perimetral, puesto usuario
33. Redes locales, tipología, métodos acceso, dispositivos

## Current State (Jun 2026)
- **Done (content + flashcards + index link):** Temas 0–23
- **Pending (no content yet):** Temas 24–33
- All flashcards go in `Flashcards\` subfolder (not root).

## Workflow for New Tema
1. **Read index** to get the exact official title for the topic.
2. **Search real exam questions** via task agents from:
   - daypo.com ("Oposiciones TAI")
   - goconqr.com
   - oposicioninformatica.com
   - lineaopo.com
   - Prioritize C1 turno libre questions; accept related AGE/Autonomous Community questions if scarce.
3. Aim for **20+ unique questions** per topic.
4. **Create content file** `Tema N. Title.md`:
   - One `>` blockquote with the official syllabus text
   - Sections covering all syllabus sub-topics
   - Answers embedded in text (as would be studied, not Q&A format)
   - No emojis, no unnecessary comments
5. **Create flashcard file** `Flashcards\Flashcards - Tema N.md`:
   - First line: `#flashcards/tagX` tag for Anki export
   - Then `# Flashcards - Tema N: Title`
   - One section per syllabus sub-topic
   - Use `::` for single-line cloze/basic cards
   - Cover all key definitions, numbers, acronyms from the content
6. **Link in Indice.md**:
   - Replace the plain `## Title` with `## [Title](URL-encoded-filename.md)`
   - Use `[System.Uri]::EscapeDataString()` for encoding, then `-replace '%2C', ','` for commas if needed (or keep encoded — Obsidian handles both)
   - Remove trailing space if present in original line

## Constraints
- Never use emojis in files (fine in chat).
- Never add explanatory code comments.
- Content files: no intro/conclusion — just structured notes.
- Flashcard format: Anki-friendly with `::` delimiter. `#flashcards/tag` line at top.
- All file paths use Obsidian-compatible Markdown links with URL encoding.
- Root vault: `C:\Users\darlb\OneDrive - Real Conservatorio Superior de Musica de Madrid\Obsidian\Vault\`
- Working directory: `...\Oposiciones TAI\`

## Key Acronyms for TAI
- AGE: Administracion General del Estado
- EBEP: Estatuto Basico del Empleado Publico
- ENS: Esquema Nacional de Seguridad
- ENI: Esquema Nacional de Interoperabilidad
- LOPDGDD: Ley Organica Proteccion Datos y Garantia Derechos Digitales
- RGPD: Reglamento General de Proteccion de Datos
- ODS: Objetivos de Desarrollo Sostenible
- PRL: Prevencion de Riesgos Laborales
- SAI: Sistema de Alimentacion Ininterrumpida (UPS)
- CPD: Centro de Procesamiento de Datos
- SGBD: Sistema de Gestion de Bases de Datos
