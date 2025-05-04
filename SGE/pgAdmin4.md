Primero instalamos curl.
`sudo apt install curl`	
```
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
```

Create the repository configuration file:
```
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_rele ase -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
```

Install pgAdmin
Install for both desktop and web modes:
	`sudo apt install pgadmin4`

Install for desktop mode only:
	`sudo apt install pgadmin4-desktop`

Install for web mode only:
	`sudo apt install pgadmin4-web`

Configure the webserver, if you installed pgadmin4-web:
	`sudo /usr/pgadmin4/bin/setup-web.sh`

Probamos el acceso a pgAdmin4 desde la Web con http://localhost/pgadmin4

Posible configuración:
```
	Name: Odoo
	Host name/address: localhost
	Port: 5432
	Maintenance database: postgres
	Username: usuario
	Password: ***********
	Save password?: Yes
	```