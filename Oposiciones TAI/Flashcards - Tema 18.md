#flashcards/poo18

# Flashcards - Tema 18: Diseño y Programación Orientada a Objetos, Patrones, UML

## Conceptos POO

Objeto::Instancia de una clase que contiene atributos y métodos

Clase::Conjunto de objetos con propiedades comunes

Características del modelo POO::Abstracción, encapsulamiento, modularidad, reusabilidad, herencia, polimorfismo

NO es característica POO::Durabilidad

## Encapsulamiento

Encapsulamiento::Ocultar los detalles de implementación y exponer solo lo necesario; proteger datos del acceso externo

## Polimorfismo

Polimorfismo::Propiedad por la cual un mismo mensaje puede originar conductas diferentes al ser recibido por diferentes objetos

Polimorfismo estático (compile-time)::Sobrecarga de métodos (mismo nombre, diferentes parámetros)

Polimorfismo dinámico (runtime)::Sobrescritura de métodos (override) mediante herencia

## Herencia

Herencia::Mecanismo por el cual una clase hereda atributos y métodos de otra

La clase hija puede::Añadir nuevos atributos/métodos y modificar los heredados

Herencia múltiple - lenguajes que la soportan::C++, Python

Herencia múltiple - lenguajes que NO la soportan::Java, C#, VB.NET

## Sobrecarga de métodos

Sobrecarga de métodos::Definir dos o más métodos con el mismo nombre pero parámetros diferentes en cantidad y/o tipo

## Ventajas e Inconvenientes POO

Ventajas de la POO::Reutilización, escalabilidad, mantenimiento, modularidad, extensibilidad

Inconveniente de la POO::Gestión de la configuración de las librerías de componentes

## Patrones de Diseño (GoF)

Clasificación de patrones GoF::Creacionales, estructurales, de comportamiento

Singleton::Creacional; garantiza una única instancia de una clase

Decorator::Estructural; añade funcionalidad a un objeto dinámicamente

Adapter::Estructural; convierte la interfaz de una clase en otra que esperan los clientes

Bridge::Estructural; desacopla abstracción de implementación para que evolucionen independientemente

Facade::Estructural; interfaz unificada para un conjunto de interfaces de un subsistema

Proxy::Estructural; sustituto o representante de otro objeto para controlar el acceso

Memento::Comportamiento; externaliza el estado interno de un objeto sin violar encapsulación para restaurarlo después

MVC (Modelo-Vista-Controlador)::Separa lógica de negocio de interfaz de usuario; incrementa reutilización

En MVC, el controlador gestiona accesos a la información::Falso; esa función corresponde al modelo

## UML

UML::Lenguaje estándar para especificar, visualizar, construir y documentar sistemas software

Diagramas de estructura UML::Clases, objetos, componentes, despliegue, paquetes, estructura compuesta

Diagramas de comportamiento UML::Casos de uso, secuencia, comunicación, estados, actividad, interacción, tiempos

Diagrama de clases UML::Recoge clases de objetos y sus asociaciones

Representación de una clase en UML::Rectángulo dividido en tres zonas por líneas horizontales (nombre, atributos, métodos)

Diagrama de secuencia::Hace hincapié en la ordenación temporal de los mensajes

NO es un tipo de asociación UML::Dispersión

Agregación::Tipo de asociación que representa que una clase es parte de otra
