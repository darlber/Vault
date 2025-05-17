Primero instalamos curl.
```sh
sudo apt install curl	
```

```bash
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
```

Create the repository configuration file:
```bash
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_rele ase -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
```

Install pgAdmin
Install for both desktop and web modes:
```sh
sudo apt install pgadmin4
```

Install for desktop mode only:
```sh
sudo apt install pgadmin4-desktop
```

Install for web mode only:
```sh
sudo apt install pgadmin4-web
```

Configure the webserver, if you installed pgadmin4-web:
```sh
sudo /usr/pgadmin4/bin/setup-web.sh
```

Probamos el acceso a pgAdmin4 desde la Web con http://localhost/pgadmin4

Posible configuración:

	Name: Odoo
	Host name/address: localhost
	Port: 5432
	Maintenance database: postgres
	Username: usuario
	Password: ***********
	Save password?: Yes
## Ejemplos en Odoo:
```sql
--Ejemplo 1: obtener todos los clientes activos
SELECT id, name, email
FROM res_partner
WHERE customer = true AND active = true
ORDER BY name ASC;
--Ejemplo 2: productos más caros
SELECT name, list_price
FROM product_template
ORDER BY list_price DESC
LIMIT 10;
--Ejemplo 3: número total de contactos por país
SELECT country_id, COUNT(*) AS total_contactos
FROM res_partner
GROUP BY country_id
ORDER BY total_contactos DESC;
```
## Vistas en Base de Datos:
Una vista es como una tabla virtual (volátil, creada únicamente en tiempo de ejecución) basada en una consulta SQL. No guarda datos, pero permite hacer consultas como si fuera una tabla.

Por ejemplo, podemos visualizar una vista con nombres y correos electrónicos de todos los clientes que estén en situación activa:
```sql
CREATE OR REPLACE VIEW vista_clientes_activos AS
SELECT name, email
FROM res_partner
WHERE customer = true AND active = true;
--Para consultar la vista creada, basta con ejecutar una consulta de selección:
SELECT * FROM vista_clientes_activos;
```
