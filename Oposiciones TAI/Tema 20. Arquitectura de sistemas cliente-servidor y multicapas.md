> Arquitectura de sistemas cliente/servidor y multicapas: componentes y operación. Arquitecturas de servicios web y protocolos asociados.

## 1. Arquitectura Cliente/Servidor (2 Capas)

### Concepto
- Modelo de computación distribuida donde las tareas se reparten entre **clientes** (solicitantes) y **servidores** (proveedores de recursos/servicios).
- **Características**: compartición de recursos, concurrencia, escalabilidad, independencia de plataforma.

### Componentes
- **Cliente**: solicita servicios. Inicia la comunicación (en 2 capas, el cliente inicia).
- **Servidor**: proporciona recursos y servicios. Responde a las peticiones.
- La comunicación se inicia habitualmente a **petición del cliente**.

### Cliente fino (thin client) vs Cliente grueso (thick client)
- **Thin client**: el servidor se encarga de todas las funciones **excepto la presentación**. Los datos y lógica de negocio están en el servidor.
- **Thick client**: el cliente realiza la presentación y parte de la lógica de negocio.

### Escalabilidad
- **Escalabilidad horizontal**: facilidad para añadir o suprimir estaciones similares para aumentar rendimiento o capacidad.
- **Escalabilidad vertical**: migrar a servidores mayores o menores (más potentes).

## 2. Arquitectura Multicapa (n-capas)

### Arquitectura de 3 capas
Las funciones de la aplicación se dividen en tres capas:
1. **Capa de presentación**: interfaz de usuario (frontend).
2. **Capa de lógica de negocio**: procesa los datos, aplica reglas de negocio. Es la **responsable de tratar los datos**.
3. **Capa de datos**: almacenamiento y recuperación de datos (BD).

### Capa vs Nivel
- **Capa** (layer): distribución **lógica** de responsabilidades.
- **Nivel** (tier): distribución **física** (dónde se ejecuta cada capa).
- Varias capas pueden ejecutarse en un mismo nivel físico.

### Arquitectura de n-capas
- Modelo que extiende las 3 capas básicas añadiendo más capas intermedias (servicios, integración, mensajería, etc.).
- No implica que cada capa vaya alojada en un servidor diferente.
- Al actualizar una capa **no** es necesario recompilar el resto.

## 3. Arquitectura Orientada a Servicios (SOA)

### Concepto
- **SOA** (Service-Oriented Architecture): estilo arquitectónico donde los componentes son **servicios** independientes que se comunican entre sí.
- **Ventajas**:
  - Facilidad para abordar modelos de negocio colaborativos.
  - Capacidad de reemplazar elementos sin disrupción.
  - Facilidad para integrar tecnologías disímiles.
- **NO** es ventaja: mayor acoplamiento entre aplicaciones (al contrario, busca bajo acoplamiento).

## 4. Servicios Web (Web Services)

### Concepto
- **Servicio web**: componente software accesible a través de la red que permite la interoperabilidad entre aplicaciones en diferentes plataformas.
- Basado en el **intercambio de mensajes XML**.
- **Características**: alta interoperabilidad, permiten interoperabilidad entre plataformas, fomentan estándares y protocolos basados en texto.
- **NO** son característicos: rendimiento alto (el overhead XML puede reducirlo).

### Paradigma de Servicios Web
- Se basa en el **intercambio de mensajes XML**.
- Tecnologías principales: **SOAP**, **WSDL**, **UDDI**.

### SOAP (Simple Object Access Protocol)
- Protocolo usado en servicios web para **intercambio de mensajes entre aplicaciones**.
- **No** depende del protocolo de transporte (puede usarse HTTP, SMTP, JMS, etc.).
- No está escrito en un lenguaje específico.

**Estructura del mensaje SOAP**:
- `<Envelope>` (obligatorio): raíz del mensaje.
  - `<Header>` (opcional): metadatos, seguridad, transacciones.
  - `<Body>` (obligatorio): datos de la aplicación.
  - `<Fault>` (opcional, dentro de Body): errores.

### WSDL (Web Services Description Language)
- Lenguaje basado en XML que define la interfaz de un servicio web.
- **Operaciones**: las acciones soportadas por el servicio (se describen con el elemento `operation`).
- **Binding**: especifica el protocolo concreto y formato de datos para un tipo de puerto determinado (`wsdl:binding`).
- **PortType**: conjunto de operaciones abstractas.

### UDDI (Universal Description, Discovery and Integration)
- Directorio para publicar y descubrir servicios web.
- REST **no** usa UDDI.

### WS-Security (WSS)
- Protocolo que contiene especificaciones sobre cómo garantizar la **integridad y seguridad en mensajería de servicios web**.
- Proporciona autenticación, confidencialidad e integridad a nivel de mensaje SOAP.

## 5. REST (Representational State Transfer)

### Concepto
- Estilo arquitectónico para construir servicios web basados en recursos.
- **Cada recurso es direccionable a través de su URI**.
- Utiliza los **métodos HTTP de forma explícita**: GET, POST, PUT, DELETE, PATCH.
- Utiliza los **códigos de respuesta nativos de HTTP**: 200 (OK), 204 (No Content), 404 (Not Found), 409 (Conflict).
- **Formatos admitidos**: XML **y** JSON (REST sí permite usar XML, a diferencia de lo que afirma la opción INCORRECTA).
- **No requiere que el servidor recupere información de estado** (stateless).
- **NO** usa UDDI (esa es una característica de SOAP).

### Métodos HTTP en API REST
| Método | Acción | Código éxito |
|---|---|---|
| **GET** | Obtener recurso | 200 OK |
| **POST** | Crear recurso | 201 Created |
| **PUT** | Actualizar/reemplazar | 200/204 |
| **DELETE** | Eliminar recurso | 200/204 |
| **PATCH** | Actualización parcial | 200/204 |

## 6. Microservicios

### Concepto
- Estilo arquitectónico donde la aplicación se compone de **servicios pequeños, independientes y desplegables**.
- Cada microservicio se enfoca en una funcionalidad de negocio específica.

### Coreografía vs Orquestación
- **Coreografía**: cada microservicio sabe qué hacer y reacciona a eventos, sin coordinador central.
- **Orquestación**: un coordinador central (orquestador) dirige las interacciones entre microservicios.

### Comparativa: Monolítico vs Microservicios
| Aspecto | Monolítico | Microservicios |
|---|---|---|
| Despliegue | Único | Independiente |
| Escalabilidad | Vertical | Horizontal |
| Acoplamiento | Alto | Bajo |
| Mantenimiento | Complejo | Modular |
| Tecnología | Única | Heterogénea |
