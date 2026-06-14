#flashcards/lenguajessql17

# Flashcards - Tema 17: Lenguajes SQL, Procedimientos Almacenados, Disparadores

## SQL como lenguaje de interrogación

SELECT es un comando::DML (Data Manipulation Language)

Clasificación de comandos SQL::DDL (CREATE/ALTER/DROP), DML (SELECT/INSERT/UPDATE/DELETE), DCL (GRANT/REVOKE), TCL (COMMIT/ROLLBACK/SAVEPOINT)

## Estándar ANSI SQL

Estándar que define SQL::ISO/IEC 9075 (ANSI SQL)

## Procedimientos Almacenados

Procedimiento almacenado::Conjunto de sentencias SQL almacenadas en el servidor; se ejecutan como una unidad

Sentencia para crear procedimiento::CREATE PROCEDURE

Sentencia para invocar procedimiento::CALL nombre_procedimiento()

¿Un procedimiento se puede incluir en SELECT?::No; los procedimientos se invocan con CALL, las funciones sí con SELECT

Ventajas de procedimientos almacenados::Simplifican tareas, reducen carga servidor, mejoran rendimiento, proporcionan seguridad, útiles con múltiples clientes

## Procedimientos vs Funciones en SQL

Los procedimientos devuelven valor::No directamente

Las funciones devuelven valor::Sí, siempre

Parámetros en funciones (MySQL)::Solo de entrada (IN)

¿Las funciones pueden incluir SELECT con listado?::No

## Disparadores (Triggers)

Trigger (disparador)::Objeto asociado a una tabla que se activa automáticamente ante un evento INSERT, UPDATE o DELETE

Eventos que activan un trigger::INSERT, UPDATE, DELETE

Sintaxis ANSI CREATE TRIGGER::CREATE TRIGGER nombre BEFORE | AFTER evento ON tabla

Un error en un trigger ¿cancela la operación?::Sí, la cancela automáticamente

¿Puede haber múltiples triggers por tabla?::Sí

¿Los triggers pueden incluir COMMIT/ROLLBACK?::No, no pueden incluir control de transacciones

OLD y NEW en triggers::Acceden a columnas afectadas: NEW (nuevo valor), OLD (valor anterior)

En DELETE, ¿se puede usar NEW?::No, en DELETE solo se puede usar OLD

En INSERT, ¿se puede usar OLD?::No, en INSERT solo se puede usar NEW

BEFORE vs AFTER::BEFORE: antes de la operación; AFTER: después

Ventajas de los triggers::Validar integridad, verificar modificaciones, automatizar mantenimiento

Eliminar un trigger::DROP TRIGGER nombre_trigger

## Transacciones (TCL)

COMMIT::Confirma los cambios de la transacción actual

ROLLBACK::Deshace los cambios desde el inicio de la transacción o hasta un SAVEPOINT

SAVEPOINT::Punto de salvaguarda dentro de una transacción para deshacer parcialmente

Propiedades ACID::Atomicity, Consistency, Isolation, Durability
