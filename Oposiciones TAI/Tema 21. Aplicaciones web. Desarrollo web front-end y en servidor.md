> Aplicaciones web. Desarrollo web front-end y en servidor, multiplataforma y multidispositivo. Lenguajes: HTML, XML y sus derivaciones. Navegadores y lenguajes de programación web. Lenguajes de script.

## 1. Aplicaciones Web

### Concepto
- **Aplicación web**: software que se ejecuta en un navegador web a través de Internet o intranet. El usuario no necesita instalarla localmente.
- Arquitectura típica: **cliente-servidor** (navegador + servidor web + base de datos).
- **Multiplataforma y multidispositivo**: funcionan en cualquier SO y dispositivo (PC, tablet, móvil) mediante diseño responsive.

### Desarrollo front-end (lado cliente)
- Tecnologías que se ejecutan en el navegador:
  - **HTML**: estructura del contenido.
  - **CSS**: presentación y estilo.
  - **JavaScript**: comportamiento e interactividad.
  - **DOM**: API que permite a JS manipular la estructura del documento HTML.

### Desarrollo back-end (lado servidor)
- Tecnologías que se ejecutan en el servidor web:
  - **PHP**: lenguaje de script del lado del servidor.
  - **Node.js**: JavaScript del lado del servidor.
  - **JSP** (Java) / **ASP.NET** (C#) / **Python** (Django, Flask).

## 2. HTML5

### Concepto
- **HTML** (HyperText Markup Language): **lenguaje de marcado** (no es lenguaje de programación) para estructurar páginas web.
- **HTML5**: última versión estable.

### DOCTYPE HTML5
- Declaración correcta: `<!DOCTYPE html>` (simple, sin versión).

### Etiquetas semánticas HTML5
Diseñadas para promover la **web semántica**: `<article>`, `<aside>`, `<nav>`, `<section>`, `<header>`, `<footer>`, `<main>`.
- `<article>`: contenido independiente y reutilizable (post, noticia).
- `<section>`: sección genérica.
- `<nav>`: navegación.
- `<aside>`: contenido complementario.

### Otras etiquetas comunes
- `<div>`, `<span>`: contenedores no semánticos.
- `<table>`, `<tr>`, `<th>`, `<td>`: tablas.
- `<strong>`, `<em>`, `<del>`, `<mark>`: formato de texto.

## 3. CSS (Cascading Style Sheets)

### Concepto
- **CSS**: lenguaje para definir la presentación y estilo de documentos HTML.
- **Objetivo fundamental**: separar el contenido HTML de su estilo de presentación.

### Selectores CSS
- **ID**: `#nombre` (identificador único por elemento).
- **Clase**: `.nombre` (aplica a múltiples elementos).
- **Etiqueta**: `elemento` (ej: `p`, `div`).

### Pseudoclases
- `:hover` → selecciona elemento con el ratón encima.
- `:focus` → elemento enfocado.
- `:active` → elemento activado (clic).
- `:visited` → enlace ya visitado.

### Propiedades comunes
- `font-size`: tamaño del texto.
- `font-weight`: grosor de la fuente.
- `font-family`: tipo de letra.
- `color`: color del texto.
- `background-color`: color de fondo.

## 4. XML y Derivaciones

### Concepto
- **XML** (eXtensible Markup Language): lenguaje estándar que permite **intercambiar información entre plataformas**.
- No es lenguaje de programación, ni base de datos, ni protocolo.

### Bien formado vs Válido
- **Bien formado**: cumple las reglas sintácticas XML (etiquetas anidadas correctamente, un solo elemento raíz, atributos entre comillas).
- **Válido**: además de estar bien formado, cumple un **esquema** (DTD o XSD) que define la estructura y tipos de datos permitidos.

### APIs de parseo XML
| API | Característica |
|---|---|
| **DOM** | Carga todo el documento en memoria creando un árbol de nodos; acceso aleatorio |
| **SAX** | Parsing secuencial basado en eventos; no carga todo en memoria |
| **StAX** | Parsing secuencial con control del programador (pull) |

### XSLT (eXtensible Stylesheet Language Transformations)
- Lenguaje para **transformar un documento XML en otro formato** (HTML, texto, PDF, otro XML).

### Otras tecnologías XML
- **XPath**: lenguaje para navegar por elementos y atributos de un documento XML.
- **XSD** (XML Schema Definition): define la estructura y tipos de datos de un XML.
- **DTD** (Document Type Definition): define la estructura de un documento XML (menos expresivo que XSD).

## 5. Navegadores Web

### Motores de renderizado
| Navegador | Motor renderizado |
|---|---|
| **Chrome** | **Blink** (fork de WebKit) |
| **Edge** (actual) | **Blink** |
| **Edge** (legacy) | **Trident** (EdgeHTML) |
| **Firefox** | **Gecko** |
| **Safari** | **WebKit** |
| **Opera** | **Blink** |

### Motores JavaScript
| Navegador | Motor JS |
|---|---|
| **Chrome** | **V8** |
| **Firefox** | **SpiderMonkey** |
| **Safari** | **JavaScriptCore** |
| **Edge** (actual) | **V8** |
| **Edge** (legacy) | **Chakra** |

- **V8** es un motor JS, **no** un motor de renderizado.
- **SpiderMonkey**: primer motor JS de la historia (Netscape/Firefox).

## 6. Lenguajes de Programación Web

### Lado cliente (front-end)
| Lenguaje | Característica |
|---|---|
| **JavaScript** | Lenguaje **estructurado e interpretado** del lado del cliente; no es compilado ni de tipado estático; no es de marcado |
| HTML | Lenguaje de marcado |
| CSS | Hojas de estilo |

### Lado servidor (back-end)
| Lenguaje | Característica |
|---|---|
| **PHP** | Lenguaje de **script del lado del servidor** |
| **Node.js** | JavaScript en servidor |
| **Python** (Django/Flask) | Framework web |
| **Java** (JSP/Servlets) | Java EE |
| **C#** (ASP.NET) | .NET |

## 7. Lenguajes de Script

### Concepto
- **Lenguaje de script** (interpretado): lenguaje cuyas instrucciones se ejecutan sin compilación previa, mediante un intérprete.
- Ejemplos: JavaScript, Python, PHP, Ruby, Perl, Bash.

### JavaScript
- Ejecutado por el motor JS del navegador (lado cliente) o Node.js (lado servidor).
- Manipula el **DOM** para modificar la página dinámicamente.
- Soporta **Web Storage**: `localStorage` (persiste entre sesiones) y `sessionStorage` (se borra al cerrar la pestaña).
- **GET HTTP** es idempotente y seguro (no modifica el estado del servidor).

### PHP
- Lenguaje de script del **lado del servidor**.
- Código embebido en HTML. Se ejecuta en el servidor y genera HTML que se envía al cliente.

## 8. HTTP

### Métodos HTTP
| Método | Idempotente | Seguro |
|---|---|---|
| **GET** | Sí | **Sí** (no modifica datos) |
| **PUT** | Sí | No |
| **DELETE** | Sí | No |
| **POST** | No | No |
| **PATCH** | No | No |

- **Idempotente**: múltiples peticiones idénticas producen el mismo resultado.
- **Seguro**: no modifica el estado del servidor (solo lectura).
