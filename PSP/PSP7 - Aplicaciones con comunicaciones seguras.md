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
## 2.5 **Resemen de mensajes, firma digital y certificados digitales**
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
## **2.6 - Principales aplicaciones de la criptografía:**
1. **Seguridad de las comunicaciones:**
   - Establece canales seguros sobre redes inseguras.
   - Utiliza cifrado simétrico y algoritmos de clave pública para mantener la privacidad sin afectar la velocidad de transferencia.

2. **Identificación y autentificación:**
   - Uso de firmas digitales y técnicas criptográficas para validar identidad o acceso.
   - Más seguro que sistemas tradicionales de usuario y clave.

3. **Certificación:**
   - Agentes confiables validan identidades en sistemas grandes.
   - Extiende el uso de la criptografía a gran escala para identificación y autentificación.

4. **Comercio electrónico:**
   - Garantiza transacciones seguras a través de canales protegidos y mecanismos de identificación.
   - Reduce fraudes y robos.
# **3 - Protocolos seguros de comunicaciones:**
1. **SSL (Secure Sockets Layer):**
   - Proporciona seguridad en la comunicación cliente/servidor.
   - Protege contra ataques como "man in the middle".

2. **TLS (Transport Layer Security):**
   - Evolución de SSL.
   - Soporta más algoritmos criptográficos.

3. **Relación con la pila TCP/IP:**
   - SSL/TLS operan entre la capa de transporte (TCP/UDP) y la capa de aplicación (HTTP, FTP, etc.).

4. **Protocolos seguros con SSL/TLS:**
   - **SSH:** Reemplaza a Telnet con comunicaciones seguras.
   - **HTTPS:** HTTP sobre SSL/TLS para navegación segura.
## **3.1 - Protocolo criptográfico SSL/TLS:**
- **SSL (Secure Sockets Layer):**
  - Diseñado por Netscape para comunicaciones seguras entre un navegador y un servidor web.
  - Proporciona los servicios de **autenticación**, **confidencialidad**, e **integridad**.
  
- **TLS (Transport Layer Security):**
  - Evolución de SSL con más algoritmos criptográficos y mayor seguridad frente a nuevos ataques.
  
- **Fases de funcionamiento:**
  1. **Fase inicial:** Negociación de algoritmos criptográficos.
  2. **Fase de autenticación y clave de sesión:** Intercambio de claves y autenticación mediante certificados, usando criptografía asimétrica.
  3. **Fase final:** Verificación del canal seguro.
  4. Comunicación segura establecida.
  
- **Algoritmos utilizados:**
  - **Cifrado simétrico:** DES, 3DES, RC2, RC4, IDEA.
  - **Clave pública:** RSA.
  - **Resúmenes:** MD5, SHA.
  - **Certificados:** DSS, RSA.
  
- **Protocolo híbrido:**
  - Usa criptografía asimétrica en la negociación y simétrica en la transmisión de datos.
  
- **Usos:**
  - Comercio electrónico y creación de redes privadas virtuales (VPN).
## **3.2 - Otros protocolos seguros:**
- **HTTPS (HTTP sobre SSL/TLS):**
  - Usado para asegurar comunicaciones en sitios web, especialmente en bancos y tiendas en línea.
  - Garantiza seguridad frente a ataques "man-in-the-middle".
  - Requiere una **Autoridad de Certificación** de confianza.
  - El certificado debe ser válido y corresponder correctamente al sitio web.

- **SSH (Secure Shell):**
  - Protocolo para acceso remoto seguro a computadoras.
  - Reemplaza a Telnet y usa el puerto 22.
  - Utiliza criptografía para asegurar la conexión.
  - El servidor envía la clave pública al cliente para la comunicación cifrada.
# **4 - Criptografía en Java:**
- **Java y la criptografía:**
  - Java proporciona APIs para comunicaciones seguras.
  - **Tareas que soporta:**
    - Encriptación, firma digital, resumen de mensajes (HASH), certificados digitales, y comunicaciones seguras con SSL.
  
- **APIs criptográficas en Java:**
  - **JCA (Java Cryptography Architecture):** Acceso a funciones criptográficas generales.
  - **JCE (Java Cryptography Extension):** Complementa JCA y está incluido en el JDK desde la versión 1.4.
  
- **Paquetes en JCA y JCE:**
  - **java.security** y **javax.crypto**.
  
- **Otras bibliotecas en el JDK:**
  - **JSSE:** Comunicaciones seguras (SSLSocket).
  - **JGSS:** Seguridad mediante Kerberos.
  - **SASL:** Autenticación y seguridad.
  - **JAAS:** Autenticación y autorización.
## **4.1 - Arquitectura criptográfica de Java:**
- **JCA (Java Cryptography Architecture):**
  - La arquitectura principal para la criptografía en Java.
  - Diseñada para:
    1. **Independencia de la aplicación:** Los programas usan algoritmos criptográficos a través de la plataforma Java sin necesidad de implementarlos.
    2. **Interoperabilidad:** Los proveedores son compatibles con diversas aplicaciones, sin estar atados a una aplicación específica.
    3. **Extensibilidad:** Permite agregar proveedores personalizados para implementar nuevos servicios criptográficos.

- **Componentes clave de la JCA:**
  1. **Bibliotecas e interfaces:** Incluye clases en el paquete `java.security` que proporcionan servicios básicos.
  2. **Proveedores de servicios criptográficos:** Implementaciones de algoritmos, como el proveedor Sun.

- **JCE (Java Cryptography Extension):**
  - Complementa JCA proporcionando servicios adicionales como encriptación, firmas digitales, etc.

- **Componentes:**
  1. `java.security`: Manejo de certificados, claves y resúmenes de mensajes.
  2. `javax.crypto`: Encriptación, desencriptación, generación de claves y códigos de autenticación de mensajes (MAC).
  3. `javax.crypto.spec`: Especificaciones de claves y algoritmos.
  4. `javax.crypto.interfaces`: Interfaces para algoritmos como Diffie-Hellman.
## **4.2 - Proveedores y motores criptográficos:**
- **Proveedor de servicios criptográficos:**
  - Implementa clases e interfaces definidas por JCA/JCE.
  - Un motor criptográfico es el conjunto de clases necesarias para implementar un proveedor.
  
- **Clases principales:**
  1. **MessageDigest:** Resúmenes de mensajes.
  2. **Signature:** Firmas digitales.
  3. **KeyFactory:** Manejo de claves.
  4. **KeyPairGenerator:** Generación de claves públicas y privadas.
  5. **Cipher:** Encriptación/desencriptación.

- **Proveedor por defecto:**
  - El proveedor **SUN** implementa:
    1. DSA, MD5 y SHA-1.
    2. Generación de claves para DSA.
    3. Construcción de certificados X.509.

- **Uso de múltiples proveedores:**
  - Puedes modificar el fichero `java.security` para usar varios proveedores.
  - Ejemplo: `MessageDigest.getInstance("MD5", "ProveedorA");`
## **4.3 - Gestión de claves con el paquete java.security:**
- **Generación de claves:**
  - Usando **números aleatorios seguros** generados a partir de una semilla.

- **Clases para la gestión de claves:**
  1. **Key:** Representación y almacenamiento de claves.
     - Métodos: `getAlgorithm()`, `getEncoded()`, `getFormat()`.
  2. **KeyPairGenerator:** Generación de claves públicas y privadas (asimétricas).
     - El método `initialize()` permite establecer el tamaño de la clave.
  3. **KeyGenerator:** Generación de claves privadas (simétricas).
     - El método `init()` permite establecer el tamaño de la clave.
  4. **SecureRandom:** Generación de números aleatorios seguros.
     - Métodos: `setSeed()`, `next()`, `nextBytes()`.

- **Consideración del tamaño de las claves:**
  - Claves más grandes pueden incrementar el tiempo de cálculo y afectar el rendimiento.
## **4.4 - Resúmenes de mensajes con la clase MessageDigest:**
- **Objetivo:** La clase `MessageDigest` permite crear resúmenes de mensajes utilizando el algoritmo y proveedor especificados.

- **Métodos clave:**
  1. `getInstance()`: Obtiene el algoritmo de resumen.
  2. `update()`: Actualiza el resumen con nuevos datos.
  3. `digest()`: Completa la obtención del resumen.

- **Algoritmos disponibles:**
  - **MD5:** Resumen de 128 bits.
  - **SHA-1:** Resumen de 160 bits.

**Ejemplo básico de uso con SHA-1:**
```java
MessageDigest md = MessageDigest.getInstance("SHA-1");
md.update(data);
byte[] digest = md.digest();
```
## **4.5 - Firma digital con la clase Signature:**
- **Objetivo:** Realizar firmas digitales y su verificación con la clase `Signature`.
1. **Generar claves pública y privada** con `KeyPairGenerator`.
	- **PrivateKey:** Para firmar.
	- **PublicKey:** Para verificar la firma.
2. **Firmar el mensaje:**
- Crear objeto `Signature` con un algoritmo asimétrico (e.g., DSA).
	- `initSign()`: Inicializa con la clave privada.
	- `update()`: Crea el resumen del mensaje.
	- `sign()`: Devuelve la firma digital.
3. *Verificar la firma:**
	- `initVerify()`: Inicializa con la clave pública.
	- `update()`: Actualiza el resumen para verificar.
	- `verify()`: Verifica la firma.

- **Algoritmo de firma:** El algoritmo DSA (Digital Signature Algorithm) implementado en el JDK usa MD5 y SHA-1 para los resúmenes de mensaje.
**Ejemplo básico de firma y verificación:**
```java
// Firmar
Signature sig = Signature.getInstance("DSA");
sig.initSign(privateKey);
sig.update(data);
byte[] signature = sig.sign();

// Verificar
sig.initVerify(publicKey);
sig.update(data);
boolean isVerified = sig.verify(signature);
```

## **4.6 - Encriptación con la clase Cipher:**

- **Objetivo:** La clase `Cipher` permite realizar encriptación y desencriptación de datos con clave pública o privada.
- **Métodos clave:**
    1. `getInstance()`: Define el algoritmo y proveedor del cifrador.
    2. `init()`: Define el modo de operación (encriptación/desencriptación).
    3. `update()` y `doFinal()`: Insertan los datos en el cifrador y completan el proceso.
- **Modos de operación disponibles:**
    - **ENCRYPT_MODE:** Encriptación.
    - **DECRYPT_MODE:** Desencriptación.
    - **WRAP_MODE:** Convierte una clave en una secuencia de bytes para transmitirla de forma segura.
    - **UNWRAP_MODE:** Desenvuelve la clave que fue envuelta con `WRAP_MODE`.
- **Tipos de cifrado:**
    - **Bloque (Block Cipher):** El texto se divide en bloques de tamaño fijo (e.g., 64 bits). Si el tamaño no es múltiplo de 64 bits, se agrega un relleno (padding).
        - Ejemplo: `"Rijndael/ECB/PKCS5Padding"` especifica el algoritmo, modo de operación y tipo de relleno.
    - **Flujo (Stream Cipher):** Cifra bit a bit o byte a byte. Ideal para cifrado en tiempo real.

**Ejemplo básico de encriptación con `Cipher`:**
Cipher cipher = Cipher.getInstance("AES");
cipher.init(Cipher.ENCRYPT_MODE, secretKey);
byte[] encrypted = cipher.doFinal(data);
