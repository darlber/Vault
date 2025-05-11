- **Objetivos de seguridad**:  
  - **Confidencialidad**: Los datos solo pueden ser accedidos por entidades autorizadas.
  - **Integridad**: Garantiza que los datos no se alteren durante la transmisión.
  - **Autenticación**: Verifica la identidad del emisor.
  - **No repudio**: Asegura que el emisor no pueda negar haber enviado el mensaje, y que el receptor no pueda negar haberlo recibido.
  - **Autorización**: Asegura que una entidad tenga permiso para realizar una acción.

- **Ejemplo sencillo**:  
  - Antonio envía información a Isabel:  
    - **Integridad**: Información sin alteraciones.
    - **Confidencialidad**: Solo Isabel debe entenderlo.
    - **Autenticación**: Firma digital para verificar que es de Antonio.
    - **No repudio**: Antonio no puede negar que envió el mensaje, e Isabel no puede negar que lo recibió.

# 2. **Criptografía**
- **Definición**: Técnica de "escritura secreta" para codificar la información, asegurando que solo el receptor autorizado pueda leerla.
- **Criptoanálisis**: Estudia la seguridad de los sistemas criptográficos y mejora su eficacia.
- **Criptología**: Ciencia que abarca tanto la criptografía como el criptoanálisis.

## 2.1 **Encriptación de la Información**
- **Cifrado**: Convertir la información en algo ininteligible.
- **Descifrado**: Convertir la información cifrada de vuelta a su forma original.

**Conceptos clave**:
- **Texto claro**: Información original.
- **Criptograma**: Información cifrada.
- **Algoritmo criptográfico**: Función matemática usada en cifrado/descifrado.
- **Clave**: Controla el algoritmo de cifrado/descifrado.

**Tipos de claves**:
- **Simétrica**: Misma clave para cifrar y descifrar.
- **Asimétrica**: Claves diferentes para cifrar y descifrar.

**Ejemplo de cifrado simétrico**:
- Algoritmo: Aumento de la posición alfabética.
- Clave: 3.
  - "H" (7) + 3 = 10 → "K"
  - "O" (16) + 3 = 19 → "R"
  - "L" (12) + 3 = 15 → "O"
  - "A" (1) + 3 = 4 → "D"
## 2.2 **Principios criptográficos**
- **Principios de un sistema criptográfico** (Auguste Kerckhoffs, 1883):
  1. **No irrompible teóricamente**: Debe ser seguro en la práctica.
  2. **Seguridad no depende del diseño**: El diseño no debe ser secreto, solo la clave.
  3. **Clave fácil de memorizar**: No debe requerir notas escritas.
  4. **Criptogramas alfanuméricos**: Los resultados deben ser alfanuméricos.
  5. **Operable por una persona**: El sistema debe ser fácil de usar.
  6. **Facilidad de uso**: Debe ser fácil de manejar.

- **Principio de Kerckhoffs**: La seguridad depende de mantener la clave en secreto, no del diseño del sistema.
- **Máxima de Shannon**: El adversario conoce el sistema, pero no la clave.
  
- **Factores de seguridad**:
  1. **Diseño del algoritmo**: Cuanto menos fallos tenga, más seguro será.
  2. **Longitud de la clave**: A mayor longitud, mayor seguridad (mínimo 128 bits).

## 2.3 **Criptografía de clave privada o simétrica**
- **Características**:
  - La clave es secreta, conocida solo por el emisor y receptor.
  - Se usa la misma clave para cifrar y descifrar.
  
- **Ventajas**:
  - Algoritmos rápidos y eficientes para grandes volúmenes de datos.
  
- **Inconvenientes**:
  - **Distribución de claves**: El receptor debe recibir la clave por un canal seguro.
  - **Escalabilidad**: Se necesitan muchas claves si hay múltiples personas.

- **Ejemplos de algoritmos**: AES, Rijndael, DES, 3-DES, DES-X, IDEA, RC5.

## 2.4 **Criptografía de clave pública o asimétrica**
- **Características**:
  - Cada parte tiene una **pareja de claves**: una pública (conocida por todos) y una privada (solo conocida por el propietario).
  - Lo que cifra una clave, solo puede descifrarlo la clave inversa.
  - **Cifrado con la clave pública**: Solo puede ser descifrado por quien posee la clave privada correspondiente.
  - **Cifrado con la clave privada**: Proporciona autenticación, demostrando que el mensaje proviene del propietario de la clave privada.

- **Ventajas**:
  - No hay problema de distribución de claves, ya que cada parte posee su propia clave pública y privada.
  
- **Inconvenientes**:
  - Algoritmos más lentos que los simétricos.
  - **Problema del "hombre en el medio"**: Un atacante puede interceptar y modificar los mensajes sin que las partes lo sepan.

- **Ejemplos de algoritmos**: DSA, RSA, Diffie-Hellman.

- **Uso combinado**: Se utiliza criptografía asimétrica para negociar una clave privada para la comunicación.

## 2.5 **Resumen de mensajes, firma digital y certificados digitales**
- **Resumen de mensajes** (Funciones HASH):  
  - Convierte un mensaje de longitud variable en un resumen de longitud fija.  
  - **Propiedades**: Salida constante, aleatorio y unidireccional.
  - **Uso**: Garantizar la **integridad** de los mensajes.
  - **Algoritmos HASH**: MD5, SHA.

- **Firmas digitales**:  
  - Basadas en criptografía de clave pública y funciones HASH.
  - **Proceso**: El emisor cifra un mensaje con su clave privada y lo envía junto con el mensaje. El receptor usa la clave pública para verificar la integridad y autenticidad.

- **Certificados digitales**:  
  - Firmados por una **Entidad Certificadora** (CA), validan la relación entre una clave pública y su propietario.
  - **Estándar X.509**: Contiene información del emisor, algoritmo, periodo de validez, firma digital de la autoridad emisora.
  - **Función**: Proveer confianza y autenticar a las partes.

- **Entidad Certificadora**: Organizaciones responsables de emitir y gestionar certificados digitales, incluyendo su revocación, suspensión y verificación.

# 3- Resumen de Protocolos Seguros

Los protocolos seguros de comunicación son fundamentales para garantizar la privacidad, integridad y autenticidad de la información que se transmite a través de redes no seguras como Internet. En este contexto, los protocolos criptográficos como SSL/TLS, SSH y HTTPS juegan un papel esencial. A continuación, resumimos las principales características y aplicaciones de estos protocolos:

**SSL/TLS:**
- **SSL (Secure Sockets Layer)** y **TLS (Transport Layer Security)** son protocolos criptográficos utilizados para asegurar la comunicación entre clientes y servidores.
- SSL fue diseñado inicialmente por Netscape para garantizar la confidencialidad, autenticidad e integridad de las comunicaciones en la web.
- TLS es una versión más moderna de SSL que mejora la seguridad y soporta más algoritmos criptográficos.
- La seguridad se basa en un protocolo de "apretón de manos" (handshake) para negociar las claves y algoritmos de cifrado. Durante este proceso, se utilizan tanto criptografía asimétrica como simétrica.

**HTTPS (HyperText Transfer Protocol Secure):**
- HTTPS es simplemente HTTP sobre SSL/TLS, garantizando que la comunicación web se realice de forma segura.
- Se utiliza principalmente para el intercambio de información sensible en sitios web, como datos bancarios o detalles personales.
- El protocolo HTTPS asegura que los datos transmitidos no puedan ser interceptados ni modificados durante su transferencia.

**SSH (Secure Shell):**
- SSH es un protocolo utilizado para acceder a sistemas remotos de manera segura, reemplazando a Telnet.
- Funciona sobre el puerto 22 y garantiza la seguridad utilizando criptografía, tanto para la autenticación como para la transmisión de datos.
- SSH permite realizar conexiones seguras a través de redes inseguras, protegiendo así las sesiones de acceso remoto.
# **4.- Ataques Criptográficos Comunes**
- **Ataque de Fuerza Bruta**: Consiste en probar todas las combinaciones posibles de una clave hasta encontrar la correcta. Este tipo de ataque es efectivo especialmente cuando las claves son cortas o débiles.
- **Ataque de Hombre en el Medio (Man-in-the-Middle, MitM)**: En este ataque, un atacante intercepta y posiblemente altera las comunicaciones entre dos partes sin que ellas lo sepan.
- **Ataque de Colisión en Hash**: En este ataque, un atacante busca dos mensajes diferentes que generen el mismo valor hash, lo que puede comprometer la integridad de los datos.
  