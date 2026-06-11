> Repositorios: estructura y actualización. Generación de código y documentación. Metodologías de desarrollo. Pruebas. Programas para control de versiones. Plataformas de desarrollo colaborativo de software.

## 1. Metodologías de Desarrollo

### Modelo en Cascada (Waterfall)
- Secuencia típica: **Requisitos → Diseño → Implementación → Verificación → Mantenimiento**.
- Lineal, cada fase depende de la anterior.
- Propicio cuando los requisitos son estables y bien conocidos.

### Modelo en Espiral
- Combina la **iteración del prototipado** con el **control del modelo en cascada**.
- Se centra en la **gestión de riesgos** en cada ciclo.
- Cada iteración produce una versión mejorada del producto.

### Modelo en V
- Fases de **verificación y validación** que se corresponden con cada fase de desarrollo (despliegue en espejo).
- Las pruebas se planifican desde el inicio junto con el diseño.

### Metodologías Ágiles
- Basadas en el **Manifiesto Ágil** (2001): individuos e interacciones, software funcionando, colaboración con el cliente, respuesta al cambio.

#### Scrum
- Roles: **Product Owner** (gestiona el Product Backlog), **Scrum Master**, **Equipo de Desarrollo**.
- **Sprint Planning**: reunión para definir el objetivo y el trabajo a realizar durante el sprint.
- **Sprint**: iteración de duración fija (típicamente 2-4 semanas).
- **Product Backlog**: lista priorizada de requisitos gestionada por el Product Owner.

#### Kanban
- Se diferencia de Scrum por **limitar el trabajo en curso (WIP)**.
- No usa iteraciones fijas; flujo continuo.
- Visualización del flujo de trabajo mediante tablero.

#### XP (Extreme Programming)
- **Programación en Pareja**: dos programadores trabajan juntos en el mismo código.
- TDD (Test-Driven Development): escribir prueba → escribir código que pase → refactorizar.
- Integración Continua y releases frecuentes.

#### Historias de Usuario
- Describen una funcionalidad desde la **perspectiva del usuario final**.
- Formato: "Como [rol], quiero [acción] para [beneficio]".

#### DevOps
- Promueve **automatización y colaboración** entre desarrollo y operaciones.
- CI/CD (Integración Continua / Entrega Continua).

## 2. Pruebas de Software

### Tipos de pruebas

| Tipo | Descripción |
|------|------------|
| **Unitarias** | Verifican un módulo individual de forma aislada |
| **Integración** | Verifican la interacción entre módulos o componentes |
| **Sistema** | Verifican el sistema completo contra requisitos |
| **Aceptación** | Validan que el sistema cumple requisitos de negocio y es usable por el cliente |
| **Regresión** | Verifican que cambios no introdujeron nuevos defectos |
| **Humo (Smoke)** | Determinan si una build es estable para pruebas más profundas |

### Técnicas de prueba
- **Caja negra**: basada en especificaciones, sin conocer el código interno.
- **Caja blanca (white-box)**: verifica el código fuente internamente (bifurcaciones, bucles, condiciones).
- **Stub**: componente que simula el comportamiento de un módulo dependiente para aislar la unidad bajo prueba.

### TDD (Test-Driven Development)
- Ciclo: **Escribir prueba → Escribir código que pase la prueba → Refactorizar**.

## 3. Control de Versiones

### Concepto
- Sistema que registra los cambios en un archivo o conjunto de archivos a lo largo del tiempo.
- Permite recuperar versiones específicas, trabajar en paralelo y colaborar.

### Tipos
- **Centralizados** (SVN, CVS, TFVC): repositorio único central.
- **Distribuidos** (Git, Mercurial, Darcs): cada desarrollador tiene copia completa del repositorio.

### Git
- **Distribuido**: cada clon es una copia completa del repositorio.
- **Blob**: objeto que almacena el contenido de cada archivo en el repositorio.
- **git fetch**: descarga cambios del remoto sin integrarlos en el local.
- **git pull**: descarga cambios y los fusiona directamente (fetch + merge).
- **git merge**: integra cambios de una rama en la rama actual.
- **git rebase**: mueve/transplanta una secuencia de commits a una nueva base (historial lineal).
- **git cherry-pick**: aplica cambios de un commit específico de otra rama a la rama actual.
- **git diff --cached**: muestra diferencias entre el staging area y el último commit.
- **git diff HEAD**: muestra diferencias entre el working directory y el último commit.
- **Tag (etiqueta)**: marca puntos específicos como releases de versiones.
- **Git Flow**: propone ramas `main` (producción), `develop` (integración), `feature/*`, `hotfix/*`, `release/*`.

### Subversion (SVN)
- **Centralizado**: un único repositorio central.
- Diferencia clave con Git: SVN es centralizado, Git es distribuido.

## 4. Herramientas CI/CD y Plataformas Colaborativas

### Jenkins
- Herramienta de **integración y entrega continua (CI/CD)**.
- Automatiza construcción, pruebas y despliegue.

### GitHub Actions
- Automatiza flujos de **CI/CD directamente desde el repositorio de GitHub**.

### Otras herramientas
- **GitLab CI/CD**, **Azure DevOps**, **Bitbucket Pipelines**.
- Plataformas: **GitHub**, **GitLab**, **Bitbucket** (alojamiento de repositorios Git).
