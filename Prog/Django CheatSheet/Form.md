---

---
### Formulario GET (Búsquedas)

- Se usa para búsquedas y consultas
- Los datos viajan en la URL
- No modifica la base de datos

### Template (busqueda_productos.html)

```html
<form action="/buscar" method="get">
  <input type="text" name="prd" id=""/>
  <input type="submit" value="Buscar"/>
</form>
```

### Vista (views.py)

```python
def busqueda_productos(request):
return render(request, "busqueda_productos.html")

def buscar(request):
producto = request.GET["prd"] # Captura el dato del formulario # Procesar la búsqueda...
return render(request, "resultados_busqueda.html", context)
```

---

### Formulario POST (Contacto / Modificaciones)

- Se usa para enviar datos que modifican el sistema
- Los datos viajan en el cuerpo de la petición
- Requiere token CSRF por seguridad

### Template (contacto.html)

```html
<form action="/contacto/" method="post">
  {% csrf_token %}
  <!-- ¡OBLIGATORIO en formularios POST! -->
  <p>Asunto: <input type="text" name="asunto"/></p>
  <p>Mensaje: <textarea name="mensaje" cols="30" rows="10"></textarea></p>
  <input type="submit" value="Enviar"/>
</form>
```

### Vista (views.py)

```python
def contacto(request):
if request.method == "POST":
asunto = request.POST["asunto"]
mensaje = request.POST["mensaje"] # Procesar el formulario...
return HttpResponse("Gracias por tu mensaje")
return render(request, "contacto.html")
```

---

## 2. Captura de datos del formulario

### Método GET

```python
request.GET["nombre_del_campo"] # Lanza error si no existe
request.GET.get("nombre_del_campo", "") # Devuelve "" si no existe
```

### Método POST

```python
request.POST["nombre_del_campo"] # Lanza error si no existe
request.POST.get("nombre_del_campo", "") # Devuelve "" si no existe
```

---

## 3. Consultas a base de datos con modelos

### Importar modelos

```python
from gestionPedidos.models import Articulos
```

### Filtrar con __icontains (LIKE %…%)

```python
articulos = Articulos.objects.filter(nombre\_\_icontains=producto)

# SQL equivalente: SELECT \* FROM articulos WHERE nombre LIKE '%producto%'
```

### Otros filtros útiles

```python
Articulos.objects.filter(precio**gte=50)
Articulos.objects.filter(precio**lte=100)
Articulos.objects.filter(fecha**year=2023)
Articulos.objects.filter(nombre**exact="Camisa")
Articulos.objects.filter(nombre\_\_iexact="camisa")
Articulos.objects.all()
Articulos.objects.get(id=1)
```

### Contar resultados

```python
articulos.count()
len(articulos)
```

---

## 4. Templates para resultados

```html
<p>Resultados de la Búsqueda: {{ articulos|length }} artículos</p>

<ul>
  {% for articulo in articulos %}
  <li>
    {{ articulo.nombre }} - {{ articulo.seccion }} - {{ articulo.precio }}€
  </li>
  {% empty %}
  <li>No se encontraron artículos</li>
  {% endfor %}
</ul>

<p>Buscaste: {{ query }}</p>
```

---

## 5. Envío de emails

### Configuración en settings.py (para Gmail)

```python
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_USE_TLS = True
EMAIL_PORT = 587
EMAIL_HOST_USER = 'tu_email@gmail.com'
EMAIL_HOST_PASSWORD = 'tu_contraseña'
```

### Vista con envío de email

```python
from django.core.mail import send_mail
from django.conf import settings

def contacto(request):
if request.method == "POST":
asunto = request.POST["asunto"]
mensaje = request.POST["mensaje"]
email_destino = ["destinatario@example.com"]

        send_mail(
            asunto,
            mensaje,
            settings.EMAIL_HOST_USER,
            email_destino,
            fail_silently=False
        )
        return HttpResponse("Gracias por tu mensaje")
    return render(request, "contacto.html")
```

---

## 6. Validaciones básicas

```python
def buscar(request):
producto = request.GET.get("prd", "")

    if not producto:
        mensaje = "No has introducido ningún artículo"
        return HttpResponse(mensaje)

    if len(producto) > 20:
        mensaje = "Búsqueda demasiado larga (máx 20 caracteres)"
        return HttpResponse(mensaje)

    articulos = Articulos.objects.filter(nombre__icontains=producto)

    return render(request, "resultados_busqueda.html", {
        "articulos": articulos,
        "query": producto
    })
```

---

## 7. URLs (urls.py)

```python
from django.contrib import admin
from django.urls import path
from gestionPedidos import views

urlpatterns = [
path("admin/", admin.site.urls),
path("busqueda_productos/", views.busqueda_productos),
path("buscar/", views.buscar),
path("contacto/", views.contacto),
]
```

---

## 8. Flujo completo de formulario de búsqueda

1. Usuario accede a /busqueda_productos/ → ve el formulario
2. Rellena y envía → GET a /buscar/?prd=producto
3. Vista buscar() captura request.GET[“prd”]
4. Filtra en BD: Articulos.objects.filter(nombre__icontains=producto)
5. Renderiza resultados_busqueda.html

---

## 9. Flujo completo de formulario de contacto

6. Usuario accede a /contacto/ (GET) → ve el formulario con {% csrf_token %}
7. Rellena y envía → POST a /contacto/
8. Vista contacto() detecta request.method == “POST”
9. Captura datos: request.POST[“asunto”], request.POST[“mensaje”]
10. Envía email con send_mail()
11. Responde con mensaje de confirmación

---

## 10. Errores comunes y soluciones

### Error 403 Forbidden en POST

- Falta {% csrf_token %} en el formulario
- Solución: añadirlo dentro del

### MultiValueDictKeyError

- El campo no existe en request.GET/POST
- Solución: usar .get(“campo”, “valor_por_defecto”)

### No se envía el email

- Verificar configuración EMAIL_* en settings.py
- Con Gmail, activar acceso de aplicaciones o usar contraseña de aplicación

### __icontains no funciona

- Asegurar que el campo existe en el modelo
- Verificar que el modelo está importado correctamente

---

## 11. Tips útiles

### Para depuración

```python
print(request.GET)
print(request.POST)
```

### Para templates

```plain text
{{ articulos|length }}
{% empty %}
```