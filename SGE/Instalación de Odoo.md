En máquina Virtual, se propone:
1. 8 GB RAM
2. 1-2 Núcleos
3. 64Mb de memoria de vídeo mínima
4. Red de tipo puente. Así la MV tendrá otra IP
5. 25GB almacenamiento flexible
6. Carpeta compartida
7. VBoxGuestAdditions

### Paquetes a instalar

PostgreSQL: SGBD propio de Odoo
Odoo 17
#### PAQUETES SECUNDARIOS

**[[pgAdmin4]]**. Paquete que permite una gestión visual del SGBD
**[[SSH]]**. acceso remoto
**Wkhmtltopdf**. Este paquete permite la generación de informes en PDF. En
función de la forma de instalar Odoo podría estar disponible desde el principio,
pero se debe de comprobar.
**Hosts**. Windows, la personalización de Hosts nos permitirá utilizar un nombre de la máquina virtual para acceder por Web sin usar la IP, de forma más natural.

1. Primero siempre actualizar
`sudo apt update && sudo apt upgrade`

2. Instalamos PostgreSQL:

`sudo apt install postgresql -y`
3. Usuario para PostgreSQL

`sudo -u postgres createuser odoo -U postgres -dP`

> [!NOTE] sudo -u 
> -u le dice al comando que ejecute como el usuario "postgres". Comando que ofrece sudo
> -U significa lo mismo, pero dentro de los comandos que ofrece postgreSQL
> Por tanto, ejecutamos comando createuser como Postgres, y ejecutamos comando para otorgar -d (database) -P (password) como postgres

4. Instalamos Odoo

Obtenemos dependencias
```

wget -q -O - https://nightly.odoo.com/odoo.key | sudo gpg --dearmor -o /usr/share/keyrings/odoo-archive-keyring.gpg
 echo 'deb [signed-by=/usr/share/keyrings/odoo-archive-keyring.gpg] https://nightly.odoo.com/17.0/nightly/deb/ ./' | sudo tee/etc/apt/sources.list.d/odoo.list
```
`sudo apt-get update`
`sudo apt-get install odoo`

---
Otra opción para instalar resulta:
Dependencias:
``sudo apt-get install git python3 python3-pip build-essential wget python3-dev python3-venv python3-wheel libxslt-dev libzip-dev libldap2-dev libsasl2-dev python3- setuptools node-less libjpeg-dev gdebi -y

``sudo apt-get install nodejs npm -y
``sudo npm install -g rtlcss

``sudo apt-get install git
``git clone https://github.com/odoo/odoo --depth 1 --branch 17.0 odoo

--- 

5. Upgrade
``sudo apt-get upgrade

6. Comprobación de status de ambos servicios

``sudo systemctl status odoo
``sudo systemctl status postgresql

7.  Archivos de configuración
Paramos los dos servicios
``sudo systemctl stop odoo
``sudo systemctl stop postgresql

``sudo nano /etc/postgresql/xx/main/postgresql.conf
descomentamos 
``listen_addresses = ‘*’

``sudo nano /etc/postgresql/xx/main/pg_hba.conf
Añadimos en IPV4
host    all             odoo             0.0.0.0/0               md5 / scram-sha-256
type   database   user               direccion             encriptado

``sudo nano /etc/odoo-server.conf


`admin_passwd = {user_odoo_password}`
`db_host = localhost`
`db_port = False`
`db_user = odoo`
`db_password = password`
`addons_path = /opt/odoo/odoo/addons,/opt/odoo/odoo/custom-addons`
`default_productivity_apps = True`
`xmlrpc_port = 8069`

8.  Reload de servicios

`` sudo systemctl enable odoo
``sudo systemctl enable postgresql
``sudo systemctl start odoo
``sudo systemctl start postgresql


