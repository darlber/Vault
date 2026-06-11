> Diseño y programación orientada a objetos. Elementos y componentes software: objetos, clases, herencia, métodos, sobrecarga. Ventajas e inconvenientes. Patrones de diseño y lenguaje de modelado unificado (UML).

## 1. Programación Orientada a Objetos (POO)

### Concepto
- **Paradigma de programación** que organiza el software en **objetos** que contienen datos (atributos) y código (métodos).
- Objetivos: reutilización, modularidad, mantenibilidad, extensibilidad.

### Características fundamentales
1. **Abstracción**: ocultar complejidad, modelar entidades del mundo real.
2. **Encapsulamiento**: ocultar los detalles de implementación y exponer solo lo necesario; proteger los datos del acceso externo.
3. **Modularidad**: descomponer el sistema en objetos coherentes e independientes.
4. **Reusabilidad**: producir componentes reutilizables para otros diseños.
5. **Herencia**: crear clases nuevas a partir de existentes.
6. **Polimorfismo**: un mismo mensaje puede originar conductas diferentes según el objeto que lo recibe.

**NO** es una característica POO: durabilidad.

### Ventajas de la POO
- Facilita la **reutilización**, **escalabilidad** y **mantenimiento** del software.
- Favorece la **modularidad** y el **encapsulamiento**.
- Mejora la **productividad** en el desarrollo.
- Facilita la **extensibilidad** de las aplicaciones.

### Inconvenientes de la POO
- Mayor **curva de aprendizaje**.
- **Gestión de la configuración de las librerías de componentes** (puede ser compleja).
- Posible **sobrecarga** (más código del necesario para problemas simples).
- Rendimiento ligeramente inferior frente a programación estructurada.

## 2. Elementos y Componentes Software

### Objeto
- **Instancia de una clase** que contiene atributos (estado) y métodos (comportamiento).
- Entidad provista de un conjunto de propiedades o atributos.
- Los objetos interactúan enviándose mensajes (llamadas a métodos).

### Clase
- **Conjunto de objetos con propiedades comunes**.
- Plantilla o molde que define atributos y métodos que tendrán sus instancias.
- Se representa en UML como un **rectángulo dividido en tres zonas** (nombre, atributos, métodos).

### Herencia
- Mecanismo por el cual una clase (subclase/hija) hereda atributos y métodos de otra (superclase/padre).
- La clase hija puede:
  - **Añadir** nuevos atributos y métodos.
  - **Modificar** (sobrescribir) los métodos heredados.
- **Herencia simple**: una clase hereda de una sola superclase (Java, C#, VB.NET).
- **Herencia múltiple**: una clase hereda de varias superclases (C++, Python). **No todos** los lenguajes POO la soportan (Java ofrece interfaces como alternativa).

### Métodos
- Operaciones o funciones definidas en una clase que determinan el comportamiento de los objetos.
- **Sobrecarga de métodos**: definir dos o más métodos con el mismo nombre pero **parámetros diferentes en cantidad y/o tipo**. El compilador resuelve cuál invocar en tiempo de compilación (polimorfismo estático/compile-time).
- **Sobrescritura (override)**: redefinir un método heredado en la subclase (polimorfismo dinámico).

### Polimorfismo
- Propiedad por la cual **un mismo mensaje puede originar conductas completamente diferentes al ser recibido por diferentes objetos**.
- También: capacidad de una clase de tomar muchas formas a través de la herencia.
- **Polimorfismo estático** (compile-time): sobrecarga de métodos.
- **Polimorfismo dinámico** (runtime): sobrescritura de métodos (override).

## 3. Patrones de Diseño (GoF - Gang of Four)

### Concepto
- **Patrón de diseño**: solución reutilizable y probada para un problema recurrente en el desarrollo de software.
- Los **GoF (Gang of Four)** - Gamma, Helm, Johnson, Vlissides - catalogaron 23 patrones en su libro (1994).
- Clasificación según **propósito**:
  - **Creacionales**: creación de objetos.
  - **Estructurales**: composición de clases y objetos.
  - **Comportamiento**: interacción y responsabilidad entre objetos.

### Patrones Creacionales
| Patrón | Propósito |
|---|---|
| **Singleton** | Garantiza una única instancia de una clase (solo un objeto) |
| **Factory Method** | Define una interfaz para crear objetos, las subclases deciden qué clase instanciar |
| **Abstract Factory** | Crear familias de objetos relacionados sin especificar clases concretas |
| **Builder** | Construir objetos complejos paso a paso |
| **Prototype** | Crear nuevos objetos clonando un prototipo |

### Patrones Estructurales
| Patrón | Propósito |
|---|---|
| **Adapter** | Convertir la interfaz de una clase en otra que esperan los clientes |
| **Bridge** | Desacoplar una abstracción de su implementación para que ambas puedan evolucionar independientemente |
| **Decorator** | Añadir funcionalidad a un objeto dinámicamente |
| **Composite** | Componer objetos en estructuras de árbol (parte-todo) |
| **Facade** | Interfaz unificada para un conjunto de interfaces de un subsistema |
| **Proxy** | Proporcionar un sustituto o representante de otro objeto para controlar el acceso |
| **Flyweight** | Compartir objetos pequeños para ahorrar memoria |

### Patrones de Comportamiento
| Patrón | Propósito |
|---|---|
| **Observer** | Notificar cambios a múltiples objetos dependientes |
| **Strategy** | Definir una familia de algoritmos intercambiables |
| **Memento** | Externalizar el estado interno de un objeto sin violar encapsulación para poder restaurarlo después |
| **Iterator** | Acceder secuencialmente a elementos de una colección sin exponer su representación |
| **Mediator** | Define un objeto que centraliza la comunicación entre objetos |
| **State** | Permitir que un objeto altere su comportamiento cuando cambia su estado interno |

### Patrón Modelo-Vista-Controlador (MVC)
- Patrón arquitectónico que **separa la lógica de negocio de la interfaz de usuario**.
- **Modelo**: datos y lógica de negocio.
- **Vista**: presentación al usuario.
- **Controlador**: maneja entradas del usuario y actualiza el modelo/vista.
- **Ventajas**: incrementa reutilización y flexibilidad.
- El controlador **NO gestiona directamente** los accesos a la información (eso es función del modelo).
- Usado en frameworks como J2EE, ASP.NET MVC, Spring MVC.

## 4. Lenguaje de Modelado Unificado (UML)

### Concepto
- **UML** (Unified Modeling Language): lenguaje estándar para especificar, visualizar, construir y documentar sistemas de software.
- Creado por Grady Booch, Ivar Jacobson y James Rumbaugh (Rational Software).
- Versión actual: **UML 2.5**.

### Diagramas UML (2 categorías)

**Diagramas de estructura** (estáticos): muestran la estructura del sistema.
- **Diagrama de clases**: clases, atributos, métodos y relaciones (asociación, herencia, agregación, composición). Las clases se representan como **rectángulos con tres secciones** (nombre, atributos, métodos).
- **Diagrama de objetos**: instancias en un momento concreto.
- **Diagrama de componentes**: organización de componentes software.
- **Diagrama de despliegue**: distribución física del hardware.
- **Diagrama de paquetes**: organización en paquetes.
- **Diagrama de estructura compuesta**: estructura interna de un clasificador.

**Diagramas de comportamiento** (dinámicos): muestran el comportamiento del sistema.
- **Diagrama de casos de uso**: interacciones entre actores y sistema.
- **Diagrama de secuencia**: ordenación temporal de los mensajes entre objetos (énfasis en el tiempo).
- **Diagrama de comunicación**: interacciones entre objetos (énfasis en las relaciones).
- **Diagrama de estados**: ciclos de vida de un objeto.
- **Diagrama de actividad**: flujos de trabajo y procesos.
- **Diagrama de interacción**: vista global de interacciones.
- **Diagrama de tiempos**: restricciones temporales.

### Elementos UML
- **Clase**: rectángulo con tres secciones.
- **Asociación**: relación entre elementos estructurales.
- **Agregación**: tipo de asociación que representa que una clase es parte de otra (todo-parte).
- **Composición**: agregación fuerte (el ciclo de vida del hijo depende del padre).
- **Herencia/generalización**: relación entre una clase general y otra específica.
- **Dependencia**: una clase usa a otra.
- **NO** es un tipo de asociación UML: **dispersión**.

### Diagrama de clases UML
- Recoge las **clases de objetos y sus asociaciones**.
- Cada clase se representa por un **rectángulo dividido en tres zonas** por líneas horizontales: nombre, atributos, métodos/operaciones.
- Los objetos son **instancias de las clases**.
- Relaciones: asociación, agregación, composición, herencia, dependencia.

### Diagrama de secuencia
- Hace especial hincapié en la **ordenación temporal de los mensajes**.
- Muestra objetos/actores en la parte superior y líneas de vida verticales.
- Los mensajes se representan como flechas entre líneas de vida.
