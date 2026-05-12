---

---
# Django Database Commands Cheatsheet

## Inicialización

```bash
django-admin startproject nombre_proyecto # Crea nuevo proyecto
python manage.py startapp nombre_app # Crea nueva app dentro del proyecto
```

## Migraciones (Base de datos)

```bash
python manage.py makemigrations # Crea archivos de migración (detecta cambios en models.py)
python manage.py migrate # Ejecuta migraciones en la BD (crea/modifica tablas)
python manage.py sqlmigrate app_name 0001 # Muestra el SQL que se ejecutará (sin ejecutarlo)
python manage.py showmigrations # Lista migraciones aplicadas/pendientes
```

## Verificación

```bash
python manage.py check # Verifica problemas en el proyecto (modelos, etc.)
```

## Por qué son necesarios:

- makemigrations: Traduce tus modelos Python a instrucciones para la BD
- migrate: Aplica físicamente los cambios en la BD (crea tablas, columnas)
- sqlmigrate: Útil para depurar, ver exactamente qué SQL generará Django
- check: Previene errores antes de migrar (como el max_length en IntegerField que viste)
