from django.http import HttpResponse
from django.template import Template, Context
from django.template import loader
from django.shortcuts import render


def saludo(request):
    persona = Persona("Juan", 20)
    # comentamos esto para pasar a usar el loader
    """
    doc_externo=open("C:/Users/darlb/Desktop/MusiChaos/Djangotutorial/mysite/plantillas/plantilla.html")
    plt=Template(doc_externo.read())
     doc_externo.close()
    documento=plt.render(ctx)
     cargamos en SETTINGS.PY
     """
    # si importamos el metodo render de shortcuts, todo esto sobra
    """
    dict_contexto={"nombre_persona":persona.name, "edad_persona":persona.age}
    documento = loader.get_template("plantilla.html").render(dict_contexto)
    """
    #return HttpResponse(documento)
    return render(request, "plantilla.html", {"nombre_persona":persona.name, "edad_persona":persona.age})
def saludoExtends(request):
    return render(request, "extendsFromBase.html")

def response(request):
    return HttpResponse("holas chavale")


def multiple_response(request, name, age):
    return HttpResponse(f"Mi nombre es {name} y tengo {age} años")


class Persona(object):
    def __init__(self, name, age):
        self.name = name
        self.age = age
