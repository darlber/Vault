#flashcards/informatica

# Flashcards - Tema 15: Modelado de Datos, Diseño de BD, Modelo Relacional, Normalización

## Modelado de Datos y Metodologías

Diagrama Entidad-Relación (E/R)::Representación visual de las entidades y sus relaciones; se usa en el diseño conceptual de BD

Creador del modelo E/R::Peter Chen (1976)

Métrica v3 - relaciones se definen por::Cardinalidad, nombre, tipo de correspondencia

## Entidades, Atributos y Relaciones (E/R)

E/R - rectángulos::Conjuntos de entidades

E/R - rectángulo doble::Entidades débiles

E/R - elipses::Atributos

E/R - elipses dobles::Atributos multivalorados

E/R - elipses discontinuas::Atributos derivados

E/R - rombos::Relaciones

E/R - líneas dobles::Participación total de una entidad en una relación

Entidad débil::Entidad que depende de otra entidad para su existencia; se representa con rectángulo doble

Entidad reflexiva::Solo participa una entidad y se relaciona consigo misma

Entidad de unión::Permite resolver relaciones de varios a varios (M:N) creando una tabla intermedia

Cómo se resuelve relación M:N::Dividir la relación M:N en dos relaciones 1:N mediante una entidad de unión

Cardinalidad máxima::Número máximo de ocurrencias de una entidad asociadas a otra (1 o N)

Cardinalidad mínima::Número mínimo de ocurrencias (0 participación opcional, 1 obligatoria)

Lo fundamental para transformar E/R a relacional::La cardinalidad máxima

## Diseño de Bases de Datos

Fase 1 del diseño de BD::Recopilación de requisitos

Diseño conceptual::Modelo E/R independiente del SGBD

Diseño lógico::Transformación del E/R al modelo relacional; validar con usuarios y arquitectura del sistema

Diseño físico::Implementación del diseño lógico en un SGBD específico; describe la implementación en memoria secundaria

En qué fase se decide el SGBD::Diseño físico

Criterio principal del diseño físico::El rendimiento

La transformación E/R → relacional::Es un paso meramente mecánico que depende de la semántica del problema

## Modelo Relacional

Modelo relacional::Modelo de datos que utiliza tablas (relaciones); propuesto por Codd (1970)

Grado de una relación::Número de atributos de la relación

Cardinalidad de una relación (en relacional)::Número de tuplas (filas) de la relación

Superclave::Subconjunto de atributos que permite determinar todos los atributos de la relación (identifica unívocamente cada tupla)

Clave candidata::Superclave mínima; conjunto de atributos que optan a ser clave primaria

Clave primaria (PK)::Clave candidata elegida; identifica tuplas de forma única; no admite valores nulos

Clave compuesta::Combina dos o más atributos para identificar un registro de forma única

Clave foránea (FK)::Campo que hace referencia a la clave primaria de otra entidad

## Reglas de Integridad (Codd)

Reglas de Codd - total::12 reglas que definen el modelo relacional

NO es una regla de Codd::Regla de la cardinalidad de las entidades

Integridad de entidad::Ningún atributo que forma parte de la clave primaria puede aceptar valores nulos

Integridad referencial::Los valores de una clave foránea deben existir como PK en la tabla referenciada (o ser nulos)

Integridad de dominio::Los valores de un atributo deben pertenecer al dominio definido (tipo, rango, formato)

## Normalización

Normalización::Proceso de descomponer relaciones con anomalías para producir relaciones más pequeñas y mejor estructuradas; elimina redundancias

Normalización - propuesta por::Codd en 1972

Formas normales son::Acumulativas (si está en 3FN, también en 2FN y 1FN)

Forma normal mínima del modelo relacional::Primera Forma Normal (1FN)

Dependencia funcional (DF)::Relación donde X → Y: X determina funcionalmente a Y (a cada valor de X le corresponde un único Y)

Dependencia funcional completa::Y depende de toda la clave primaria X, no solo de un subconjunto

Dependencia transitiva::Si X → Y e Y → Z, entonces X → Z transitivamente

Dependencia multivaluada::Un atributo determina un conjunto de valores independientes de otro atributo

Dependencia de reunión (join dependency)::Una relación puede reconstruirse sin pérdida a partir de la combinación de sus proyecciones

## Formas Normales

1FN (Primera Forma Normal)::Cada intersección de fila y columna contiene exactamente un valor atómico; sin grupos repetitivos

Ejemplo de NO 1FN::Campo "Teléfonos: 916666666;917777777" (múltiples valores en un mismo campo)

2FN (Segunda Forma Normal)::Está en 1FN y cada atributo no clave depende funcionalmente de toda la clave primaria

3FN (Tercera Forma Normal)::Está en 2FN y no existen dependencias transitivas entre atributos no principales y la PK

FNBC (Boyce-Codd)::Está en 3FN y para toda DF X → Y, X es una superclave de la relación

4FN (Cuarta Forma Normal)::Se refiere a la eliminación de dependencias multivaluadas

5FN (Quinta Forma Normal)::Relacionada con dependencias de reunión (proyección-reunión)

Desnormalización::Proceso inverso a la normalización; introduce redundancia controlada para mejorar el rendimiento

Principal desventaja de la desnormalización::Introduce redundancias y puede causar anomalías de actualización

## Transformación E/R → Relacional

Entidad fuerte → tabla::Se crea una tabla con su clave primaria

Entidad débil → tabla::Tabla con PK compuesta (incluye PK de la entidad fuerte de la que depende)

Relación 1:N → FK::La PK de la entidad del lado "1" se añade como FK en la tabla del lado "N"

Relación M:N → nueva tabla::Se crea una nueva tabla (entidad de unión) con las PK de ambas entidades como FK

Atributo multivalorado → nueva tabla::Nueva tabla con la PK de la entidad y el atributo multivalorado
