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
## 2.4 Ejemplo II: Validación de DNI

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

# 2.5 Ficheros de Registro

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