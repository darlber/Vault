En máquina Virtual, se propone:
1. 8 GB RAM
2. 1-2 Núcleos
3. 64Mb de memoria de vídeo mínima
4. Red de tipo puente. Así la MV tendrá otra IP
5. 25GB almacenamiento flexible
6. Carpeta compartida
7. VBoxGuestAdditions

### Paquetes a instalar
- PostgreSQL: SGBD propio de Odoo
- Odoo 17
#### Paquetes Adicionales
- **[[pgAdmin4]]**. Paquete que permite una gestión visual del SGBD
- **[[SSH]]**. acceso remoto
- **Wkhmtltopdf**. Este paquete permite la generación de informes en PDF. En función de la forma de instalar Odoo podría estar disponible desde el principio, pero se debe de comprobar.
- **Hosts**. Windows, la personalización de Hosts nos permitirá utilizar un nombre de la máquina virtual para acceder por Web sin usar la IP, de forma más natural.

## Instalación siguiendo documentación de Odoo

1. Actualizar
```bash
sudo apt update && sudo apt upgrade
```
2.  PostgreSQL:
```bash
sudo apt install postgresql -y
```
3. Usuario para PostgreSQL
```sh
sudo -u postgres createuser odoo -U postgres -dP
```

> [!NOTE] sudo -u 
> -u le dice al comando que ejecute como el usuario "postgres". Comando que ofrece sudo
> -U significa lo mismo, pero dentro de los comandos que ofrece postgreSQL
> Por tanto, ejecutamos comando createuser como Postgres, y ejecutamos comando para otorgar -d (database) -P (password) como postgres

4. Instalamos Odoo
Obtenemos dependencias y repositorio
```bash
wget -q -O - https://nightly.odoo.com/odoo.key | sudo gpg --dearmor -o /usr/share/keyrings/odoo-archive-keyring.gpg
 echo 'deb [signed-by=/usr/share/keyrings/odoo-archive-keyring.gpg] https://nightly.odoo.com/17.0/nightly/deb/ ./' | sudo tee/etc/apt/sources.list.d/odoo.list
```

```sh
sudo apt-get update
sudo apt-get install odoo
```
## Variante
1. Dependencias python
```bash
sudo apt update && sudo apt install -y python3-pip build-essential wget git python3-dev libxml2-dev libxslt1-dev libevent-dev libjpeg-dev libpq-dev libz-dev curl fonts-dejavu libldap2-dev libsasl2-dev libtiff5-dev libwebp-dev libopenjp2-7-dev libyaml-dev xz-utils libblas-dev libatlas-base-dev python3-venv
```
2. Creación usuario y directorio
```bash
sudo adduser --home=/opt/odoo odoo
```
3. PostgreSQL
```bash
sudo apt install postgresql
```
4. Usuario
```bash
sudo -u postgres createuser odoo -U postgres -dP
```
5. Cambiamos usuario
```sh
su - odoo
```
6. Git clone
```sh
git clone https://github.com/odoo/odoo --depth 1 --branch 17.0 odoo
```
7. Entorno virtual
```sh
python3 -m venv .odoo-env
source .odoo-env/bin/activate
```
8. Dependencias python
```sh
pip3 install wheel setuptools pip --upgrade
pip3 install -r requirements.txt
```
9. Crear carpeta y desactivar entorno virtual
```sh
mkdir /opt/odoo/odoo/custom-addons
deactivate
exit
```
---
## Configuración
1. Actualización
```sh
sudo apt-get upgrade
```
2. Status
```sh
sudo systemctl status odoo
sudo systemctl status postgresql
```
3.  Archivos de configuración:
- Paramos los dos servicios
```sh
sudo systemctl stop odoo
sudo systemctl stop postgresql
```
Dentro de:
```sh
sudo nano /etc/postgresql/xx/main/postgresql.conf
```
- Descomentamos la siguiente línea
`listen_addresses = ‘*’`

Dentro de:
```sh
sudo nano /etc/postgresql/xx/main/pg_hba.conf
```
- Añadimos en **IPV4**
	
		host    all             odoo             0.0.0.0/0               md5 / scram-sha-256
		type    database        user             direccion               encriptado

Dentro de:
```sh
sudo nano /etc/odoo-server.conf
```

	admin_passwd = {user_odoo_password}
	db_host = localhost
	db_port = False
	db_user = odoo
	db_password = password
	addons_path = /opt/odoo/odoo/addons,/opt/odoo/odoo/custom-addons
	default_productivity_apps = True
	xmlrpc_port = 8069
4. Reload de servicios
```bash
sudo systemctl enable odoo 
sudo systemctl enable postgresql
sudo systemctl start odoo
sudo systemctl start postgresql
```
## Custom usuario
No es necesario asignar el usuario “odoo” al grupo “sudoers”, pero si fuera necesario:

`sudo usermod -aG sudo odoo`

Al consultar el estado del usuario “odoo”, podríamos obtener algo así:

`odoo:x:1001:1001::/home/odoo:/usr/sbin/nologin`

Pero en la instalación de Odoo, la carpeta del paquete se instala en /home/odoo, por lo que deberemos cambiarla (según tu instalación):

`sudo usermod -d /opt/odoo odoo`

Ahora, la consulta del usuario debe mostrar:
`odoo:x:1001:1001::/opt/odoo:/usr/sbin/nologin`

#### Asignación de Shell
Al igual que la asignación del grupo “sudoers”, no es necesario que el usuario “odoo” pueda acceder a la Shell, comprobando el usuario vemos que, el campo final muestra:

`/usr/sbin/nologin`

Ello indica que no puede iniciar sesión. Para agregar “odoo” a /bin/bash (donde se almacenan todos los accesos de Shell de usuarios):

`sudo chsh -s /bin/bash odoo`

Ahora, al consultar la situación del usuario, el campo final debe mostrar la ruta:

`/bin/bash`

Con ello el usuario “odoo” ya no sólo será un usuario del sistema, sino que tendrá todas las características de un usuario al que podremos suplantar para trabajar en su nombre.
