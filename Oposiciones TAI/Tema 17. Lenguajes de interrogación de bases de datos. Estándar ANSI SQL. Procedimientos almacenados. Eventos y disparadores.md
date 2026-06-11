> Lenguajes de interrogación de bases de datos. Estándar ANSI SQL. Procedimientos almacenados. Eventos y disparadores.

## 1. Lenguajes de Interrogación de Bases de Datos

### SQL como lenguaje de interrogación
- **SQL** (Structured Query Language): lenguaje estándar para consultar y manipular bases de datos relacionales.
- Es un **lenguaje declarativo**: describes *qué* datos quieres, no *cómo* obtenerlos.
- Se clasifica como **DML** (Data Manipulation Language) el comando **SELECT** (Flou: SELECT es DML).

### Clasificación de comandos SQL
- **DDL** (Data Definition Language): CREATE, ALTER, DROP, TRUNCATE.
- **DML** (Data Manipulation Language): SELECT, INSERT, UPDATE, DELETE.
- **DCL** (Data Control Language): GRANT, REVOKE.
- **TCL** (Transaction Control Language): COMMIT, ROLLBACK, SAVEPOINT.

## 2. Estándar ANSI SQL

### ISO/IEC 9075
- El estándar que define SQL es **ISO/IEC 9075**.
- También conocido como ANSI SQL.
- Define la sintaxis y semántica del lenguaje SQL de forma estándar e independiente del fabricante.
- Versiones: SQL-86, SQL-89, SQL-92, SQL:1999, SQL:2003, SQL:2008, SQL:2011, SQL:2016, SQL:2019, SQL:2023.

## 3. Procedimientos Almacenados (Stored Procedures)

### Concepto
- **Procedimiento almacenado**: conjunto de sentencias SQL que se almacenan en el servidor de base de datos y se ejecutan como una unidad.
- Se crean con `CREATE PROCEDURE`.
- Se invocan con la sentencia `CALL` (ej: `CALL Alta();`).
- **NO** se pueden incluir en una sentencia `SELECT` (eso es para funciones).

### Ventajas
- **Simplifican tareas cotidianas**: encapsulan lógica compleja.
- **Reducen la carga de trabajo del servidor**: menos compilación.
- **Mejoran el rendimiento**: menos tráfico red-cliente (se envía solo la llamada, no todo el código).
- **Proporcionan mayor seguridad**: se conceden permisos sobre el procedimiento, no sobre las tablas subyacentes.
- **Útiles con múltiples aplicaciones cliente**: misma operación desde distintos lenguajes.

### Sintaxis básica
```sql
CREATE PROCEDURE nombre_procedimiento (parametros)
BEGIN
    -- sentencias SQL
END;

CALL nombre_procedimiento();
```

### Procedimientos vs Funciones
| Aspecto | Procedimiento | Función |
|---|---|---|
| Devuelve valor | **No** directamente | **Sí** (siempre devuelve un valor) |
| Uso en SELECT | No (se llama con CALL) | Sí (se invoca dentro de SELECT) |
| Parámetros | IN, OUT, INOUT | Solo IN (en MySQL) |
| Puede contener SELECT de listado | Sí | **No** |
| Modificar datos | Sí | Generalmente no |

- Las funciones **siempre devuelven un valor**.
- Las funciones en MySQL **solo usan parámetros de entrada** (IN).
- Las funciones **no pueden incluir una SELECT que proporcione un listado de datos**.

## 4. Disparadores (Triggers)

### Concepto
- **Trigger (disparador)**: objeto con nombre en una BD que se asocia con una tabla y se activa automáticamente cuando ocurre un evento en particular para esa tabla.
- Eventos que activan un trigger: **INSERT, UPDATE, DELETE**.

### Sintaxis (ANSI SQL)
```sql
CREATE TRIGGER nombre_trigger
BEFORE | AFTER UPDATE OF columna ON tabla
[FOR EACH ROW]
BEGIN
    -- código
END;
```
- Forma válida ANSI: `CREATE TRIGGER nombre BEFORE UPDATE OF columna ON tabla`.

### Características
- Se activan **antes (BEFORE)** o **después (AFTER)** de la sentencia que lo activa.
- Eventos: INSERT, UPDATE, DELETE.
- **Error durante ejecución**: un error SÍ cancela automáticamente la operación que lo disparó.
- Puede decidirse que se activen antes o después de un evento determinado.
- Son procedimientos que se ejecutan cada vez que ocurre un evento determinado sobre una tabla.
- **No pueden incluir sentencias de control de transacciones** (COMMIT, ROLLBACK).
- **Para cada tabla puede haber múltiples triggers** (no solo uno).

### OLD y NEW
- Permiten acceder a las columnas de los registros afectados por el disparador.
- **NEW**: valor después de la modificación (INSERT, UPDATE).
- **OLD**: valor antes de la modificación (UPDATE, DELETE).
- En **DELETE** solo se puede usar **OLD** (no hay NEW fila).
- En **INSERT** solo se puede usar **NEW** (no hay OLD fila).

### FOR EACH ROW vs FOR EACH STATEMENT
- `FOR EACH ROW`: el trigger se lanza por cada fila afectada.
- Sin FOR EACH ROW (o FOR EACH STATEMENT): se lanza una vez por sentencia.

### Uso típico
- Validar datos automáticamente (ej: comprobar stock al insertar un pedido).
- Mantener integridad referencial.
- Auditoría de cambios.
- Automatizar operaciones de mantenimiento.

### Ventajas de los triggers
- Proporcionan una forma adicional de validar la integridad de los datos.
- Son útiles para verificar las modificaciones de los datos.
- Permiten automatizar ciertas operaciones de mantenimiento de una BD.

### Eliminar un trigger
- Se emplea la sentencia `DROP TRIGGER nombre_trigger`.

## 5. Eventos (Event Scheduler)

### Concepto
- **Evento**: tarea programada que se ejecuta automáticamente en el servidor de BD según un calendario (similar a cron en Linux).
- Se crean con `CREATE EVENT`.
- Se usan para tareas periódicas: mantenimiento, backups, limpieza de datos.

## 6. Cursores

### Concepto
- **Cursor**: mecanismo que permite recorrer fila por fila el resultado de una consulta SQL dentro de un procedimiento almacenado o trigger.
- Operaciones: DECLARE, OPEN, FETCH, CLOSE.
- Útiles cuando se necesita procesar cada fila individualmente.

## 7. Transacciones SQL (TCL)

### Concepto
- **Transacción**: secuencia de operaciones ejecutadas como una unidad indivisible (todo o nada).
- Propiedades **ACID**: Atomicity, Consistency, Isolation, Durability.

### Comandos TCL
- **COMMIT**: confirma los cambios de la transacción actual.
- **ROLLBACK**: deshace los cambios desde el inicio de la transacción o hasta un SAVEPOINT.
- **SAVEPOINT**: establece un punto de salvaguarda dentro de una transacción para poder deshacer parcialmente.
```sql
SAVEPOINT punto1;
ROLLBACK TO SAVEPOINT punto1;
```
