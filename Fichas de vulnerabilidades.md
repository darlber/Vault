## CVE-2017-8750
### Alias
Microsoft Browser Memory Corruption Vulnerability.
### Fecha de publicación
13 de septiembre de 2017.
### Código CVE
CVE-2017-8750.
### Código CWE
CWE-119 — Restricción de operaciones inapropiada dentro de los límites del búfer de la memoria
### Código CVSS explicado
**CVSS v3.0:** 7.5 (Alta)
Vector:
`CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H`
Desglose:

- **AV:N (Attack Vector: Network):** el ataque puede lanzarse remotamente a través de red.
- **AC:H (Attack Complexity: High):** requiere condiciones específicas para explotarse.
- **PR:N (Privileges Required: None):** no necesita credenciales previas.
- **UI:R (User Interaction: Required):** la víctima debe interactuar, por ejemplo visitando una web maliciosa.
- **S:U (Scope: Unchanged):** el impacto permanece dentro del mismo contexto de seguridad.
- **C:H (Confidentiality: High):** puede comprometer información sensible.
- **I:H (Integrity: High):** permite modificar datos o ejecutar código.
- **A:H (Availability: High):** puede afectar seriamente a la disponibilidad del sistema.
### Boletín de seguridad
Incluida en los boletines de seguridad de Microsoft de septiembre de 2017 y en MSRC (Microsoft Security Response Center).
### Hipervínculos
- NVD: https://nvd.nist.gov/vuln/detail/CVE-2017-8750
- Microsoft MSRC: https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/CVE-2017-8750
- CVE Details: https://www.cvedetails.com/cve/CVE-2017-8750/
### Software afectado y versiones
- Microsoft Internet Explorer 11.
- Microsoft Edge.
- Windows 7 SP1.
- Windows 8.1.
- Windows RT 8.1.
- Windows Server 2008 R2 SP1.
- Windows Server 2012 R2.
- Windows 10 versiones 1507, 1511, 1607 y 1703.
- Windows Server 2016.
### Descripción de la vulnerabilidad
Se trata de una vulnerabilidad de corrupción de memoria en Internet Explorer y Microsoft Edge. El fallo permitía ejecutar código arbitrario aprovechando cómo los navegadores accedían a determinados objetos en memoria.

Un atacante podía crear una página web maliciosa y, si el usuario la visitaba, ejecutar código con los privilegios de la víctima.
### Repercusiones mundiales y curiosidades
- Este tipo de vulnerabilidades en navegadores era especialmente relevante porque permitía comprometer equipos únicamente mediante navegación web.
- Microsoft recomendó aplicar inmediatamente las actualizaciones acumulativas mensuales.
- [Adobe, Microsoft Exchange, y otros despliegan un parche urgente por UAF. Abril, 2026](https://securityaffairs.com/190775/security/u-s-cisa-adds-adobe-fortinet-microsoft-windows-microsoft-exchange-server-and-microsoft-windows-flaws-to-its-known-exploited-vulnerabilities-catalog.html)
- [Curl. Abril, 2026](https://acumencyber.com/cyber-threat-intelligence-digest-april-2026-week-16)
### Ejemplo
```python
import os
class AccionLegitima:
    def ejecutar(self):
        print("Mostrando perfil de usuario")

# Muestra los archivos del directorio
class AccionControlada:
    def ejecutar(self):
        for nombre in os.listdir("."):
            print(nombre)

# El programa espera usar este objeto
objeto = AccionLegitima()

# Referencia que el programa conserva
referencia_antigua = objeto

# Conceptualmente el objeto desaparece
objeto = None

# Otro objeto ocupa su lugar (simulación)
objeto_nuevo = AccionControlada()

# la referencia antigua acaba usando
# el objeto nuevo por error
referencia_antigua = objeto_nuevo

# El programa cree que llama a la acción legítima
referencia_antigua.ejecutar()
```

```c
typedef struct {
    int valor;
} Objeto;

int main() {
    // 1. Reservamos memoria (heap / memoria dinámica)
    Objeto* p = (Objeto*)malloc(sizeof(Objeto));

    p->valor = 42;
    printf("Antes: %d\n", p->valor);

    // 2. Liberamos memoria
    free(p);
    // invalidar puntero
	p = NULL;
    // 3. UAF: seguimos usando el puntero
    printf("Después: %d\n", p->valor);

    return 0;
}
```
[Ejemplo](https://learn.snyk.io/lesson/use-after-free/?ecosystem=cpp)
## CVE-2017-14238
### Alias
No se encontró un alias ampliamente utilizado.
### Fecha de publicación
11 de septiembre de 2017.
### Código CVE
CVE-2017-14238.
### Código CWE
CWE-89 — Neutralización incorrecta de elementos especiales usados en un comando SQL (Inyección SQL)
### Código CVSS explicado
**CVSS v3.0:** 9.8 (Crítica)
Vector:
`CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H`
Desglose:

- **AV:N (Attack Vector: Network):** explotable remotamente.
- **AC:L (Attack Complexity: Low):** explotación sencilla.
- **PR:N (Privileges Required: None):** no requiere autenticación.
- **UI:N (User Interaction: None):** no necesita interacción de la víctima.
- **S:U (Scope: Unchanged):** el impacto permanece en el mismo ámbito.
- **C:H (Confidentiality: High):** exposición completa de datos.
- **I:H (Integrity: High):** modificación de información y consultas.
- **A:H (Availability: High):** posibilidad de afectar al servicio o la base de datos.
### Boletín de seguridad
No consta inclusión en un boletín de fabricante equivalente a Microsoft Patch Tuesday. La corrección principal se publicó mediante *commit* en GitHub del proyecto Dolibarr.
### Hipervínculos
- NVD: https://nvd.nist.gov/vuln/detail/CVE-2017-14238
- Ubuntu Security: https://ubuntu.com/security/CVE-2017-14238
- Commit de corrección: https://github.com/Dolibarr/dolibarr/commit/d26b2a694de30f95e46ea54ea72cc54f0d38e548
### Software afectado y versiones
- Dolibarr ERP/CRM 6.0.0.
### Descripción de la vulnerabilidad
Vulnerabilidad de inyección SQL en `admin/menus/edit.php` de Dolibarr ERP/CRM. El parámetro `menuId` no validaba correctamente la entrada del usuario, permitiendo ejecutar consultas SQL arbitrarias.

Un atacante remoto podía manipular la base de datos, acceder a información sensible o alterar registros del sistema.
### Repercusiones mundiales y curiosidades
- Afectó a instalaciones de Dolibarr ERP/CRM, software muy utilizado por pequeñas y medianas empresas.
- Recibió una puntuación CVSS crítica de 9.8 debido a que podía explotarse remotamente y sin autenticación.
- Es un ejemplo clásico de SQL Injection derivada de validación insuficiente de parámetros.
- [McKinsey](https://traefik.io/blog/mckinsey-breach-is-about-ai-governance)
### Ejemplo
```diff
- $result=$menu->fetch($_POST['menuId']);
+ $result=$menu->fetch(GETPOST('menuId', 'int'));

- $sql = "SELECT * FROM menu WHERE rowid = ".$_POST['menuId'];
+ $sql = "SELECT * FROM menu WHERE rowid = ?";
+ $params = array(GETPOST('menuId', 'int'));
```

```sql
Select * from usuarios where usuario ='   taltal' or 1=1 --  ' and password_hash= 'taltaltal';
```
https://www.db-fiddle.com/
[https://juice-shop.github.io/](https://preview.owasp-juice.shop/#/search)