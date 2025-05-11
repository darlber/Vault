# Técnicas de Programación Segura - Resumen

## Contexto
María y Juan discuten la importancia de la seguridad en el desarrollo de software. Juan inicialmente cree que la seguridad es responsabilidad solo de los administradores de red, pero María le explica que las aplicaciones también deben ser seguras para proteger los datos y el sistema.

---

## Conceptos Clave de Seguridad Informática

### 1. Principios Fundamentales
- **Confidencialidad**: Solo usuarios autorizados pueden acceder a la información.
- **Integridad**: Solo usuarios autorizados pueden modificar la información.
- **No repudio**: Garantiza que un usuario no pueda negar una acción (ej. mediante firmas digitales).
- **Disponibilidad**: Los recursos deben estar accesibles cuando se necesiten.

### 2. Tipos de Amenazas
| Tipo           | Descripción                                                                 | Ejemplo                     |
|----------------|-----------------------------------------------------------------------------|-----------------------------|
| **Interrupción** | Ataque a la disponibilidad                                                 | Destrucción de hardware     |
| **Intercepción**| Ataque a la confidencialidad                                               | Espionaje de datos          |
| **Modificación**| Ataque a la integridad                                                     | Alteración de archivos      |
| **Fabricación** | Ataque a la autenticidad                                                   | Envío de mensajes falsos    |

### 3. Clasificación de Ataques
- **Ataques Pasivos**: Monitorización sin alteración (ej. sniffing de contraseñas).
- **Ataques Activos**: Alteración de datos (ej. suplantación o denegación de servicio).

---

## Vulnerabilidades en el Software

### 1. Definición
Fallos de diseño que permiten accesos no autorizados o comportamientos inesperados.

### 2. Buenas Prácticas
- Actualizar software regularmente para corregir vulnerabilidades.
- Implementar dos pilares de seguridad en aplicaciones Java:
  1. **Seguridad interna**: 
     - Validación de datos
     - Manejo de excepciones
     - Registro de logs (logging)
  2. **Políticas de acceso**: 
     - Restringir permisos de la aplicación
     - Ejemplo: solo permitir lectura en ciertas carpetas

---

## Programación Segura en Java

### 1. Manejo de Excepciones
Estructura básica `try-catch-finally`:

```java
try {
    // Código que puede fallar (ej. leer archivo)
} catch (IOException e) {
    // Manejo de error de E/S
} catch (Exception e) {
    // Manejo de errores genéricos
} finally {
    // Liberar recursos (ej. cerrar archivos)
}
```
## 2. Buenas Prácticas

- **Ordenar bloques catch** de excepciones más específicas a más generales
- **Usar finally** para liberar recursos (siempre se ejecuta)
- **Documentar posibles excepciones** en la firma de métodos
