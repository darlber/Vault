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
- Validar siempre datos externos (formularios, sockets, ficheros).
- Usar expresiones regulares, rangos, listas blancas.    
- Evitar inyección (SQL, comandos, XSS).
## 2.4 Logging y Auditoría
- Registrar eventos de seguridad (intentos fallidos, excepciones críticas).
- No loguear datos sensibles (contraseñas).
- Facilita detección de patrones de ataque y análisis.
## 2.5 Gestión de Configuración y Permisos
- Parámetros de seguridad en ficheros externos protegidos.
- SecurityManager y políticas de acceso (Java Policy).
- Principio de mínimo privilegio: otorgar solo permisos necesarios.
