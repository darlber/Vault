# Técnicas y estándares. Modelo-Vista-Controlador
El MVC divide una aplicación en tres componentes:
- Los datos de la aplicación (**modelo**).
- La interfaz del usuario (**vista**).
- El **controlador**, el cual define la forma en que la interfaz reacciona a la entrada del usuario.

# Especificaciones técnicas para el desarrollo de componentes
Odoo utiliza los protocolos XML-RPC o Net-RPC para comunicación entre cliente y servidor.
En el caso de XML-RPC, la función llamada, sus argumentos y el resultado se envían por HTTP y son codificadas usando XML.
ODOO funciona sobre un marco de trabajo llamado OpenObject. Este framework permite el desarrollo rápido de aplicaciones (RAD), siendo sus principales elementos los siguientes:
- ORM: mapeo de bases de datos relacionales a objetos Python.
- Arquitectura MVC (Modelo Vista Controlador).
- Diseñador de informes.
- Herramientas de Business Intelligence y cubos multidimensionales.
- Cliente web.

# Especificaciones funcionales para el desarrollo de componentes
