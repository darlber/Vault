from django.http import HttpResponse
from django.shortcuts import render
from django.core.mail import send_mail
from baseDatos import settings
from gestionPedidos.models import Articulos


# Create your views here.


def busqueda_productos(request):
    return render(request, "busqueda_productos.html")


def buscar(request):
    producto = request.GET["prd"]
    if producto:
        if len(producto) > 20:
            mensaje = "Too long bro"
        else:
            # icontains es como hacer un select * from articulos where nombre like '%producto%'
            articulos = Articulos.objects.filter(nombre__icontains=producto)
            # mensaje = "Articulado buscado %r" % request.GET["prd"]
        return render(
            request,
            "resultados_busqueda.html",
            {"articulos": articulos, "query": producto},
        )
    else:
        mensaje = "No has introducido ningun articulo"
    return HttpResponse(mensaje)

def contacto(request):
    if request.method == "POST":
        subject=request.POST["asunto"]
        message=request.POST["mensaje"]
        email_from=settings.EMAIL_HOST_USER
        recipient_list=["q4y0x@example.com"]
        send_mail(subject, message, email_from, recipient_list)
        return HttpResponse("Gracias por tu mensaje")
    return render(request, "contacto.html")