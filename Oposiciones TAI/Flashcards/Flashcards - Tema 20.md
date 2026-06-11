#flashcards/cliente-servidor20

# Flashcards - Tema 20: Cliente/Servidor, Multicapa, Servicios Web

## Cliente/Servidor

Características sistemas cliente/servidor::Compartición de recursos, concurrencia, escalabilidad

En 2 capas, quién inicia la comunicación::El cliente

Thin client (cliente fino)::El servidor se encarga de todo excepto la presentación

Escalabilidad horizontal::Añadir o suprimir estaciones similares para aumentar rendimiento

## Arquitectura Multicapa

Capas del modelo de 3 capas::Presentación, lógica de negocio, datos

Capa responsable de tratar los datos::Capa de lógica de negocio

Capa vs Nivel::Capa = distribución lógica; Nivel = distribución física

## SOA

Ventajas de SOA::Facilidad colaboración, reemplazo sin disrupción, integración tecnologías disímiles

NO es ventaja de SOA::Mayor acoplamiento entre aplicaciones

## Servicios Web

Paradigma de Servicios Web basado en::Intercambio de mensajes XML

NO es característica servicios web::Rendimiento alto

SOAP::Protocolo para intercambio de mensajes entre aplicaciones en servicios web

Estructura mensaje SOAP::Envelope (obligatorio) → Header (opcional) → Body (obligatorio)

WSDL::Lenguaje XML que define la interfaz de un servicio web (operaciones, tipos de datos)

Binding en WSDL::Especifica el protocolo concreto y formato de datos para un tipo de puerto

Operaciones en WSDL::Elemento que describe las acciones soportadas por el servicio

UDDI::Directorio para publicar y descubrir servicios web

WS-Security::Protocolo para integridad y seguridad en mensajería de servicios web

## REST

Características REST::Métodos HTTP explícitos, stateless, URI por recurso, formatos XML y JSON

Métodos HTTP en REST::GET, POST, PUT, DELETE, PATCH

REST usa UDDI::Falso (UDDI es para SOAP/WSDL)

En REST, ¿se puede usar XML?::Sí

Códigos HTTP en REST::200 (OK), 201 (Created), 204 (No Content), 404 (Not Found), 409 (Conflict)

## Microservicios

Coreografía::Cada microservicio reacciona a eventos, sin coordinador central

Orquestación::Un coordinador central dirige las interacciones entre microservicios
