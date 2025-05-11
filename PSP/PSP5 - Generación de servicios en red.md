## Introducción
- **Red**: conjunto de equipos interconectados para compartir información y recursos.  
- **Ventajas**:  
  - Reducción de costes en software/hardware  
  - Grupos de trabajo organizados  
  - Mejor administración de equipos y aplicaciones  
  - Integridad de datos y mayor seguridad  
  - Facilidad de comunicación  
- **Servicio en red**: programa que proporciona funcionalidad (impresión, ficheros, mensajería, web) basado en protocolos estándar.  
- **Clasificación de servicios**:  
  - **Administración/Config** (DHCP, DNS)  
  - **Acceso remoto** (Telnet, SSH)  
  - **Ficheros** (FTP)  
  - **Impresión** (compartir impresoras)  
  - **Información** (HTTP, servidores BD)  
  - **Comunicación** (email SMTP)
## 2️ Protocolos de Comunicaciones (Nivel de Aplicación)
- Basados en la pila **TCP/IP**; capa de Aplicación define protocolos de alto nivel.
- Cada protocolo asocia un **puerto**: HTTP→80, FTP→21, SMTP→25, etc.
## 2.1 Comunicación entre aplicaciones
- Modelo **Cliente/Servidor**:  
    - **Cliente**: inicia petición.  
    - **Servidor**: espera peticiones, procesa y responde.  
- Datos codificados según protocolo de aplicación y pasados a la capa de transporte (TCP/UDP).
## 2.2 Conexión, Transmisión y Desconexión
- **API Socket** (java.net.Socket, ServerSocket).  
- Un socket se identifica por: protocolo + IP local/remota + puerto local/remoto.  
- Pasos:  
    1. Crear sockets en cliente y servidor  
    2. Servidor escucha en puerto  
    3. Cliente inicia conexión  
    4. Servidor acepta conexión  
    5. Intercambio de datos  
    6. Cierre de la conexión  
## 2.3 DNS y resolución de nombres
- **Dirección IP**: 4 bytes (IPv4) legibles por máquina, no por humanos.  
- **DNS**: traduce nombres de dominio (www.ejemplo.es) a direcciones IP.  
- Ventajas: múltiples dominios por IP, IP cambiante sin afectar al nombre.
## 2.4 Protocolo FTP
- **FTP**: transferencia de archivos entre sistemas TCP/IP.  
- **Puertos**:  
    - 21 → control  
    - 20 → datos  
- **Seguridad**: transmite en texto plano → usar SFTP (SSH) o FTPS (SSL).  
- **Modos**:  
    - **Activo**: servidor abre conexión de datos al cliente  
    - **Pasivo**: cliente abre ambas conexiones (ideal detrás de firewall)
## 2.5 Protocolos SMTP y POP3/IMAP
- **SMTP** (puerto 25): envía correo desde cliente a servidor y entre servidores.  
- **POP3/IMAP**: protocolo para que el cliente descargue o consulte correo.  
- Flujo típico:  
    1. Cliente redacta y envía vía SMTP al servidor de origen  
    2. Servidor de origen reenvía SMTP al servidor de destino  
    3. Cliente destino descarga con POP3/IMAP  
## 2.6️ El protocolo HTTP

- **Definición**: Protocolo de Transferencia de Hipertexto para comunicación cliente-servidor.  
- **Características**:  
    - Sigue esquema **petición-respuesta**.  
    - Puerto por defecto **80**.  
    - Cliente = **User Agent** (navegador).  
    - Recurso identificado por **URL** (p.ej. http://www.iesalandalus.org/organizacion.htm).  
    - HTTP es **sin estado**; el estado se guarda con **cookies**.

**Flujo de una petición HTTP**  
1. Usuario introduce URL: `http://host[:puerto]/ruta`  
2. Cliente descompone URL (protocolo, host, puerto, ruta).  
3. Cliente abre conexión TCP al servidor y envía, por ejemplo:  
       GET /organizacion.htm HTTP/1.1  
   (más cabeceras)  
4. Servidor responde:  
       HTTP/1.1 200 OK  (o código de error)  
   + contenido HTML  
5. Cliente interpreta HTML.  
6. Cierre de conexión.
# 3️ Bibliotecas de clases y componentes Java
## 3.1️ Paquetes principales
- **java.net**: API principal para redes  
- **java.rmi**: Remote Method Invocation  
- **javax.mail**: Cliente/servidor de correo

Para protocolos estándar, a veces conviene usar **Apache Commons Net** (org.apache.commons.net).
## 3.2️ Objetos predefinidos en java.net
### API de bajo nivel  
- **InetAddress**: dirección IP  
- **Socket / ServerSocket**: comunicación TCP  
- **DatagramSocket / MulticastSocket**: UDP y multicast  
- **NetworkInterface**: interfaz de red
### API de alto nivel  
- **URI / URL**: identificadores de recursos  
- **URLConnection / HttpURLConnection**: conexión a URL (soporte HTTP)
## 3.3️ Métodos de InetAddress

- `InetAddress.getLocalHost()` → IP local  
- `InetAddress.getByName(host)` → IPv4/IPv6 de host  
- `InetAddress.getAllByName(host)` → todas las IPs de host  
- Métodos de instancia:  
    - `getHostAddress()` → String IP  
    - `getHostName()` → nombre de host  
    - `isReachable(timeout)` → ping programático  
## 3.4️ Programación con URL y URLConnection
### Partes de una URL  
- Protocolo, host, puerto (por defecto), ruta, referencia (`#ancla`)
### Crear objetos URL  
```java
    URL url = new URL("http", "www.ejemplo.com", 80, "index.html");
    URL url = new URL("http://www.ejemplo.com");
```
### Analizar URL  
- `url.getProtocol()`  
- `url.getHost()`  
- `url.getPort()` / `getDefaultPort()`  
- `url.getFile()`  
- `url.getRef()`
### Leer/escribir con URLConnection  
**Pasos**:  
1. Crear `URL url = new URL(...);`  
2. `URLConnection conn = url.openConnection();`  
3. `InputStream in = conn.getInputStream();` (o `url.openStream()`)  
4. Leer/escribir flujos.
Ejemplo de lectura de texto remoto:  
```java
    URL url = new URL("http://www.ejemplo.com/data.txt");  
    BufferedReader r = new BufferedReader(new InputStreamReader(url.openStream()));  
    String linea;  
    while ((linea = r.readLine()) != null) {  
        System.out.println(linea);  
    }  
    r.close();
```
# 3.6️ Trabajar con el contenido de una URL
- `URL.getContent()`: devuelve el contenido del recurso, usando un manejador según `getContentType()`.  
- Pasos para conexión URL:  
  1. `URL.openConnection()` → `URLConnection`  
  2. Configurar propiedades (time-outs, headers…)  
  3. `conn.connect()`  
  4. Usar métodos como:  
     - `getContentType()`  
     - `getContentLength()`  
     - `getLastModified()`  
     - `getContent()`  
# 4️ Programación de aplicaciones cliente
Basado en protocolos estándar de capa de aplicación (HTTP, FTP, SMTP, TELNET).
## 4.1️ Cliente HTTP
- Usa clases **URL / URLConnection** para un nivel alto: ocultan sockets.  
- Diálogo:  
  1. Conexión TCP  
  2. Enviar `GET /recurso HTTP/1.1`  
  3. Leer respuesta (código + contenido)  
  4. Cerrar conexión  
## 4.2️ Bibliotecas para cliente FTP
- **Apache Commons Net** (`org.apache.commons.net.ftp`):  
  - `FTPClient`, `FTPSClient`, `FTPReplay`, `FTPClientConfig`  
## 4.3️ Cliente FTP (FTPClient)
1. `FTPClient.connect(host)`  
2. Comprobar `getReplyCode()`  
3. `login(user, pass)`  
4. Operaciones:  
   - `listNames()`  
   - `retrieveFile(remotePath, OutputStream local)`  
1. `logout()` / `disconnect()`  
## 4.4️ Cliente Telnet
- Protocolo texto, puerto 23, no seguro (reemplazado por SSH).  
- **Apache Commons Net Telnet**:  
  - `TelnetClient.connect(host)`  
  - `getInputStream()`, `getOutputStream()`  
  - `disconnect()`  
## 4.5️ Cliente SMTP
- **Sockets**: enviar comandos SMTP manualmente.  
- **javax.mail** API:  
  - `Session.getDefaultInstance(props)`  
  - `Message.setFrom()/setRecipients()/setSubject()/setText()`  
  - `Transport.send(msg)`  
# 5️ Programación de servidores
- **Requisitos**: concurrencia (Threads) + optimización de tiempos.  
- Usar `ServerSocket` para escuchar puerto.  
- Para cada conexión:  
  1. `accept()`  
  2. Crear hilo que procese petición (lógica + timing)  
  3. Enviar respuesta  
  4. Cerrar socket  
**Ejemplo futuro**: servidor web básico → después añadir concurrencia y monitorización de tiempo de proceso y transmisión.  
## 5.1️ Programación de un servidor HTTP
- Basado en HTTP/1.1, solo soporta peticiones **GET**.  
- Esquema básico:  
    1. Crear `ServerSocket` en puerto **8066**.  
    2. `accept()` espera la conexión del cliente.  
    3. Leer línea de petición: `GET /ruta HTTP/1.1`.  
    4. Según la ruta:  
       - `/` → respuesta de bienvenida  
       - `/quijote` → enviar párrafo del Quijote  
       - cualquier otra → enviar error 404  
    5. Enviar cabecera HTTP (status + content-type + length) y cuerpo.  
    6. Cerrar socket del cliente.  

**Autoevaluación:**  
“El método GET lo utiliza el servidor para enviar información al cliente.” → **Falso**  
## 5.2️ Implementar comunicaciones simultáneas
- Usar **Threads** para atender peticiones concurrentes.  
- Hilo principal:  
    ```java
    ServerSocket serv = new ServerSocket(puerto);
    while (true) {
        Socket cliente = serv.accept();
        new HiloDespachador(cliente).start();
    }
    ```  
- `HiloDespachador` extiende `Thread`:  
    - Constructor recibe `socketCliente`.  
    - `run()` procesa la petición y envía la respuesta.  
- Permite que el hilo principal siga aceptando nuevas conexiones mientras cada hilo atiende su cliente.  
## 5.3️ Monitorización de tiempos de respuesta
- **Tiempo de procesamiento**:  
    ```java
    long t1 = System.currentTimeMillis();
    // procesar petición...
    long t2 = System.currentTimeMillis();
    System.out.println("Tiempo de proceso = " + (t2 - t1) + " ms");
    ```  
- **Tiempo de transmisión**:  
    1. Servidor envía timestamp (`Date` HTTP o en flujo).  
    2. Cliente al recibir calcula `tRecibe = System.currentTimeMillis();`  
    3. RTT ≔ `tRecibe - tServidor`.  
- Relojes deben estar sincronizados vía NTP.  

**Autoevaluación:**  
Para monitorizar tiempos → **Opción 4:** considerar tiempo de proceso y tiempo de transmisión  
## 5.4️ Ejemplo de monitorización del tiempo de transmisión
- Cliente HTTP con `URL`/`URLConnection`:  
    ```java
    URLConnection conn = url.openConnection();
    conn.connect();
    long fechaServidor = conn.getDate();  // cabecera Date
    long tRecibe = System.currentTimeMillis();
    System.out.println("Tiempo de transmisión = " + (tRecibe - fechaServidor) + " ms");
    ```  
- La cabecera `Date` es enviada por el servidor HTTP.  
- Proyecto completo disponible para descarga.  
[[PSP6 - Técnicas de programación segura]]