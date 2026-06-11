#flashcards/informatica14

# Flashcards - Tema 14: Bases de Datos, SGBD, Modelo Relacional, SQL, Administración de BD

## Conceptos Básicos de BD y SGBD

Base de datos::Conjunto de datos organizados y estructurados, almacenados sistemáticamente

SGBD (DBMS)::Herramienta informática que proporciona los medios para describir y manipular los datos almacenados en la BD

Finalidad de un SGBD::Establecer interfaces entre usuarios y BD, dotar de flexibilidad, garantizar la seguridad de los datos

RDBMS::Relational Database Management System (SGBD relacional)

OODBMS::Object-Oriented Database Management System (SGBD orientado a objetos)

Ventajas de los SGBD::Disminuye redundancia e inconsistencia, facilita acceso, control centralizado

NO es ventaja de un SGBD::Aumentar el espacio de almacenamiento

Diccionario de datos::Lugar donde se deposita la información sobre la totalidad de los datos (metadatos, características lógicas de las estructuras)

DDL (Data Definition Language)::Permite crear y modificar estructuras (CREATE, ALTER, DROP, TRUNCATE)

DML (Data Manipulation Language)::Permite buscar, añadir, suprimir o modificar datos (SELECT, INSERT, UPDATE, DELETE)

Estándar que define SQL::ISO/IEC 9075

Optimizador de consultas (Query Optimizer)::Componente del SGBD que evalúa estrategias de ejecución para obtener resultados de manera eficiente

Arquitectura ANSI/SPARC (tres niveles)::Nivel interno (físico), nivel conceptual (lógico), nivel externo (vistas)

## Modelo Relacional

Modelo relacional::Modelo de datos que utiliza tablas para representar los datos; es el más utilizado en la industria

Términos del modelo relacional::Relación (tabla), tupla (fila), atributo (columna), dominio (valores válidos)

Clave primaria (Primary Key)::Atributo/s que identifica/n de forma única cada tupla; no admite valores nulos

Clave foránea (Foreign Key)::Atributo que hace referencia a la clave primaria de otra tabla; asegura la integridad referencial

Clave compuesta::Combina dos o más atributos para identificar un registro de forma única

Clave candidata::Atributo o conjunto que podría ser clave primaria; las no elegidas son claves alternativas

Atributo no primo::Atributo que no es parte de ninguna clave candidata

Integridad de entidad::Ningún atributo que forma parte de la clave primaria puede aceptar valores nulos

Integridad referencial::Los valores de una clave foránea deben existir como PK en la tabla referenciada (o ser nulos); se asegura con FK

Integridad de dominio::Los valores de un atributo deben pertenecer al dominio definido (tipo, rango, formato)

Dependencia funcional::Relación de uno a muchos entre atributos: un atributo determina funcionalmente a otro

## Modelo Entidad-Relación (E/R)

E/R - rectángulos::Conjuntos de entidades

E/R - elipses::Atributos

E/R - rombos::Relaciones

E/R - elipses dobles::Atributos multivalorados

E/R - elipses discontinuas::Atributos derivados

E/R - rectángulo doble::Entidad débil

Cómo se resuelve relación varios a varios (M:N)::Dividir en dos relaciones uno a varios (1:N) mediante una entidad de unión (tabla intermedia)

## Normalización

Normalización::Proceso de reorganizar los datos para eliminar la redundancia

Propuesta por::Codd en 1972

Formas normales son::Acumulativas (si está en 3FN, también en 2FN y 1FN)

Forma normal mínima del modelo relacional::Primera Forma Normal (1FN)

1FN::Cada intersección de fila y columna contiene exactamente un valor (atómico, sin grupos repetitivos)

2FN::Está en 1FN y cada atributo no clave depende funcionalmente de toda la clave primaria

3FN::Está en 2FN y no existen dependencias transitivas entre atributos no principales y la PK

4FN::Se refiere a la eliminación de dependencias multivaluadas

FNBC (Boyce-Codd)::Versión más fuerte de 3FN: todo determinante debe ser una clave candidata

Desnormalización::Proceso inverso a la normalización; introduce redundancia para mejorar rendimiento

Principal desventaja de la desnormalización::Introduce redundancias

## Lenguaje SQL - DDL

CREATE::Crear tablas, vistas, índices, BD

ALTER::Modificar la estructura de una tabla ya existente

DROP::Eliminar la estructura de una tabla junto con todos los datos almacenados en ella

TRUNCATE::Eliminar todos los registros de una tabla, conservando su estructura

## Lenguaje SQL - DML

Comandos DML::INSERT, UPDATE, DELETE, SELECT

INSERT INTO::Añadir un nuevo registro a una tabla

Sintaxis correcta de INSERT::INSERT INTO tabla (columnas) VALUES (valores) (con paréntesis y comillas)

UPDATE - ¿puede actualizar varias tablas?::No, UPDATE solo puede actualizar registros en una sola tabla

UPDATE - ¿admite subconsultas?::Sí, se admiten subconsultas en UPDATE

JOIN / INNER JOIN::Devuelve solo los registros que tienen coincidencias en ambas tablas

LEFT JOIN::Todos los registros de la tabla izquierda + coincidencias de la derecha

RIGHT JOIN::Todos los registros de la tabla derecha + coincidencias de la izquierda

FULL JOIN::Todos los registros de ambas tablas aunque no coincidan

Subconsulta (consulta anidada)::Consulta que incluye subconsultas en su cláusula WHERE, FROM o HAVING

Vista (View)::Consulta preestablecida que extrae datos de una o varias tablas (tabla virtual)

Ventajas de las vistas::Mayor seguridad de los datos; simplificación y ocultamiento de la complejidad

EXTRACT::Permite extraer alguno de los componentes de una fecha (año, mes, día, hora)

## Lenguaje SQL - Restricciones

NOT NULL::No permite valores nulos en el atributo

PRIMARY KEY::Clave primaria (no nula, única)

FOREIGN KEY::Clave foránea (asegura integridad referencial)

UNIQUE::Valores únicos (permite un nulo)

DEFAULT::Valor por defecto

CHECK::Condición que deben cumplir los valores

## Disparadores (Triggers)

Trigger::Código que se ejecuta automáticamente ante eventos INSERT, UPDATE o DELETE

Tipos de triggers según momento::BEFORE o AFTER (antes o después de la operación)

Los triggers ¿pueden usarse para integridad referencial?::Sí, pueden utilizarse para mantener la integridad referencial

## Índices, Transacciones y Diseño

Índice en BD::Estructura que mejora la velocidad de acceso a los datos

Tipos de índice::Primario, secundario, compuesto, único

Transacción::Secuencia de operaciones que se ejecutan como una unidad indivisible (todo o nada)

Propiedades ACID::Atomicity, Consistency, Isolation, Durability

Restricciones de integridad - objetivo::Mantener la consistencia semántica de los datos

Diseño conceptual::Modelo E/R independiente del SGBD

Diseño lógico::Transformación del modelo E/R al modelo relacional (tablas, claves, normalización)

Diseño físico::Implementación del diseño lógico en un SGBD específico; describe la implementación en memoria secundaria

En qué fase se decide el SGBD::Diseño físico

## Bases de Datos NoSQL

NoSQL::"Not Only SQL"; sistemas que no siguen el modelo relacional, para grandes volúmenes y escalabilidad horizontal

Teorema CAP (Brewer)::En un sistema distribuido no se pueden garantizar simultáneamente consistencia, disponibilidad y tolerancia a particiones; ante una partición hay que elegir entre consistencia o disponibilidad

Tipos de BD NoSQL::Clave-Valor, Documental, Orientadas a columnas, Grafos

Redis::BD NoSQL tipo clave-valor

MongoDB::BD NoSQL tipo documental; usa BSON (Binary JSON)

Cassandra::BD NoSQL orientada a columnas

## Bases de Datos Orientadas a Objetos

OODBMS (BD orientada a objetos)::Permite la persistencia transparente de objetos complejos, encapsulando estado y comportamiento

Ejemplos de OODBMS::GemStone/S, Matisse, ObjectDB, db4o

OQL (Object Query Language)::Lenguaje de consulta de datos en BD orientadas a objetos

Cézanne, Picasso, Rembrandt::NO son OODBMS (son nombres de artistas)

## SGBD Relacionales más comunes

Oracle::RDBMS propietario, enterprise

MySQL::RDBMS código abierto, popular en web

PostgreSQL::ORDBMS código abierto, objeto-relacional

SQL Server::RDBMS de Microsoft

MariaDB::RDBMS fork de MySQL, código abierto

SQLite::RDBMS ligero, embebido, sin servidor
