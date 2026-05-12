---

---
# Cheatsheet Básico de Django

Este documento resume los comandos y conceptos fundamentales para
empezar con Django, basado en los primeros 10 tutoriales del curso de
Píldoras Informáticas.

---

## 1. Instalación y Configuración Inicial

### Instalación

```plain text
pip install django
```

### Crear un Proyecto

```plain text
django-admin startproject nombre_del_proyecto
```

Esto crea una carpeta con la siguiente estructura:

- **manage.py**: Utilidad de línea de comandos para interactuar con el
proyecto.
- **nombre_del_proyecto/**
    - `__init__.py`: Indica que es un paquete.
    - `settings.py`: Configuración del proyecto (BBDD, apps, etc.).
    - `urls.py`: Declaración de las URLs del proyecto.
    - `asgi.py / wsgi.py`: Puntos de entrada para servidores web
compatibles.

### Crear una Aplicación

```plain text
python manage.py startapp nombre_de_la_app
```

### Ejecutar el Servidor de Desarrollo

```plain text
python manage.py runserver
```

Por defecto:

```plain text
http://127.0.0.1:8000/
```

Cambiar puerto:

```plain text
python manage.py runserver 8080
```

---

## 2. Configuración de Archivos Clave

### settings.py

```python
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent

SECRET_KEY = 'django-insecure-...'

DEBUG = True

ALLOWED_HOSTS = []

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
]

MIDDLEWARE = [...]

ROOT_URLCONF = 'nombre_del_proyecto.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': ['C:/Users/tu_usuario/ruta/a/tus/plantillas'],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [...],
        },
    },
]

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
}

STATIC_URL = 'static/'
```

### urls.py

```python
from django.contrib import admin
from django.urls import path
from nombre_de_la_app import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('saludo/', views.saludo, name="nombre_para_la_url"),
    path('user/<str:nombre>/<int:edad>', views.mostrar_usuario),
]
```

### views.py

```python
from django.http import HttpResponse
from django.shortcuts import render
from django.template import loader

def saludo(request):
    return HttpResponse("Hola, esta es mi primera página!")

def mostrar_usuario(request, nombre, edad):
    return HttpResponse(f"Mi nombre es{nombre} y tengo{edad} años.")

def plantilla_simple(request):
    return render(request, 'mi_plantilla.html')

def plantilla_con_datos(request):
    persona = {"nombre": "Juan", "edad": 30}
    contexto = {
        "nombre_persona": persona["nombre"],
        "edad_persona": persona["edad"]
    }
    return render(request, 'plantilla_con_datos.html', contexto)

def usando_loader(request):
    persona = {"nombre": "Ana", "edad": 25}
    contexto = {"nombre_persona": persona["nombre"]}
    plantilla = loader.get_template('mi_plantilla.html')
    documento = plantilla.render(contexto)
    return HttpResponse(documento)
```

---

## 3. Plantillas (Templates)

### Sintaxis Básica

- Variables: `{{ variable }}`
- Etiquetas: `{% etiqueta %}`
- Filtros: `{{ variable|filtro }}`

Ejemplos:

```plain text
{{ texto|upper }}
{{ lista|length }}
```

### Ejemplo de Plantilla

```html
<!DOCTYPE html>
<html>
<head>
    <title>Mi Plantilla</title>
</head>
<body>

<h1>Hola, {{ nombre_persona|upper }}!</h1>
<p>Tienes {{ edad_persona }} años.</p>

{# Comentario de una línea #}

{% comment %}
Comentario
de varias
líneas
{% endcomment %}

</body>
</html>
```

### Bucles

```html
<ul>
{% for item in lista_de_items %}
    <li>{{ item }}</li>
{% empty %}
    <li>La lista está vacía.</li>
{% endfor %}
</ul>
```

### Condicionales

```html
{% if edad_persona >= 18 %}
<p>Eres mayor de edad.</p>
{% elif edad_persona > 0 %}
<p>Eres menor de edad.</p>
{% else %}
<p>Edad no válida.</p>
{% endif %}
```

### Include

```html
<nav>
<ul>
<li><a href="{% url 'nombre_para_la_url' %}">Inicio</a></li>
<li><a href="#">Contacto</a></li>
</ul>
</nav>
```

Uso:

```html
{% include "plantilla_incrustada.html" %}
```

### Herencia de Plantillas

**base.html**

```html
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>{% block title %}Título por Defecto{% endblock %}</title>
</head>

<body>

<header>Cabecera</header>

<main>
{% block content %}
{% endblock %}
</main>

<footer>Pie</footer>

</body>
</html>
```

**hija.html**

```plain text
{% extends "base.html" %}

{% block title %}Título de la Página Hija{% endblock %}

{% block content %}
<p>Contenido específico de la página hija.</p>
{% endblock %}
```

---

## 4. Flujo de Trabajo

1. Crear proyecto

```plain text
django-admin startproject mysite
```

2. Crear app

```plain text
python manage.py startapp miapp
```

3. Añadir la app a `INSTALLED_APPS`.
4. Definir URL en `urls.py`.
5. Crear vista en `views.py`.
6. Crear plantilla `.html`.
7. Ejecutar servidor

```plain text
python manage.py runserver
```