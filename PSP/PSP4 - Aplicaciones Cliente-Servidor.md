## 🧠 Conceptos clave
### ✅ Paradigma Cliente/Servidor
- Modelo de comunicación más utilizado por su flexibilidad e interoperabilidad.
- Un **cliente** solicita servicios, el **servidor** los ofrece.
- Arquitectura distribuida: permite acceso a recursos (datos, hardware, procesamiento).
- Cliente (front-end): interactúa con el usuario, valida peticiones, muestra resultados.
- Servidor (back-end): procesa peticiones, aplica lógica de negocio, mantiene seguridad y consistencia.
### ⚙️ Características básicas
- Separación clara de responsabilidades entre cliente y servidor.
- Relación "muchos-a-uno": muchos clientes pueden conectarse a un único servidor.
- Comunicación basada en mensajes.
- Compatible con plataformas heterogéneas (multiplataforma).
### 📈 Ventajas
- Clientes ligeros.
- Interfaces gráficas amigables.
- Mejor uso del ancho de banda.
- Fácil mantenimiento y desarrollo modular.
- Escalable e integrable con nuevas tecnologías.
- Centralización del acceso a recursos.
- Clientes simultáneos compartiendo datos.
### ⚠️ Desventajas
- Mantenimiento complejo (más componentes).
- Necesidad de gestionar errores.
- Alta exigencia en seguridad y consistencia de datos.
- Requiere sincronización para evitar conflictos entre clientes.
## 🧱 Modelos de arquitectura
- **1-capa (1-tier)**: Todo en un solo equipo (no se considera Cliente/Servidor).
- **2-capas (2-tiers)**: Cliente y servidor diferenciados. Limitada escalabilidad.
- **3-capas (3-tiers)**:
  - Cliente
  - Servidor de aplicación
  - Servidor de datos
- **n-capas (n-tiers)**: Capas adicionales para separar responsabilidades y mejorar rendimiento.
## 💻 Programación de sockets
### Servidor
1. **Publica un puerto** (`ServerSocket`).
2. **Espera conexiones** (`accept()`).
3. **Comunica con el cliente** (streams de entrada/salida).
4. **Cierra conexión**.
### Cliente
1. **Se conecta al servidor** (`Socket`).
2. **Intercambia datos** (streams).
3. **Cierra conexión**.
## 🧪 Ejemplo práctico (no concurrente)
```java
    import java.io.*;
    import java.net.*;
    class Servidor {
        static final int Puerto = 2000;
        public Servidor() {
            try {
                ServerSocket sServidor = new ServerSocket(Puerto);
                System.out.println("Escucho el puerto " + Puerto);
                for (int nCli = 0; nCli < 3; nCli++) {
                    Socket sCliente = sServidor.accept();
                    System.out.println("Sirvo al cliente " + nCli);
                    DataOutputStream flujo_salida = new DataOutputStream(sCliente.getOutputStream());
                    flujo_salida.writeUTF("Hola cliente " + nCli);
                    sCliente.close();
                }
                System.out.println("Se han atendido los clientes");
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        public static void main(String[] arg) {
            new Servidor();
        }
    }
    //- Este ejemplo acepta 3 clientes **de forma secuencial** (no concurrente).  
    //Para permitir acceso simultáneo, es necesario implementar concurrencia con hilos o procesos.
    //compilamos con javac servidor.java
```
# 2️ Optimización de Sockets en Aplicaciones Cliente/Servidor
## 2.1️ Atender múltiples peticiones simultáneamente
**Problema:** El servidor actual atiende a un cliente y **bloquea** las demás peticiones hasta terminar.  
**Solución:** Crear un **hilo (thread)** por cada cliente que se conecta al servidor:
```java
    while (true) {
        // Se conecta un cliente
        Socket skCliente = skServidor.accept();
        System.out.println("Cliente conectado");

        // Atiendo al cliente mediante un thread
        new Servidor(skCliente).start();
    }
```
Cada nuevo cliente se atiende en una hebra **independiente**, permitiendo la concurrencia.
## 2.2️ Threads en Java
Para crear un thread en Java:
```java
    class Servidor extends Thread {
        public Servidor() {
            // Inicialización
        }

        public void run() {
            // Código que ejecutará el thread
        }

        public static void main(String[] args) {
            new Servidor().start();
        }
    }
```
- `run()` contiene las tareas de la hebra.  
- `start()` inicia la ejecución del thread.  
- El constructor `Servidor()` se usa para inicializar datos.
## 2.3️ Ejemplo práctico con sockets concurrentes
### 🔌 Servidor.java
```java
    import java.io.*;
    import java.net.*;

    class Servidor extends Thread {
        Socket skCliente;
        static final int Puerto = 2000;

        public Servidor(Socket sCliente) {
            skCliente = sCliente;
        }

        public static void main(String[] args) {
            try {
                ServerSocket skServidor = new ServerSocket(Puerto);
                System.out.println("Escucho el puerto " + Puerto);

                while (true) {
                    Socket skCliente = skServidor.accept();
                    System.out.println("Cliente conectado");

                    new Servidor(skCliente).start();
                }

            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }

        public void run() {
            try {
                DataInputStream flujo_entrada = new DataInputStream(skCliente.getInputStream());
                DataOutputStream flujo_salida = new DataOutputStream(skCliente.getOutputStream());

                flujo_salida.writeUTF("Se ha conectado el cliente de forma correcta");

                skCliente.close();
                System.out.println("Cliente desconectado");

            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
    }
```
### 👤 Cliente.java
```java
    import java.io.*;
    import java.net.*;

    class Cliente {
        static final String HOST = "localhost";
        static final int Puerto = 2000;

        public Cliente() {
            try {
                Socket sCliente = new Socket(HOST, Puerto);

                DataInputStream flujo_entrada = new DataInputStream(sCliente.getInputStream());
                DataOutputStream flujo_salida = new DataOutputStream(sCliente.getOutputStream());

                String datos = flujo_entrada.readUTF();
                System.out.println(datos);

                sCliente.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        public static void main(String[] args) {
            new Cliente();
        }
    }
```
## 2.4 Pérdida de información y mensajes ACK
Las comunicaciones pueden perder paquetes. Para evitarlo se usan **mensajes de confirmación (ACK)**.
### 🔁 Método básico
- Cliente envía mensaje → Servidor responde con ACK.  
- Si no recibe ACK → Cliente reenvía mensaje.
### 🧪 Método mejorado (ventana deslizante)
- Cliente puede enviar **varios mensajes** seguidos sin esperar los ACK.  
- Se usa un **vector de ACKs** para controlar qué mensajes han llegado correctamente.
Ejemplo de vector de ACK:

    Mensaje: 0 1 2 3 4 5 6 7 8 9
    ACK:     1 1 0 0 1 1 0 0 0 0
A partir del último mensaje recibido correctamente (1), se envían siguientes (10, 11, …).
## 2.5️ Seguridad: Transacciones
El servidor debe controlar:

    • Órdenes no autorizadas  
    • Mensajes mal formados  
### 🧭 Diagrama de estados
Ejemplo de autómata:
1. **Estado 0**: Enviar "Introduce comando"  
2. **ls** → Estado 2: Mostrar directorio → Volver a estado 1  
3. **get** → Estado 3: Solicitar archivo → Estado 4: Mostrar contenido → Volver a estado 1  
4. **exit** → Estado -1: Finalizar conexión  
5. Otros comandos → Estado 1: Mensaje de error  
Variables:
```java
int estado;       // Estado actual  
String comando;   // Entrada del cliente  
```
Se gestionan con `if` y `switch`.

[[PSP5 - Generación de servicios en red]]