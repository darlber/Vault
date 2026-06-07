> Modelado de datos, metodologías y reglas. Entidades, atributos y relaciones. Diseño de bases de datos. Diseño lógico y físico. El modelo lógico relacional. Normalización.

## 1. Modelado de Datos: Metodologías y Reglas

### Concepto
- **Modelado de datos**: proceso de creación de un modelo de datos mediante la aplicación de reglas y metodologías para representar la realidad de un sistema de información.
- **Diagrama Entidad-Relación (E/R)**: representación visual de las entidades y sus relaciones. Se usa en el **diseño conceptual** de bases de datos.
- Creado por **Peter Chen** (1976).

### Metodologías de modelado
- **Métrica v3**: metodología española para el desarrollo de sistemas de información. Define fases y productos.

### Reglas del modelo E/R (Modelo E/R Extendido según Métrica v3)
- Las relaciones se definen por: **cardinalidad**, **nombre**, **tipo de correspondencia**.

## 2. Entidades, Atributos y Relaciones (Modelo E/R)

### Entidades
- **Entidad**: objeto del mundo real distinguishable de otros. Representada por **rectángulo**.
- **Entidad fuerte**: existe por sí misma.
- **Entidad débil**: depende de otra entidad para su existencia. Representada por **rectángulo doble**.
- **Entidad reflexiva**: solo participa una entidad que se relaciona consigo misma.
- **Entidad de unión**: permite resolver relaciones de varios a varios (M:N).

### Atributos
| Tipo | Descripción | Símbolo E/R |
|---|---|---|
| Simple | Valor atómico, no divisible | Elipse |
| Compuesto | Se divide en subatributos | Elipse |
| **Multivalorado** | Varios valores para la misma entidad | **Elipse doble** |
| **Derivado** | Se calcula a partir de otros atributos | **Elipse discontinua** |
| Clave | Identifica de forma única a la entidad | Elipse subrayada |

### Relaciones
- **Relación**: asociación entre entidades. Representada por **rombo**.
- Según su **cardinalidad máxima**: 1:1 (uno a uno), 1:N (uno a varios), M:N (varios a varios).
- Una relación M:N se resuelve dividiéndola en **dos relaciones 1:N** mediante una **entidad de unión** (tabla intermedia).
- **Participación total**: todas las ocurrencias de una entidad participan en la relación. Se indica con **línea doble** en el diagrama E/R.

### Cardinalidad
- **Cardinalidad máxima**: el número máximo de ocurrencias de una entidad que pueden asociarse a otra (1 o N).
- **Cardinalidad mínima**: el número mínimo de ocurrencias (0 o 1: participación opcional u obligatoria).
- Lo fundamental para pasar una relación E/R al modelo relacional es la **cardinalidad máxima**.

## 3. Diseño de Bases de Datos

### Ciclo de vida del diseño
1. **Recopilación de requisitos** (fase 1): análisis de necesidades del sistema.
2. **Diseño conceptual**: modelo E/R, independiente del SGBD.
3. **Diseño lógico**: transformación E/R al modelo relacional. Validar con usuarios y arquitectura del sistema.
4. **Diseño físico**: implementación en un SGBD específico. Describe la implementación en memoria secundaria. Se decide qué SGBD usar. El criterio principal es el **rendimiento**.
5. **Implementación**: creación física de la BD.
6. **Mantenimiento**: monitorización, optimización, evolución.

### Diseño conceptual
- Objetivo: producir un modelo de datos independiente de aspectos tecnológicos.
- Herramienta: diagrama E/R.
- Identifica entidades, atributos, relaciones y restricciones.

### Diseño lógico
- Transforma el modelo E/R en un **modelo relacional** (tablas, claves, normalización).
- La transformación es un paso **meramente mecánico** que depende necesariamente de la **semántica del problema**.
- Lo fundamental para la transformación es la **cardinalidad máxima** de las relaciones.
- Se validan las reglas de integridad y normalización.

### Diseño físico
- Objetivo: describir la implementación de la BD en memoria secundaria.
- Se adapta el diseño a las características del SGBD específico.
- Actividades: definir índices, particionado, optimización de almacenamiento, estimación de espacio.
- **Criterio principal**: el **rendimiento** de las consultas.

## 4. El Modelo Lógico Relacional

### Concepto
- **Modelo relacional**: modelo de datos que utiliza **tablas** (relaciones) para representar los datos.
- Propuesto por **Edgar F. Codd** (1970).

### Elementos
| Término | Definición |
|---|---|
| **Relación** | Tabla con filas y columnas |
| **Tupla** | Fila de la tabla |
| **Atributo** | Columna de la tabla |
| **Dominio** | Conjunto de valores válidos para un atributo |
| **Grado** | Número de atributos de una relación |
| **Cardinalidad** | Número de tuplas de una relación |

### Claves
- **Superclave**: subconjunto de atributos que permite determinar todos los atributos de la relación (identifica unívocamente cada tupla).
- **Clave candidata**: superclave mínima (ningún subconjunto propio es superclave). Optan a ser clave primaria.
- **Clave primaria (PK)**: clave candidata elegida para identificar tuplas. No admite nulos.
- **Clave alternativa**: clave candidata no elegida como primaria.
- **Clave compuesta**: combina dos o más atributos para identificar un registro de forma única.
- **Clave foránea (FK)**: atributo que referencia la PK de otra tabla.

### Reglas de integridad (Codd)
1. **Integridad de entidad**: ningún atributo de la clave primaria puede aceptar valores nulos.
2. **Integridad referencial**: los valores de una FK deben existir como PK en la tabla referenciada (o ser nulos).
3. **Integridad de dominio**: los valores deben pertenecer al dominio definido.

### Reglas de Codd (12 reglas)
El modelo relacional tiene 12 reglas definidas por Codd. Algunas de las más relevantes:
- Regla 0: Regla fundamental (todo se representa mediante tablas).
- Regla 1: Regla de la información.
- Regla 2: Regla del acceso garantizado.
- Regla 3: Tratamiento sistemático de valores nulos.
- **NO es una regla de Codd**: regla de la cardinalidad de las entidades.

## 5. Normalización

### Concepto
- **Normalización**: proceso de descomponer relaciones con anomalías para producir relaciones más pequeñas y mejor estructuradas. Elimina redundancias y anomalías.
- Propuesta por **Codd en 1972**.
- Las **formas normales** son **acumulativas** (si está en 3FN, también en 2FN y 1FN).
- La **forma normal mínima** para considerarse parte del modelo relacional es **1FN**.

### Dependencias funcionales
- **Dependencia funcional (DF)**: relación entre atributos donde X → Y significa que X determina funcionalmente a Y (a cada valor de X le corresponde un único valor de Y).
- **Dependencia funcional completa**: Y depende de toda la clave primaria X, no solo de un subconjunto.
- **Dependencia funcional transitiva**: si X → Y e Y → Z, entonces X → Z transitivamente.
- **Dependencia multivaluada**: un atributo determina un conjunto de valores independientes de otro atributo.
- **Dependencia de reunión (join dependency)**: una relación puede reconstruirse sin pérdida a partir de la combinación de sus proyecciones.

### 1FN (Primera Forma Normal)
- Cada intersección de fila y columna contiene exactamente **un valor atómico**.
- No hay grupos repetitivos ni atributos multivalorados.
- Ejemplo de NO 1FN: un campo "Teléfonos" con "916666666;917777777" (múltiples valores).

### 2FN (Segunda Forma Normal)
- Está en 1FN **y** cada atributo no clave depende funcionalmente de **toda** la clave primaria (dependencia funcional completa).
- Si la PK es simple (un solo atributo) y está en 1FN, ya está en 2FN.

### 3FN (Tercera Forma Normal)
- Está en 2FN **y** no existen **dependencias transitivas** entre atributos no principales y la PK.
- Todo atributo no clave depende directamente de la PK, no a través de otro atributo no clave.

### FNBC (Forma Normal de Boyce-Codd)
- Versión más fuerte de 3FN.
- Una relación está en FNBC si y solo si está en 3FN **y** para toda dependencia funcional X → Y, X es una **superclave** de la relación.

### 4FN (Cuarta Forma Normal)
- Está en FNBC **y** no tiene **dependencias multivaluadas** no triviales.

### 5FN (Quinta Forma Normal)
- También llamada forma normal de proyección-reunión (PJ/NF).
- Relacionada con **dependencias de reunión**.

### Desnormalización
- Proceso inverso: introducir redundancia controlada para mejorar el rendimiento de las consultas.
- Principal desventaja: introduce redundancias y puede causar anomalías de actualización.

## 6. Transformación E/R → Relacional

### Reglas básicas
1. Cada **entidad fuerte** → una tabla con su clave primaria.
2. Cada **entidad débil** → una tabla con clave primaria compuesta (incluye la PK de la entidad fuerte de la que depende).
3. **Relación 1:N** → la PK de la entidad del lado "1" se añade como FK en la tabla del lado "N".
4. **Relación 1:1** → la PK de una entidad se añade como FK en la otra (o se fusionan).
5. **Relación M:N** → se crea una **nueva tabla** (entidad de unión) con la PK de ambas entidades como FK, formando una clave compuesta.
6. **Atributos multivalorados** → nueva tabla con la PK de la entidad y el atributo.

- La transformación es un paso **meramente mecánico** que depende de la **semántica del problema**.
- Lo fundamental para la transformación es la **cardinalidad máxima** de las relaciones.
