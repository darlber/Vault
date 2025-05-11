## 1.1 Introducción a la Seguridad Informática
- Seguridad ≈ fiabilidad: el sistema se comporta como se espera.  
- Cualidades de un sistema seguro:  
  - Confidencialidad: solo autorizados acceden a la información.  
  - Integridad: solo autorizados pueden modificar datos.  
  - No repudio: evidencia de envío/recepción (firmas digitales).  
  - Disponibilidad: recursos accesibles cuando se necesiten.  
- Elementos a proteger: hardware, software, datos (más críticos).
## 1.2 Amenazas de Seguridad
- Interrupción (ataque a disponibilidad): destrucción de recurso o servicio.  
- Intercepción (ataque a confidencialidad): acceso no autorizado (escucha).  
- Modificación (ataque a integridad): alteración de datos o código.  
- Fabricación (ataque a autenticidad): inserción de datos falsos.  
- Ejemplo: un sniffer de red es una intercepción.
## 1.3 Clasificación de Ataques
- Ataques pasivos: escuchan/monitorizan sin alterar. Contramedida: cifrar tráfico.  
- Ataques activos: modifican o inyectan datos (suplantación, denegación de servicio).
## 1.4 Vulnerabilidades y Políticas de Acceso
- Vulnerabilidad: fallo de diseño o implementación que permite un ataque.  
- Detección: auditorías, pentesting, feedback de usuarios.  
- Políticas de acceso: definen permisos de la aplicación para limitar impacto.
# 2. Programación Segura en Java
## 2.1 Manejo de Excepciones
- Previene fallos y mantiene ejecución controlada.  
- Estructura básica:
    ```java
    try {
      // código riesgoso
    } catch (IOException e) {
      // gestionar E/S
    } catch (Exception e) {
      // gestionar otras
    } finally {
      // liberar recursos
    }
    ```  
- Buenas prácticas: capturar de lo más específico a lo más general; usar finally para liberar streams, sockets.
## 2.2 Ejemplo: EscribirNumeros.java
```java
import java.io.*;
import java.util.*;

class EscribirNumeros {
  private static final int SIZE = 100;
  public EscribirNumeros() {
    Vector<Integer> nums = new Vector<>(SIZE);
    Random rnd = new Random();
    for (int i = 0; i < SIZE; i++) nums.add(rnd.nextInt(100));

    PrintWriter out = null;
    try {
      out = new PrintWriter(new FileWriter("Salida.txt"));
      for (int i = 0; i < SIZE; i++)
        out.println("Valor " + i + " = " + nums.elementAt(i));
    } catch (ArrayIndexOutOfBoundsException e) {
      System.err.println("Índice fuera de rango: " + e.getMessage());
    } catch (IOException e) {
      System.err.println("Error E/S: " + e.getMessage());
    } finally {
      if (out != null) {
        out.close();
        System.out.println("Fichero cerrado");
      } else {
        System.out.println("No se abrió el fichero");
      }
    }
  }
  public static void main(String[] args) {
    new EscribirNumeros();
  }
}
```
## 2.3 Validación de Entradas
- **Errores comunes**: *Buffer overflow* (desbordamiento de memoria) ocurre cuando se ingresan más datos de los permitidos.
- **Objetivo de la validación**:
  - Mantener la consistencia de los datos.
  - Evitar desbordamientos de memoria.
### Pasos para usar expresiones regulares:
1. **Importar librería**:
    ```java
    import java.util.regex.*;
    ```
2. **Definir `Pattern` y `Matcher`**:
    ```java
    Pattern pat = null;
    Matcher mat = null;
    ```
3. **Compilar patrón**:
    ```java
    pat = Pattern.compile(patron);
    ```
4. **Ejemplo de patrón** (DNI):
    ```java
    pat = Pattern.compile("[0-9]{8}-[a-zA-Z]");
    ```
5. **Evaluar entrada**:
    ```java
    mat = pat.matcher(texto);
    if (mat.find()) {
        // Coincide
    } else {
        // No coincide
    }
    ```
### Expresiones comunes:
- `[a-z]`: Letra minúscula.
- `[0-9]`: Número.
- `[a-zA-Z]`: Letra (minúscula o mayúscula).
- `hola|adios`: Opción lógica (hola o adios).
### Ejemplo II: Validación de DNI

```java
import java.io.*;
import java.util.regex.*;

class ValidarEntrada {
    public ValidarEntrada() {
        String dni_cliente = new String();
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        
        try {
            System.out.println("Introduce tu DNI (Formato 00000000-A):");
            dni_cliente = reader.readLine();
            Pattern pat = Pattern.compile("[0-9]{8}-[a-zA-Z]");
            Matcher mat = pat.matcher(dni_cliente);
            
            if (mat.find()) {
                System.out.println("Correcto!!  " + dni_cliente);
            } else {
                System.out.println("El DNI está mal  " + dni_cliente);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public static void main(String[] arg) {
        new ValidarEntrada();
    }
}
```

## 2.5 Ficheros de Registro

### Pasos para trabajar con ficheros de registro:

1. Importar librería:
```java
import java.util.logging.*;
```
2. Crear Logger:
```java
Logger logger = Logger.getLogger("MyLog");
```
3. Asociar a un archivo
```java
FileHandler fh = new FileHandler("c:\\MyLogFile.log", true);
```
4. Configurar logger
```java
logger.setUseParentHandlers(false);
```

5. Nivel de registro
```java
logger.setLevel(Level.SEVERE);
```
6. Registrar evento
```java
logger.log(Level.WARNING, "Mi primer log");
```
### Niveles de registro:
- `SEVERE`: Máxima importancia.
- `WARNING`: Advertencia.
- `INFO`: Información general.
- `FINEST`: Mínima importancia.
### Ejemplo III.
**MyLogger.java**

```java
import java.io.*;

import java.util.logging.*;

public class MyLogger {

  public static void main(String[] args) { 

    Logger logger = Logger.getLogger("MyLog");

    FileHandler fh;

    try {

      // Configuro el logger y establezco el formato

      fh = new FileHandler("c:\\MyLogFile.log", true);

      logger.addHandler(fh);

      logger.setLevel(Level.ALL);

      SimpleFormatter formatter = new SimpleFormatter();

      fh.setFormatter(formatter);

      // Añado un mensaje al log   

      logger.log(Level.WARNING, "Mi primer log");

    } catch (SecurityException e) {

      e.printStackTrace();

    } catch (IOException e) {

      e.printStackTrace();

    }

  }

}
```

**Compilación y ejecución:**

1. Compilamos el código:
   `javac MyLogger.java`

2. Ejecutamos:
   `java MyLogger`

Al ejecutar el programa, se crea un archivo de registro donde se almacenan los registros generados por el programa.
# 3.- Políticas de seguridad.
### 3.1.- Modelo de seguridad de Java
Java ofrece un modelo de seguridad basado en políticas de acceso, configurable, con control de acceso, servicios criptográficos, y gestión de claves. El modelo de seguridad ha ido evolucionando en las siguientes versiones:

- **JDK 1.0:** El modelo de seguridad era muy básico. Las aplicaciones locales tenían acceso total al sistema, y las aplicaciones remotas no tenían acceso completo.
- **JDK 1.1:** Se permitió a las aplicaciones firmadas digitalmente acceder a todos los recursos del sistema.
- **JDK 1.2:** Mejoró la seguridad permitiendo establecer políticas de acceso para aplicaciones locales y remotas. Las aplicaciones autorizadas pueden enviar peticiones al Security Manager para acceder a recursos del sistema.
### 3.2.- Elementos de las políticas de seguridad
Las políticas de seguridad se pueden establecer usando los siguientes elementos:

- **Origen:** Usuario o ruta de acceso de la aplicación.
- **Permisos:** Se puede indicar si tiene permisos de lectura/escritura sobre un archivo o si puede enviar información.
- **Destino:** El recurso al que afecta el permiso, como un archivo.
- **Acción:** Las acciones que se pueden realizar sobre el archivo, como lectura o escritura.

**Permisos más utilizados en Java:**

- **PropertyPermission:** Permite controlar el acceso a la información del sistema, como el sistema operativo o el directorio home del usuario.
- **SocketPermission:** Controla las comunicaciones de red, estableciendo permisos para direcciones IP, URLs o puertos.
- **FilePermission:** Controla el acceso a archivos o carpetas específicas, permitiendo establecer permisos de lectura o escritura.
### 3.3.- Asegurando las aplicaciones (I)
Por defecto, el **Security Manager** está deshabilitado en aplicaciones locales. Para activar el **Security Manager**, se debe usar la opción `-Djava.security.manager`. Veamos cómo aplicar políticas de seguridad a una aplicación local.

**GetProps.java**
```java
import java.lang.*;
import java.security.*;

class GetProps {

    public static void main(String[] args) { 

        // Test reading properties with and without security manager

        String s;

        try {

            System.out.println("About to get os.name property value");

            s = System.getProperty("os.name", "not specified");
            System.out.println("  The name of your operating system is: " + s);

            System.out.println("About to get java.version property value");

            s = System.getProperty("java.version", "not specified");
            System.out.println("  The version of the JVM you are running is: " + s);

            System.out.println("About to get user.home property value");

            s = System.getProperty("user.home", "not specified");
            System.out.println("  Your user home directory is: " + s);

            System.out.println("About to get java.home property value");

            s = System.getProperty("java.home", "not specified");
            System.out.println("  Your JRE installation directory is: " + s);

        } catch (Exception e) {
            System.err.println("Caught exception " + e.toString());
        } 

    }

}
```
'
**Compilación y ejecución:**

1. Compilamos el código:
   `javac GetProps.java`

2. Ejecutamos el código sin el **Security Manager**:
   `java GetProps`

   Esto permite que la aplicación acceda a todas las propiedades del sistema.
   
Para aplicar las políticas de seguridad, activamos el **Security Manager** utilizando la opción `-Djava.security.manager`:

**Ejecutar con Security Manager:**

`java -Djava.security.manager GetProps`

En este caso, las políticas de seguridad por defecto no permiten el acceso a información sensible como el directorio home del usuario (`user.home`) o el directorio de trabajo de Java (`java.home`). El **Security Manager** generará excepciones como `AccessControlException`, que indica que no tiene permisos de acceso.

Esto asegura que la aplicación solo pueda acceder a los datos necesarios y no a información sensible sin permisos explícitos.


