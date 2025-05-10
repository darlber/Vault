En producción, lo más común es usar paquetes Debian, Docker o Odoo.sh, reservando Git sólo para entornos de desarrollo o despliegues muy personalizados.

1. Backups
```sh
mkdir -p ~/backups
#la -p de parents sirve para crear directorios intermedios si no existen. Ejemplo, ~/backups/backups2/backups3sub
```

```sh
sudo -u postgres pg_dump Odoo > ~/backups/Odoo_backup.sql
#Con este comando se exporta toda la base de datos “Odoo” y la guarda en un archivo SQL, preservando la integridad de los datos ante cualquier imprevisto. 
```
2.  Verificar
```sh
ls -lh ~/backups/Odoo_backup.sql
```
3. Actualización de dependencias antes de cambiar el código

```sh
#el guion sirve para que se simule inicio de sesión completo, si hacemos "su odoo" mantendrá las path del usuario actual
su - odoo
#entorno virtual
source /opt/odoo/odoo-venv/bin/activate
#por si acaso:
pip3 install --upgrade -r /opt/odoo/requirements.txt
```
4. Vamos a la carpeta donde tengamos odoo
```sh
cd /opt/odoo
```
5. Pull
```sh
git pull origin 17.0
```
6. Actualizar dependencias por si han cambiado
```sh
pip3 install --upgrade -r /opt/odoo/requirements.txt
```
7. Reiniciar y verificar
```sh
exit
#salimos de su - odoo
sudo systemctl restart odoo-server
sudo systemctl status odoo-server
```
---
# Variante usando paquetes Debian
## Paquetes Debian
Odoo proporciona repositorios “nightly” y estables para Debian y derivadas (Ubuntu), de modo que se puede instalar y actualizar con el gestor de paquetes tradicional (método adecuado si la instalación se ha realizado con el tutorial de la web del equipo de Odoo):
```sh
sudo apt-get update
sudo apt-get install odoo
```

## Imágenes Docker
```sh
docker pull odoo:17.0
docker-compose up -d
```
## Pip
```sh
pip install --upgrade odoo
```


# Actualización de PostgreSQL
```sh
#actualización peque
sudo apt update
sudo apt upgrade postgresql
#actualización mayor
sudo pg_dropcluster --stop 16 main # elimina cluster 16
si existe
sudo pg_upgradecluster -m upgrade 15 main
# via dump/restore
sudo -u postgres pg_dumpall > ~/all_dbs.sql
sudo apt install postgresql-16 postgresql-contrib
sudo systemctl stop postgresql
sudo -u postgres pg_ctlcluster 15 main stop
sudo -u postgres pg_ctlcluster 16 main start
sudo -u postgres psql -f ~/all_dbs.sql
```