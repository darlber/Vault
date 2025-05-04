```sql
CREATE OR REPLACE PROCEDURE get_cliente_info(cliente_id INTEGER)
-- Parameters: cliente_id: ID del cliente
LANGUAGE plpgsql
AS $$
BEGIN
    RAISE NOTICE 'Nombre: %, Provincia: %, País: %',
    -- Selecciona el nombre del cliente
    (SELECT name FROM res_partner WHERE id = cliente_id),
    -- Selecciona el nombre de la provincia del cliente
    (SELECT s.name
    FROM res_country_state s
    JOIN res_partner p ON p.state_id = s.id
    WHERE p.id = cliente_id),
    -- Selecciona el nombre del país del cliente
    (SELECT c.name
    FROM res_country c
    JOIN res_partner p ON p.country_id = c.id
    WHERE p.id = cliente_id);
END;
$$;
```

# Trigger: 

## Tabla: 

```sql
CREATE TABLE milog (
    user_id INTEGER,
    cliente_id INTEGER,
    create_date TIMESTAMP
);
```

## Función: 

```sql
CREATE OR REPLACE FUNCTION log_nuevo_cliente()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO milog (user_id, cliente_id, create_date)
    VALUES (NEW.create_uid, NEW.id, NEW.create_date);
    RETURN NEW;
END;
$$;
```

## Trigger:

```sql
CREATE TRIGGER trigger_log_nuevo_cliente
AFTER INSERT ON res_partner
FOR EACH ROW
EXECUTE FUNCTION log_nuevo_cliente();
```

### Prueba: 

```sql
INSERT INTO res_partner (name, create_uid, create_date, autopost_bills)
VALUES ('Nuevo Cliente', 2, NOW(), false);
```

> Name: nombre del usuario> 
> Create_uid: id del usuario que está creando la fila dentro del registro
> Create_date: momento de creación> 
> Autopost_bills: campo booleano not null para la creación automática de facturas. Falso por defecto.

