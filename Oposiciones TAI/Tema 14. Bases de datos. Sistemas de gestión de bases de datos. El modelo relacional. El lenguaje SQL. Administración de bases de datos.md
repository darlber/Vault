> Bases de datos. Sistemas de gestión de bases de datos. El modelo relacional. El lenguaje SQL. Administración de bases de datos.

## 1. Bases de Datos: Concepto y Fundamentos

### Concepto
- **Base de datos (BD)**: conjunto de datos organizados y estructurados, almacenados sistemáticamente para su posterior uso.
- No es un conjunto desorganizado, ni almacenamiento en papel, ni datos inmodificables.

### Ventajas de los SGBD frente a ficheros
- Disminuye la redundancia de datos.
- Disminuye la inconsistencia de datos.
- Facilita el acceso a los datos.
- Control centralizado, integridad, seguridad, concurrencia.
- **NO** es una ventaja: aumentar el espacio de almacenamiento (al contrario, se optimiza).

### Diccionario de datos
- Lugar donde se deposita la información sobre la totalidad de los datos que forman la BD.
- Contiene las características lógicas de las estructuras (metadatos).
- Almacena definiciones de tablas, vistas, índices, restricciones, usuarios, permisos.

## 2. Sistemas de Gestión de Bases de Datos (SGBD)

### Concepto
- **SGBD (DBMS)**: herramienta informática que proporciona los medios necesarios para describir y manipular los datos almacenados en la base de datos.
- **Finalidad**: establecer interfaces entre los diferentes tipos de usuarios y la BD, dotar de flexibilidad al sistema, garantizar la seguridad de los datos.

### Funciones principales
- **Definición de datos**: crear y modificar estructuras (tablas, vistas, índices).
- **Manipulación de datos**: insertar, actualizar, eliminar y consultar datos.
- **Control de concurrencia**: gestionar accesos simultáneos.
- **Control de integridad**: mantener consistencia semántica.
- **Control de seguridad**: usuarios, permisos, autenticación.
- **Recuperación ante fallos**: respaldos y logs.

### Clasificación (acrónimos)
- **RDBMS** (Relational DBMS): SGBD relacional (ej: Oracle, MySQL, PostgreSQL, SQL Server).
- **OODBMS** (Object-Oriented DBMS): SGBD orientado a objetos (ej: GemStone/S, Matisse).
- **ORDBMS** (Object-Relational DBMS): SGBD objeto-relacional (ej: PostgreSQL).

### Componentes internos del SGBD
- **DDL** (Data Definition Language): permite crear y modificar estructuras (CREATE, ALTER, DROP, TRUNCATE).
- **DML** (Data Manipulation Language): permite buscar, añadir, suprimir o modificar datos (SELECT, INSERT, UPDATE, DELETE).
- **DCL** (Data Control Language): control de acceso (GRANT, REVOKE).
- **Diccionario de datos**: almacena metadatos de la BD.
- **Gestor de transacciones**: asegura atomicidad, consistencia, aislamiento y durabilidad (ACID).
- **Optimizador de consultas** (Query Optimizer): evalúa distintas estrategias de ejecución para obtener el resultado de una sentencia de manera más eficiente.
- **Planificador de bloqueos**: gestiona la concurrencia y evita interbloqueos.

### Arquitectura ANSI/SPARC (tres niveles)
- **Nivel interno** (físico): cómo se almacenan los datos en el dispositivo.
- **Nivel conceptual** (lógico): estructura global de la BD, independiente del hardware.
- **Nivel externo** (vistas): la parte de la BD que ve cada usuario.

### Estándar SQL
- Definido por **ISO/IEC 9075**.

## 3. El Modelo Relacional

### Concepto
- **Modelo relacional**: modelo de datos que utiliza **tablas** (relaciones) para representar los datos y las relaciones entre ellos.
- Es el modelo de datos **más utilizado en la industria**.

### Elementos del modelo relacional
| Término formal | Equivalencia práctica |
|---|---|
| **Relación** | Tabla |
| **Tupla** | Fila / registro |
| **Atributo** | Columna / campo |
| **Dominio** | Conjunto de valores válidos para un atributo |

### Claves
- **Clave primaria (Primary Key, PK)**: atributo o conjunto de atributos que identifica de forma única cada tupla. No admite valores nulos (**integridad de entidad**).
- **Clave candidata (Candidate Key)**: atributo o conjunto que podría ser clave primaria. Todas las claves candidatas menos una son **alternativas**.
- **Clave compuesta (Composite Key)**: combina dos o más atributos para identificar un registro de forma única.
- **Clave foránea (Foreign Key, FK)**: atributo que hace referencia a la clave primaria de otra tabla. **Asegura la integridad referencial**.
- **Atributo no primo (non-prime attribute)**: atributo que **no** es parte de ninguna clave candidata.

### Reglas de integridad
- **Integridad de entidad**: ningún atributo que forma parte de la clave primaria puede aceptar valores nulos.
- **Integridad referencial**: los valores de una clave foránea deben existir como clave primaria en la tabla referenciada (o ser nulos). Se asegura mediante **claves foráneas**.
- **Integridad de dominio**: los valores de un atributo deben pertenecer al dominio definido (tipo, rango, formato).
- **Integridad semántica**: reglas de negocio definidas por el usuario.

### Dependencia funcional
- Relación de **uno a muchos** entre atributos: un atributo (o conjunto) determina funcionalmente a otro.
- **Dependencia funcional completa**: un atributo depende de toda la clave primaria, no solo de una parte.
- **Dependencia transitiva**: si A → B y B → C, entonces A → C transitivamente.

### Modelo Entidad-Relación (E/R)
- Creado por **Peter Chen** (1976).
- **Notación gráfica**:
  | Símbolo | Significado |
  |---|---|
  | **Rectángulo** | Conjunto de entidades |
  | **Elipse** | Atributo |
  | **Elipse doble** | Atributo multivalorado |
  | **Elipse discontinua** | Atributo derivado |
  | **Rombo** | Relación |
  | **Rectángulo doble** | Entidad débil |
- Una relación **varios a varios** (M:N) se resuelve mediante una **entidad de unión** (tabla intermedia), convirtiéndola en dos relaciones **uno a varios** (1:N).

### Normalización

**Concepto**: proceso de reorganizar los datos para eliminar la redundancia. Propuesta por **Codd en 1972**.
- Las formas normales son **acumulativas** (si está en 3FN, también en 2FN y 1FN).
- La **forma normal mínima** para considerarse parte del modelo relacional es **1FN**.

**1FN (Primera Forma Normal)**:
- Cada intersección de fila y columna contiene exactamente un valor atómico (no grupos repetitivos).

**2FN (Segunda Forma Normal)**:
- Está en 1FN **y** cada atributo no clave depende funcionalmente de **toda** la clave primaria (dependencia funcional completa), no solo de una parte.

**3FN (Tercera Forma Normal)**:
- Está en 2FN **y** no existen **dependencias transitivas** entre atributos no principales y la clave primaria.

**4FN (Cuarta Forma Normal)**:
- Se refiere a la eliminación de **dependencias multivaluadas**.

**FNBC (Forma Normal de Boyce-Codd)**:
- Versión más fuerte de 3FN: todo determinante debe ser una clave candidata.

### Desnormalización
- Proceso inverso a la normalización: introducir redundancia para mejorar el rendimiento de las consultas.
- **Principal desventaja**: introduce redundancias.

## 4. El Lenguaje SQL

### Clasificación de comandos SQL

**DDL (Data Definition Language)**:
| Comando | Función |
|---|---|
| `CREATE` | Crear tablas, vistas, índices, BD |
| `ALTER` | Modificar la estructura de una tabla existente |
| `DROP` | Eliminar la estructura de una tabla junto con todos los datos almacenados |
| `TRUNCATE` | Eliminar todos los registros de una tabla, pero conserva la estructura |

**DML (Data Manipulation Language)**:
| Comando | Función |
|---|---|
| `SELECT` | Consultar/recuperar datos |
| `INSERT` | Añadir nuevos registros a una tabla |
| `UPDATE` | Modificar registros existentes |
| `DELETE` | Eliminar registros |

- `INSERT INTO tabla (columna1, columna2) VALUES ('valor1', 'valor2')` - añade registro.
- `UPDATE tabla SET columna = valor WHERE condición` - modifica registros en una sola tabla. Se admiten subconsultas en UPDATE.
- `DELETE FROM tabla WHERE condición` - elimina registros.

**DCL (Data Control Language)**: `GRANT`, `REVOKE`.

### Restricciones (constraints) en SQL
| Restricción | Función |
|---|---|
| `PRIMARY KEY` | Clave primaria (no nula, única) |
| `FOREIGN KEY` | Clave foránea (integridad referencial) |
| `UNIQUE` | Valores únicos (permite un nulo) |
| `NOT NULL` | No permite valores nulos |
| `DEFAULT` | Valor por defecto |
| `CHECK` | Condición que deben cumplir los valores |

### Consultas (SELECT)
- `SELECT columnas FROM tabla WHERE condición` - consulta básica.
- `SELECT * FROM tabla` - todas las columnas.
- `DISTINCT` - elimina duplicados.
- `ORDER BY` - ordenar resultados.
- `GROUP BY` - agrupar resultados.
- `HAVING` - filtrar grupos (como WHERE pero para GROUP BY).

### JOIN (combinación de tablas)
- **JOIN / INNER JOIN**: devuelve solo los registros que tienen coincidencias en ambas tablas.
- **LEFT JOIN**: todos los registros de la tabla izquierda, más coincidencias de la derecha.
- **RIGHT JOIN**: todos los registros de la tabla derecha, más coincidencias de la izquierda.
- **FULL JOIN**: todos los registros de ambas tablas aunque no coincidan.
- **CROSS JOIN**: producto cartesiano.

### Subconsultas (consultas anidadas)
- Consultas que incluyen subconsultas en su cláusula `WHERE`, `FROM` o `HAVING`.
- Ej: `SELECT * FROM tabla WHERE columna IN (SELECT columna FROM otra_tabla WHERE condición)`.

### Funciones de agregación
- `COUNT`, `SUM`, `AVG`, `MAX`, `MIN`.
- `EXTRACT` - extrae componentes de una fecha (año, mes, día, hora).

### Vistas (Views)
- Consulta preestablecida que extrae datos de una o varias tablas.
- Se comporta como una tabla virtual.
- Ventajas: **mayor seguridad**, **simplificación y ocultamiento de la complejidad** de las consultas.
- `CREATE VIEW nombre_vista AS SELECT ...`

### Disparadores (Triggers)
- Código que se ejecuta **automáticamente** ante eventos como INSERT, UPDATE o DELETE sobre una tabla.
- Pueden ser `BEFORE` o `AFTER` (antes o después de la operación).
- Se utilizan para mantener la integridad referencial, auditoría, reglas de negocio.

## 5. Administración de Bases de Datos

### Índices
- Estructura de datos que mejora la **velocidad de acceso** a los datos (búsquedas más rápidas).
- **Tipos**: índices primario (sobre PK), secundario (sobre otras columnas), compuesto (varias columnas), único (no duplicados).
- Desventaja: ocupan espacio adicional y ralentizan escrituras (INSERT/UPDATE/DELETE).

### Transacciones
- Secuencia de operaciones que se ejecutan como una **unidad indivisible** (todo o nada).
- **Propiedades ACID**:
  - **Atomicity**: se ejecuta completa o no se ejecuta.
  - **Consistency**: la BD pasa de un estado consistente a otro.
  - **Isolation**: las transacciones concurrentes no interfieren entre sí.
  - **Durability**: los cambios persisten ante fallos.
- Control: `BEGIN TRANSACTION`, `COMMIT`, `ROLLBACK`, `SAVEPOINT`.

### Optimizador de Consultas (Query Optimizer)
- Componente del SGBD que evalúa distintas estrategias de ejecución para obtener el resultado de una sentencia de la manera más eficiente.
- Decide qué índices usar, orden de JOINs, método de acceso.

### Ciclo de vida del diseño de una BD
1. **Diseño conceptual**: modelo E/R independiente del SGBD.
2. **Diseño lógico**: transformación del modelo E/R al modelo relacional (tablas, claves, normalización).
3. **Diseño físico**: implementación del diseño lógico en un SGBD específico. Se decide qué SGBD se va a utilizar. Describe la implementación de la BD en memoria secundaria (índices, particionado, optimización).

## 6. Bases de Datos NoSQL

### Concepto
- Bases de datos NoSQL ("Not Only SQL"): sistemas de almacenamiento que no siguen el modelo relacional.
- Surgen para manejar grandes volúmenes de datos, escalabilidad horizontal, esquemas flexibles.

### Teorema CAP (Brewer)
- En un sistema distribuido, no se pueden garantizar simultáneamente las tres propiedades:
  - **Consistency** (consistencia): todos los nodos ven los mismos datos.
  - **Availability** (disponibilidad): el sistema siempre responde.
  - **Partition tolerance** (tolerancia a particiones): el sistema sigue funcionando aunque haya nodos incomunicados.
- Ante una partición de red, el sistema debe elegir entre consistencia o disponibilidad.

### Tipos de bases de datos NoSQL
| Tipo | Descripción | Ejemplos |
|---|---|---|
| **Clave-Valor** | Almacenan pares clave-valor | **Redis**, DynamoDB, Riak |
| **Documental** | Almacenan documentos (JSON, BSON, XML) | **MongoDB** (usa **BSON**), CouchDB |
| **Orientadas a columnas** | Almacenan en columnas en lugar de filas | Cassandra, HBase |
| **Grafos** | Almacenan nodos y relaciones | Neo4j, OrientDB |

### Características de MongoDB
- Base de datos **documental** NoSQL.
- Usa **BSON** (Binary JSON) como formato de almacenamiento.
- Escalable, sin esquema fijo.

### Características de Redis
- Base de datos **clave-valor** NoSQL.
- En memoria, rápida, soporta estructuras como listas, conjuntos, hashes.
- Usado para cachés, sesiones, colas.

## 7. Bases de Datos Orientadas a Objetos (OODBMS)

### Concepto
- SGBD orientado a objetos: permite la persistencia transparente de objetos complejos, encapsulando estado y comportamiento (frente a las tablas planas del modelo relacional).

### Ejemplos
- **GemStone/S**, **Matisse**, ObjectDB, db4o.
- Otras opciones como Cézanne, Picasso o Rembrandt **no** son OODBMS (son nombres de artistas).

### Lenguaje OQL (Object Query Language)
- Lenguaje de **consulta de datos** en BD orientadas a objetos.
- Similar a SQL pero para objetos.

## 8. SGBD Relacionales más comunes

| Nombre | Tipo | Característica |
|---|---|---|
| **Oracle** | RDBMS | Propietario, robusto, enterprise |
| **MySQL** | RDBMS | Código abierto, popular en web |
| **PostgreSQL** | ORDBMS | Código abierto, objeto-relacional |
| **SQL Server** | RDBMS | Microsoft, enterprise |
| **MariaDB** | RDBMS | Fork de MySQL, open source |
| **SQLite** | RDBMS | Ligero, embebido, sin servidor |
