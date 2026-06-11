> Arquitectura Java EE/Jakarta EE y plataforma.NET: componentes, persistencia y seguridad. Características, elementos, lenguajes y funciones en ambos entornos. Desarrollo de interfaces.

## 1. Java EE / Jakarta EE

### Concepto
- **Jakarta EE** (antes Java EE, anteriormente J2EE): conjunto de especificaciones y prácticas para desarrollar aplicaciones Java empresariales **multicapa** (web, negocio, persistencia).
- Es una plataforma extendida sobre **Java SE** (Java SE es la base; Java EE requiere Java SE instalado).
- **NO** es un conjunto de herramientas de escritorio, ni móviles, ni protocolos de red.

### Componentes clave de Jakarta EE
- **Servicios**, **APIs** y **Protocolos**. **NO** incluye compiladores (los compiladores son de Java SE).

### Servidores Jakarta EE
- **Servidor de aplicaciones**: implementa APIs de Jakarta EE y proporciona servicios estándar (capa web y capa de negocio).
- Ejemplos: WildFly (JBoss), Payara, TomEE, WebLogic, WebSphere.

### Componentes de la capa web
- **Servlet**: componente Java que se ejecuta en un servidor web y **procesa peticiones HTTP** (peticiones/respuestas web).
- **JSP** (JavaServer Pages): páginas que mezclan HTML y Java (etiquetas JSTL).
- **JSF** (JavaServer Faces): framework de componentes para interfaces web.

### Componentes de la capa de negocio (EJB)
- **Enterprise JavaBeans (EJB)**: componentes del lado del servidor que encapsulan lógica de negocio.
- Paquete: **javax.ejb** (en Jakarta EE: jakarta.ejb).
- Tipos:
  - **Bean de sesión** (Session Bean): lógica de negocio para un cliente.
  - **Bean de entidad** (Entity Bean): representa datos persistentes y el comportamiento de estos datos (hoy sustituido por JPA).
  - **Bean de mensajes** (Message-Driven Bean): procesa mensajes asíncronos (JMS).

### Persistencia: JPA (Jakarta Persistence API)
- **JPA**: especificación estándar para el mapeo objeto-relacional (ORM) en Java.
- **Lenguaje de consulta de JPA**: **JPQL** (Java Persistence Query Language).
- Implementaciones: Hibernate, EclipseLink, OpenJPA.
- Anotaciones: @Entity, @Table, @Id, @Column.

### Seguridad en Jakarta EE
- **JAAS** (Java Authentication and Authorization Service): estándar para autenticación y autorización.
  - **Autenticación**: validar la identidad del usuario.
  - **Autorización**: permitir acceso según privilegios/roles.
- Mecanismos: declarativa (web.xml, anotaciones @RolesAllowed) y programática.

### Spring Boot
- Plataforma que permite el desarrollo de aplicaciones web **autocontenidas** que llevan embebido el contenedor de servlets (Tomcat, Jetty).
- Simplifica la configuración de Spring mediante auto-configuración y starters.

## 2. Plataforma .NET

### Concepto
- **.NET**: marco de trabajo multiplataforma, **código abierto** (Microsoft).
- **NO** es de Google, ni exclusivo para móviles.
- Soporta un **amplio rango de lenguajes**: C#, VB.NET, F#, etc.

### Evolución
- **.NET Framework** (2002): solo Windows, cerrado.
- **.NET Core** (2016): multiplataforma, código abierto.
- **.NET 5/6/7/8/9** (2020+): unificación de .NET Framework y .NET Core en una sola plataforma.

### Common Language Runtime (CLR)
- **CLR**: máquina virtual de .NET (equivalente a la JVM de Java).
- Los lenguajes .NET compilan a **CIL** (Common Intermediate Language), antes llamado MSIL.
- El CIL se ejecuta en el CLR mediante compilación JIT (Just-In-Time).

### Componentes principales
- **Biblioteca de clases base (BCL)**: clases fundamentales (colecciones, E/S, hilos, etc.).
- **ASP.NET Core**: framework web para construir aplicaciones web y APIs.
  - **Razor**: sintaxis de plantillas para crear **vistas dinámicas** en aplicaciones web ASP.NET Core. Usa el símbolo `@` para transición de C# a HTML.
- **ADO.NET**: acceso a datos (bases de datos, XML, fuentes de datos).
  - Objetos: **Connection** (conectividad), **Command** (operaciones), **DataReader**, **DataSet** (colección de DataTable).
  - **NO** existe un objeto "Operation" en ADO.NET.
- **Entity Framework Core**: ORM para .NET (equivalente a JPA/Hibernate).

### Gestión de paquetes
- **NuGet**: administrador de paquetes de .NET (equivalente a Maven/Gradle en Java).
- Los paquetes contienen código compilado (DLLs), metadatos y dependencias.

### Lenguajes
- **C#**: lenguaje principal, moderno, tipado estático.
- **VB.NET**: Visual Basic .NET, heredero de Visual Basic clásico.
- **F#**: lenguaje funcional.

## 3. Comparativa Java EE / Jakarta EE vs .NET

| Aspecto | Jakarta EE | .NET |
|---|---|---|
| Creador | Oracle (Eclipse Foundation) | Microsoft |
| Código abierto | Sí (Eclipse Foundation) | Sí (.NET Core/5+) |
| Lenguaje principal | Java | C# |
| Compilación a | Bytecode (JVM) | CIL (CLR) |
| Máquina virtual | JVM | CLR |
| ORM estándar | JPA (JPQL) | Entity Framework (LINQ) |
| Framework web | Servlets, JSP, JSF | ASP.NET Core (Razor) |
| Inyección dependencias | CDI | ASP.NET Core DI |
| Servidor aplicaciones | WildFly, Payara, TomEE | IIS, Kestrel |
| Consultas BD | JPQL | LINQ |
| Gestión paquetes | Maven/Gradle | NuGet |
| Perfil | Empresarial, servidor | Empresarial, web, escritorio |

## 4. Desarrollo de Interfaces

### Jakarta EE (Web)
- **JSP** + **JSF**: componentes reutilizables para interfaces web.
- **PrimeFaces**: librería de componentes JSF.
- **RESTful Web Services** (JAX-RS): APIs para interfaces cliente-servidor.
- **Thymeleaf**: motor de plantillas alternativo.

### .NET (Web y Escritorio)
- **ASP.NET Core MVC**: patrón Modelo-Vista-Controlador con vistas Razor.
- **Blazor**: desarrollo de interfaces web interactivas con C# (sin JavaScript).
- **WPF** (Windows Presentation Foundation): interfaces de escritorio en Windows (.NET Framework).
- **MAUI** (.NET Multi-platform App UI): interfaces multiplataforma (Windows, macOS, iOS, Android).
